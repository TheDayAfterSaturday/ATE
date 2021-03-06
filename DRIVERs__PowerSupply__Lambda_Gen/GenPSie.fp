s��        3B   - )�  	L   �   ����                               GenPSie     Lambda GENESYS DC Power                       � � ��ViInt16  �  � ��ViInt32  � � ��ViUInt16  � � ��ViUInt32  � � ��ViReal64     	�  ViInt16[]     	�  ViInt32[]     
�  	ViReal64[]     � ��ViRsrc  � 	� 	��ViSession     �  ViChar[]  �  � ��ViStatus  � 	� 	��ViBoolean     � 	 
ViBoolean[]     � ��ViConstString     � ��ViString  �    This function performs the following initialization actions:

- Opens a session to the Default Resource Manager resource and a session to the specified device using the interface and address specified in the Resource_Name control.

- Optionally, reads the instrument's identity and verifies it is a "Lambda,GENESY" DC Power Supply.

- Optionally, resets the instrument to a known state (output off, programming to 0 Volts and 0 Amps, Safe Start, OVP maximum and UVL to zero).

- Sends "SYSTEM:ERROR:ENABLE" command that enables the instrument to report command, execution and fault warnings and errors. This reporting mechanism is required for all other driver functions to return the correct status.

- Returns an Instrument Handle which is used to differentiate between different sessions of this instrument driver.

- Each time this function is invoked a Unique Session is opened.  It is possible to have more than one session open for the same resource.
    �    This control specifies the interface and address of the device that is to be initialized (Instrument Descriptor). The exact grammar to be used in this control is shown in the note below. 

Default Value:  "GPIB0::6::INSTR"

Notes:

(1) Based on the Instrument Descriptor, this operation establishes a communication session with a device.  The grammar for the Instrument Descriptor is shown below.  Optional parameters are shown in square brackets ([]).

Interface   Grammar
------------------------------------------------------
GPIB        GPIB[board]::primary address[::secondary address]
            [::INSTR]

Keywords:
  "GPIB" refers to GPIB instruments (the only bus supported
        by this driver).
  "board" refers to the IEEE controller primary address.
  "primary address" refers to the GENESYS IEEE address
        (settable by holding down front panel LOC/RMT button)
  "secondary address" not supported by GENESYS. Do not include


    7    This control returns an Instrument Handle that is used in all subsequent function calls to differentiate between different sessions of this instrument driver.

Notes:

(1) Each time this function is invoked a Unique Session is opened.  It is possible to have more than one session open for the same resource.
    u    This control specifies if an ID Query is sent to the instrument during the initialization procedure. The identity response must start with "LAMBDA,GEN" or an error will be returned.

Valid Range:
VI_FALSE (0) - Skip Query
VI_TRUE  (1) - Do Query (Default Value)

Notes:
   
(1) Under normal circumstances the ID Query ensures that the instrument initialized is the type supported by this driver. However circumstances may arise where it is undesirable to send an ID Query to the instrument.  In those cases; set this control to "Skip Query" and this function will initialize the selected interface, without doing an ID Query.

    F    This control specifies if the instrument is to be reset to its safe settings during the initialization procedure.

Valid Range:
VI_FALSE (0) - Don't Reset  (Default Value)
VI_TRUE  (1) - Reset Device 

Notes:

(1) If you do not want the instrument reset. Set this control to "Don't Reset" while initializing the instrument.
    ?    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported - VI_WARN_NSUP_ID_QUERY   
3FFC0102  Reset not supported - VI_WARN_NSUP_RESET      
3FFC0103  Self Test not supported - VI_WARN_NSUP_SELF_TEST  
3FFC0104  Error Query not supported - VI_WARN_NSUP_ERROR_QUERY
3FFC0105  Revision Query not supported - VI_WARN_NSUP_REV_QUERY  
3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFC0001  Parameter 1 out of range. (String not range checked)
BFFC0002  Parameter 2 (ID Query) out of range.
BFFC0003  Parameter 3 (Reset Device) out of range.
BFFC0004  Parameter 4 out of range.
BFFC0005  Parameter 5 out of range.
BFFC0006  Parameter 6 out of range.
BFFC0007  Parameter 7 out of range.
BFFC0008  Parameter 8 out of range.
BFFC0011  Instrument returned invalid response to ID Query

