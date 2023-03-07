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
    
    isr_ADC_done_StartEx( isr_adc_done );
    
    //dma priority test
    isr_1_StartEx( isr_1_done );
    isr_2_StartEx( isr_2_done );
    isr_3_StartEx( isr_3_done );
    isr_4_StartEx( isr_4_done );
    isr_trigger_counter = 0;
      
    VDAC8_ADCRef_Start();
    VDAC8_ADCRef_SetValue(60);
    VDAC8_ADCRef_SetRange(VDAC8_ADCRef_RANGE_4V);   

    init_all_dmas();
    
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

void init_all_dmas(void){
    
    const int bytes_per_TD =    N_MAX_SAMPLES / N_ADC_CHANNELS / TDS_PER_DMA \
                              * DMA_1_BYTES_PER_BURST;  
    
    /* DMA Configuration for DMA_1 */
    DMA_1_Chan = DMA_1_DmaInitialize(
                    DMA_1_BYTES_PER_BURST,
                    DMA_1_REQUEST_PER_BURST, 
                    HI16(DMA_1_SRC_BASE),
                    HI16(DMA_1_DST_BASE)
    );  
    
    for(int i=0; i<TDS_PER_DMA; ++i)
        DMA_1_TD[ i ] = CyDmaTdAllocate();
        
    for(int i=0; i<(TDS_PER_DMA-1); ++i)    
        CyDmaTdSetConfiguration(
            DMA_1_TD[ i ],
            bytes_per_TD,
            DMA_1_TD[ i+1 ],
            CY_DMA_TD_INC_DST_ADR
        );
    CyDmaTdSetConfiguration(
        DMA_1_TD[ TDS_PER_DMA-1 ],
        bytes_per_TD,
        CY_DMA_DISABLE_TD,
        DMA_1__TD_TERMOUT_EN | CY_DMA_TD_INC_DST_ADR
    );
    
    for(int i=0; i<TDS_PER_DMA; ++i)
        CyDmaTdSetAddress(
            DMA_1_TD[ i ],
            LO16((uint32) &ADC_CurrentSens_finalArray[
                ADC_CurrentSens_GET_RESULT_INDEX_OFFSET - CH1
            ]),
            LO16((uint32) ((uint8*)signal_dma1 + i*bytes_per_TD ))
        );
    
    /* DMA Configuration for DMA_2 */
    DMA_2_Chan = DMA_2_DmaInitialize(
                    DMA_2_BYTES_PER_BURST,
                    DMA_2_REQUEST_PER_BURST, 
                    HI16(DMA_2_SRC_BASE),
                    HI16(DMA_2_DST_BASE)
    );  
    
    for(int i=0; i<TDS_PER_DMA; ++i)
        DMA_2_TD[ i ] = CyDmaTdAllocate();
        
    for(int i=0; i<(TDS_PER_DMA-1); ++i)    
        CyDmaTdSetConfiguration(
            DMA_2_TD[ i ],
            bytes_per_TD,
            DMA_2_TD[ i+1 ],
            CY_DMA_TD_INC_DST_ADR
        );
    CyDmaTdSetConfiguration(
        DMA_2_TD[ TDS_PER_DMA-1 ],
        bytes_per_TD,
        CY_DMA_DISABLE_TD,
        DMA_2__TD_TERMOUT_EN | CY_DMA_TD_INC_DST_ADR
    );
    
    for(int i=0; i<TDS_PER_DMA; ++i)
        CyDmaTdSetAddress(
            DMA_2_TD[ i ],
            LO16((uint32) &ADC_CurrentSens_finalArray[
                ADC_CurrentSens_GET_RESULT_INDEX_OFFSET - CH2
            ]),
            LO16((uint32) ((uint8*)signal_dma2 + i*bytes_per_TD ))
        );
    
    /* DMA Configuration for DMA_3 */
    DMA_3_Chan = DMA_3_DmaInitialize(
                    DMA_3_BYTES_PER_BURST,
                    DMA_3_REQUEST_PER_BURST, 
                    HI16(DMA_3_SRC_BASE),
                    HI16(DMA_3_DST_BASE)
    );  
    
    for(int i=0; i<TDS_PER_DMA; ++i)
        DMA_3_TD[ i ] = CyDmaTdAllocate();
        
    for(int i=0; i<(TDS_PER_DMA-1); ++i)    
        CyDmaTdSetConfiguration(
            DMA_3_TD[ i ],
            bytes_per_TD,
            DMA_3_TD[ i+1 ],
            CY_DMA_TD_INC_DST_ADR
        );
    CyDmaTdSetConfiguration(
        DMA_3_TD[ TDS_PER_DMA-1 ],
        bytes_per_TD,
        CY_DMA_DISABLE_TD,
        DMA_3__TD_TERMOUT_EN | CY_DMA_TD_INC_DST_ADR
    );
    
    for(int i=0; i<TDS_PER_DMA; ++i)
        CyDmaTdSetAddress(
            DMA_3_TD[ i ],
            LO16((uint32) &ADC_CurrentSens_finalArray[
                ADC_CurrentSens_GET_RESULT_INDEX_OFFSET - CH3
            ]),
            LO16((uint32) ((uint8*)signal_dma3 + i*bytes_per_TD ))
        ); 
    
    /* DMA Configuration for DMA_4 */
    DMA_4_Chan = DMA_4_DmaInitialize(
                    DMA_4_BYTES_PER_BURST,
                    DMA_4_REQUEST_PER_BURST, 
                    HI16(DMA_4_SRC_BASE),
                    HI16(DMA_4_DST_BASE)
    );  
    
    for(int i=0; i<TDS_PER_DMA; ++i)
        DMA_4_TD[ i ] = CyDmaTdAllocate();
        
    for(int i=0; i<(TDS_PER_DMA-1); ++i)    
        CyDmaTdSetConfiguration(
            DMA_4_TD[ i ],
            bytes_per_TD,
            DMA_4_TD[ i+1 ],
            CY_DMA_TD_INC_DST_ADR
        );
    CyDmaTdSetConfiguration(
        DMA_4_TD[ TDS_PER_DMA-1 ],
        bytes_per_TD,
        CY_DMA_DISABLE_TD,
        DMA_4__TD_TERMOUT_EN | CY_DMA_TD_INC_DST_ADR
    );
    
    for(int i=0; i<TDS_PER_DMA; ++i)
        CyDmaTdSetAddress(
            DMA_4_TD[ i ],
            LO16((uint32) &ADC_CurrentSens_finalArray[
                ADC_CurrentSens_GET_RESULT_INDEX_OFFSET - CH4
            ]),
            LO16((uint32) ((uint8*)signal_dma4 + i*bytes_per_TD ))
        ); 
    
    /* DMA Configuration for DMA_5 */
    DMA_5_Chan = DMA_5_DmaInitialize(
                    DMA_5_BYTES_PER_BURST,
                    DMA_5_REQUEST_PER_BURST, 
                    HI16(DMA_5_SRC_BASE),
                    HI16(DMA_5_DST_BASE)
    );  
    
    for(int i=0; i<TDS_PER_DMA; ++i)
        DMA_5_TD[ i ] = CyDmaTdAllocate();
        
    for(int i=0; i<(TDS_PER_DMA-1); ++i)    
        CyDmaTdSetConfiguration(
            DMA_5_TD[ i ],
            bytes_per_TD,
            DMA_5_TD[ i+1 ],
            CY_DMA_TD_INC_DST_ADR
        );
    CyDmaTdSetConfiguration(
        DMA_5_TD[ TDS_PER_DMA-1 ],
        bytes_per_TD,
        CY_DMA_DISABLE_TD,
        DMA_5__TD_TERMOUT_EN | CY_DMA_TD_INC_DST_ADR
    );
    
    for(int i=0; i<TDS_PER_DMA; ++i)
        CyDmaTdSetAddress(
            DMA_5_TD[ i ],
            LO16((uint32) &ADC_CurrentSens_finalArray[
                ADC_CurrentSens_GET_RESULT_INDEX_OFFSET - CH5
            ]),
            LO16((uint32) ((uint8*)signal_dma5 + i*bytes_per_TD ))
        );    
}//END init_dmas()

CY_ISR( isr_adc_done ){ 
    
    isr_tracker[ isr_trigger_counter++ ] = CH5;
   
    ADC_Clock_Stop();
    LED_P2p1_Write( LED_OFF );
    
}//END CY_ISR( isr_adc_done )

CY_ISR( isr_1_done ){
    isr_tracker[ isr_trigger_counter++ ] = CH1;    
}
CY_ISR( isr_2_done ){   
    isr_tracker[ isr_trigger_counter++ ] = CH2;    
}
CY_ISR( isr_3_done ){ 
    isr_tracker[ isr_trigger_counter++ ] = CH3;    
}
CY_ISR( isr_4_done ){  
    isr_tracker[ isr_trigger_counter++ ] = CH4;    
}


/* [] END OF FILE */
