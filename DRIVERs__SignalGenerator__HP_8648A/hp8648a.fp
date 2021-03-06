s��         ��     ��  @   �   ����                               hp8648a     Hewlett Packard 8648A Signal Generator        � � ��ViInt16  �  � ��ViInt32  � � ��ViReal64     � ��ViRsrc     	� 	��ViBoolean     	� 	��ViSession     � ��ViStatus     �  ViChar[]     � ��ViChar     � ��ViString     	�  ViInt16[]     	�  ViInt32[]     
�  	ViReal64[]     � 	 
ViBoolean[]  �    This instrument module provides programming support for the Hewlett Packard 8648A Signal Generator.  The module is divided into the following functions:

Functions/Classes:

(1) Initialize:
This function initializes the instrument and sets it to a default configuration.

(2) Application Functions: (Class)
This class provides high-level functions which call multiple lower level functions within the instrument driver to configure, trigger, and force the instrument to perform a desired action.

(3) Configuration Functions: (Class)
This Class provides function to configure the instrument to generate an RF signal.

(4) Action/Status Functions: (Class)
This class of functions begins or terminates an acquisition.

(5) Utility Functions: (Class)
This class of functions provides lower level functions to communicate with the instrument, and change instrument parameters.

(7) Close:
This function takes the instrument offline.
    )    This class provides high-level functions which call multiple lower level functions within the instrument driver to configure, trigger, and force the instrument to perform a desired action.

Functions/SubClasses:

(1) Output RF Signal:
Configures the instrument to generate a Modulated RF Signal.    
     Panel Name:    Output RF Signal

 Description:   Configures the instrument to
                generate a Modulated RF Signal.

 Note:  This function disables the Amplitude
        Reference mode and enables both the
        Automatic Attenuator and the RF output.    �    This Class provides function to configure the instrument to generate an RF signal.

Functions/SubClasses:

(1) RF Signal:
This function configures the RF Signal.

(2) Modulation:
This function configures the instrument for Modulation.

(3) Reference & Attenuation:
This function disables/Enables the Amplitude Reference and the Automatic Attenuation modes.

(4) Modulation  On/Off:
This function turns the selected modulation On or Off.     �     Panel Name:    RF Signal

 Description:   Configures the RF Signal. It sets
                the frequency and amplitude of the
                signal.     �     Panel Name:    Modulation

 Description:   Configures the instrument for
                Modulation. It selects the
                modulation type (AM, FM or PM) and
                the modulating signal.
     �     Panel Name:    Reference & Attenuation

 Description:   Disables/Enables the Amplitude
                Reference and the Automatic
                Attenuation modes.     n     Panel Name:    Modulation  On/Off

 Description:   Turns the selected modulation On
                or Off.     �    This class of functions begins or terminates an acquisition.

Functions/SubClasses:

(1) Generate Signal:
This function sets the instrument to generate the configured RF signal with or without the configured modulation.     �     Panel Name:    Generate Signal

 Description:   Sets the instrument to generate
                the configured RF signal with or
                without the configured modulation.    �    This class of functions provides lower level functions to communicate with the instrument, and change instrument parameters.

Functions:

(1) Write To Instrument:
This function writes commands and queries to the instrument to modify parameters and query device settings.

(2) Read Instrument Data:
This function reads data from instrument buffer and returns it to the specified variable in memory.

(3) Reset:
This function resets the instrument to its default state.

(4) Self-Test:
This function runs the instrument self test and returns the test code.

(5) Error Query:
This function reads an error code from the instrument error queue.

(6) Error Message:
This function takes the Status Code and returns it as a user readable string.
 
(7) Revision Query:
This function returns the revision numbers of the instrument driver and instrument firmware.

(8) Determine Modulation Setting:
This function determines the Modulation level to be setwhen internal and external modulating signals are used.
    A     Panel Name:    Determine Modulation Setting

 Description:   Determines the Modulation level to
                be set for Depth(AM),
                Deviation(FM), or Deviation(PM)
                when the internal and external
                modulating sources are used with
                the selected modulation.    K    This function performs the following initialization actions:

- Opens a session to the Default Resource Manager resource and a session to the specified device using the interface and address specified in the Resource_Name control.