BFFC0800  Error Opening File      VI_ERROR_INSTR_FILE_OPEN
BFFC0801  Error Writing to File   VI_ERROR_INSTR_FILE_WRITE
BFFC0803  Invalid Response VI_ERROR_INSTR_INTERPRETING_RESPONSE
BFFC0809  Parameter 9 out of range.  VI_ERROR_INSTR_PARAMETER9
BFFC080A  Parameter 10 out of range. VI_ERROR_INSTR_PARAMETER10
BFFC080B  Parameter 11 out of range. VI_ERROR_INSTR_PARAMETER11
BFFC080C  Parameter 12 out of range. VI_ERROR_INSTR_PARAMETER12

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.

Notes:

(1) Parameter Error Codes for parameters 1 through 8 are defined in the vpptype.h header file the range is BFFC0001 - BFFC0008; Parameter Error Codes for parameters 9 through 15 are defined in the instrument driver's header file the range is BFFC0809 - BFFC080F; for parameter errors greater than 15, and other instrument specific error codes, use an error code in the range of BFFC0900 to BFFC0FFF.  This is equivalent to using (VI_ERROR_INSTR_OFFSET + n); where n represents each instrument specific error number.  Valid ranges for n are 0 to 6FF.  (All values are given in Hexadecimal Notation)

(2) Delete all unused status codes from the Status Control of each function panel when you are finished development of your instrument driver, for example in this control the status codes for parameters 1, 3-8, and the codes for Error Opening and Writing to File should be deleted.  Those status codes are provided here as a convenience for during driver development.  

(3) Delete these three (3) notes when you are finished with your driver development.    � $   �  �    Resource Name                     	P � � �  �    Instrument Handle                 
� 1 � �       ID Query                           ;o �       Reset Device                      Z �j���  �    Status                             "GPIB0::6::INSTR"    
        0  %  Do Query VI_TRUE Skip Query VI_FALSE  *  Reset Device VI_TRUE Don't Reset VI_FALSE    	          �    Sends any command to the instrument. Does status checking to make sure the command was accepted as valid and within the instrument's limits.

Before sending the command, a serial poll is done and if any SYSTEM:ERROR message exists, the message is cleared.  After the command is sent, a serial poll is again sent and if any SYSTEM:ERROR message exists, the error number is read and returned as the VI_STATUS.        This control can also be used to write any valid command to the instrument.

Default Value:  "*RST"

Notes:

(1) The command or query to be sent to the instrument may be a literal enclosed in double quotes i.e. "*RST" or may be contained in a variable of type string.
    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
  ���� � ?  �  �    Instrument Handle                 � 2 P � �    Write Buffer                      � �j���  �    Status                                 "*RST"    	           �    This function programs the DC voltage level the power supply attempts to generate.

A delay may be set after the programming command in order to allow the power supply output to settle before the next command is accepted.     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
     �    After the program voltage command is sent, a delay time, in milliseconds, causes the program to pause while the output  settles before continuing with the program     O    This is the output voltage setpoint that the power supply tries to achieve. 
    $) #  �  �    Instrument Handle                 $�T���  �    Status                            (| hd �      Settling Delay                    )( k W � �    Voltage Setting                        	             �                   0.0000    �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
     �    After the program voltage command is sent, a delay time, in milliseconds, causes the program to pause while the output  settles before continuing with the program    *� � ?  �  �    Instrument Handle                 +2 �p���  �    Status                            .� C� �      Settling Delay                  ���� F s � �    Current Setting                        	             �                   0.0000    �    This function turns the power supply output ON or OFF.

If the output is commanded to be turned ON, but a fault forbids it, this function will return an error.

SCPI command: "OUTPUT:STATUS 0 or 1"
     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
     �    Boolean input to function. There are two valid values:

VI_TRUE:   turn supply output ON  (enable output)
VI_FALSE:  turn supply output OFF (disable output)

SCPI command: "OUTP:STAT ON" or "OUTP:STAT OFF"    1X � I  �  �    Instrument Handle                 2 �c���  �    Status                            5� Y � �  �    Output On                              	           0   '    This function sets the Over-Voltage Protection (OVP) level.

The OVP level has two purposes:
1. Prevents the voltage programming level from being set too high.
2. Will shut down the power supply with an OVP fault if the output voltage exceeds the OVP level

SCPI command: "VOLT:PROT:LEV nn.nn"     �    Numeric setting for the Over-Voltage Protection level,

Value may be from 105% of the progranned voltage setting to 105% (typical) of the supply's maximum voltage rating

      �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
    8e B � � �    OVP Setting                       9 � 5  �  �    Instrument Handle                 9� �i���  �    Status                             0.0000        	          b    This function sets the Over-Voltage Protection (OVP) to the maximum allowed level.  This level is 110% or 120% of voltage rating.  See the Specifications section of the power supply Technical User Manual.

