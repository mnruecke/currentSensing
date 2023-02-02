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
    ADC_Clock_Stop();
    ADC_CurrentSens_Start();
    
    conversion_counter = 0;
    isr_ADC_done_StartEx( isr_adc_done );
    
    VDAC8_1_Start();
    vdac_val = 0;
    vdac_inc = TRUE;
    
    VDAC8_2_Start();
    vdac_val_2 = 250;
    vdac_inc_2 = TRUE;
    
    VDAC8_ADCRef_Start();
    VDAC8_ADCRef_SetValue(60);
    VDAC8_ADCRef_SetRange(VDAC8_ADCRef_RANGE_4V);
}//END init_adda()

void set_adc_ref_voltage( uint8* buf){
    
    int ref_val=0;
    ref_val += 100 * ((int)(buf[1]-'0'));
    ref_val +=  10 * ((int)(buf[2]-'0'));
    ref_val +=   1 * ((int)(buf[3]-'0'));
        
    if( ref_val > 255 ){
        VDAC8_ADCRef_SetRange(VDAC8_ADCRef_RANGE_4V);
        VDAC8_ADCRef_SetValue( ref_val / 4 );
    }else{
        VDAC8_ADCRef_SetRange(VDAC8_ADCRef_RANGE_1V);
        VDAC8_ADCRef_SetValue( ref_val );
    }       
}//END set_adc_ref_voltage()


CY_ISR( isr_adc_done ){ 
    
    _Bool sampling_finished = (conversion_counter * N_ADC_CHANNELS) >= N_MAX_SAMPLES;
    
    if( sampling_finished )
        ADC_Clock_Stop();
 
    LED_P2p1_Write(1u);
    
    // Dummy signal
    if( vdac_inc )
        VDAC8_1_SetValue( 128);//++vdac_val );
    else
        VDAC8_1_SetValue( 128);//--vdac_val );        
    if( vdac_val == 255 )
        vdac_inc = FALSE;   
    if( vdac_val == 0 )
        vdac_inc = TRUE;

    int delta = 60;
    if( ((int)vdac_val_2 + delta) >= 0xff )
        vdac_val_2 = 0;//vdac_inc_2 = FALSE;   
    if( ((int)vdac_val_2 - delta) <= 0x00 )
        vdac_inc_2 = TRUE;    
    if( vdac_inc_2 ){
        vdac_val_2 += delta;
        VDAC8_2_SetValue( vdac_val_2 );
    }else{
        vdac_val_2 -= delta;
        VDAC8_2_SetValue( vdac_val_2 );   
    }

    //END Dummy signal
    
    signals[ conversion_counter * N_ADC_CHANNELS +CH1 ] = \
        ADC_CurrentSens_GetResult16(CH1);
    signals[ conversion_counter * N_ADC_CHANNELS +CH2] = \
        ADC_CurrentSens_GetResult16(CH2);
    signals[ conversion_counter * N_ADC_CHANNELS +CH3 ] = \
        ADC_CurrentSens_GetResult16(CH3);
    signals[ conversion_counter * N_ADC_CHANNELS +CH4 ] = \
        ADC_CurrentSens_GetResult16(CH4);
    signals[ conversion_counter * N_ADC_CHANNELS +CH5 ] = \
        ADC_CurrentSens_GetResult16(CH5);
        
    if( sampling_finished ){
        conversion_counter = 0;
    }else{
        ++conversion_counter;   
    }// ifelse( conversion_counter >= N_MAX_SAMPLES )

    LED_P2p1_Write(0u);
    
}//END CY_ISR( isr_adc_done )

/* [] END OF FILE */
