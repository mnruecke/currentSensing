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
#include "project.h"
#include <stdio.h>

int main(void)
{
    CyGlobalIntEnable; /* Enable global interrupts. */

    /* Place your initialization/startup code here (e.g. MyInst_Start()) */
    UART_1_Start();
    UART_1_PutString("Psoc running...\n\r");
    
    IDAC8_1_Start();
    IDAC8_2_Start();
    IDAC8_3_Start();
    IDAC8_4_Start();
    
    IDAC8_1_Data_PTR
    
    reg32 dac_3_downto_0_ptr = 0x40005b80u;

    int shift=0;
    char msg[80];
    for(;;)
    {
        /* Place your application code here. */
        if( UART_1_GetRxBufferSize() > 0 ){
            char uart_in = UART_1_GetChar();
            if( uart_in == 's' )
                shift = shift < 24 ? shift + 8 : 0;
            if( uart_in == 'e' ){
                *(uint32*)dac_3_downto_0_ptr = 255<<shift;
            }
            if( uart_in == 'a' ){
                *(uint32*)dac_3_downto_0_ptr = 0;
            }
            sprintf( msg, "Shift: %d\n\r", shift);
            UART_1_PutString( msg );
            
        }
    }
}

/* [] END OF FILE */
