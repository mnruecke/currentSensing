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
#ifndef PSOC_CORE_H
#define PSOC_CORE_H

    #include "project.h"

    #define TRUE    1
    #define FALSE   0
      
    #define LED_ON  1
    #define LED_OFF 0

    #define HIGH    1
    #define LOW     0    
    
    
    // Terminal
    #define TERMINAL_N_ROWS       40
    #define TERMINAL_N_COLUMNS    80
    #define BACKSPACE             8
    char    uart_last_byte;

        
    void psoc_init(void);
    void clear_terminal(void);
    void uart_interface(void);
    
    CY_ISR_PROTO( isr_switch_channel );

    
#endif /* PSOC_CORE_H */   
/* [] */
