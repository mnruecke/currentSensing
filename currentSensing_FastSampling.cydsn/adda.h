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
    
    // DAC out
    uint8 dac_val;
    
    size_t conversion_counter;
    #define N_ADC_CHANNELS  5
    #define N_MAX_SAMPLES   100 * USBFS_TX_SIZE * N_ADC_CHANNELS
    int16 signals[N_MAX_SAMPLES];
    
    void init_adda(void);
    
    CY_ISR_PROTO( isr_adc_done );
    
#endif // ADDA_H

/* [] END OF FILE */
