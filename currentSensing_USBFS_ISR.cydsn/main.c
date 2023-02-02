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
#include "psoc_core.h"

int main(void)
{
    CyGlobalIntEnable; /* Enable global interrupts. */

    psoc_init();

    for(;;)
    {
        uart_interface();
        usbfs_interface();
    }
}

/* [] END OF FILE */
