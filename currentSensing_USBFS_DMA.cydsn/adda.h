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

#ifndef ADDA_H
#define ADDA_H
    // TopDesignSheets: ADDA - Current Sensing
    //                  ADDA - Voltage Sensing 
    
    #include "project.h"
    #include "psoc_core.h"
    
    #define  POSEDGE    1
    #define  NEGEDGE    0
    
    #define CH1 0
    #define CH2 1
    #define CH3 2
    #define CH4 3
    #define CH5 4
    
    
    // --- DMA section ---
    #define TDS_PER_DMA 8 // DMA_N_TDS * 4096 >= N_BYTES_PER_DMA_TRANSFER
    
    /* Defines for DMA_1 */
    #define DMA_1_BYTES_PER_BURST 2
    #define DMA_1_REQUEST_PER_BURST 1
    #define DMA_1_SRC_BASE (CYDEV_SRAM_BASE)
    #define DMA_1_DST_BASE (CYDEV_SRAM_BASE)

    /* Variable declarations for DMA_1 */
    /* Move these variable declarations to the top of the function */
    uint8 DMA_1_Chan;
    uint8 DMA_1_TD[TDS_PER_DMA];   

    /* Defines for DMA_2 */
    #define DMA_2_BYTES_PER_BURST 2
    #define DMA_2_REQUEST_PER_BURST 1
    #define DMA_2_SRC_BASE (CYDEV_SRAM_BASE)
    #define DMA_2_DST_BASE (CYDEV_SRAM_BASE)

    /* Variable declarations for DMA_2 */
    /* Move these variable declarations to the top of the function */
    uint8 DMA_2_Chan;
    uint8 DMA_2_TD[TDS_PER_DMA];    

    /* Defines for DMA_3 */
    #define DMA_3_BYTES_PER_BURST 2
    #define DMA_3_REQUEST_PER_BURST 1
    #define DMA_3_SRC_BASE (CYDEV_SRAM_BASE)
    #define DMA_3_DST_BASE (CYDEV_SRAM_BASE)

    /* Variable declarations for DMA_3 */
    /* Move these variable declarations to the top of the function */
    uint8 DMA_3_Chan;
    uint8 DMA_3_TD[TDS_PER_DMA];    

    /* Defines for DMA_4 */
    #define DMA_4_BYTES_PER_BURST 2
    #define DMA_4_REQUEST_PER_BURST 1
    #define DMA_4_SRC_BASE (CYDEV_SRAM_BASE)
    #define DMA_4_DST_BASE (CYDEV_SRAM_BASE)

    /* Variable declarations for DMA_4 */
    /* Move these variable declarations to the top of the function */
    uint8 DMA_4_Chan;
    uint8 DMA_4_TD[TDS_PER_DMA];    

    /* Defines for DMA_5 */
    #define DMA_5_BYTES_PER_BURST 2
    #define DMA_5_REQUEST_PER_BURST 1
    #define DMA_5_SRC_BASE (CYDEV_SRAM_BASE)
    #define DMA_5_DST_BASE (CYDEV_SRAM_BASE)

    /* Variable declarations for DMA_5 */
    /* Move these variable declarations to the top of the function */
    uint8 DMA_5_Chan;
    uint8 DMA_5_TD[TDS_PER_DMA];    
    
    void init_all_dmas(void);
    //END --- DMA section ---
    
    // SEQ ADC
    #define N_ADC_CHANNELS  5
    #define N_MAX_SAMPLES   100 * USBFS_TX_SIZE * N_ADC_CHANNELS  
    int16 signal_dma1[ N_MAX_SAMPLES/N_ADC_CHANNELS ];
    int16 signal_dma2[ N_MAX_SAMPLES/N_ADC_CHANNELS ];
    int16 signal_dma3[ N_MAX_SAMPLES/N_ADC_CHANNELS ];
    int16 signal_dma4[ N_MAX_SAMPLES/N_ADC_CHANNELS ];
    int16 signal_dma5[ N_MAX_SAMPLES/N_ADC_CHANNELS ];
    void init_adda( void );
    void set_adc_ref_voltage( uint8* );  
    CY_ISR_PROTO( isr_adc_done ); // (= isr_5_done)
    
    // isr test
    CY_ISR_PROTO( isr_1_done );
    CY_ISR_PROTO( isr_2_done );
    CY_ISR_PROTO( isr_3_done );
    CY_ISR_PROTO( isr_4_done );       
    int isr_tracker[N_ADC_CHANNELS];
    int isr_trigger_counter;

    
#endif // ADDA_H

/* [] END OF FILE */
