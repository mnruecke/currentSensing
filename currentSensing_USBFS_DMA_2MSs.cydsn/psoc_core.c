/* ========================================
 *
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/

#include <stdio.h>

#include "project.h"
#include "psoc_core.h"
#include "adda.h"


void psoc_init(void){
    CyGlobalIntEnable;

    // TopDesignSheet: User Interface
    UART_Start();
    clear_terminal();
    UART_PutString("PSoC running...\r\n");
    
    USBUART_Start(USBFS_DEVICE, USBUART_5V_OPERATION);

    isr_Start_Sampling_StartEx( isr_start_sampling );
    
    Comp_Trigger_Signal_Start();
    VDAC8_Trigger_Signal_Threshold_Start();
    VDAC8_Trigger_Signal_Threshold_SetValue( TRIGGER_THRESHOLD );
    En_Trigger_Signal_Write( TRIGGER_FROM_SIGNAL_ON );
    
    signal_changed_since_readout = FALSE,
    
    // TopDesignSheet: Current Sensing
    init_adda();

}//END psoc_init()

void clear_terminal(void){
    for( int i=0; i<(TERMINAL_N_ROWS*TERMINAL_N_COLUMNS); i++){
        UART_PutChar(' ');   
    }
    for( int i=0; i<(TERMINAL_N_ROWS*TERMINAL_N_COLUMNS); i++){
        UART_PutChar(BACKSPACE);   
    }
}//END clear_terminal()

void uart_interface(void){
    
    const int max_length = 4;
    char command[ max_length ];
    if( UART_GetRxBufferSize() != 0 ){
        
        int byte_count=0;
        while( UART_GetRxBufferSize() != 0 && byte_count < max_length ){
            command[ byte_count++ ] = UART_GetChar();
            CyDelay(1);
        }
        
        if( command[0] == KEY_RUN               ) isr_Start_Sampling_SetPending();
        if( command[0] == KEY_CLEAR_SCREEN      ) clear_terminal();
        if( command[0] == KEY_RESET             ) CySoftwareReset();
        if( command[0] == KEY_GET_ASCII_DAT     ) get_signal();
        if( command[0] == KEY_GET_BINARY_DAT    ) get_binary_data();        
        if( command[0] == KEY_SET_ADC_REF       ) set_adc_ref_voltage( (uint8*)command );
        if( command[0] == KEY_GET_CHIP_ID       ) get_chip_id_uart();
        if( command[0] == KEY_FLASH_TEST        ) test_flash();
        if( command[0] == KEY_ISR_TEST          ) test_isr_finish_order();

    }//END if( UART_GetRxBufferSize() != 0 )   
}//END uart_interface()

int run_count=0;
void usbfs_interface(void){
    int byte_count=0;
    uint8 buffer[60];

     /* Host can send double SET_INTERFACE request. */
    if (0u != USBUART_IsConfigurationChanged())
    {
        /* Initialize IN endpoints when device is configured. */
        if (0u != USBUART_GetConfiguration())
        {
            /* Enumeration is done, enable OUT endpoint to receive data 
             * from host. */
            USBUART_CDC_Init();
        }
        
    }

    /* Service USB CDC when device is configured. */
    if (0u != USBUART_GetConfiguration())
    {
        /* Check for input data from host. */
        if (0u != USBUART_DataIsReady())
        {
            /* Read received data and re-enable OUT endpoint. */
            byte_count = USBUART_GetAll(buffer);

            if (0u != byte_count )
            {   
                
                /* Wait until component is ready to send data to host. */
                while (0u == USBUART_CDCIsReady())
                {
                }
                
                /* Process firmware commands */
                // 1) 
                if( buffer[0] == KEY_RUN )
                    isr_Start_Sampling_SetPending();
                    
                if( buffer[0] == KEY_SET_ADC_REF )
                    set_adc_ref_voltage( buffer );
                                
                // 2) Chip information
               if ( buffer[0] == KEY_GET_CHIP_ID )
                    get_chip_id_usbfs();
                    
                // 3) Reset PSoC
                if ( buffer[0] == KEY_RESET )
                    CySoftwareReset();
            
                // 3) Get the binary data from signal buffer             
                if ( buffer[0] == KEY_GET_BINARY_DAT ){
                    
                    LED_P2p1_Write( LED_ON );
                    
                    const int packets_per_dma = (
                                        N_MAX_SAMPLES
                                    /   USBFS_TX_SIZE
                                    /   N_ADC_CHANNELS
                                    *   DMA_1_BYTES_PER_BURST 
                    );
                    
                    // DMA 1
                    for(int j=0; j < packets_per_dma; j++)
                    {                      
                        // send 60 byte packets
                        while (0u == USBUART_CDCIsReady())
                        {
                        }                  
                        USBUART_PutData( (uint8*)signal_dma1 +j*USBFS_TX_SIZE,
                                         USBFS_TX_SIZE );  
                    }//END for DMA 1

                    // DMA 2
                    for(int j=0; j < packets_per_dma; j++)
                    {                      
                        // send 60 byte packets
                        while (0u == USBUART_CDCIsReady())
                        {
                        }                  
                        USBUART_PutData( (uint8*)signal_dma2 +j*USBFS_TX_SIZE,
                                         USBFS_TX_SIZE );  
                    }//END for DMA 2

                    // DMA 3
                    for(int j=0; j < packets_per_dma; j++)
                    {                      
                        // send 60 byte packets
                        // DMA 3
                        while (0u == USBUART_CDCIsReady())
                        {
                        }                  
                        USBUART_PutData( (uint8*)signal_dma3 +j*USBFS_TX_SIZE,
                                         USBFS_TX_SIZE );  
                    }//END for DMA 3

                    // DMA 4
                    for(int j=0; j < packets_per_dma; j++)
                    {                      
                        // send 60 byte packets
                        while (0u == USBUART_CDCIsReady())
                        {
                        }                  
                        USBUART_PutData( (uint8*)signal_dma4 +j*USBFS_TX_SIZE,
                                         USBFS_TX_SIZE );  
                    }//END for DMA 4

                    // DMA 5
                    for(int j=0; j < packets_per_dma; j++)
                    {                      
                        // send 60 byte packets
                        while (0u == USBUART_CDCIsReady())
                        {
                        }                  
                        USBUART_PutData( (uint8*)signal_dma5 +j*USBFS_TX_SIZE,
                                         USBFS_TX_SIZE );  
                    }//END for DMA 5
                    
                    LED_P2p1_Write( LED_OFF );                    
                }// END send binary adc data
            }
        }
    }
}//END usbfs_interface()

