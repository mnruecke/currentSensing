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
   
    
    #define KEY_RUN             'r'
    #define KEY_RESET           'x'
    #define KEY_CLEAR_SCREEN    'c'
    #define KEY_GET_ASCII_DAT   'g'
    #define KEY_GET_BINARY_DAT  'o'
    #define KEY_SET_ADC_REF     'a'
    #define KEY_GET_CHIP_ID     's'
    #define KEY_FLASH_TEST      'f'
    #define KEY_ISR_TEST        't'
    #define KEY_IS_NEW_SIGNAL   'n'
    
    
    // Trigger
    #define TRIGGER_THRESHOLD         200
    #define TRIGGER_FROM_SIGNAL_ON    1
    #define TRIGGER_FROM_SIGNAL_OFF   0
    
    
    // Terminal
    #define TERMINAL_N_ROWS       40
    #define TERMINAL_N_COLUMNS    80
    #define BACKSPACE             8
    
    #define USBUART_BUFFER_SIZE 64u //Original
    #define USBFS_DEVICE    (0u)
    #define USBFS_TX_SIZE   60    // exakt package size

    #define PSEUDO_ID_LENGTH 34
    struct ID_STR{
        int  length;
        char pseudoid[PSEUDO_ID_LENGTH];
    };
    
    int signal_changed_since_readout;
        
    void psoc_init(void);
    void clear_terminal(void);
    void uart_interface(void);
    void usbfs_interface(void);
    void get_signal(void);
    void get_binary_data(void);
    void set_adc_range(int);
    void get_chip_id( struct ID_STR* );
    void get_chip_id_usbfs(void);
    void get_chip_id_uart(void);
    void test_flash(void);
    void test_isr_finish_order(void);
    
    CY_ISR_PROTO( isr_start_sampling );

    
#endif /* PSOC_CORE_H */   
/* [] */