- Performs an identification query on the Instrument.

- Resets the instrument to a known state.

- Returns an Instrument Handle which is used to differentiate between different sessions of this instrument driver.

- Each time this function is invoked a Unique Session is opened.  It is possible to have more than one session open for the same resource.    r    This control specifies the interface and address of the device that is to be initialized (Instrument Descriptor). The exact grammar to be used in this control is shown in the note below. 

Default Value:  "GPIB::19"

Notes:

(1) Based on the Instrument Descriptor, this operation establishes a communication session with a device.  The grammar for the Instrument Descriptor is shown below.  Optional parameters are shown in square brackets ([]).

Interface   Grammar
------------------------------------------------------
GPIB        GPIB[board]::primary address[::secondary address]
            [::INSTR]
            
The GPIB keyword is used with GPIB instruments.

The default value for optional parameters are shown below.

Optional Parameter          Default Value
-----------------------------------------
board                       0
secondary address           none - 31
        This control specifies if an ID Query is sent to the instrument during the initialization procedure.

Valid Range:
VI_OFF (0) - Skip Query
VI_ON  (1) - Do Query (Default Value)

Notes:

(1) Under normal circumstances the ID Query ensures that the instrument initialized is the type supported by this driver. However circumstances may arise where it is undesirable to send an ID Query to the instrument.  In those cases; set this control to "Skip Query" and this function will initialize the selected interface, without doing an ID Query.    C    This control specifies if the instrument is to be reset to its power-on settings during the initialization procedure.

Valid Range:
VI_OFF (0) - Don't Reset
VI_ON  (1) - Reset Device (Default Value)

Notes:

(1) If you do not want the instrument reset. Set this control to "Don't Reset" while initializing the instrument.    7    This control returns an Instrument Handle that is used in all subsequent function calls to differentiate between different sessions of this instrument driver.

Notes:

(1) Each time this function is invoked a Unique Session is opened.  It is possible to have more than one session open for the same resource.
    ;    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFC0002  Parameter 2 (ID Query) out of range.
BFFC0003  Parameter 3 (Reset Device) out of range.
BFFC0011  Instrument returned invalid response to ID Query

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
     =   �  �    Resource Name                     � : �       ID Query                          � =� �       Reset Device                      � � � �  }    Instrument Handle                 >#����  �    Status                          ����   C��                                            "GPIB::19"  ! Do Query VI_ON Skip Query VI_OFF  & Reset Device VI_ON Don't Reset VI_OFF    	           	           FCopyright 1996 National Instruments Corporation. All Rights Reserved.    �    Configures the instrument to generate a Modulated RF Signal.

Note:  This function disables the Amplitude Reference mode and enables both the Automatic Attenuator and the RF output.     �    Set the Frequency in MHz for the RF signal.

Valid Range:   0.100 - 1000.0

Default Value: 0.25

Note:  AM is unspecified at or below 1.5 MHz.     �    Set the Amplitude in dBm for the RF signal. The value may be up to 4 digits plus a sign. The reference mode is disabled in this function.

Valid Range:   -136.0 - +10.0

Default Value: 0.0

Note:  AM is unspecified above 4 dBm.    y    Select the desired modulation to modulate the RF signal.

Valid Range:
0 - Amplitude Modulation
1 - Frequency Modulation
2 - Phase Modulation

Default Value: 0 - Amplitude Modulation

Notes
(1) The following restrictions apply to AM:
- AM is unspecified at or below 1.5 MHz
- AM is unspecified above 4 dBm
- No external DC coupling for AM

(2) No external DC coupling for PM.    d    Sets the Modulation Level for the selected modulation. If AM  is selected, it sets the AM depth. If FM is selected, it sets the FM deviation. If PM is selected, it sets the PM deviation.

Valid Range:
The range of the Level is dependent upon the selected modulation.

AM: 0.0 - 100.0  (%)
FM: 0.0 - 100.0  (kHz)
PM: 0.0 - 10.0   (RAD)

Default Value: 0.0     �    Select the modulating signal to modulate the RF signal.

Valid Range:   
0 - Internal
1 - External
2 - Internal & External

Default Value: 0 - Internal     �    Sets the Internal Frequency to be used as the frequency of the internal modulating signal.

