# -*- coding: utf-8 -*-
"""
Created on Wed Feb  6 20:33:49 2019

@author: marti
"""
import time
import serial




""" HC-05-programming

    script for name change and baudrate change for HC-05 modules

    usage:

    1. com_port_prog: set the COM-Port of your UART connection to the HC-05 module    
    2. chose module_name and module_baud_rate
    3. activate HC-05 programming mode (=hold the button pressed while power cycling)
    3. run py-script

"""



com_port_prog  = 8 # com port of uart connection to HC-05 module 


module_name = b'RDS'
#module_baud_rate  = b'115200'
module_baud_rate  = b'1382400'
  



""" ------------------ HC-05 programming routine ------------- """

baud_rate_prog = 38400 # programming mode baudrate of HC-05 module 
time_out_prog  = 1


at_commands = [b'AT+UART=' + module_baud_rate + b',0,0\r\n',\
                b'AT+UART?\r\n',\
                b'AT+NAME=' + module_name + b'\r\n',\
                b'AT+NAME?\r\n',\
                b'AT\r\n']
    

def program_hc05( command_list=at_commands, com_port=com_port_prog):
    """ writes AT-command list to HC-05 module via USBUART """
    ser_prog = serial.Serial( port='\\\\.\\COM' + str(com_port), baudrate=baud_rate_prog, timeout=time_out_prog) # port, baudrate, timeout
    print("Successfully connected to programming port")
    time.sleep(0.02)
    programming_completed=True
    try:
        for command in command_list:
            ser_prog.write( command )
            time.sleep(0.02)
            response = ser_prog.read(100) 
            time.sleep(0.02)
            retries = 0
            while( response[0:5] == b'ERROR' or response == b'' ):
                retries += 1
                ser_prog.write( command )
                time.sleep(0.02)
                response = ser_prog.read(100)
                time.sleep(0.02)
                print("retries: " + str(retries) + '  (command: ' + str(command) +  ')')
                if( retries > 3 ):
                    print("giving up (command: " + str(command) + ')')
                    programming_completed=False
                    break
            time.sleep(0.02)
            print( response )
    finally:           
        ser_prog.close()
    if( programming_completed ):
        print("\nProgramming successfull\n")
    else:
        print("\nErrors occured\n")
    return programming_completed


program_hc05()

""" ------------------- EOF ------------------- """
