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
serialPort = '\\\\.\\COM11' # USBFS 8; UART 22 
baudrate = 115200
time_out = 10

# sequence details
bytesPerSample      = 2
bufInputSize        = 100 *60 *5*2 # max: 60000
num_of_channels     = 5
sampling_time_ms    = 1/100 # kHz / kHz
channel_switch_t_ms = 1/1000 # kHz / kHz

data_is_interleaved = True

# plotting options
data_cut_factor = 100
show_front      = 0
clear_old_plot  = 1

# list of commands 
p_run_sequ      = b'r' # starts the sequence
p_get_data      = b'o' # requests binary ADC data
p_get_chip_id   = b's'

U_adc_ref       = 999 # 0...999; U = 4.096 mV * U_adc_ref
p_set_adc_ref   = bytes("a{:03}".format(U_adc_ref),'UTF-8')

""" END - main settings """


""" start measurement on PSoC and get data """
for repetition_i in range( 1 ):

    try: # open and interact with serial port 
        ser = serial.Serial( serialPort, baudrate, timeout=time_out)
        
        #ser.write( p_get_chip_id )
        #time.sleep( 0.005 )
        #print( "Chip: ", ser.read(34) )
        
        ser.write( p_set_adc_ref )
        time.sleep( 0.005 )
        
        ser.write( p_run_sequ )
        time.sleep(0.030)
        ser.flushInput()
        time.sleep(0.005)
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

    finally: # close serial port
        ser.close()
        
           
    # visualize data
    data_pts_per_channel    = len(adc_data_int16 ) // num_of_channels
    seq_duration            = data_pts_per_channel * sampling_time_ms
    t = np.linspace( 0, seq_duration, data_pts_per_channel)
    
    if clear_old_plot:
        plt.cla()
    data_cut = data_pts_per_channel // data_cut_factor

    for ch in range( 0, num_of_channels ):
        
        channel_t_shift = (     ch#(num_of_channels-ch-1)
                              * channel_switch_t_ms
                          )    
        time = t + channel_t_shift
        
        if data_is_interleaved:
            volt_over_time = adc_data_int16[ ch :: num_of_channels ]
            # Interleaved data
        else:
            volt_over_time = (
                adc_data_int16[ ch * data_pts_per_channel :
                                (ch + 1) * data_pts_per_channel
                ]
            )
            # Consecutive data blocks
                
        if show_front:
            plt.plot( time[ : data_cut ],
                      volt_over_time[ : data_cut ]
            )
        else:
            plt.plot( time[ -data_cut : ],
                      volt_over_time[ -data_cut : ]
            )
            
    plt.xlabel('time [ms]')
    plt.ylabel('signal [mV]')
    plt.show()  
    
            
    
            
                    