Valid Range:   
VI_OFF (0) - 400 kHz
VI_ON  (1) - 1 kHz

Default Value: VI_OFF (0) - 400 kHz     �    Sets the External Coupling to be used with the external modulating signal.

Valid Range:
VI_OFF (0) - DC. Valid only with FM.
VI_ON  (1) - AC

Default Value: VI_OFF (0) - DC     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFC0002  Parameter 2 (RF Frequency) out of range.
BFFC0003  Parameter 3 (RF Amplitude) out of range.
BFFC0004  Parameter 4 (Modulation) out of range.
BFFC0005  Parameter 5 (Modulation Level) out of range.
BFFC0006  Parameter 6 (Modulating Signal) out of range.
BFFC0007  Parameter 7 (Internal Frequency) out of range.
BFFC0008  Parameter 8 (External Coupling) out of range.
BFFC0900  No external DC coupling for AM or PM.

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
    $: - ! �       RF Frequency (MHz)                $� - � �       RF Amplitude (dBm)                %� -v �       Modulation                        '@ -� �       Modulation Level                  (� } y �       Modulating Signal                 )M } � �       Internal Frequency                * }� �       External Coupling                 *�#   �  �    Instrument Handle                 +e#����  �    Status                             0.25    0.0               AM 0 FM 1 PM 2    0.0               Int 0 Ext 1 Int & Ext 2    1 kHz VI_ON 400 Hz VI_OFF    AC VI_ON DC VI_OFF        	           N    Configures the RF Signal. It sets the frequency and amplitude of the signal.     b    Set the Frequency in MHz for the RF signal.

Valid Range:   0.100 - 1000.0

Default Value: 0.250     �    Disable/Enable the Amplitude Reference mode.

Valid Range:
VI_OFF (0) - Disable
VI_ON  (1) - Enable

Default Value: VI_OFF (0) - Disable     �    Holds the Reference value in dBm to be used with the Amplitude Reference mode.

Valid Range:   -136.0 - +10.0

Default Value: 0.0    �    Set the Amplitude in dBm for the RF signal. The value may be up to 4 digits plus a sign.

Valid Range:   The range of the amplitude is
               dependent upon the reference mode.

               Reference mode enabled:
                   (-136.0 - Reference) to
                   (+10.0  - Reference)
               Reference mode disabled:
                   -136.0 - +10.0

Default Value: 0.0

Note:  AM is unspecified above 4 dBm.    �    Disable/Enable the Automatic Attenuator control.

Valid Range:V
VI_OFF (0) - Disable
VI_ON  (1) - Enable

Default Value: VI_OFF (0) - Disable

Note:  When Automatic Attenuator is disabled and
       the amplitude is set to a level that
       exceeds the vernier range limits by
       greater than 5 dBm, the instrument
       displays the message "011 Amplitude
       exceeds ATTN HOLD limits". This message
       does not indicate an error.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    D    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFC0002  Parameter 2 (RF Frequency) out of range.
BFFC0003  Parameter 3 (Amplitude Reference) out of range.
BFFC0004  Parameter 4 (Reference Value) out of range.
BFFC0005  Parameter 5 (RF Amplitude) out of range.
BFFC0006  Parameter 6 (Automatic Attenuator) out of range.

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
    3 - / �       RF Frequency (MHz)                3� - � �       Amplitude Reference               4 - �       Reference Value dBm               4� � � �       RF Amplitude (dBm)                6a �2 �       Automatic Attenuator              8)#   �  �    Instrument Handle                 8�#����  �    Status                             0.25    Enable VI_ON Disable VI_OFF    0.0    0.0    Enable VI_ON Disable VI_OFF        	           t    Configures the instrument for Modulation. It selects the modulation type (AM, FM or PM) and the modulating signal.    y    Select the desired modulation to modulate the RF signal.

Valid Range:
0 - Amplitude Modulation
1 - Frequency Modulation
2 - Phase Modulation

Default Value: 0 - Amplitude Modulation

Notes
(1) The following restrictions apply to AM:
- AM is unspecified at or below 1.5 MHz
- AM is unspecified above 4 dBm
- No external DC coupling for AM