void get_signal(void){
    
    char sms[80];    
    for(int i=0; i < N_MAX_SAMPLES/N_ADC_CHANNELS; ++i){
        sprintf( sms, "\t%d \t%d \t%d \n\r", i,
            (int16) ADC_SAR_1_CountsTo_mVolts( signal_dma1[i] - ADC_SAR_1_shift ),
            i/N_ADC_CHANNELS
        );
        UART_PutString( sms );
        sprintf( sms, "\t%d \t%d \t%d \n\r", i,
            (int16) ADC_SAR_1_CountsTo_mVolts( signal_dma2[i] - ADC_SAR_1_shift ),
            i/N_ADC_CHANNELS
        );
        UART_PutString( sms );
        sprintf( sms, "\t%d \t%d \t%d \n\r", i,
            (int16) ADC_SAR_1_CountsTo_mVolts( signal_dma3[i] - ADC_SAR_1_shift ),
            i/N_ADC_CHANNELS
        );
        UART_PutString( sms );
        sprintf( sms, "\t%d \t%d \t%d \n\r", i,
            (int16) ADC_SAR_1_CountsTo_mVolts( signal_dma4[i] - ADC_SAR_1_shift ),
            i/N_ADC_CHANNELS
        );
        UART_PutString( sms );
        sprintf( sms, "\t%d \t%d \t%d \n\r", i,
            (int16) ADC_SAR_1_CountsTo_mVolts( signal_dma5[i] - ADC_SAR_1_shift ),
            i/N_ADC_CHANNELS
        );
        UART_PutString( sms );
    }
}// get_signal()

