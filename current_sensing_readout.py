# -*- coding: utf-8 -*-
"""
Created on Fri Jan 27 16:23:17 2023

@author: marti
"""

import serial
import time
import struct
import os
import os.path

import numpy as np
import matplotlib.pyplot as plt


""" main settings """

# Serial port:
serialPort = '\\\\.\\COM3' # USBFS 8; UART 22 
baudrate = 115200
time_out = 10

# sequence details
bytesPerSample      = 2
bufInputSize        = 60000 # max: 60000
num_of_channels     = 5
sampling_time_ms    = 1/100 # kHz / kHz
channel_switch_t_ms = 1/1000 # kHz / kHz

software_trigger    = False
data_is_interleaved = True
send_head_only      = False
head_size           = 600

# plotting options
data_cut_factor = 1
show_front      = 0
clear_old_plot  = 1

# list of commands 
p_run_sequ      = b'r' # starts the sequence
p_get_data      = b'o' # requests binary ADC data
p_get_data_head = b'h' # only the first 600 bytes
p_get_chip_id   = b's'
p_is_new_signal = b'n' # sends b'Y' back if true and b'N' if false

U_adc_ref       = 400 # 0...999; U = 4.096 mV * U_adc_ref
p_set_adc_ref   = bytes("a{:03}".format(U_adc_ref),'UTF-8')
V_per_A         = 34.39 # V / A; Current sensor calibration

U_trig_ref      = 200 # 0..255 ( = 0...4.096V)
p_set_trig_ref  = bytes("t{:03}".format(U_trig_ref),'UTF-8')

""" END - main settings """


""" start measurement on PSoC and get data """
try: # open and interact with serial port 

    ser = serial.Serial( serialPort, baudrate, timeout=time_out )
    
    for repetition_i in range( 1 ):
    
       
        ser.write( p_set_trig_ref )
        time.sleep( 0.005 )     
   
        ser.write( p_set_adc_ref )
        time.sleep( 0.005 )    
    
        #ser.write( p_get_chip_id )
        #time.sleep( 0.005 )
        #print( "Chip: ", ser.read(34) )
        
        ser.write( p_is_new_signal )
        time.sleep( 0.005 )
        signal_status = ser.read(1)        
        if signal_status == b'N':
            print("Old signal")
            time.sleep(0.5)
            continue      
        print("New signal")
        
        if software_trigger:
            ser.write( p_run_sequ )
            time.sleep(0.030)
        ser.flushInput()
        time.sleep(0.005)
        if send_head_only:
            ser.write( p_get_data_head )
            bufInputSize = head_size
        else:
            ser.write( p_get_data )
        time.sleep(0.005)
        
        # get data as byte stream 
        adc_data_bin = ser.read( bufInputSize )
        
        if data_is_interleaved:
            data_order = "interleaved"
        else:
            data_order = "consecutive packets"
        print(  
            f'Run #{ repetition_i };',
            f'Bytes: { len(adc_data_bin) };',
            f'Data format: { data_order }'
        )
        
        # transform byte stream into int16 array
        adc_data_int16 = struct.unpack('<'+'h'
                                       *int(len(adc_data_bin)
                                            /bytesPerSample),
                                       adc_data_bin
                                       )
        
           
        # visualize data
        data_pts_per_channel    = len(adc_data_int16 ) // num_of_channels
        seq_duration            = data_pts_per_channel * sampling_time_ms
        t = np.linspace( 0, seq_duration, data_pts_per_channel)
        
        if clear_old_plot:
            plt.cla()
        data_cut = data_pts_per_channel // data_cut_factor
    
        for ch in range( 0, num_of_channels ):
            
            channel_t_shift = ch * channel_switch_t_ms    
            x_time = t - channel_t_shift
            
            if data_is_interleaved:
                ampere_over_time = (
                      1/V_per_A * np.array(
                          adc_data_int16[ ch :: num_of_channels ]
                      )
                )
                # Interleaved data
            else:
                ampere_over_time = (                       
                     1/V_per_A * np.array(
                           adc_data_int16[ ch * data_pts_per_channel :
                                        (ch + 1) * data_pts_per_channel
                           ]
                       )
                )
                # Consecutive data blocks
                                
            if show_front:
                plt.plot( x_time[ : data_cut ],
                          ampere_over_time[ : data_cut ]
                )
            else:
                plt.plot( x_time[ -data_cut : ],
                          ampere_over_time[ -data_cut : ]
                )
                
        plt.xlabel('time [ms]')
        plt.ylabel('signal [a.u.]')
        plt.show()  

finally: # close serial port
    ser.close()
    

           
    
            
                    