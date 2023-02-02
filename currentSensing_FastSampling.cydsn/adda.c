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

void init_adda(void){
    ADC_CurrentSens_Start();
    ADC_Clock_Stop();
    
    conversion_counter = 0;
    isr_ADC_done_StartEx( isr_adc_done );
    
    IDAC8_1_Start();
    dac_val = 0;
    IDAC8_1_SetValue( dac_val );
    
}//END init_adda()



CY_ISR( isr_adc_done ){ 
 
    LED_P2p1_Write(1u);
    
    signals[ conversion_counter * N_ADC_CHANNELS +0 ] = \
        ADC_CurrentSens_CountsTo_mVolts( ADC_CurrentSens_GetResult16(0) );
    signals[ conversion_counter * N_ADC_CHANNELS +1 ] = \
        ADC_CurrentSens_CountsTo_mVolts( ADC_CurrentSens_GetResult16(1) );
    signals[ conversion_counter * N_ADC_CHANNELS +2 ] = \
        ADC_CurrentSens_CountsTo_mVolts( ADC_CurrentSens_GetResult16(2) );
    signals[ conversion_counter * N_ADC_CHANNELS +3 ] = \
        ADC_CurrentSens_CountsTo_mVolts( ADC_CurrentSens_GetResult16(3) );
    signals[ conversion_counter * N_ADC_CHANNELS +4 ] = \
        ADC_CurrentSens_CountsTo_mVolts( ADC_CurrentSens_GetResult16(4) );
        
    if( (conversion_counter * N_ADC_CHANNELS) >= N_MAX_SAMPLES ){
        ADC_Clock_Stop();
        conversion_counter = 0;
    }else{
        ++conversion_counter;   
    }// ifelse( conversion_counter >= N_MAX_SAMPLES )

    LED_P2p1_Write(0u);
    
}//END CY_ISR( isr_adc_done )

/* [] END OF FILE */
