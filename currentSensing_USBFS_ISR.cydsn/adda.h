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

    // DAC for dummy signals
    uint8 vdac_val;
    uint8 vdac_inc;
    uint8 vdac_val_2;
    uint8 vdac_inc_2;
    
    // SEQ ADC
    size_t conversion_counter;
    #define N_ADC_CHANNELS  5
    #define N_MAX_SAMPLES   100 * USBFS_TX_SIZE * N_ADC_CHANNELS
    int16 signals[N_MAX_SAMPLES];   
    void init_adda( void );
    void set_adc_ref_voltage( uint8* );  
    CY_ISR_PROTO( isr_adc_done );
    
    
#endif // ADDA_H

/* [] END OF FILE */
