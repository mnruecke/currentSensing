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
    

    int shift=0;
    char msg[80];
    for(;;)
    {
        /* Place your application code here. */
        if( UART_1_GetRxBufferSize() > 0 ){
            
            char uart_in = UART_1_GetChar();
            
            if( uart_in == 's' )
                shift = shift < 24 ? shift + 8 : 0;

            sprintf( msg, "Shift: %d\n\r", shift);
            UART_1_PutString( msg );
           
        }
    }
}

/* [] END OF FILE */
