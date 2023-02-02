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
    
    #define USBUART_BUFFER_SIZE 64u //Original
    #define USBFS_DEVICE    (0u)
    #define USBFS_TX_SIZE   60    // exakt package size

        
    void psoc_init(void);
    void clear_terminal(void);
    void uart_interface(void);
    void usbfs_interface(void);
    void get_signal(void);
    void get_binary_data(void);
    
    CY_ISR_PROTO( isr_start_sampling );

    
#endif /* PSOC_CORE_H */   
/* [] */