The OVP is used to shut down the power supply with an OVP fault if the output voltage exceeds the OVP setting. 

SCPI command: "VOLT:PROT:LEV MAX"     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
    ?� � 5  �  �    Instrument Handle                 @? �i���  �    Status                                 	           �    This function sets the Under-Voltage Limit (UVL) level.

The UVL prevents the voltage programming level from being set too low.

SCPI command: "VOLT:LIM:LOW nn.nn"     s    Numeric setting for the Under-Voltage Limit,

Value may be from zero to 95% of the progranned voltage setting.

      �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
    E B � � �    UVL Setting                       E� � 5  �  �    Instrument Handle                 F4 �i���  �    Status                             0.0000        	          �    This function sets the Power-On and Fault-Recovery setting in the power supply. The setting may be ON or OFF.  Auto-Start Off is also called Safe-Start.

Auto-Start:  Supply output turns on automatically when the supply is first powered-up or after a non-latching fault is cleared.  Non-Latching faults include AC Brownout, Over-Temperature, Enable, and Shut-Off

Safe-Start:  Supply output is disabled (off) when the supply is first powered-up or after a non-latching fault is cleared. The output must be turned on by the front panel OUT button or a "OUTPUT:STATUS ON" command. Non-Latching faults include AC Brownout, Over-Temperature, Enable, and Shut-Off

Default value after Reset: Safe-Start

SCPI command: "OUTPUT:PON 0 or 1"
     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
     �    Boolean input to function. There are two valid values:

VI_TRUE:  Auto-Start ON (also called Safe-Start, enable output at power-up and after fault clears)

VI_FALSE: Auto-Start OFF  (disable output at power-up and after fault clears)

    My 4  �  �    Instrument Handle                 N' N���  �    Status                            Q� h � �  �    Auto-Start On                          	           	VI_FALSE   H    This function sets the Foldback protection ON or OFF.

If the Foldback protection is ON, the power supply shuts down and shows a fault if the power supply goes into constant voltage (CV) mode. If the supply is running in CV mode when the protection is turned ON, the fault will occur immediately. The CV condition must exist for about a half a second before the fault occurs.

This protection is typically used to protect against a short circuit at the supply outputs.

Default value after Reset: Foldback protection OFF

SCPI command: ":CURR:PROT:STAT ON" or ":CURR:PROT:STAT OFF"
     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
     �    Boolean input to function. There are two valid values:

VI_TRUE:  Set Foldback protection ON. If the power supply goes into constant-voltage mode, it shuts down with a FLD fault

VI_FALSE: Set Foldback protection OFF

    U� 4  �  �    Instrument Handle                 Vz N���  �    Status                            Z h � �  �    Foldback On                            	           	VI_FALSE   �    This function sets the operating mode of the power supply.

Input value:

GenLOCAL = Local mode, settings made by front panel

GenREMOTE = Remote mode, settings made by RS232/RS485 or IEEE-488 computer.  Front panel "Go to Local" button operational to return supply to Local mode.

GenLLO = Local-Lockout mode, a remote mode where settings made by RS232/RS485 or IEEE-488 computer.  Front panel "Go to Local" button is disabled. Supply can be returned to Local only by computer command or cycling AC off and on.


Default value after Reset: Local, unless power-down setting was LLO and then Reset puts it into Remote.

SCPI command: "SYST:SET " and "LOC", "RMT" or "LLO"
     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
    �    Integer input to function. There are three valid values:

GenLOCAL = 0 = Local mode, settings made by front panel

GenREMOTE = 1 = Remote mode, settings made by RS232/RS485 or IEEE-488 computer.  Front panel "Go to Local" button operational to return supply to Local mode.

GenLLO = 2 = Local-Lockout mode, a remote mode where settings made by RS232/RS485 or IEEE-488 computer.  Front panel "Go to Local" button is disabled. Supply can be returned to Local only by computer command or cycling AC off and on.

    ^g � I  �  �    Instrument Handle                 _ �c���  �    Status                            b� V � �  �    System Mode                            	           
Gen_LOCAL   z    Sends any query to the instrument and reads the response. Does status checking to make sure the query was accepted and that a response message was received.

Before sending the query, a serial poll is done. If any response messages remain from a prior query, the message is read and discarded. If any prior SYSTEM:ERROR message exists, the message is cleared.  After the query is sent, a serial poll is again sent and if any response message is available or if a SYSTEM:ERROR message exists.  If a SYSTEM:ERROR was created by the query, or if no response message is available, the error number is read and returned as the VI_STATUS.    �    The response message from the instrument is placed into this variable. 

