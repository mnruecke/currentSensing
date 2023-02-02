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
    if( UART_GetRxBufferSize() != 0 ){
        char selected_option = UART_GetChar();
        if( selected_option == 'r' ) isr_Start_Sampling_SetPending();
        if( selected_option == 'c' ) clear_terminal();
        if( selected_option == 'x' ) CySoftwareReset();
        if( selected_option == 'g' ) get_signal();
        if( selected_option == 'o' ) get_binary_data();
    }//END if( UART_GetRxBufferSize() != 0 )   
}//END uart_interface()

void usbfs_interface(void){
    int count=0;
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
            count = USBUART_GetAll(buffer);

            if (0u != count )
            {   
                
                /* Wait until component is ready to send data to host. */
                while (0u == USBUART_CDCIsReady())
                {
                }
                
                /* Process firmware commands */
                // 1) 
                if( buffer[0] == 'r' )
                    isr_Start_Sampling_SetPending();
                
                // 2) Chip information
                int strlength = 34;
                char pseudoid[strlength];
                if ( buffer[0] == 's' )
                {
                    sprintf( pseudoid, "                                  ");
                    sprintf( pseudoid, "%3d %3d %3d %3d %3d %3d %3d",\
                        *(uint8 *)CYREG_FLSHID_CUST_TABLES_Y_LOC,\
                        *(uint8 *)CYREG_FLSHID_CUST_TABLES_X_LOC,\
                        *(uint8 *)CYREG_FLSHID_CUST_TABLES_WAFER_NUM,\
                        *(uint8 *)CYREG_FLSHID_CUST_TABLES_LOT_LSB,\
                        *(uint8 *)CYREG_FLSHID_CUST_TABLES_LOT_MSB,\
                        *(uint8 *)CYREG_FLSHID_CUST_TABLES_WRK_WK,\
                        *(uint8 *)CYREG_FLSHID_CUST_TABLES_FAB_YR);
                    
                    while (0u == USBUART_CDCIsReady());
                    USBUART_PutData( (uint8 *)pseudoid , strlength);                   
                }
            
                // 3) Get the binary data from signal buffer (5 channels interleaved)              
                if ( buffer[0] == 'o' ){
                    LED_P2p1_Write(1u);
                    for(int j=0; j < ( N_MAX_SAMPLES / USBFS_TX_SIZE *2); j++)
                    {                      
                        // send 60 byte packet
                        while (0u == USBUART_CDCIsReady())
                        {
                        }                  
                        USBUART_PutData( (uint8*)signals + j * USBFS_TX_SIZE, USBFS_TX_SIZE );  
                    }
                    LED_P2p1_Write(0u);
                }// END send binary adc dat
            }
        }
    }
}//END usbfs_interface()

void get_signal(void){
    char sms[80];
    for(int i=0; i < N_MAX_SAMPLES; ++i){
        sprintf( sms, "\t%d \t%d \t%d \n\r", i, signals[i], i/N_ADC_CHANNELS);
        UART_PutString( sms );
    }
}// get_signal()

void get_binary_data(void){
    for(int i=0; i<N_MAX_SAMPLES; ++i)
        UART_PutArray( (uint8*)signals + 2*i, 2 );
}// get_binary_data()

CY_ISR( isr_start_sampling ){ 
    
    ADC_Clock_Start();
    
}//END CY_ISR( isr_switch_channel )

 
/* [] */