(2) No external DC coupling for PM.    f    Sets the Modulation Level for the selected modulation. If AM  is selected, it sets the AM depth. If FM is selected, it sets the FM deviation. If PM is selected, it sets the PM deviation.

Valid Range: 
The range of the Level is dependent upon the selected modulation.

AM: 0.0 - 100.0  (%)
FM: 0.0 - 100.0  (kHz)
PM: 0.0 - 10.0   (RAD)

Default Value: 0.0
         Control Name:  Modulating Signal

 Description:   Select the modulating signal to
                modulate the RF signal.

 Variable Type: ViInt16

 Valid Range:   0 - Internal
                1 - External
                2 - Internal & External

 Default Value: 0 - Internal     �    Sets the Internal Frequency to be used as the frequency of the internal modulating signal.

Valid Range:
VI_OFF (0) - 400 kHz
VI_ON  (1)- 1 kHz

Default Value: VI_OFF (0) - 400 kHz     �    Sets the External Coupling to be used with the external modulating signal.

Valid Range:   
VI_OFF (0) - DC. Valid only with FM.
VI_ON  (1)- AC

Default Value: VI_OFF (0) - DC     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    t    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFC0002  Parameter 2 (Modulation) out of range.
BFFC0003  Parameter 3 (Modulation Level) out of range.
BFFC0004  Parameter 4 (Modulating Signal) out of range.
BFFC0005  Parameter 5 (Internal Frequency) out of range.
BFFC0006  Parameter 6 (External Coupling) out of range.
BFFC0900  No external DC coupling for AM or PM.

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
    ?g - s �       Modulation                        @� - � �       Modulation Level                  BV -� �       Modulating Signal                 Ct � � �       Internal Frequency                D2 �U �       External Coupling                 D�#   �  �    Instrument Handle                 E�#����  �    Status                                        AM 0 FM 1 PM 2    0.0               Int 0 Ext 1 Int & Ext 2    1 kHz VI_ON 400 Hz VI_OFF    AC VI_ON DC VI_OFF        	           O    Disables/Enables the Amplitude Reference and the Automatic Attenuation modes.     �    Disable/Enable the Amplitude Reference mode.

Valid Range:
VI_OFF (0) - Disable
VI_ON  (1) - Enable

Default Value: VI_OFF (0) - Disable     �    Disable/Enable the Automatic Attenuator control.

Valid Range:
VI_OFF (0) - Disable
VI_ON  (1) - Enable

Default Value: VI_OFF (0) - Disable     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFC0002  Parameter 2 (Apmlitude Reference) out of range.
BFFC0003  Parameter 3 (Automatic Attenuator) out of range.

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
    L_ = � �       Amplitude Reference               L� =F �       Automatic Attenuator              M�#   �  �    Instrument Handle                 N&#����  �    Status                             Enable VI_ON Disable VI_OFF    Enable VI_ON Disable VI_OFF        	           *    Turns the selected modulation On or Off.     �    Select the desired modulation to enable or disable. If one modulation is enabled, the other two are disabled.

Valid Range:
0 - Amplitude Modulation
1 - Frequency Modulation
2 - Phase Modulation

Default Value: 0 - Amplitude Modulation     �    Disable/Enable the selected modulation.

Valid Range:
VI_OFF (0) - Disable
VI_ON  (1) - Enable

Default Value: VI_OFF (0) - Disable     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFC0002  Parameter 2 (Select Modulation) out of range.
BFFC0003  Parameter 3 (Modulation) out of range.

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
    S* = � �       Select Modulation                 T =F �       Modulation                        T�#   �  �    Instrument Handle                 UK#����  �    Status                                        AM 0 FM 1 PM 2    Enable VI_ON Disable VI_OFF        	           e    Sets the instrument to generate the configured RF signal with or without the configured modulation.     �    Select whether or not to disable the Modulation.

Valid Range:   
VI_OFF (0) - No
VI_ON  (1) - Yes

Default Value: VI_OFF (0) - No     r    Turns the RF Output On or Off.

Valid Range:   
VI_OFF (0) - Off
VI_ON  (1)- On