Notes:

(1) Because the instrument may return both numeric and text data in response to queries this function returns the data in string format.

(2) This function does not overwrite any old data left in the string variable from the last time the function was called. String data in LabWindows/CVI is terminated with an ASCII null(0x0) and string manipulation functions will only recognize data before the ASCII null.

(3) The declared size of the string variable must be greater than the actual number of bytes read from the instrument. If it is not, a run-time error will be generated.
     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
    �    This variable contains the actual number of bytes read from the instrument. This is the value which is returned by the read function. 

The string terminator character (NULL, or 0x0), is not included in the count.

Notes:

(1) If the read function fails and the number of bytes read is 0, the most probable cause for the failure is there was no data available at the instrument's output buffer (timeout error).    g� � 9 � �    Read Buffer                       j� (  �  �    Instrument Handle                 kL^���  �    Status                          ���� > = �  �    Query String                      n� �< �  �    Read Count                         	                	           "MEAS:VOLT?"    
        0    u    Measure the actual output voltage from the power supply. 
Response value is in volts DC.

SCPI query:  "MEAS:VOLT?"     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
     e    Returned value from function call, is actual measured output voltage of power supply,  in volts DC.    rT	 $  �  �    Instrument Handle                 sd���  �    Status                            v� b: � �    Measured Voltage                       	                  0.0000    t    Measure the actual output current from the power supply. 
Response value is in amps DC.

SCPI query: "MEAS:CURR?"
     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
     d    Returned value from function call, is actual measured output current of power supply,  in amps DC.    xQ � +  �  �    Instrument Handle                 x� �k���  �    Status                            |� IA � �    Measured Current                       	                  0.0000       This function reads the output voltage setting for the power supply. 

When the power supply is operating in constant current mode, or if the output is off, then the output voltage setting will be different than the actual output voltage.

SCPI query: ":VOLT?"
     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    5    This is the output voltage setting of power supply.
It is a number with units volts DC.

This setting is not the same as the actual output voltage. For instance, if the power supply output is short-circuited, its actual output will be zero volts no mater what the voltage setting is.

SCPI query:  ":VOLT?"
    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
    ~� -  �  �    Instrument Handle                 � K* � �    Voltage Setting                   ��<���  �    Status                                        0.0000    	              This function reads the output voltage setting for the power supply. 

When the power supply is operating in constant current mode, or if the output is off, then the output voltage setting will be different than the actual output voltage.

