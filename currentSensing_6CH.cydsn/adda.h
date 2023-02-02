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

#ifndef ADDA_H
#define ADDA_H
    // TopDesignSheets: ADDA - Current Sensing
    //                  ADDA - Voltage Sensing 
    
    #include "project.h"
    
    #define  POSEDGE    1
    #define  NEGEDGE    0
    
    #define  NUM_OF_CHANNELS 7
    uint8    current_channel;
    
    void init_adda(void);
    void read_all_channels_to_uart(void);
    void current_sensing_to_uart(void);
    void select_channel(uint8);
    
    
#endif // ADDA_H

/* [] END OF FILE */