void get_binary_data(void){
    
    // from ISR routine
    //for(int i=0; i<N_MAX_SAMPLES; ++i)
      //  UART_PutArray( (uint8*)signals + 2*i, 2 );
        
    // from DMA transfer
    // DMA 1
    for(int i=0; i<N_MAX_SAMPLES/N_ADC_CHANNELS; ++i){
        UART_PutArray( (uint8*)signal_dma1 + 2*i, 2 );  
    }
    // DMA 2
    for(int i=0; i<N_MAX_SAMPLES/N_ADC_CHANNELS; ++i){
        UART_PutArray( (uint8*)signal_dma2 + 2*i, 2 );  
    }
    // DMA 3
    for(int i=0; i<N_MAX_SAMPLES/N_ADC_CHANNELS; ++i){
        UART_PutArray( (uint8*)signal_dma3 + 2*i, 2 );  
    }
    // DMA 4
    for(int i=0; i<N_MAX_SAMPLES/N_ADC_CHANNELS; ++i){
        UART_PutArray( (uint8*)signal_dma4 + 2*i, 2 );  
    }
    // DMA 5
    for(int i=0; i<N_MAX_SAMPLES/N_ADC_CHANNELS; ++i){
        UART_PutArray( (uint8*)signal_dma5 + 2*i, 2 );  
    }
        
}// get_binary_data()

void get_chip_id( struct ID_STR* chip_id ){
    
    chip_id->length = PSEUDO_ID_LENGTH;
    
    sprintf( chip_id->pseudoid, "%3d %3d %3d %3d %3d %3d %3d       ",\
        *(uint8 *)CYREG_FLSHID_CUST_TABLES_Y_LOC,\
        *(uint8 *)CYREG_FLSHID_CUST_TABLES_X_LOC,\
        *(uint8 *)CYREG_FLSHID_CUST_TABLES_WAFER_NUM,\
        *(uint8 *)CYREG_FLSHID_CUST_TABLES_LOT_LSB,\
        *(uint8 *)CYREG_FLSHID_CUST_TABLES_LOT_MSB,\
        *(uint8 *)CYREG_FLSHID_CUST_TABLES_WRK_WK,\
        *(uint8 *)CYREG_FLSHID_CUST_TABLES_FAB_YR);
    
}//END get_chip_id()

void get_chip_id_usbfs(void){
    
    struct ID_STR chip_id;
    get_chip_id( &chip_id );
    
    while (0u == USBUART_CDCIsReady());
    USBUART_PutData( (uint8 *) chip_id.pseudoid, chip_id.length );    
    
}//END get_chip_id_usbfs()

void get_chip_id_uart(void){
    
    struct ID_STR chip_id;
    get_chip_id( &chip_id );
    
    UART_PutArray( (uint8 *) chip_id.pseudoid , chip_id.length);  
    
}//END get_chip_id_uart()

void test_flash(void){
    
    const int byte_per_sample = 2;
    const uint8 * flash_1_PTR = (uint8*) 0x10000;
    FLASH_Write(    (const uint8*)signal_dma1,
                    flash_1_PTR,
                    N_MAX_SAMPLES / N_ADC_CHANNELS * byte_per_sample
    );

    char sms[80];
    for(int i=0; i < (N_MAX_SAMPLES * byte_per_sample); i += byte_per_sample){
        sprintf( sms, "Sample %d: \t %d\n\r", i/2, (int16)*(flash_1_PTR +i));
        UART_PutString( sms ); 
    }
    
}//END test_flash()

void test_isr_finish_order(void){
    char sms[80];
    sprintf( sms, "ISR order: \t%d\t%d\t%d\t%d\t%d \n\r", 
             isr_tracker[0], isr_tracker[1], isr_tracker[2], 
             isr_tracker[3], isr_tracker[4]
    );
    UART_PutString( sms );
}//END test_isr_finish_order()

CY_ISR( isr_start_sampling ){ 
    
    LED_P2p1_Write( LED_ON );
    
    isr_trigger_counter = 0;

    CyDmaChEnable(DMA_1_Chan, 1);   
    CyDmaChSetInitialTd(DMA_1_Chan, DMA_1_TD[0]);
    
    CyDmaChEnable(DMA_2_Chan, 1);  
    CyDmaChSetInitialTd(DMA_2_Chan, DMA_2_TD[0]);
   
    CyDmaChEnable(DMA_3_Chan, 1);  
    CyDmaChSetInitialTd(DMA_3_Chan, DMA_3_TD[0]);
   
    CyDmaChEnable(DMA_4_Chan, 1);  
    CyDmaChSetInitialTd(DMA_4_Chan, DMA_4_TD[0]);
   
    CyDmaChEnable(DMA_5_Chan, 1);  
    CyDmaChSetInitialTd(DMA_5_Chan, DMA_5_TD[0]);
   
    ADC_Clock_Start();
    
}//END CY_ISR( isr_switch_channel )

 
/* [] */