SCPI query: ":VOLT?"
     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    (    This is the output current setting of power supply.
It is a number with units amps DC.

This setting is not the same as the actual output current. For instance, if the power supply output is open, its actual output will be zero amps no mater what the current setting is.

SCPI query:  ":CURR?"
    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
    �@ -  �  �    Instrument Handle                 �� L, � �    Current Setting                   �<���  �    Status                                        0.0000    	          U    This function reads the output state the power supply. The output is either On or Off (enabled or disabled).

The output is turned off by an output off ("OUT OFF") command, pressing the front panel OUT button, or a fault shutdown. Programming the output to zero volts or zero amps does not turn the output off.

SCPI query: "OUTPUT:STATE?"     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
    #    This is the output state of the power supply. 
It is a boolean whose value may be TRUE or FALSE
    TRUE  = output ON,  output enabled
    FALSE = output OFF, output disabled

The output may be turned off by command, front panel OUT button or a fault shut-down.

SCPI query:  "OUTP:STAT?"
    �� � &  �  �    Instrument Handle                 �� �5���  �    Status                            �4 2 � �  �    Output On                              	                   VI_FALSE    �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
     E    Returned numeric value of the Over-Voltage Protection (OVP) setting    �" � #  �  �    Instrument Handle                 �� �W���  �    Status                            �u I � �  �    OVP Setting                            	                  0.0000    �    
This function reads the Under-Voltage Limit (UVL) level.

The UVL prevents the voltage programming level from being set too low.

SCPI query: "VOLT:LIM:LOW?"     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
     E    Returned numeric value of the Over-Voltage Protection (OVP) setting    �+ � #  �  �    Instrument Handle                 �� �W���  �    Status                            �~ I � �  �    UVL Setting                            	                  0.0000   X    This function reads the Power-On and Fault-Recovery setting in the power supply. The setting may be ON or OFF.  Auto-Start Off is also called Safe-Start.

Auto-Start:  Supply output turns on automatically when the supply is first powered-up or after a non-latching fault is cleared.  Non-Latching faults include AC Brownout, Over-Temperature, Enable, and Shut-Off

Safe-Start:  Supply output is disabled (off) when the supply is first powered-up or after a any fault is cleared. The output must be turned on by the front panel OUT button or a "OUTPUT:STATUS ON" command. 

SCPI query: "OUTPUT:PON?"     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
    !    




This is the state of the power supply. 
It is a boolean whose value may be TRUE or FALSE
    TRUE  = output ON,  output enabled
    FALSE = output OFF, output disabled

The output may be turned off by command, front panel OUT button or a fault shut-down.

SCPI query:  "OUTP:STAT?"
    �� � @  �  �    Instrument Handle                 �� �O���  �    Status                            �? 8 � �  �    Auto-Start On                          	           	           7    This function reads if the Foldback protection is ON or OFF.

This is different than reading Foldback Tripped, which is true if Foldback is ON and a Foldback fault shutdown occurred.

This protection is typically used to protect against a short circuit at the supply outputs.

SCPI query: ":CURR:PROT:STAT?"

     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
     �    This boolean set to show if Foldback protection is ON or OFF.

This is different than reading Foldback Tripped, which is true if Foldback is ON and a Foldback fault shutdown occurred.
    �b � @  �  �    Instrument Handle                 � �O���  �    Status                            �� 8 � �  �    Foldback On                            	           	           `    This function reads the remote mode of the power supply.

Output value is integer 0, 1 or 2 with global DEFINEs shown below:

0 = GenLOCAL = Local mode, settings made by front panel

1 = GenREMOTE = Remote mode, settings made by RS232/RS485 or IEEE-488 computer.  Front panel "Go to Local" button operational to return supply to Local mode.

2 = GenLLO = Local-Lockout mode, a remote mode where settings made by RS232/RS485 or IEEE-488 computer.  The front panel "Go to Local" button is disabled. Supply can be returned to Local only by computer command or cycling AC off and on.


SCPI query: "SYST:SET?"
     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
        Integer returned from function. There are three valid values:

GenLOCAL = 0 = Local mode, settings made by front panel

GenREMOTE = 1 = Remote mode, settings made by RS232/RS485 or IEEE-488 computer.  Front panel "Go to Local" button operational to return supply to Local mode.

GenLLO = 2 = Local-Lockout mode, a remote mode where settings made by RS232/RS485 or IEEE-488 computer.  Front panel "Go to Local" button is disabled. Supply can be returned to Local only by computer command or cycling AC off and on.
    �� � ;  �  �    Instrument Handle                 �H �U���  �    Status                            �� V � �  �    Remote Mode                            	           	            �    This function reads the operating mode of the power supply.

Output is string:

  "CV"  = Constant Voltage
  "CC"  = Constant Current
  "OFF" = Output off

SCPI query: "SOUR:MOD?"
     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
     �    Output from function returns array of 2 or 3 characters (plus terminating null).

Returned values:
"CV"  = Constant Voltage
"CC"  = Constant Current
"OFF" = Output off
    �q � .  �  �    Instrument Handle                 � �H���  �    Status                            �� L � �  �    Output Mode                            	                   "   "   �    This function reads the Questionable Condition register to determine if there are any fault conditions which have caused the power supply to shut down its output outside of the IEEE control.

The seven reported shut down faults are:
BIT  NAME  DESCRIPTION
0    -     Spare
1    AC    AC line brownout
2    OTP   Over-Temperature fault
3    FLD   Current foldback fault
4    OVP   Over-Voltage protection fault
5    SO    Rear panel Shut-Off (J1-15) fault
6    OFF   Front panel OUTPUT OFF button pressed
7    ENA   Rear panel Enable (J1-1) fault

The fault bits are non-latching, that is, the bits are cleared when the fault is cleared even if the power supply output is still off.

SCPI query: "STATUS:QUESTIONABLE:CONDITION?"     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
     �    Eight-bit data with bits set to indicate fault conditions.

Bits are:
MSB                                LSB
ENA  OFF  SO   OVP  FLD  OTP  AC   "0"

See Function Help for further details


    �    Null-terminated character string that returns the name of any  fault condition that has shut down the power supply.
Valid strings are:

  No Fault = "" (null string)

  Fault = any one of "ENA" "OFF" "SO" "OVP"  FLD" "OTP" "AC"

Note, if multiple faults exist, only one fault name is returned. The name may not be the same one as displayed on the power supply front panel

See Function Help for further details    �	 @  �  �    Instrument Handle                 ��Z���  �    Status                            �j C Y    �    Fault Bits                        �1 DB �  �    Fault Description                      	           	           	           �    Reset power supply to known safe state.
Settings changed to:
  Output = off
  Program voltage = zero volts
  Program current = zero amps
  Over-Voltage protection (OVP) = maximum
  Under-Voltage limit (UVL) = zero 
  Safe-Start = on
  Foldback = off
  Remote mode = remote (not lockout)


The event registers are set to zeroes as if "*CLS" sent.
The enable registers are not changed

SCPI command: "*RST"     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0102  Reset not supported - VI_WARN_NSUP_RESET      
3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
    �o � 5  �  �    Instrument Handle                 � �t���  �    Status                                 	          �    Save the settings of the power supply. 
The new settings replace those saved during last power-down or last SAVE command. 
The new settings may be replaced when the instrument is powered-down and up again.
 
Settings save:
  Output on or off
  Programmed voltage setting
  Programmed current setting
  Over-Voltage protection (OVP) setting
  Under-Voltage limit (UVL) setting 
  Safe-Start or auto-start
  Foldback on or off
  Remote mode, local, remote or lockout
  IEEE Address

SCPI command:  "*RCL 0"


     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0102  Reset not supported - VI_WARN_NSUP_RESET      
3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
    �z 6  �  �    Instrument Handle                 �( �u���  �    Status                                 	          �    Recall the saved settings of the power supply. 
The recalled settings are those that were last saved using the SAVE command or saved by powering-down and back up.
 
Settings recalled:
  Output on or off
  Programmed voltage setting
  Programmed current setting
  Over-Voltage protection (OVP) setting
  Under-Voltage limit (UVL) setting 
  Safe-Start or auto-start
  Foldback on or off
  Remote mode, local, remote or lockout
  IEEE Address

SCPI command: "*RCL 0"     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0102  Reset not supported - VI_WARN_NSUP_RESET      
3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
    �Z	 *  �  �    Instrument Handle                 �i���  �    Status                                 	           �    Sends any command to the instrument. No error checking is done except to report errors from the IEEE controller. 

Illegal commands and settings out-of-range do not return an error status if the instrument was able to receive the command    c    The user can use this control to send common commands and queries to the instrument. This control can also be used to write any valid command to the instrument.

Default Value:  "*RST"

Notes:

(1) The command or query to be sent to the instrument may be a literal enclosed in double quotes i.e. "*RST" or may be contained in a variable of type string.
    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
  ���� � (  �  �    Instrument Handle                 �W 4 9 � �    Write Buffer                      �� �S���  �    Status                                 "*RST"    	          &    Reads data from instrument message queue. Bytes are read until instrument signals the message has been entirely read (by asserting the EOI line) or until 128 bytes are read. 

No error or status checking is done except by the IEEE controller which may report "timeout" or "no listener" errors    �    The number of bytes specified by this control should be greater than or equal to the number of bytes which are to be read from the instrument. If the actual number of bytes to be read is greater than the number this control specifies then multiple reads will be required to empty the instrument's output buffer.

If the instrument's output buffer is not emptied the instrument may return invalid data when future reads are performed.

Default Value:  50 (See NOTE 2)

Notes:

(1) If NO DATA is available at the instrument's output buffer when this function is called the instrument will hang up and the function will not return until it times out.  If the time-out is disabled, this function will hang indefinitely and it may be necessary to reboot the computer.

(2) If the number of bytes expected is greater than 50 the value of this control may be increased. If the actual number of bytes read is larger than the declared size of the read buffer a run-time error will be generated.
        This variable contains the actual number of bytes read from the instrument. This is the value which is returned by the read function.

Notes:

(1) If the actual number of bytes read is less than the number of bytes specified in the Number Bytes To Read control then the instrument's output buffer has probably been emptied. 

(2) If the read function fails and the number of bytes read is 0, the most probable cause for the failure is there was no data available at the instrument's output buffer (timeout error).    �    The incoming data from the instrument is placed into this variable. 

Notes:

(1) Because the instrument may return both numeric and text data in response to queries this function returns the data in string format.

(2) This function does not overwrite any old data left in the string variable from the last time the function was called. String data in LabWindows/CVI is terminated with an ASCII null(0x0) and string manipulation functions will only recognize data before the ASCII null.

(3) The declared size of the string variable must be greater than the actual number of bytes read from the instrument. If it is not, a run-time error will be generated.
     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
    �N 0 A �  `    Number Bytes To Read              �2 08 �  `    NumBytes Read                     �= � ? � �    Read Buffer                       �� .  �  �    Instrument Handle                 �d���  �    Status                             128    	            	                	           �    This function performs a self-test for the Genesys power supply. The test is a communication test between the instrument's two microcontrollers and the IEEE controller.

     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"     �    This control contains the value returned from the instrument self test.  Zero means success.  For any other code, see the device's operator's manual.
     �    This control contains the string returned from the self test. See the device's operation manual for an explanation of the string's contents.

Notes:

(1) The array must contain at least 256 elements ViChar[256].    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0103  Self Test not supported - VI_WARN_NSUP_SELF_TEST  
3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
    � +  �  �    Instrument Handle                 �� > ^ �  `    Self-Test Result                  �f ? � � ,    Self-Test Message                 �C	N���  �    Status                                 	           	            	          X    This function will read one message from the instrument SYSTEM:ERROR queue.  SYSTEM:ERRORs are buffered to store the last ten errors. The last error in queue is the last one read.

Multiple calls of this function or "SYSTEM:ERROR:ENABLE" may be needed to clear all errors and  cause a "0,"NO ERROR"" response which shows the queue is cleared.     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control returns the error code read from the instrument's error queue as a response to the "SYSTEM:ERROR?" query.

The code is numeric value equal to the SCPI error number. 
Range:
      +200 to +399 = Execution warnings and supply faults
                 0 = No errors
      -100 to -200 = Command errors

The error queue hold the last ten errors. It is "First error in, first error out".

See "IEEE Programming Interface for Genesys" manual in the section "SYSTEM:ERROR Messages"




    �    This control returns the error message string read from the instrument's error message queue.

The message is brief description of the error inside of double quotes. Retuns "No error" for no error in error queue.

The error queue hold the last ten errors. It is "First error in, first error out".

See "IEEE Programming Interface for Genesys" manual in the section "SYSTEM:ERROR Messages"


Notes:

(1) The array must contain at least 256 elements ViChar[256].    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0104  Error Query not supported - VI_WARN_NSUP_ERROR_QUERY
3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
    6    This output returns a numeric conversion of the "SYSTEM:ERROR?" response.

The conversion returns a VISA error number using these rules:
   SCPI error   "+0", return 0 Long (no error)
   SCPI warning "+222 to +399" return 0x3FFC0900L + number 
   SCPI error   "-100 to -112" return 0xBFFC0900L + number 




    �� .  �  �    Instrument Handle                 �/ M G �  `    SCPI Error Code                   $ J � � ,    Error Message                    �a���  �    Status                           � � G �  `    VISA Error Code                        	            	            	           	           %    All calls to the Genesys driver functions return with a Status Code. This function translates the Status Code (error return value) into a user-readable string.

The value of the Status Code may be set by a VISA error, IEEE controller error, Driver problem or error returned from the Genesys.     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"     t    This control accepts the Status Code returned from the instrument driver functions.

Default Value:
0 - VI_SUCCESS     �    This control returns the interpreted Status Code as a user readable message string.

Notes:

(1) The array must contain at least 256 elements ViChar[256].    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

3FFF0085  VI_WARN_UNKNOWN_STATUS

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
   	� #  �  �    Instrument Handle                
4 C  �  `    Status Code                      
� C � � �    Message                          Tm���  �    Status                                 0    	            	          �    This function returns the revision numbers of the instrument driver and instrument firmware, and tells the user with which  instrument firmware this revision of the driver is compatible. 

This instrument driver's Revision Number is

       "Rev 1.0, 05/2003, CVI 6.0"

It is compatible with all Genesys power supplies with an IEEE firmware of rev "B" or higher.

It is NOT comapatible with IEEE firmware rev 14.


     �    TReference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"     �    This control returns the Instrument Driver Software Revision.

Notes:

(1) The array must contain at least 256 elements ViChar[256].        This control returns the Instrument Firmware Revision.

Typical format of returned string:

           REV:GEN1U:1.2-A

where "1.2" is firmware revision of main micro
  and "A"   is firmware revision of IEEE micro

Notes:

(1) The array must contain at least 256 elements ViChar[256].    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0105  Revision Query not supported - VI_WARN_NSUP_REV_QUERY  
3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
   �
 A  �  �    Instrument Handle                h 6 1 �  �    Instrument Driver Revision       � 9F �  �    Firmware Revision                e���  �    Status                                 	            	            	              This function reads the instrument Identity string and parses the fields to return the data as seperate variables.

Example Identity string from the instrument may be:

    "LAMBDA,GEN12.5-60,S/N:98K-3741,REV:GEN1U:1.6-B"

Returned fields are:

     Maximum Voltage ((double) 12.5       in example)
     Maximum Current ((double) 60         in example)
     Serial Number   ((string) "98K-3741" in example)
     Main Revision   ((string) "1.6"      in example)
     IEEE Revision   ((string) "B"        in example) 

SCPI command:  "*IDN?"     �    Reference to the instrument at a certain IEEE address.

The handle, or session, is created by the "GenPSie_init" function which returns the handle as "instrSession"    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0105  Revision Query not supported - VI_WARN_NSUP_REV_QUERY  
3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
     �    Returns the maximum voltage (or voltage rating) of the power supply in DC volts. 

The actual maximum achievable voltage is 5% higher than this value     �    Returns the maximum current (or current rating) of the power supply in DC amps. 

The actual maximum achievable current is 5% higher than this value     �    Returns the Serial Number of the power supply. This number is installed during manufacturing and may be any string up to twenty characters long.

Minimum recommended length = 20 char 

     q    Returns the revision of the instrument's Main Microcontroller firmware.

Minimum recommended length = 20 char 
     q    Returns the revision of the instrument's IEEE Microcontroller firmware.

Minimum recommended length = 20 char 
   $ C  �  �    Instrument Handle                �g���  �    Status                           � B � �  d    Maximum Voltage                   X @F �  d    Maximum Current                   � � Q �  �    Serial Number                    !� �
 �  d    Main Revision                    "2 �� �  d    IEEE Revision                          	           
       0    
       0    	            	            	            �    This function releases the reference to the instrument connection by performing viClose (instrSession) and viClose (rmSession).

Notes:

(1) The instrument must be reinitialized to use it again.    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None   %8����  �    Status                           (�   �  �    Instrument Handle                  	            ����         �  �     K.    init                            ����         -  "�     K.    sendCmd                         ����         #B  )     K.    programVoltage                  ����       ����  /�     K.    programCurrent                  ����         0�  6�     K.    setOutputOn                     ����         76  =n     K.    setOvpLevel                     ����         >'  C�     K.    setOvpMax                       ����         D^  I�     K.    setUvlLevel                     ����         J�  R�     K.    setAutoStart                    ����         S|  [     K.    setFoldback                     ����         [�  d�     K.    setRemoteMode                   ����         e}  p�     K.    readQry                         ����         q�  w     K.    measureVoltage                  ����         w�  }     K.    measureCurrent                  ����         }�  �p     K.    readVoltageSetting              ����         �1  ��     K.    readCurrentSetting              ����         ��  �_     K.    readOutputOn                    ����       ����  ��     K.    readOvpLevel                    ����         ��  ��     K.    readUvlLevel                    ����         ��  �h     K.    readAutoStart                   ����         �#  �w     K.    readFoldback                    ����         �2  ��     K.    readRemoteMode                  ����         ��  �v     K.    readOutputMode                  ����         �6  ��     K.    readFaultShutdowns              ����         ��  ��     K.    reset                           ����         �u  �     K.    saveSettings                    ����         ׀  ��     K.    recallSettings                  ����         �`  �g     K.    writeInstrData                  ����         �   �,     K.    readInstrData                   ����         �d  �%     K.    selfTest                        ����         �!      K.    errorQuery                      ����        Y      K.    errorMessage                    ����              K.    none                            ����        � "�     K.    identityQuery                   ����        $l )|     K.    close                               ����                                     DInitialize                        ����Configure Instrument                 DGeneral Send Command              ����Program Output                       DProgram Output Voltage               DProgram Output Current               DSet Output On/Off                 ����Set Limits and Protections           DSet Over-Volt Protection Level       DSet Over-Volt Protection Max         DSet Under-Volt Limit                 DSet Auto-Start/Safe-Start            DSet Foldback Protection On/Off    ����Set System Modes                     DSet Remote Mode                   ����Measurements and Queries             DGeneral Read Query                ����Query Output                         DMeasure Output Voltage               DMeasure Output Current               DRead Voltage Setting                 DRead Current Setting                 DRead Output On/Off                ����Query Limits and Protections         DRead Over-Volt Protection Level      DRead Under-Volt Limit                DRead Auto-Start/Safe-Start           DRead Foldback Protection On/Off   ����Query System Modes                   DRead Remote Mode                     DRead Output Mode                     DRead Fault Shutdowns              ����Utility Functions                    DReset                                DSave Settings                        DRecall Settings                      DSimple Write To Instrument           DSimple Read Instrument Data          DSelf-Test                            DError Query                          DError Message                        DRevision Query                       DIdentity Query                       DClose                           