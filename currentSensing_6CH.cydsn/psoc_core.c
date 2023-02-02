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

    isr_switchCH_StartEx( isr_switch_channel );
    
    WaveDAC8_1_Start();
    
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
        if( selected_option == 'r' ) isr_switchCH_SetPending();
        if( selected_option == 'c' ) clear_terminal();
        if( selected_option == 'x' ) CySoftwareReset();
        if( selected_option == 'a' ) read_all_channels_to_uart();
        if( selected_option == 'm' ) current_sensing_to_uart();
        if( selected_option == '1' ) select_channel( 0 );    
        if( selected_option == '2' ) select_channel( 1 );    
        if( selected_option == '3' ) select_channel( 2 );    
        if( selected_option == '4' ) select_channel( 3 );    
        if( selected_option == '5' ) select_channel( 4 );    
        if( selected_option == '6' ) select_channel( 5 );    
    }//END if( UART_GetRxBufferSize() != 0 )   
}//END uart_interface()



CY_ISR( isr_switch_channel ){ 
    current_channel++;
    if( current_channel >= NUM_OF_CHANNELS )
        current_channel = 0;
    select_channel( current_channel );
}//END CY_ISR( isr_switch_channel )

 
/* [] */
