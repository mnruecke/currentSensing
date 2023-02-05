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
    AMux_1_Start();
    
    current_channel = 0;
    select_channel( current_channel );
}//END init_adda()

void read_all_channels_to_uart(void){
    for(int i=0; i<NUM_OF_CHANNELS; i++){
        select_channel( i );
        current_sensing_to_uart();
    }//END for(int i=0; i<4; i++)
}//END current_sensing_to_uart()

void current_sensing_to_uart(void){
    int adc_value;
    char data[20];

    ADC_CurrentSens_StartConvert();
    ADC_CurrentSens_IsEndConversion(ADC_CurrentSens_WAIT_FOR_RESULT);
    adc_value = ADC_CurrentSens_GetResult16();
    sprintf(data,"ADC CH%d   \t%d\r\n", current_channel+1, adc_value);
    UART_PutString(data);
}//END current_sensing_to_uart()

void select_channel(uint8 ch){
    if( ch < NUM_OF_CHANNELS )
        AMux_1_Select(ch);
    current_channel = ch;   
        
    LED_Channel_Indicator_Write( 1 << current_channel );    
}//END select_channel(ch)


/* [] END OF FILE */