Default Value: VI_OFF (0) - Off     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFC0002  Parameter 2 (Modulation OFF) out of range.
BFFC0003  Parameter 3 (RF Output Signal) out of range.

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
    Z} > � �       Modulation OFF                    [	 >F �       RF Output Signal                  [�#   �  �    Instrument Handle                 \"#����  �    Status                             Yes VI_ON No VI_OFF    On VI_ON Off VI_OFF        	           m    This function writes commands and queries to the instrument to modify parameters and query device settings.    c    The user can use this control to send common commands and queries to the instrument. This control can also be used to write any valid command to the instrument.

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
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    aP M E � �    Write Buffer                      b�#����  �    Status                            f`#   �  �    Instrument Handle                  "*RST"    	              7    This function reads data from the instrument's output buffer and returns it to the specified variable in memory.

Notes:

(1) Because the instrument may return both numeric and text data in response to queries this function returns the data in string format.

(2) If valid data is not available at the instrument's output buffer when this function is called the instrument will hang up and the function will not return until it times out.  If the time-out is disabled this function will hang indefinitely and it may be necessary to reboot the computer to break out.    �    The number of bytes specified by this control should be greater than or equal to the number of bytes which are to be read from the instrument. If the actual number of bytes to be read is greater than the number this control specifies then multiple reads will be required to empty the instrument's output buffer.

If the instrument's output buffer is not emptied the instrument may return invalid data when future reads are performed.

Default Value:  50 (See NOTE 2)

Notes:

(1) If NO DATA is available at the instrument's output buffer when this function is called the instrument will hang up and the function will not return until it times out.  If the time-out is disabled, this function will hang indefinitely and it may be necessary to reboot the computer.

(2) If the number of bytes expected is greater than 50 the value of this control may be increased. If the actual number of bytes read is larger than the declared size of the read buffer a run-time error will be generated.
    �    The incoming data from the instrument is placed into this variable.

Notes:

(1) Because the instrument may return both numeric and text data in response to queries this function returns the data in string format.

(2) This function does not overwrite any old data left in the string variable from the last time the function was called. String data in LabWindows/CVI is terminated with an ASCII null(0x0) and string manipulation functions will only recognize data before the ASCII null.

(3) The declared size of the string variable must be greater than the actual number of bytes read from the instrument if it is not a run-time error will be generated.
    �    This variable contains the actual number of bytes read from the instrument. This is the value which is returned by the read function.

Notes:

(1) If the actual number of bytes read is less than the number of bytes specified in the Number Bytes To Read control then the output buffer has probably been emptied. If the read function fails and the number of bytes read is 0, the most probable cause for the failure is there was no data available at the instrument's output buffer.    �    This control contains the status code returned by the function call.

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

Default Value:  None    i� M K �       Number Bytes To Read              m� � H � �    Read Buffer                       pt Mx �       NumBytes Read                     r\#����  �    Status                            v#   �  �    Instrument Handle                  50    	            	            	                  This function resets the instrument to a known state and sends initialization commands to the instrument that set any necessary programmatic variables such as Headers Off, Short Command form, and Data Transfer Binary to the state necessary for the operation of the instrument driver.    �    This control contains the status code returned by the function call.

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

Default Value:  None    x�#����  �    Status                            |�#   �  �    Instrument Handle                  	               �    This function runs the instrument's self test routine and returns the test result(s).  A six second delay is required for the self-test.     �    This control contains the value returned from the instrument self test.  Zero means success.  For any other code, see the device's operator's manual.
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
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    ~L = 2 �       Self Test Result                  ~� = � � ,    Self-Test Message                 �#����  �    Status                            ��#   �  �    Instrument Handle                  	           	            	               F    This function reads an error code from the instrument's error queue.     N    This control returns the error code read from the instrument's error queue.
     �    This control returns the error message string read from the instrument's error message queue.

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
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    �� = 2 �       Error Code                        �� = � � ,    Error Message                     ��#����  �    Status                            �|#   �  �    Instrument Handle                  	            	            	               �    This function takes the Status Code returned by the instrument driver functions, interprets it and returns it as a user readable string.      t    This control accepts the Status Code returned from the instrument driver functions.

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
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  VI_NULL    �� =  �       Error Code                        �& = � � �    Error Message                     ��#����  �    Status                            ��#   �  �    Instrument Handle                  0    	            	           VI_NULL   "    This function returns the revision numbers of the instrument driver and instrument firmware, and tells the user what firmware the driver is compatible with, this instrument driver's Revision Number is "Rev 1.0, 1/96, CVI 3.1" and is compatible with Instrument Firmware Revision "A.02.08".     �    This control returns the Instrument Driver Software Revision.

Notes:

(1) The array must contain at least 256 elements ViChar[256].         This control returns the Instrument Firmware Revision.

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
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    �X = 2 �  �    Instrument Driver Revision        �� =, �  �    Firmware Revision                 �m#����  �    Status                            �T#   �  �    Instrument Handle                  	            	            	               �    Determines the Modulation level to be set for Depth(AM), Deviation(FM), or Deviation(PM) when the internal and external modulating sources are used with the selected modulation.     �    Select the Modulation for which to determine the modulation level when internal and external modulating signals are used.

Valid Range:
0 - Amplitude Modulation
1 - Frequency Modulation
2 - Phase Modulation

Default Value: 0 - Amplitude Modulation    y    Indicates the desired depth or deviation for the specified modulation.

Valid Range:   The range of this control is
               dependent upon the selected
               modulation.

               AM:
                   0.0 - 100.0  (%)
               FM:
                   0.0 - 100.0  (kHz)
               PM:
                   0.0 - 10.0   (RAD)

Default Value: 3.0    }    Indicates the level of the external modulating signal.

Valid Range:   0.0 - 0.5

Default Value: 0.0

Note:  If the level of the external modulating
       signal is equal to 0.5, this signal
       provides 1/3 of the desired modulation
       depth or deviation. If the level is less
       than 0.5, this signal provides less than
       1/3 of the desired depth or deviation.    <    Returns the depth or deviation value to set for the specified modulation's Level. It holds the percent depth (AM), deviation (FM), or the deviation (PM).

Note:  This control returns an AM (% depth),
       FM (kHz Deviation), or PM (RAD Deviation)
       value dependent on the level of the
       external modulating signal. Using the
       following abbreviations:

       D = Desired Modulation Level
       E = External Source Level
       S = Setting for the Modulation Level

       If E = 0.5
           S = 2/3 * D

       If E < 0.5
           S = D / (1 + E)    �    This control contains the status code returned by the function call.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFC0002  Parameter 2 (Select Modulation) out of range.
BFFC0003  Parameter 3 (Desired Modul Value) out of range.
BFFC0004  Parameter 4 (Ext Mod Signal Level) out of range.

BFFF0000  Miscellaneous or system error occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.    �� = p  �       Selected Modulation               �� = � �       Desired Modul Value               �, =� �       Ext Mod Signal Level              �� � � �       Value To Set Modul              ����
 ��                                           ��#����  �    Status                                        AM 0 FM 1 PM 2    3.0    0.5    	           F     This Function        
Does Not Communicate
  With The Instrument    	           �    This function performs the following operations:
viClose (instrSession) and viClose (rmSession).

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

Default Value:  None    ��#����  �    Status                            ��#   �  �    Instrument Handle                  	            ����         �  !�     K.    init                              w         #{  0G 	    K.    output_signal                     	G         2�  =     K.    rf_signal                         	�         >�  J     K.    modulation                        
�         L  Q�     K.    set_ref_att                       q         R�  X�     K.    mod_on_off                        �         Z  _�     K.    gen_signl                       ����         `�  f�     K.    writeInstrData                  ����         g�  v�     K.    readInstrData                   ����         w�  }@     K.    reset                           ����         }�  �J     K.    selfTest                        ����         �F  �     K.    errorQuery                      ����         �  �2     K.    errorMessage                    ����         �.  ��     K.    revisionQuery                     {         ��  ��     K.    det_mod_set                     ����         �L  �=     K.    close                                 �                                     DInitialize                          FApplication Functions                DOutput RF Signal                    �Configuration Functions              DRF Signal                            DModulation                           DReference & Attenuation              DModulation On/Off                   �Action/Status Functions              DGenerate Signal                     �Utility Functions                    DWrite To Instrument                  DRead Instrument Data                 DReset                                DSelf-Test                            DError-Query                          DError Message                        DRevision Query                       DDetermine Modul Setting              DClose                           