s��        	�  % _�  ��   �   ����                               rsnrpz                          R&S NRPZ Power Sensor                       _VI_FUNC                                                     � ��ViChar  � � ��ViInt16  �  � ��ViInt32  � � ��ViReal64     � ��ViRsrc     	� 	��ViBoolean     	� 	��ViSession     � ��ViStatus     �  ViChar[]     � ��ViString     	�  ViInt16[]     	�  ViInt32[]     
�  	ViReal64[]     � 	 
ViBoolean[]  � � ��ViUInt16  � � ��ViUInt32  T    This instrument module provides programming support for the R&S NRP Power Meter. The module is divided into the following functions:

Functions/Classes:

(1) Initialize:
This function initializes the instrument and sets it to a default configuration.

(2) Function Examples: (Class)
This class contains high-level, test and measurement routines.  These examples call other instrument driver functions to configure, start, and read from the instrument.

(3) Configuration Functions: (Class)
This class of functions configures the instrument by setting acquisition and system configuration parameters.

(4) Action/Status Functions: (Class)
This class of functions begins or terminates an acquisition. It also provides functions which allow the user to determine the current status of the instrument.

(5) Data Functions: (Class)
This class of functions transfers data to or from the instrument.

(6) Utility Functions: (Class)
This class of functions provides lower level functions to communicate with the instrument, and change instrument parameters.

(7) Close:
This function takes the instrument offline.
    �    This class of functions provides lower level functions to communicate with the instrument, and change instrument parameters.

Functions:

(1) State Checking:
This function switches state checking of the instrument (reading of the Standard Event Register and checking it for error) status subsystem.

(2) Write To Instrument:
This function writes commands and queries to the instrument to modify parameters and query device settings.

(3) Read Instrument Data:
This function reads data from instrument buffer and returns it to the specified variable in memory.

(4) Reset:
This function resets the instrument to its default state.

(5) Self-Test:
This function runs the instrument self test and returns the test code.

(6) Error Query:
This function reads an error code from the instrument error queue.

(7) Error Message:
This function takes the Status Code and returns it as a user readable string.
 
(8) Revision Query:
This function returns the revision numbers of the instrument driver and instrument firmware.
     !    Support for USB hub R&S NRP-Z5.    �    This function performs the following initialization actions and assigned specified sesnor to channel 1:

- Opens a session to the specified device using the interface and address specified in the Resource Name control.

- Performs an identification query on the sensor.

- Resets the instrument to a known state.

- Sends initialization commands to the sensor

- Returns an Instrument Handle which is used to differentiate between different sessions of this instrument driver.    u    This control specifies the interface and address of the device that is to be initialized (Instrument Descriptor). The exact grammar to be used in this control is shown in the note below. 

Default Value:  "USB::0x0aad::0x000b::100000"

Notes:

(1) Based on the Instrument Descriptor, this operation establishes a communication session with a device.  The grammar for the Instrument Descriptor is shown below.  Optional parameters are shown in square brackets ([]).

Interface   Grammar
------------------------------------------------------
USB         USB::vendor Id::product Id::serial number

where:
  vendor Id is 0aad for all Rohde&Schwarz instruments.

  product Id depends on your sensor model:

NRP-Z11     0x000C
NRP-Z21     0x0003
NRP-Z22     0x0013
NRP-Z23     0x0014
NRP-Z24     0x0015
NRP-Z27     0x002F
NRP-Z28     0x0051
NRP-Z31     0x002C
NRP-Z37     0x002D

NRP-Z51     0x0016
NRP-Z52     0x0017
NRP-Z55     0x0018
NRP-Z56     0x0019
NRP-Z57     0x0070

NRP-Z81     0x0023

NRP-Z91     0x0021
NRP-Z92     0x0062
NRP-Z96     0x002E
NRP-Z98     0x0052

FSH-Z1      0x000B
FSH-Z18     0x001A

  serial number you can find on your sensor. Serial number is number with 6 digits. For example 9000003

 you can use star '*' for product id or serial number in resource descriptor. Use star only for one connected sensor, because driver opens only first sensor on the bus.
 
The USB keyword is used for USB interface.

Examples:
USB   - "USB::0x0aad::0x000b::100000"
USB   - "USB::0x0aad::0x000b::*" - Opens first FSH-Z1 sensor
USB   - "USB::0x0aad::*"         - Opens first R&S sensor
USB   - "*"                      - Opens first R&S sensor    #    This control specifies if an ID Query is sent to the instrument during the initialization procedure.

Valid Range:
VI_FALSE (0) - Skip Query
VI_TRUE  (1) - Do Query (Default Value)

Notes:
   
(1) Under normal circumstances the ID Query ensures that the instrument initialized is the type supported by this driver. However circumstances may arise where it is undesirable to send an ID Query to the instrument.  In those cases; set this control to "Skip Query" and this function will initialize the selected interface, without doing an ID Query.
    H    This control specifies if the instrument is to be reset to its power-on settings during the initialization procedure.

Valid Range:
VI_FALSE (0) - Don't Reset
VI_TRUE  (1) - Reset Device (Default Value)

Notes:

(1) If you do not want the instrument reset. Set this control to "Don't Reset" while initializing the instrument.
    7    This control returns an Instrument Handle that is used in all subsequent function calls to differentiate between different sessions of this instrument driver.

Notes:

(1) Each time this function is invoked a Unique Session is opened.  It is possible to have more than one session open for the same resource.
    E    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC0002  Parameter 2 (ID Query) out of range.
BFFC0003  Parameter 3 (Reset Device) out of range.
BFFC0011  Instrument returned invalid response to ID Query
          
This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    { [   �  �    Resource Name                     � X �       ID Query                          # [� �       Reset Device                      s � � �  }    Instrument Handle                 �����  �    Status                          ���� 
 2��                                            "USB::0x0aad::0x000b::100000"  % Do Query VI_TRUE Skip Query VI_FALSE  * Reset Device VI_TRUE Don't Reset VI_FALSE    	           	           DWarning: The driver requires NRP Toolkit installed on your computer   �    This function performs the same initialization as the
rsnrpz_init() function (see there), but should be used
when the sensor(s) are connected via an extension unit
like, for example, AnywhereUSB


Notes:

1) Never use both the rsnrpz_init() and
   rsnrpz_init_long_distance() funtions concurrently
   Locally connected sensors can also be used with a
   session ID returned by the 'long distance' version
   of init

2) Do not initilize every sensor with a rsnrpz_init...
   function. If you want comunicate with more than one
   sensor use rsnrpz_AddSensor() for adding a new channel.
   The reason is that the rsnrpz_close() function
   destroys all sensor sessions assigned to a process.    t    This control specifies the interface and address of the device that is to be initialized (Instrument Descriptor). The exact grammar to be used in this control is shown in the note below. 

Default Value:  "USB::0x0aad::0x000b::100000"

Notes:

(1) Based on the Instrument Descriptor, this operation establishes a communication session with a device.  The grammar for the Instrument Descriptor is shown below.  Optional parameters are shown in square brackets ([]).

Interface   Grammar
------------------------------------------------------
USB         USB::vendor Id::product Id::serial number

where:
  vendor Id is 0aad for all Rohde&Schwarz instruments.

  product Id depends on your sensor model:

NRP-Z11     0x000C
NRP-Z21     0x0003
NRP-Z22     0x0013
NRP-Z23     0x0014
NRP-Z24     0x0015
NRP-Z27     0x002F
NRP-Z28     0x0051
NRP-Z31     0x002C
NRP-Z37     0x002D

NRP-Z51     0x0016
NRP-Z52     0x0017
NRP-Z55     0x0018
NRP-Z56     0x0019
NRP-Z57     0x0070

NRP-Z81     0x0023

NRP-Z91     0x0021
NRP-Z92     0x0062
NRP-Z96     0x002E
NRP-Z98     0x0052

FSH-Z1      0x000B
FSH-Z18     0x001A
  serial number you can find on your sensor. Serial number is number with 6 digits. For exampel 9000003

 you can use star '*' for product id or serial number in resource descriptor. Use star only for one connected sensor, because driver opens only first sensor on the bus.
 
The USB keyword is used for USB interface.

Examples:
USB   - "USB::0x0aad::0x000b::100000"
USB   - "USB::0x0aad::0x000b::*" - Opens first FSH-Z1 sensor
USB   - "USB::0x0aad::*"         - Opens first R&S sensor
USB   - "*"                      - Opens first R&S sensor    #    This control specifies if an ID Query is sent to the instrument during the initialization procedure.

Valid Range:
VI_FALSE (0) - Skip Query
VI_TRUE  (1) - Do Query (Default Value)

Notes:
   
(1) Under normal circumstances the ID Query ensures that the instrument initialized is the type supported by this driver. However circumstances may arise where it is undesirable to send an ID Query to the instrument.  In those cases; set this control to "Skip Query" and this function will initialize the selected interface, without doing an ID Query.
    H    This control specifies if the instrument is to be reset to its power-on settings during the initialization procedure.

Valid Range:
VI_FALSE (0) - Don't Reset
VI_TRUE  (1) - Reset Device (Default Value)

Notes:

(1) If you do not want the instrument reset. Set this control to "Don't Reset" while initializing the instrument.
    7    This control returns an Instrument Handle that is used in all subsequent function calls to differentiate between different sessions of this instrument driver.

Notes:

(1) Each time this function is invoked a Unique Session is opened.  It is possible to have more than one session open for the same resource.
    E    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC0002  Parameter 2 (ID Query) out of range.
BFFC0003  Parameter 3 (Reset Device) out of range.
BFFC0011  Instrument returned invalid response to ID Query
          
This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    !� [   �  �    Resource Name                     (J X �       ID Query                          *u [� �       Reset Device                      +� � � �  }    Instrument Handle                 -����  �    Status                          ���� 
 2��                                         ����  a��                                            "USB::0x0aad::0x000b::100000"  % Do Query VI_TRUE Skip Query VI_FALSE  * Reset Device VI_TRUE Don't Reset VI_FALSE    	           	           DWarning: The driver requires NRP Toolkit installed on your computer    [Don't initialize 2 sensors with init function. Use rsnrpz_AddSensor and red function help.    �    This function immediately sets all the sensors to the IDLE state. Measurements in progress are interrupted. If INIT:CONT ON is set, a new measurement is immediately started since the trigger system is not influenced.

Remote-control command(s):
ABOR        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    5�����  �    Status                            :   �  �    Instrument Handle                  	               �    This function returns number of available channels (1, 2 or 4 depending on installed options NRP-B2 - Two channel interface and NRP-B5 - Four channel interface).        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control returns number of available channels (1, 2 or 4 depending on installed options NRP-B2 - Two channel interface and NRP-B5 - Four channel interface).    ;�����  �    Status                            @    �  �    Instrument Handle                 @� G� �  x    Count                              	               	           �    This function starts a single-shot measurement on all channels. The respective sensor goes to the INITIATED state. The command is completely executed when the sensor returns to the IDLE state. The command is ignored when the sensor is not in the IDLE state or when continuous measurements are selected (INIT:CONT ON). The command is only fully executed when the measurement is completed and the trigger system has again reached the IDLE state. INIT is the only remote control command that permits overlapping execution. Other commands can be received and processed while the command is being executed.

Remote-control command(s):
STAT:OPER:MEAS?
INIT:IMM        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    D�����  �    Status                            H�   �  �    Instrument Handle                  	                  This function performs zeroing using the signal at the sensor input. The sensor must be disconnected from all power sources. If the signal at the input considerably deviates from 0 W, an error message is issued and the function is aborted.

Remote-control command(s):
CAL:ZERO:AUTO        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    J�����  �    Status                            O   �  �    Instrument Handle                  	               F    This function returns the summary status of zeroing on all channels.        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     F    This control returns VI_TRUE if all channels have calibration ready.    P�����  �    Status                            T�   �  �    Instrument Handle                 UA G� �  x    Zeroing Completed                  	               	            K    This function returns the summary status of measurements on all channels.        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     G    This control returns VI_TRUE if all channels have measurement ready.
    V�����  �    Status                            Z�   �  �    Instrument Handle                 [] G� �  x    Measurement Completed              	               	            �    This function sets the sensor to one of the measurement modes.

Remote-control command(s):
SENSe[1..4]:FUNCtion
SENSe[1..4]:BUFFer:STATe ON | OFF        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1    6    This control specifies the measurement mode to which sensor should be switched.

Valid Values:
RSNRPZ_SENSOR_MODE_CONTAV (0) - ContAv (Default Value)
RSNRPZ_SENSOR_MODE_BUF_CONTAV (1) - Buffered ContAv
RSNRPZ_SENSOR_MODE_TIMESLOT (2) - Timeslot
RSNRPZ_SENSOR_MODE_BURST (3) - Burst
RSNRPZ_SENSOR_MODE_SCOPE (4) - Scope
RSNRPZ_SENSOR_MODE_CCDF (6) - CCDF
RSNRPZ_SENSOR_MODE_PDF (7) - PDF

Notes:
(1) ContAv: After a trigger event, the power is integrated over a time interval (Averaging).

(2) Buffered ContAv: The same as ContAv except the buffered mode is switched On.

(3) Timeslot: The power is measured simultaneously in a number of timeslots (up to 26).

(4) Burst: SENS:POW:BURS:DTOL defines the time interval during which a signal drop below the trigger level is not interpreted as the end of the burst. In the BurstAv mode, the set trigger source is ignored.

(5) Scope: A sequence of measurements is performed. The individual measured values are determined as in the ContAv mode.

(6) NRP-Z51 supports only RSNRPZ_SENSOR_MODE_CONTAV and RSNRPZ_SENSOR_MODE_BUF_CONTAV.    ]����  �    Status                            a#   �  �    Instrument Handle                 a� G  � x    Channel                           b0 G � � x    Measurement Mode                   	               1               �ContAv RSNRPZ_SENSOR_MODE_CONTAV Buffered ContAv RSNRPZ_SENSOR_MODE_BUF_CONTAV Timeslot RSNRPZ_SENSOR_MODE_TIMESLOT Burst RSNRPZ_SENSOR_MODE_BURST Scope RSNRPZ_SENSOR_MODE_SCOPE CCDF RSNRPZ_SENSOR_MODE_CCDF PDF RSNRPZ_SENSOR_MODE_PDF    �    This function configures times that is to be excluded at the beginning and at the end of the integration.

Note:
  
1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:TIM:EXCL:STAR
SENS:TIM:EXCL:STOP        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets a time (in seconds) that is to be excluded at the beginning of the integration

Valid Range:
NRP-Z21: 0.0 - 0.1 s
FSH-Z1:  0.0 - 0.1 s


Default Value:
0.0 s

Notes:
(1) Actual valid range depends on sensor used     �    This control sets a time (in seconds) that is to be excluded at the end of the integration.

Valid Range:
NRP-Z21: 0.0 - 0.003 s
FSH-Z1:  0.0 - 0.003 s

Default Value:
0.0 s

Notes:
(1) Actual valid range depends on sensor used    i>����  �    Status                            m_   �  �    Instrument Handle                 m� G  � x    Channel                           nl G � �  x    Exclude Start                     o[ G3 �  x    Exclude Stop                       	               1    0.0    0.0    �    This function sets a time that is to be excluded at the beginning of the integration.

Note:
  
1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:TIM:EXCL:STAR        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets a time (in seconds) that is to be excluded at the beginning of the integration

Valid Range:
NRP-Z21: 0.0 - 0.1 s
FSH-Z1:  0.0 - 0.1 s

Default Value:
0.0 s

Notes:
(1) Actual valid range depends on sensor used    r;����  �    Status                            v\   �  �    Instrument Handle                 v� G  � x    Channel                           wi G � �  x    Exclude Start                      	               1    0.0    �    This function reads a time that is to be excluded at the beginning of the integration.

Note:
  
1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:TIM:EXCL:STAR?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     f    This control returns a time (in seconds) that is to be excluded at the beginning of the integration.    z����  �    Status                            ~1   �  �    Instrument Handle                 ~� G  � x    Channel                           > G� �  x    Exclude Start                      	               1    	           �    This function sets a time that is to be excluded at the end of the integration.

Note:
  
1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:TIM:EXCL:STOP        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets a time (in seconds) that is to be excluded at the end of the integration.

Valid Range:

NRP-Z21: 0.0 - 0.003 s
FSH-Z1:  0.0 - 0.003 s

Default Value:
0.0 s

Notes:
(1) Actual valid range depends on sensor used    �b����  �    Status                            ��   �  �    Instrument Handle                 �" G  � x    Channel                           �� G � �  x    Exclude Stop                       	               1    0.0    �    This function reads a time that is to be excluded at the end of the integration.

Note:
  
1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:TIM:EXCL:STOP?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     `    This control returns a time (in seconds) that is to be excluded at the end of the integration.    �1����  �    Status                            �R   �  �    Instrument Handle                 �� G  � x    Channel                           �_ G� �  x    Exclude Stop                       	               1    	          L    This function can be used to reduce the video bandwidth for the Trace and Statistics modes. As a result, trigger sensitivity is increased and the display noise reduced. To prevent signals from being corrupted, the selected video bandwidth should not be smaller than the RF bandwidth of the measurement signal. The "FULL" setting corresponds to a video bandwidth of at least 30 MHz if there is an associated frequency setting (SENSe:FREQuency command) greater than or equal to 500 MHz. If a frequency below 500 MHz is set and the video bandwidth is set to "FULL", the video bandwidth is automatically reduced to approx. 7.5 MHz.
If the video bandwidth is limited with the SENSe:BWIDth:VIDEo command, the sampling rate is also automatically reduced, i.e. the effective time resolution in the Trace mode is reduced accordingly. In the Statistics modes, the measurement time must be increased appropriately if the required sample size is to be maintained:
Video bandwidth Sampling rate   Sampling interval
"Full"            8e7 1/s       12.5 ns
"5 MHz"           4e7 1/s         25 ns
"1.5 MHz"         1e7 1/s        100 ns
"300 kHz"       2.5e6 1/s        400 ns








sets the video bandwidth according to a list of available bandwidths. The list can be obtained using function rsnrpz_bandwidth_getBwList.

Remote-control command(s):
SENSe:BWIDth:VIDeo        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the video bandwidth according to a list of available bandwidths. The list can be obtained using function rsnrpz_bandwidth_getBwList.

Valid Range:
Index of bandwidth in the list

Default Value:
0    �����  �    Status                            �1   �  �    Instrument Handle                 �� G  � x    Channel                           �> G � �  x    Bandwidth                          	               1    0    a    This function queries selected video bandwidth.

Remote-control command(s):
SENSe:BWIDth:VIDeo?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     K    This control returns selected video bandwidth as index in bandwidth list.    �t����  �    Status                            ��   �  �    Instrument Handle                 �4 G  � x    Channel                           �� G) �  x    Bandwidth                          	               1    	            s    This function queries the list of possible video bandwidths.

Remote-control command(s):
SENSe:BWIDth:VIDeo:LIST?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     M    This control returns the comma separated list of possible video bandwidths.     r    This control defines the size of buffer passed to Bandwidth List argument.

Valid Range:
> 0

Default Value:
200    �e����  �    Status                            ��   �  �    Instrument Handle                 �% G  � x    Channel                           �� G� �  x    Bandwidth List                    �� G � �  x    Buffer Size                        	               1    	            200    �    This function configures all parameters necessary for automatic detection of filter bandwidth.

Remote-control command(s):
SENS:AVER:COUN:AUTO ON
SENS:AVER:COUN:AUTO:TYPE RES
SENS:AVER:COUN:AUTO:RES <value>
SENS:AVER:TCON REP
        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1    8    This control defines the number of significant places for linear units and the number of decimal places for logarithmic units which should be free of noise in the measurement result.

Valid Range:
1 to 4

Default Value: 3

Notes:
(1) Actual range depend on sensor used and may vary from the range stated above.    �����  �    Status                            ��   �  �    Instrument Handle                 �? G  � x    Channel                           �� G � �  x    Resolution                         	               1    3   ;    This function configures all parameters necessary for setting the noise ratio in the measurement result and automatic detection of filter bandwidth.

Remote-control command(s):
SENS:AVER:COUN:AUTO ON
SENS:AVER:COUN:AUTO:TYPE NSR
SENS:AVER:COUN:AUTO:NSR <value>
SENS:AVER:COUN:AUTO:MTIM <value>
SENS:AVER:TCON REP
        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the maximum noise ratio in the measurement result. The value is set in dB.

Valid Range:

NRP-Z21: 0.0 - 1.0
FSH-Z1:  0.0 - 1.0

Default Value: 0.1

Notes:
(1) This value is not range checked; the actual range depends on sensor used.     �    This control sets the upper time limit (maximum time to fill the filter).

Valid Range:

NRP-21: 0.01 - 999.99
FSH-Z1: 0.01 - 999.99

Default Value: 4.0

Notes:
(1) This value is not range checked, the actual range depends on sensor used.    �����  �    Status                            �?   �  �    Instrument Handle                 �� G  � x    Channel                           �L G � �  x    Maximum Noise Ratio               �Q G= �  x    Upper Time Limit                   	               1    0.1    4.0    �    This function configures all parameters necessary for manual setting of filter bandwidth.

Remote-control command(s):
SENS:AVER:COUN
SENS:AVER:COUN:AUTO OFF
SENS:AVER:TCON REP        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the filter bandwidth.

Valid Range:
1 - 65536

Default Value: 4

Notes:
(1) Actual valid range depends on sensor used    �.����  �    Status                            �O   �  �    Instrument Handle                 �� G  � x    Channel                           �\ G � �  x    Count                              	               1    4    �    This function can be used to automatically determine a value for filter bandwidth.

Remote-control command(s):
SENS:AVER:COUN:AUTO ON|OFF        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1        This control activates or deactivates automatic determination of a value for filter bandwidth.
If the automatic switchover is activated with the ON parameter, the sensor always defines a suitable filter length.

Valid Values:
VI_FALSE (0) - Off
VI_TRUE (1) - On (Default Value)    �n����  �    Status                            ȏ   �  �    Instrument Handle                 �. G  � x    Channel                           ɜ G � �       Auto Enabled                       	               1   On VI_TRUE Off VI_FALSE    �    This function queries the setting of automatic switchover of filter bandwidth.

Remote-control command(s):
SENS:AVER:COUN:AUTO?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     P    This control returns the setting of automatic switchover of filter bandwidth.
    �H����  �    Status                            �i   �  �    Instrument Handle                 � G  � x    Channel                           �v G� �  x    Auto Enabled                       	               1    	                This function sets an upper time limit can be set via (maximum time). It should never be exceeded. Undesired long measurement times can thus be prevented if the automatic filter length switchover is on.

Remote-control command(s):
SENS:AVER:COUN:AUTO:MTIM        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the upper time limit (maximum time to fill the filter).

Valid Range:

NRP-21: 0.01 - 999.99
FSH-Z1: 0.01 - 999.99

Default Value: 4.0

Notes:
(1) This value is not range checked, the actual range depends on sensor used.    ������  �    Status                            ��   �  �    Instrument Handle                 ؍ G  � x    Channel                           �� G � �  x    Upper Time Limit                   	               1    4.0    �    This function queries an upper time limit (maximum time to fill the filter).

Remote-control command(s):
SENS:AVER:COUN:AUTO:MTIM?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     M    This control returns an upper time limit (maximum time to fill the filter).    �o����  �    Status                            ߐ   �  �    Instrument Handle                 �/ G  � x    Channel                           �� G� �  x    Upper Time Limit                   	               1    	           {    This function sets the maximum noise ratio in the measurement result.

Remote-control command(s):
SENS:AVER:COUN:AUTO:NSR        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the maximum noise ratio in the measurement result. The value is set in dB.

Valid Range:

NRP-Z21: 0.0 - 1.0
FSH-Z1:  0.0 - 1.0

Default Value: 0.1

Notes:
(1) This value is not range checked; the actual range depends on sensor used.    �j����  �    Status                            �   �  �    Instrument Handle                 �* G  � x    Channel                           � G � �  x    Maximum Noise Ratio                	               1    0.1    r    This function queries the maximum noise signal ratio value.

Remote-control command(s):
SENS:AVER:COUN:AUTO:NSR?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     :    This control returns a maximum noise signal ratio in dB.    �����  �    Status                            �(   �  �    Instrument Handle                 �� G  � x    Channel                           �5 G� �  x    Maximum Noise Ratio                	               1    	          *    This function defines the number of significant places for linear units and the number of decimal places for logarithmic units which should be free of noise in the measurement result. This setting does not affect the setting of display.

Remote-control command(s):
SENS:AVER:COUN:AUTO:RES 1 ... 4        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1    8    This control defines the number of significant places for linear units and the number of decimal places for logarithmic units which should be free of noise in the measurement result.

Valid Range:
1 to 4

Default Value: 3

Notes:
(1) Actual range depend on sensor used and may vary from the range stated above.    �����  �    Status                            ��   �  �    Instrument Handle                 �^ G  � x    Channel                           �� G � �  x    Resolution                         	               1    3    �    This function returns the number of significant places for linear units and the number of decimal places for logarithmic units which should be free of noise in the measurement result. 

Remote-control command(s):
SENS:AVER:COUN:AUTO:RES?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control returns the number of significant places for linear units and the number of decimal places for logarithmic units which should be free of noise in the measurement result.

Valid Range:
1 to 4    ������  �    Status                            �   �  �    Instrument Handle                 �� G  � x    Channel                           � G� �  x    Resolution                         	               1    	            �    This function selects a method by which the automatic filter length switchover can operate.

Remote-control command(s):
SENS:AVER:COUN:AUTO:TYPE RES | NSR        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control selects a method by which the automatic filter length switchover can operate.

Valid Values:
RSNRPZ_AUTO_COUNT_TYPE_RESOLUTION (0) - Resolution (Default Value)
RSNRPZ_AUTO_COUNT_TYPE_NSR (1) - Noise Ratio   �����  �    Status                           �   �  �    Instrument Handle                M G  � x    Channel                          � G � � x    Method                             	               1               TResolution RSNRPZ_AUTO_COUNT_TYPE_RESOLUTION Noise Ratio RSNRPZ_AUTO_COUNT_TYPE_NSR    �    This function returns a method by which the automatic filter length switchover can operate.

Remote-control command(s):
SENS:AVER:COUN:AUTO:TYPE?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control returns a method by which the automatic filter length switchover can operate.

Valid Values:
Resolution (RSNRPZ_AUTO_COUNT_TYPE_RESOLUTION)
Noise Ratio (RSNRPZ_AUTO_COUNT_TYPE_NSR)   	�����  �    Status                           �   �  �    Instrument Handle                E G  � x    Channel                          � G� �  x    Method                             	               1    	            �    This function sets the filter bandwidth. The wider the filter the lower the noise and the longer it takes to obtain a measured value.

Remote-control command(s):
SENS:AVER:COUN        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the filter bandwidth.

Valid Range:
1 - 65536

Default Value: 4

Notes:
(1) Actual valid range depends on sensor used   -����  �    Status                           N   �  �    Instrument Handle                � G  � x    Channel                          [ G � �  x    Count                              	               1    4    Y    This function returns the filter bandwidth.

Remote-control command(s):
SENS:AVER:COUN?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     ,    This control returns the filter bandwidth.   ;����  �    Status                           \   �  �    Instrument Handle                � G  � x    Channel                          i G� �  x    Count                              	               1    	           .    This function switches the filter function of a sensor on or off. When the filter is switched on, the number of measured values set with rsnrpz_avg_setCount() is averaged. This reduces the effect of noise so that more reliable results are obtained.

Remote-control command(s):
SENS:AVER:STAT ON | OFF        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control switches the filter function of a sensor on or off.

Valid Values:
VI_TRUE (1)  - On (Default Value)
VI_FALSE (0) - Off   �����  �    Status                           #�   �  �    Instrument Handle                $� G  � x    Channel                          $� G � �       Averaging                          	               1   On VI_TRUE Off VI_FALSE    q    This function returns the state of the filter function of a sensor.

Remote-control command(s):
SENS:AVER:STAT?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     w    This control returns the state of the filter function of a sensor.

Valid Values:
VI_TRUE (1) - On
VI_FALSE (0) - Off   '����  �    Status                           +"   �  �    Instrument Handle                +� G  � x    Channel                          ,/ G� �  x    Averaging                          	               1    	            �    This function sets a timeslot whose measured value is used to automatically determine the filter length.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:AVER:COUN:AUTO:SLOT        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets a timeslot whose measured value is used to automatically determine the filter length.

Valid Range:

NRP-Z21: 1 - 8
FSH-Z1:  1 - 8

Default Value: 1   .�����  �    Status                           2�   �  �    Instrument Handle                3A G  � x    Channel                          3� G � �  x    Timeslot                           	               1    1    �    This function returns a timeslot whose measured value is used to automatically determine the filter length.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:AVER:COUN:AUTO:SLOT?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     l    This control returns a timeslot whose measured value is used to automatically determine the filter length.   6/����  �    Status                           :P   �  �    Instrument Handle                :� G  � x    Channel                          ;] G� �  x    Timeslot                           	               1    	            �    This function determines whether a new result is calculated immediately after a new measured value is available or only after an entire range of new values is available for the filter.

Remote-control command(s):
SENS:AVER:TCON MOV | REP        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control determines the type of terminal control.

Valid Values:
RSNRPZ_TERMINAL_CONTROL_MOVING (0) - Moving
RSNRPZ_TERMINAL_CONTROL_REPEAT (1) - Repeat (Default Value)   =�����  �    Status                           A�   �  �    Instrument Handle                B} G  � x    Channel                          B� G � � x    Terminal Control                   	               1              LMoving RSNRPZ_TERMINAL_CONTROL_MOVING Repeat RSNRPZ_TERMINAL_CONTROL_REPEAT    o    This function returns the type of terminal control.

Remote-control command(s):
SENSe[1..4]:AVERage:TCONtrol?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control returns the type of terminal control.

Valid Values:
RSNRPZ_TERMINAL_CONTROL_MOVING (0) - Moving
RSNRPZ_TERMINAL_CONTROL_REPEAT (1) - Repeat (Default Value)   E\����  �    Status                           I}   �  �    Instrument Handle                J G  � x    Channel                          J� G� �  x    Terminal Control                   	               1    	            �    This function initializes the digital filter by deleting the stored measured values.

Remote-control command(s):
SENS:AVER:RES        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1   L�����  �    Status                           P�   �  �    Instrument Handle                Qz G  � x    Channel                            	               1    �    This function sets the automatic selection of a measurement range to ON or OFF.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:RANG:AUTO ON | OFF        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the automatic selection of a measurement range to ON or OFF.

Valid Values:
VI_TRUE (1)  - On (Default Value)
VI_FALSE (0) - Off   S`����  �    Status                           W�   �  �    Instrument Handle                X  G  � x    Channel                          X� G � �       Auto Range                         	               1   On VI_TRUE Off VI_FALSE    �    This function returns the state of automatic selection of a measurement range.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:RANG:AUTO?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control returns the state of automatic selection of a measurement range.

Valid Values:
VI_TRUE (1) - On
VI_FALSE (0) - Off   Z�����  �    Status                           _
   �  �    Instrument Handle                _� G  � x    Channel                          ` G� �  x    Auto Range                         	               1    	           4    This function sets the cross-over level. Shifts the transition ranges between the measurement ranges. This may improve the measurement accuracy for special signals, i.e. signals with a high crest factor.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:RANG:AUTO:CLEV        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the cross-over level in dB.

Valid Range:

NRP-Z21: -20.0 - 0.0 dB
FSH-Z1:  -20.0 - 0.0 dB

Default Value: 0.0 dB

Notes:
(1) Actual valid range depends on sensor used   b�����  �    Status                           f�   �  �    Instrument Handle                g� G  � x    Channel                          h  G � �  x    Crossover Level                    	               1    0.0    �    This function reads the cross-over level.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:RANG:AUTO:CLEV?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors      �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     2    This control returns the cross-over level in dB.   jN����  �    Status                           np   �  �    Instrument Handle                o G  � x    Channel                          o} G� �  x    Crossover Level                    	               1    	           �    This function selects a measurement range in which the corresponding sensor is to perform a measurement.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:RANG 0 .. 2        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control selects a measurement range in which the corresponding sensor is to perform a measurement.

Valid Range:
NRP-Z21:  0 to 2
FSH-1:    0 to 2

Default Value: 2   q�����  �    Status                           u�   �  �    Instrument Handle                vB G  � x    Channel                          v� G � � x    Range                              	               1    2    �    This function returns a measurement range in which the corresponding sensor is to perform a measurement.

Note:

1) This function is not available for NRP-Z51

Remote-control command(s):
SENS:RANG?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     i    This control returns a measurement range in which the corresponding sensor is to perform a measurement.   y ����  �    Status                           }A   �  �    Instrument Handle                }� G  � x    Channel                          ~N G� �  x    Range                              	               1    	            �    This function configures all correction parameters.

Remote-control command(s):
SENS:CORR:OFFS
SENS:CORR:OFFS:STAT ON | OFF
SENS:CORR:SPD:STAT ON | OFF

        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     |    This control switches the offset correction on or off.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)     �    This control sets a fixed offset value can be defined for multiplying (logarithmically adding) the measured value of a sensor.

Valid Range:
  -200.0 to 200.0 dB


Default Value:
0.0 dB

Notes:
(1) Actual valid range depends on sensor used     .    This prameter is reserved. Value is ignored.     A    This prameter is reserved. Value is ignored.

Default Value:
""     �    This control enables or disables measured-value correction by means of the stored s-parameter device.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)

   �W����  �    Status                           �x   �  �    Instrument Handle                � G  � x    Channel                          �� G � �       Offset State                     �	 G �  x    Offset                           � � � �       Reserved 1                       �8 � �  x    Reserved 2                       �� �� �       S-Parameter Enable                 	               1    On VI_TRUE Off VI_FALSE    0.0    On VI_TRUE Off VI_FALSE    ""    On VI_TRUE Off VI_FALSE       This function informs the R&S NRP about the frequency of the power to be measured since this frequency is not automatically determined. The frequency is used to determine a frequency-dependent correction factor for the measurement results.

Remote-control command(s):
SENS:FREQ        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1    F    This control sets the frequency in Hz of the power to be measured since this frequency is not automatically determined.

Valid Range:

NRP-Z21: 10.0e6 - 18.0e9
FSH-Z1:  10.0e6 -  8.0e9
NRP-Z51: 0.0    - 18.0e9 (depends on the calibration data)

Default Value: 50.0e6 Hz

Notes:
(1) Actual valid range depends on sensor used.   �p����  �    Status                           ��   �  �    Instrument Handle                �0 G  � x    Channel                          �� G � �  x    Frequency                          	               1    50.0e6    �    This function queries the instrument for the frequency of the power to be measured since this frequency is not automatically determined.

Remote-control command(s):
SENSe[1..4]:FREQuency?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     |    This control returns the frequency in Hz of the power to be measured since this frequency is not automatically determined.   ������  �    Status                           ��   �  �    Instrument Handle                �d G  � x    Channel                          �� =� �  x    Frequency                          	               1    	          B    If the frequency step parameter is set to a value greater than 0.0 the sensor does a internal frequency increment if buffered mode is enabled

Depending on the parameter "frequency spacing" the sensor adds this value to the current frequency or it multiplies this value with the current frequency.

This function is used to do a simple scalar network nalysis. 
To enable this automativally frequency stepping you have to configure CONTAV sensor mode, enable buffered measurements and set frequency stepping to a value greater than 0.

Remote-control command(s):
SENS:FREQ:STEP        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the frequency step value.

Valid Range:
0 to 0.5 * MAXfreq

Default Value: 0.0

Notes:
(1) Actual valid range depends on sensor used.   ������  �    Status                           ��   �  �    Instrument Handle                �U G  � x    Channel                          �� G � �  x    Frequency Step                     	               1    0.0    ]    This function returns the frequency step value.

Remote-control command(s):
SENS:FREQ:STEP?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     0    This control returns the frequency step value.   ������  �    Status                           ��   �  �    Instrument Handle                �y G  � x    Channel                          �� G� �  x    Frequency Step                     	               1    	          o    If scalar network analysis is enabled this parameter defines how the frequency is incremented.

Linear spacing means that the frequency step value is added to the current frequency after each buffered measurement.
Logarithmic spacing means that the frequency step value is multiplied with the current frequency after each buffered measurement.

This command is used to do a simple scalar network nalysis. 
To enable this automativally frequency stepping you have to configure CONTAV sensor mode, enable buffered measurements and set frequency stepping to a value greater than 0.

Remote-control command(s):
SENS:FREQ:SPAC        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1    c    This control selects the frequency spacing value.

Valid Range:
RSNRPZ_SPACING_LINEAR (0) - Linear
RSNRPZ_SPACING_LOG    (1) - Logarithmic

Default Value: RSNRPZ_SPACING_LINEAR (0)

Note(s):

(1) Linear: linear increment of correction frequency (spacing is added).

(2) Logarithmic: logarithmic increment of corrcetion frequency (spacing is multiplied).   ������  �    Status                           ��   �  �    Instrument Handle                �K G  � x    Channel                          �� G � � x    Frequency Spacing                  	               1               <Linear RSNRPZ_SPACING_LINEAR Logarithmic RSNRPZ_SPACING_LOG    `    This function returns the frequency spacing value.

Remote-control command(s):
SENS:FREQ:SPAC?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1    9    This control returns the frequency spacing value.

Valid Range:
RSNRPZ_SPACING_LINEAR (0) - Linear
RSNRPZ_SPACING_LOG    (1) - Logarithmic

Note(s):

(1) Linear: linear increment of correction frequency (spacing is added).

(2) Logarithmic: logarithmic increment of corrcetion frequency (spacing is multiplied).   ������  �    Status                           ��   �  �    Instrument Handle                �� G  � x    Channel                          �� G� � x    Frequency Spacing                  	               1    	            �    With this function a fixed offset value can be defined for multiplying (logarithmically adding) the measured value of a sensor.

Remote-control command(s):
SENS:CORR:OFFS        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control sets a fixed offset value can be defined for multiplying (logarithmically adding) the measured value of a sensor.

Valid Range:
  -200.0 to 200.0 dB

Default Value:
0.0 dB

Notes:
(1) Actual valid range depends on sensor used     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1   ������  �    Status                           ��   �  �    Instrument Handle                �� G � �  x    Offset                            G  � x    Channel                            	               0.0    1    �    This function gets a fixed offset value defined for multiplying (logarithmically adding) the measured value of a sensor.

Remote-control command(s):
SENS:CORR:OFFS?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     |    This control returns a fixed offset value defined for multiplying (logarithmically adding) the measured value of a sensor.   Ĝ����  �    Status                           Ƚ   �  �    Instrument Handle                �\ G  � x    Channel                          �� G� �  x    Offset                             	               1    	           r    This function switches the offset correction on or off.

Remote-control command(s):
SENS:CORR:OFFS:STAT ON | OFF        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     }    This control switches the offset correction on or off.

Valid Values:
VI_TRUE (1)  - On 
VI_FALSE (0) - Off (Default Value)   ˽����  �    Status                           ��   �  �    Instrument Handle                �} G  � x    Channel                          �� G � �       Offset State                       	               1    On VI_TRUE Off VI_FALSE    i    This function returns the offset correction on or off.

Remote-control command(s):
SENS:CORR:OFFS:STAT?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     j    This control returns the offset correction on or off.

Valid Values:
VI_TRUE (1) - On
VI_FALSE (0) - Off   ������  �    Status                           �   �  �    Instrument Handle                ץ G  � x    Channel                          � G� �  x    Offset State                       	               1    	            �    This function instructs the sensor to perform a measured-value correction by means of the stored s-parameter device.

Remote-control command(s):
SENS:CORR:SPD:STAT ON | OFF        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control enables or disables measured-value correction by means of the stored s-parameter device.

Valid Values:
VI_TRUE (1)  - On
VI_FALSE (0) - Off (Default Value)

   �0����  �    Status                           �Q   �  �    Instrument Handle                �� G  � x    Channel                          �^ G � �       S-Parameter Enable                 	               1    On VI_TRUE Off VI_FALSE    �    This function returns the state of a measured-value correction by means of the stored s-parameter device.

Remote-control command(s):
SENSe[1..4]:CORRection:SPDevice:STATe?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     n    This control returns the state of S-Parameter correction.

Valid Values:
VI_TRUE (1) - On
VI_FALSE (0) - Off   ������  �    Status                           ��   �  �    Instrument Handle                � G  � x    Channel                          �� G� �  x    S-Parameter Correction             	               1    	           r    This function can be used to select a loaded data set for S-parameter correction. This data set is accessed by means of a consecutive number, starting with 1 for the first data set. If an invalid data set consecutive number is entered, an error message is output.

Note(s):

(1) This function is available only on NRP-Z81.

Remote-control command(s):
SENS:CORR:SPD:SEL        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1    	    This control can be used to select a loaded data set for S-parameter correction. This data set is accessed by means of a consecutive number, starting with 1 for the first data set. If an invalid data set consecutive number is entered, an error message is output.
   ������  �    Status                           �   �  �    Instrument Handle                � G  � x    Channel                          � G � �  `    S-Parameter                        	               1    0    �    This function gets selected data set for S-parameter correction. 

Note(s):

(1) This function is available only on NRP-Z81.

Remote-control command(s):
SENS:CORR:SPD:SEL?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     F    This control returns selected data set for S-parameter correction. 
   ������  �    Status                           ��   �  �    Instrument Handle                �� G  � x    Channel                          �� G � �  `    S-Parameter                        	               1    	            �    This function gets list of S-Parameter devices. 

Note(s):

(1) This function is available only on NRP-Z81.

Remote-control command(s):
SENS:CORR:SPD:LIST?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     F    This control returns selected data set for S-parameter correction. 
     Y    This control defines the size of buffer.

Valid Range:
not checked

Default Value: 1000   ������  �    Status                           ��   �  �    Instrument Handle                �� G  � x    Channel                          � G� �  `    S-Parameter Device List          �T G � � x    Buffer Size                        	               1    	            1000    �    This function sets the parameters of the reflection coefficient for measured-value correction.

Remote-control command(s):
SENS:SGAM
SENS:SGAM:PHAS
SENS:SGAM:CORR:STAT ON | OFF        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the magnitude of the reflection coefficient.

Valid Range:

NRP-Z21 0.0 - 1.0
FSH-Z1: 0.0 - 1.0

Default Value: 1.0

Notes:
(1) Actual valid range depends on sensor used     �    This control enables or disables source gamma correction of the measured value.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)     �    This control defines the phase angle of the reflection coefficient. Units are degrees.

Valid Range:
-360.0 to 360.0 deg

Default Value:
0.0 deg

Notes:
(1) Actual valid range depends on sensor used    �����  �    Status                           �   �  �    Instrument Handle                a G  � x    Channel                          � G �  x    Magnitude                        � G � �       Source Gamma Correction          1 G� �  x    Phase                              	               1    1.0    On VI_TRUE Off VI_FALSE    0.0    �    This function sets the magnitude of the reflection coefficient for measured-value correction.

Remote-control command(s):
SENS:SGAM:MAGN        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the magnitude of the reflection coefficient.

Valid Range:

NRP-Z21 0.0 - 1.0
FSH-Z1: 0.0 - 1.0

Default Value: 1.0

Notes:
(1) Actual valid range depends on sensor used   
����  �    Status                           0   �  �    Instrument Handle                � G  � x    Channel                          = G � �  x    Magnitude                          	               1    1.0    �    This function reads the magnitude of the reflection coefficient for measured-value correction.

Remote-control command(s):
SENS:SGAM:MAGN?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     a    This control returns the magnitude of the reflection coefficient for measured-value correction.   �����  �    Status                           �   �  �    Instrument Handle                F G  � x    Channel                          � G� �  x    Magnitude                          	               1    	           �    This function sets the phase angle of the reflection coefficient for measured-value correction.

Remote-control command(s):
SENS:SGAM:PHAS        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control defines the phase angle of the reflection coefficient. Units are degrees.

Valid Range:
-360.0 to 360.0 deg

Default Value:
0.0 deg

Notes:
(1) Actual valid range depends on sensor used   �����  �    Status                           �   �  �    Instrument Handle                f G  � x    Channel                          � G � �  x    Phase                              	               1    0.0    �    This function reads the phase angle of the reflection coefficient for measured-value correction.

Remote-control command(s):
SENS:SGAM:PHAS?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     X    This control returns the phase angle of the reflection coefficient. Units are degrees.    *����  �    Status                           $K   �  �    Instrument Handle                $� G  � x    Channel                          %X G� �  x    Phase                              	               1    	           �    This function switches the measured-value correction of the reflection coefficient effect of the source gamma ON or OFF.

Remote-control command(s):
SENS:SGAM:CORR:STAT ON | OFF        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control enables or disables source gamma correction of the measured value.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)   'h����  �    Status                           +�   �  �    Instrument Handle                ,( G  � x    Channel                          ,� G � �       Source Gamma Correction            	               1    On VI_TRUE Off VI_FALSE    l    This function reads the state of source gamma correction.

Remote-control command(s):
SENS:RGAM:CORR:STAT?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     p    This control returns the state of source gamma correction.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off   .�����  �    Status                           2�   �  �    Instrument Handle                3k G  � x    Channel                          3� G� �  x    Source Gamma Correction            	               1    	            �    This function sets the parameters of the compensation of the load distortion at the signal output.

Note(s):

(1) This function is available only for sensors NRP-Z27 and NRP-Z37

Remote-control command(s):
SENS:RGAM
SENS:RGAM:PHAS
        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the magnitude of the reflection coefficient of the load for distortion compensation.

Valid Range:
0.0 - 1.0

Default Value: 0.0     �    This control defines the phase angle (in degrees) of the complex reflection factor of the load at the signal output.

Valid Range:
-360.0 to 360.0 deg

Default Value:
0.0 deg

Notes:
(1) Actual valid range depends on sensor used   67����  �    Status                           :X   �  �    Instrument Handle                :� G  � x    Channel                          ;e G �  x    Magnitude                        < G� �  x    Phase                              	               1    0.0    0.0   �    This function sets the magnitude of the reflection coefficient of the load for distortion compensation.
To deactivate distortion compensation, set Magnitude to 0. Distortion compensation should remain deactivated in the case of questionable measurement values for the reflection coefficient of the load.

Note(s):

(1) This function is available only for sensors NRP-Z27 and NRP-Z37

Remote-control command(s):
SENS:RGAM:MAGN        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the magnitude of the reflection coefficient of the load for distortion compensation.

Valid Range:
0.0 - 1.0

Default Value: 0.0   ?�����  �    Status                           C�   �  �    Instrument Handle                D� G  � x    Channel                          D� G � �  x    Magnitude                          	               1    0.0    �    This function reads the magnitude of the reflection coefficient of the load for distortion compensation.

Note(s):

(1) This function is available only for sensors NRP-Z27 and NRP-Z37

Remote-control command(s):
SENS:RGAM:MAGN?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     k    This control returns the magnitude of the reflection coefficient of the load for distortion compensation.   Gu����  �    Status                           K�   �  �    Instrument Handle                L5 G  � x    Channel                          L� G� �  x    Magnitude                          	               1    	           �    This function defines the phase angle (in degrees) of the complex reflection factor of the load at the signal output.

Note(s):

(1) This function is available only for sensors NRP-Z27 and NRP-Z37

Remote-control command(s):
SENS:RGAM:PHAS        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control defines the phase angle (in degrees) of the complex reflection factor of the load at the signal output.

Valid Range:
-360.0 to 360.0 deg

Default Value:
0.0 deg

Notes:
(1) Actual valid range depends on sensor used   O����  �    Status                           S%   �  �    Instrument Handle                S� G  � x    Channel                          T2 G � �  x    Phase                              	               1    0.0    �    This function reads the phase angle (in degrees) of the complex reflection factor of the load at the signal output.

Note(s):

(1) This function is available only for sensors NRP-Z27 and NRP-Z37

Remote-control command(s):
SENS:RGAM:PHAS?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     v    This control returns the phase angle (in degrees) of the complex reflection factor of the load at the signal output.   W����  �    Status                           [)   �  �    Instrument Handle                [� G  � x    Channel                          \6 G� �  x    Phase                              	               1    	           �    This function defines reflection gamma uncertainty.

Note(s):

(1) This function is available only for sensors NRP-Z27 and NRP-Z37

Remote-control command(s):
SENS:RGAM:EUNC        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     T    This control defines the uncertainty.

Valid Range:
0.0 to 1.0

Default Value:
0.0   ^`����  �    Status                           b�   �  �    Instrument Handle                c  G  � x    Channel                          c� G � �  x    Uncertainty                        	               1    0.0    �    This function queries reflection gamma uncertainty.

Note(s):

(1) This function is available only for sensors NRP-Z27 and NRP-Z37

Remote-control command(s):
SENS:RGAM:EUNC?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     @    This control returns the uncertainty.

Valid Range:
0.0 to 1.0   e�����  �    Status                           i�   �  �    Instrument Handle                jR G  � x    Channel                          j� G � �  x    Uncertainty                        	               1    	           }    This function configures all duty cycle parameters.

Remote-control command(s):
SENS:CORR:DCYC
SENS:CORR:DCYC:STAT ON | OFF        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control switches measured-value correction for a specific duty cycle on or off.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)     �    This control sets the duty cycle of power to be measured.

Valid Range:
0.001 - 99.999%

Default Value: 1.0 %

Notes:
(1) Actual valid range depends on sensor used   l�����  �    Status                           p�   �  �    Instrument Handle                qB G  � x    Channel                          q� G � �       Duty Cycle State                 rR G �  x    Duty Cycle                         	               1    On VI_TRUE Off VI_FALSE    1.0   �    This function informs the R&S NRP about the duty cycle of the power to be measured. Specifying a duty cycle only makes sense in the ContAv mode where measurements are performed continuously without taking the timing of the signal into account. For this reason, this setting can only be chosen in the local mode when the sensor performs measurements in the ContAv mode.

Remote-control command(s):
SENS:CORR:DCYC        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the duty cycle of power to be measured.

Valid Range:
0.001 - 99.999 %

Default Value: 1.0 %

Notes:
(1) Actual valid range depends on sensor used   u�����  �    Status                           z   �  �    Instrument Handle                z� G  � x    Channel                          { G � �  x    Duty Cycle                         	               1    1.0    t    This function gets the size of duty cycle of the power to be measured.

Remote-control command(s):
SENS:CORR:DCYC?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     W    This control returns the size of duty cycle of the power to be measured. Units are %.   },����  �    Status                           �M   �  �    Instrument Handle                �� G  � x    Channel                          �Z G� �  x    Duty Cycle                         	               1    	           �    This function switches measured-value correction for a specific duty cycle on or off.

Remote-control command(s):
SENS:CORR:DCYC:STAT ON | OFF        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control switches measured-value correction for a specific duty cycle on or off.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)   �F����  �    Status                           �g   �  �    Instrument Handle                � G  � x    Channel                          �t G � �       Duty Cycle State                   	               1    On VI_TRUE Off VI_FALSE    `    This function gets the setting of duty cycle.

Remote-control command(s):
SENS:CORR:DCYC:STAT?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     c    This control returns the state of duty cycle.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off   ������  �    Status                           ��   �  �    Instrument Handle                �B G  � x    Channel                          �� G� �  x    Duty Cycle State                   	               1    	               This function determines the integration time for a single measurement in the ContAv mode. To increase the measurement accuracy, this integration is followed by a second averaging procedure in a window with a selectable number of values.

Remote-control command(s):
SENS:POW:AVG:APER        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control defines the ContAv Aperture in seconds.

Valid Range:
NRP-Z21:   0.1e-6 to 0.3 seconds
NRP-Z51:   0.1e-3 to 0.3 seconds
FSH-Z1:    0.1e-6 to 0.3 seconds

Default Value: 0.02 s

Notes:
(1) Actual valid range depends on sensor used   �5����  �    Status                           �V   �  �    Instrument Handle                �� G  � x    Channel                          �c G � �  x    ContAv Aperture                    	               1    0.02    n    This function queries the value of ContAv mode aperture size.

Remote-control command(s):
SENS:POW:AVG:APER?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     ;    This control returns the ContAv Aperture size in seconds.   ������  �    Status                           ��   �  �    Instrument Handle                �� G  � x    Channel                          �� G� �  x    ContAv Aperture                    	               1    	          (    This function activates digital lowpass filtering of the sampled video signal.
The problem of instable display values due to a modulation of a test signal can also be eliminated by lowpass filtering of the video signal. The lowpass filter eliminates the variations of the display even in case of unperiodic modulation and does not require any other setting.
If the modulation is periodic, the setting of the sampling window is the better method since it allows for shorter measurement times.

Remote-control command(s):
SENS:POW:AVG:SMO:STAT ON | OFF        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the state of digital lowpass filtering of the sampled video signal.

Valid Values:
VI_TRUE  (1) - On (Default Value)
VI_FALSE (0) - Off   �\����  �    Status                           �}   �  �    Instrument Handle                � G  � x    Channel                          �� G � �       ContAv Smoothing                   	               1   On VI_TRUE Off VI_FALSE    �    This function gets the state of digital lowpass filtering of the sampled video signal.

Remote-control command(s):
SENS:POW:AVG:SMO:STAT?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control returns the state of digital lowpass filtering of the sampled video signal.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off   ������  �    Status                           ��   �  �    Instrument Handle                �� G  � x    Channel                          �� G� �  x    ContAv Smoothing                   	               1    	               This function switches on the buffered ContAv mode, after which data blocks rather than single measured values are then  returned. In this mode a higher data rate is achieved than in the non-buffered ContAv mode.

Remote-control command(s):
SENS:POW:AVG:BUFF:STAT ON | OFF        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control turns on or off ContAv buffered measurement mode.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)   ������  �    Status                           ��   �  �    Instrument Handle                �W G  � x    Channel                          �� G � �       ContAv Buffered Mode               	               1    On VI_TRUE Off VI_FALSE    z    This function returns the state of ContAv Buffered Measurement Mode.

Remote-control command(s):
SENS:POW:AVG:BUFF:STAT?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     E    This control returns the state of ContAv Buffered Measurement Mode.   ������  �    Status                           ��   �  �    Instrument Handle                �� G  � x    Channel                          � G� �  x    ContAv Buffered Mode               	               1    	            �    This function sets the number of desired values for the buffered ContAv mode.

Remote-control command(s):
SENS:POW:AVG:BUFF:SIZE        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     t    This control sets the number of desired values for buffered ContAv mode.

Valid Range:
1 to 1024

Default Value: 1   ������  �    Status                           ��   �  �    Instrument Handle                ő G  � x    Channel                          �� G � �  x    Buffer Size                        	               1    1    �    This function returns the number of desired values for the buffered ContAv mode.

Remote-control command(s):
SENS:POW:AVG:BUFF:SIZE?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     k    This control returns the number of desired values for the buffered ContAv mode.

Valid Range:
1 to 400000   ������  �    Status                           �   �  �    Instrument Handle                ̷ G  � x    Channel                          �% G� �  x    Buffer Size                        	               1    	            �    This function returns the number of measurement values currently stored in the sensor buffer while the buffered measurement is running.

Remote-control command(s):
SENS:POW:AVG:BUFF:COUN?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control returns the number of measurement values currently stored in the sensor buffer while the buffered measurement is running.   �R����  �    Status                           �s   �  �    Instrument Handle                � G  � x    Channel                          Ԁ G� �  x    Buffer Count                       	               1    	            �    This function returns some important settings for the scalar network analysis.

Remote-control command(s):
SENS:POW:AVG:BUFF:INFO? <Info Type>        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1    �    This control returns some important settings for the scalar network analysis.

The information for the types "FAST", "NORMAL" and "HIGHPRECISION" is a comma separated string including the following fields:

1.) infotype,
2.) aperture time
3.) average count
4.) min. time between two trigger events 
5.) trigger delay
6.) flag if this mode is available (0 if not)

The type "TRACEMODE" returns a "1" if tracemode is supported by the sensor.     �    This control specifies which info should be retrieved from the sensor. If no infoType is given the sensor returns the complete information string.

Valid Values:
 "FAST"
 "NORMAL"
 "HIGHPRECISION"
 "TRACEMODE"

Default Value:
""     T    This control defines the size of array 'Info'.

Valid Range:
-

Default Value:
100   ֝����  �    Status                           ھ   �  �    Instrument Handle                �] G # � x    Channel                          �� �  � �    Info                             ݌ G � � x    Info Type                        �z G� �  x    Array Size                         	               1    	            ""       K    The end of a burst (power pulse) is recognized when the signal level drops below the trigger level. Especially with modulated signals, this may also happen for a short time within a burst. To prevent the supposed end of the burst is from being recognized too early or incorrectly at these positions, a time interval can be defined via using this function (drop-out tolerance parameter) in which the pulse end is only recognized if the signal level no longer exceeds the trigger level.

Note:

1) This function is not available for NRP-Z51

Remote-control command(s):
SENS:POW:BURS:DTOL    $    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This parameter defines the Drop-Out Tolerance time interval in seconds.

Valid Range:
0.0 to 3.0e-3 seconds

Default Value: 100.0e-6 s

Notes:
(1) Actual valid range depends on sensor used     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1   �����  �    Status                           �   �  �    Instrument Handle                �] G � �  x    Drop-out Tolerance               �# G  � x    Channel                            	               	100.0e-6    1    �    This function returns the drop-out tolerance parameter.

Note:

1) This function is not available for NRP-Z51

Remote-control command(s):
SENS:POW:BURS:DTOL?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     8    This control returns the drop-out tolerance parameter.     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1   �-����  �    Status                           �X   �  �    Instrument Handle                �� G� �  x    Drop-out Tolerance               �7 G  � x    Channel                            	               	           1       This function enables or disables the chopper in BurstAv mode. Disabling the chopper is only good for fast but unexact and noisy measurements. If the chopper is disabled, averaging is ignored internally also disabled.

Remote-control command(s):
SENSe:POWer:BURSt:CHOPper:STATe        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control enables or disables the chopper for BurstAv mode.

Valid Values:
VI_TRUE  (1) - On (Default Value)
VI_FALSE (0) - Off   �����  �    Status                           ��   �  �    Instrument Handle                �y G  � x    Channel                          �� G
 �       BurstAv Chopper                    	               1   On VI_TRUE Off VI_FALSE    ~    This function queries the state of the chopper in BurstAv mode.

Remote-control command(s):
SENSe:POWer:BURSt:CHOPper:STATe?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     A    This control returns the state of the chopper for BurstAv mode.   ������  �    Status                           �   �  �    Instrument Handle                �� G  � x    Channel                          �+ G� �  x    BurstAv Chopper                    	               1    	               This function configures the timegate (depends on trigger event) in which the sensor is doing statistic measurements.

Remote-control command(s):
SENSe:STATistics:OFFSet:TIME
SENSe:STATistics:TIME
SENSe:STATistics:[EXCLude]:MID:OFFSet[:TIME]
SENSe:STATistics:[EXCLude]:MID:TIME    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the start after the trigger of the timegate in which the sensor is doing statistic measurements.

Valid Range:


Default Value: 0.0 s     �    This control sets the length of the timegate in which the sensor is doing statistic measurements.

Valid Range:
1.0E-6 to 0.3 s

Default Value: 0.01 s     �    This control sets the midamble offset after timeslot start in seconds in the timegate in which the sensor is doing statistic measurements.

Valid Range:
0.0 to 10.0 s

Default Value: 0.0 s     e    This control sets the midamble length in seconds.

Valid Range:
0.0 to 10.0 s

Default Value: 0.0 s    �����  �    Status                           �   �  �    Instrument Handle                R G F � x    Channel                          � G � �  x    Offset                           a Gl �  x    Time                              � � �  x    Midamble Offset                  � �  �  x    Midamble Length                    	               1    0.0    0.01    0.0    0.0    �    This function sets the X-Axis of statistical measurement.

Remote-control command(s):
SENSe:STATistics:SCALE:X:RLEVel
SENSe:STATistics:SCALE:X:RANGe
SENSe:STATistics:SCALE:X:POINts    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1    3    This control sets the lower limit of the level range for the analysis result in both Statistics modes. This level can be assigned to the first pixel. The level assigned to the last pixel is equal to the level of the first pixel plus the level range.

Valid Range:
-80.0 to 20.0 dB

Default Value: -30.0 dB     �    This control sets the width of the level range for the analysis result in both Statistics modes.

Valid Range:
0.01 to 100.0

Default Value: 50.0    �    This control sets the measurement-result resolution in both Statistics modes. This function specifies the number of pixels that are to be assigned to the logarithmic level range (rsnrpz_stat_setScaleRange function) for measured value output. The width of the level range divided by N-1, where N is the number of pixels, must not be less than the value which can be read out with rsnrpz_stat_getScaleWidth.

Valid Range:
3 to 8192

Default Value: 200   
�����  �    Status                           �   �  �    Instrument Handle                a G 2 � x    Channel                          � G � �  x    Reference Level                  
 G� �  x    Range                            � � � �  x    Points                             	               1    -30.0    50.0    200    �    This function sets the start after the trigger of the timegate in which the sensor is doing statistic measurements.

Remote-control command(s):
SENSe:STATistics:OFFSet:TIME    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the start after the trigger of the timegate in which the sensor is doing statistic measurements.

Valid Range:


Default Value: 0.0 s   �����  �    Status                           �   �  �    Instrument Handle                [ G  � x    Channel                          � G� �  x    Offset                             	               1    0.0    �    This function queries the start after the trigger of the timegate in which the sensor is doing statistic measurements.

Remote-control command(s):
SENSe:STATistics:OFFSet:TIME?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     w    This control returns the start after the trigger of the timegate in which the sensor is doing statistic measurements.   ����  �    Status                           !?   �  �    Instrument Handle                !� G  � x    Channel                          "L G� �  x    Offset                             	               1    	           �    This function sets the length of the timegate in which the sensor is doing statistic measurements.

Remote-control command(s):
SENSe:STATistics:TIME    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the length of the timegate in which the sensor is doing statistic measurements.

Valid Range:
1.0E-6 to 0.3 s

Default Value: 0.01 s   $^����  �    Status                           (�   �  �    Instrument Handle                )( G  � x    Channel                          )� G� �  x    Time                               	               1    0.01    �    This function queries the length of the timegate in which the sensor is doing statistic measurements.

Remote-control command(s):
SENSe:STATistics:TIME?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     f    This control returns the length of the timegate in which the sensor is doing statistic measurements.   +�����  �    Status                           /�   �  �    Instrument Handle                0� G  � x    Channel                          1 G� �  x    Time                               	               1    	           �    This function sets the midamble offset after timeslot start in seconds in the timegate in which the sensor is doing statistic measurements.

Remote-control command(s):
SENSe:STATistics:[EXCLude]:MID:OFFSet[:TIME]    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the midamble offset after timeslot start in seconds in the timegate in which the sensor is doing statistic measurements.

Valid Range:
0.0 to 10.0 s

Default Value: 0.0 s   3B����  �    Status                           7m   �  �    Instrument Handle                8 G  � x    Channel                          8z G� �  x    Offset                             	               1    0.0    �    This function queries the midamble offset after timeslot start in seconds in the timegate in which the sensor is doing statistic measurements.

Remote-control command(s):
SENSe:STATistics:[EXCLude]:MID:OFFSet[:TIME]?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control returns the midamble offset after timeslot start in seconds in the timegate in which the sensor is doing statistic measurements.   ;����  �    Status                           ?=   �  �    Instrument Handle                ?� G  � x    Channel                          @J G� �  x    Offset                             	               1    	           t    This function sets the midamble length in seconds.

Remote-control command(s):
SENSe:STATistics:[EXCLude]:MID:TIME    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     e    This control sets the midamble length in seconds.

Valid Range:
0.0 to 10.0 s

Default Value: 0.0 s   BR����  �    Status                           F}   �  �    Instrument Handle                G G  � x    Channel                          G� G� �  x    Length                             	               1    0.0    x    This function queries the midamble length in seconds.

Remote-control command(s):
SENSe:STATistics:[EXCLude]:MID:TIME?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     6    This control returns the midamble length in seconds.   Ig����  �    Status                           M�   �  �    Instrument Handle                N1 G  � x    Channel                          N� G� �  x    Length                             	               1    	          8    This function sets the lower limit of the level range for the analysis result in both Statistics modes. This level can be assigned to the first pixel. The level assigned to the last pixel is equal to the level of the first pixel plus the level range.

Remote-control command(s):
SENSe:STATistics:SCALE:X:RLEVel    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1    3    This control sets the lower limit of the level range for the analysis result in both Statistics modes. This level can be assigned to the first pixel. The level assigned to the last pixel is equal to the level of the first pixel plus the level range.

Valid Range:
-80.0 to 20.0 dB

Default Value: -30.0 dB   Q����  �    Status                           U=   �  �    Instrument Handle                U� G  � x    Channel                          VJ G� �  x    Reference Level                    	               1    -30.0   <    This function queries the lower limit of the level range for the analysis result in both Statistics modes. This level can be assigned to the first pixel. The level assigned to the last pixel is equal to the level of the first pixel plus the level range.

Remote-control command(s):
SENSe:STATistics:SCALE:X:RLEVel?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1        This control returns the lower limit of the level range for the analysis result in both Statistics modes. This level can be assigned to the first pixel. The level assigned to the last pixel is equal to the level of the first pixel plus the level range.

Valid Range:
-80.0 to 20.0 dBm   Y�����  �    Status                           ]�   �  �    Instrument Handle                ^� G  � x    Channel                          ^� G� �  x    Reference Level                    	               1    	           �    This function sets the width of the level range for the analysis result in both Statistics modes.

Remote-control command(s):
SENSe:STATistics:SCALE:X:RANGe    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the width of the level range for the analysis result in both Statistics modes.

Valid Range:
0.01 to 100.0

Default Value: 50.0   a�����  �    Status                           e�   �  �    Instrument Handle                f~ G  � x    Channel                          f� G� �  x    Range                              	               1    50.0    �    This function queries the width of the level range for the analysis result in both Statistics modes.

Remote-control command(s):
SENSe:STATistics:SCALE:X:RANGe?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1         This control returns the width of the level range for the analysis result in both Statistics modes.

Valid Range:
0.01 to 100   i"����  �    Status                           mM   �  �    Instrument Handle                m� G  � x    Channel                          nZ G� �  x    Range                              	               1    	          �    This function sets the measurement-result resolution in both Statistics modes. This function specifies the number of pixels that are to be assigned to the logarithmic level range (rsnrpz_stat_setScaleRange function) for measured value output. The width of the level range divided by N-1, where N is the number of pixels, must not be less than the value which can be read out with rsnrpz_stat_getScaleWidth.

Remote-control command(s):
SENSe:STATistics:SCALE:X:POINts    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     v    This control the measurement-result resolution in both Statistics modes.

Valid Range:
3 to 8192

Default Value: 200   q�����  �    Status                           u�   �  �    Instrument Handle                v| G  � x    Channel                          v� G� �  x    Points                             	               1    200    �    This function queries the measurement-result resolution in both Statistics modes.

Remote-control command(s):
SENSe:STATistics:SCALE:X:POINts?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     j    This control returns the measurement-result resolution in both Statistics modes.

Valid Range:
3 to 8192   x�����  �    Status                           }   �  �    Instrument Handle                }� G  � x    Channel                          ~( G� �  x    Points                             	               1    	           �    This function queries the greatest attainable level resolution. For the R&S NRP-Z81 power sensor, this value is fixed at 0.006 dB per pixel. If this value is exceeded, a "Settings conflict" message is output. The reason for the conflict may be that the number of pixels that has been selected is too great or that the width chosen for the level range is too small (rsnrpz_stat_setScalePoints and rsnrpz_stat_setScaleRange functions).

Remote-control command(s):
SENSe:STATistics:SCALE:X:MPWidth?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     @    This control returns the greatest attainable level resolution.   ������  �    Status                           ��   �  �    Instrument Handle                �R G  � x    Channel                          �� G� �  x    Width                              	               1    	           �    This function configures the parameters of Timeslot measurement mode. Both exclude start and stop are set to 10% of timeslot width each.

Remote-control command(s):
SENS:POW:TSL:AVG:COUN
SENS:POW:TSL:AVG:WIDT
SENS:TIM:EXCL:STAR
SENS:TIM:EXCL:STOP    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the number of simultaneously measured timeslots in the Timeslot mode.

Valid Range:
1 - 128

Default Value:
8

Notes:
(1) Actual valid range depends on sensor used     �    This control sets the length in seconds of the timeslot in the Timeslot mode.

Valid Range:
10.0e-6 - 0.1

Default Value: 1.0e-3 s

Notes:
(1) Actual valid range depends on sensor used   ������  �    Status                           �(   �  �    Instrument Handle                �� G  � x    Channel                          �5 G � �  x    Time Slot Count                  �� G? �  x    Width                              	               1    8    1.0e-3    �    This function sets the number of simultaneously measured timeslots in the Timeslot mode.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:POW:TSL:AVG:COUN    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the number of simultaneously measured timeslots in the Timeslot mode.

Valid Range:
1 - 128

Default Value:
8

Notes:
(1) Actual valid range depends on sensor used   ������  �    Status                           ��   �  �    Instrument Handle                �x G  � x    Channel                          �� G � �  x    Time Slot Count                    	               1    8    �    This function reads the number of simultaneously measured timeslots in the Timeslot mode.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:POW:TSL:AVG:COUN?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     \    This control returns the number of simultaneously measured timeslots in the Timeslot mode.   �`����  �    Status                           ��   �  �    Instrument Handle                �* G  � x    Channel                          �� G� �  x    Time Slot Count                    	               1    	            �    This function sets the length of the timeslot in the Timeslot mode.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:POW:TSL:AVG:WIDT    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the length in seconds of the timeslot in the Timeslot mode.

Valid Range:
10.0e-6 - 0.1

Default Value: 1.0e-3 s

Notes:
(1) Actual valid range depends on sensor used   ������  �    Status                           ��   �  �    Instrument Handle                �q G  � x    Channel                          �� G � �  x    Width                              	               1    1.0e-3    �    This function reads the length of the timeslot in the Timeslot mode.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:POW:TSL:AVG:WIDT?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     R    This control returns the length in seconds of the timeslot in the Timeslot mode.   �L����  �    Status                           �w   �  �    Instrument Handle                � G  � x    Channel                          �� G� �  x    Width                              	               1    	          �    This function sets the start of an exclusion interval in a timeslot. In conjunction with the function rsnrpz_tslot_setTimeSlotMidLength, it is possible to exclude, for example, a midamble from the measurement. The start of the timeslot is used as the reference point for defining the start of the exclusion interval and this applies to each of the timeslots

Remote-control command(s):
SENSe:POWer:TSLot[:AVG]:MID:OFFSet
    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     {    This control sets sets the start of an exclusion interval in a timeslot.

Valid Range:
0.0 to 0.1 s

Default Value: 0.0 s   ������  �    Status                           ��   �  �    Instrument Handle                �L G  � x    Channel                          �� G � �  x    Offset                             	               1    0.0    �    This function queries the start of an exclusion interval in a timeslot.

Remote-control command(s):
SENSe:POWer:TSLot[:AVG]:MID:OFFSet?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     h    This control returns sets the start of an exclusion interval in a timeslot.

Valid Range:
0.0 to 0.1 s   ������  �    Status                           ��   �  �    Instrument Handle                �� G  � x    Channel                          �� G � �  x    Offset                             	               1    	              This function sets the length of an exclusion interval in a timeslot. In conjunction with the function rsnrpz_tslot_setTimeSlotMidOffset, it can be used, for example, to exclude a midamble from the measurement.

Remote-control command(s):
SENSe:POWer:TSLot[:AVG]:MID:TIME
    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     u    This control sets the length of an exclusion interval in a timeslot.

Valid Range:
0.0 to 0.1

Default Value: 0.0 s   �u����  �    Status                           à   �  �    Instrument Handle                �? G  � x    Channel                          ĭ G � �  x    Length                             	               1    0.0    �    This function queries the length of an exclusion interval in a timeslot.

Remote-control command(s):
SENSe:POWer:TSLot[:AVG]:MID:TIME?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     d    This control returns the length of an exclusion interval in a timeslot.

Valid Range:
0.0 to 0.1 s   ƪ����  �    Status                           ��   �  �    Instrument Handle                �t G  � x    Channel                          �� G � �  x    Length                             	               1    	              This function enables or disables the chopper in Time Slot mode. Disabling the chopper is only good for fast but unexact and noisy measurements. If the chopper is disabled, averaging is ignored internally also disabled.

Remote-control command(s):
SENSe:POWer:TSLot[:AVG]:CHOPper:STATe        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control enables or disables the chopper for Time Slot mode.

Valid Values:
VI_TRUE  (1) - On (Default Value)
VI_FALSE (0) - Off   �j����  �    Status                           ҋ   �  �    Instrument Handle                �* G  � x    Channel                          Ә G
 �       Time Slot Chopper                  	               1   On VI_TRUE Off VI_FALSE    �    This function queries the state of the chopper in Time Slot mode.

Remote-control command(s):
SENSe:POWer:TSLot[:AVG]:CHOPper:STATe?        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     C    This control returns the state of the chopper for Time Slot mode.   ո����  �    Status                           ��   �  �    Instrument Handle                �x G  � x    Channel                          �� G� �  x    Time Slot Chopper                  	               1    	            �    This function sets parameters of the Scope mode.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:TRAC:POIN
SENS:TRAC:TIME
SENS:TRAC:OFFS:TIME
SENS:TRAC:REAL ON | OFF    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the number of desired values per Scope sequence.

Valid Range:
1 to 1024

Default Value: 312

Notes:
(1) Actual valid range depends on sensor used     �    This control sets the value of scope time.

Valid Range:
0.1e-3 to 0.3 s

Default Value: 0.01 s

Notes:
(1) Actual valid range depends on sensor used     �    This control sets the value of offset time.

Valid Range:

-5.0e-3 to 100.0 s

Default Value: 0.0 s


Notes:
(1) Actual valid range depends on sensor used     {    This control sets the state of real-time measurement.

Valid Values:
VI_TRUE  (1) - On (Default Value)
VI_FALSE (0) - Off   ������  �    Status                           �(   �  �    Instrument Handle                �� G  � x    Channel                          �5 G � �  x    Scope Points                     �� G �  x    Scope Time                       � G� �  x    Offset Time                      �& �  �       Realtime                           	               1    312    0.01    0.0    On VI_TRUE Off VI_FALSE   �    This function performs fast zeroing, but can be called only in the sensor's Trace mode and Statistics modes. In any other measurement mode, the error message NRPERROR_CALZERO is output. Even though the execution time is shorter than that for standard zeroing by a factor of 100 or more, measurement accuracy is not affected. Fast zeroing is available for the entire frequency range.

Remote-control command(s):
CAL:ZERO:FAST:AUTO        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None   �����  �    Status                           �:   �  �    Instrument Handle                  	              �    For the Scope mode, this function switches the filter function of a sensor on or off. When the filter is switched on, the number of measured values set with SENS:TRAC:AVER:COUN (function rsnrpz_scope_setAverageCount) is averaged. This reduces the effect of noise so that more reliable results are obtained.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:TRAC:AVER:STAT ON | OFF    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control switches the filter function of a sensor on or off.

Valid Values:
VI_TRUE  (1) - On (Default Value)
VI_FALSE (0) - Off   ������  �    Status                           �*   �  �    Instrument Handle                �� G  � x    Channel                          �7 G � �       Scope Averaging                    	               1   On VI_TRUE Off VI_FALSE    �    This function reads the state of filter function of a sensor.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:TRAC:AVER:STAT?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     t    This control returns the state of filter function of a sensor.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off   �x����  �    Status                           ��   �  �    Instrument Handle                �B G  � x    Channel                          �� G� �  x    Scope Averaging                    	               1    	            �    This function sets the length of the filter for the Scope mode. The wider the filter the lower the noise and the longer it takes to obtain a measured value.

Remote-control command(s):
SENS:TRAC:AVER:COUN    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the length of the filter for the Scope mode.

Valid Range:
1 to 65536

Default Value: 4

Notes:
(1) Actual valid range depends on sensor used   ������  �    Status                           "   �  �    Instrument Handle                � G  � x    Channel                          / G � �  x    Count                              	               1    4    v    This function returns the length of the filter for the Scope mode.

Remote-control command(s):
SENS:TRAC:AVER:COUN?
    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     A    This control returns the averaging filter length in Scope mode.   D����  �    Status                           	o   �  �    Instrument Handle                
 G  � x    Channel                          
| G� �  x    Count                              	               1    	           �    As soon as a new single value is determined, the filter window is advanced by one value so that the new value is taken into account by the filter and the oldest value is forgotten.
Terminal control then determines in the Scope mode whether a new result will be calculated immediately after a new measured value is available or only after an entire range of new values is available for the filter.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:TRAC:AVER:TCON MOV | REP    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control determines the type of terminal control.

Valid Values:
 RSNRPZ_TERMINAL_CONTROL_MOVING - Moving
 RSNRPZ_TERMINAL_CONTROL_REPEAT - Repeat (Default Value)
   �����  �    Status                           �   �  �    Instrument Handle                � G  � x    Channel                          � G � � x    Terminal Control                   	               1              LMoving RSNRPZ_TERMINAL_CONTROL_MOVING Repeat RSNRPZ_TERMINAL_CONTROL_REPEAT    �    This function returns selected terminal control type in the Scope mode.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:TRAC:AVER:TCON?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control returns the type of terminal control.

Valid Values:
Moving (RSNRPZ_TERMINAL_CONTROL_MOVING)
Repeat (RSNRPZ_TERMINAL_CONTROL_REPEAT)   �����  �    Status                           �   �  �    Instrument Handle                q G  � x    Channel                          � G� �  x    Terminal Control                   	               1    	            �    This function determines the relative position of the trigger event in relation to the beginning of the Scope measurement sequence.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:TRAC:OFFS:TIME    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control sets the value of offset time.

Valid Range:

-5.0e-3 to 100.0 s

Default Value: 0.0 s


Notes:
(1) Actual valid range depends on sensor used     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1   c����  �    Status                           !�   �  �    Instrument Handle                "- G � �  x    Offset Time                      "� G  � x    Channel                            	               0.0    1    �    This function reads the relative position of the trigger event in relation to the beginning of the Scope measurement sequence.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:TRAC:OFFS:TIME?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     ;    This control returns the value of offset time in seconds.   %����  �    Status                           )J   �  �    Instrument Handle                )� G  � x    Channel                          *W G� �  x    Offset Time                        	               1    	           �    This function sets the number of desired values per Scope sequence.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:TRAC:POIN    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the number of desired values per Scope sequence.

Valid Range:
1 to 1024

Default Value: 312

Notes:
(1) Actual valid range depends on sensor used   ,>����  �    Status                           0i   �  �    Instrument Handle                1 G  � x    Channel                          1v G � �  x    Scope Points                       	               1    312    �    This function reads the number of desired values per Scope sequence.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:TRAC:POIN?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     G    This control returns the number of desired values per Scope sequence.   3�����  �    Status                           7�   �  �    Instrument Handle                8� G  � x    Channel                          8� G� �  x    Scope Points                       	               1    	           a    In the default state (OFF), each measurement sequence from the sensor is averaged over several sequences. Since the measured values of a sequence may be closer to each other in time than the measurements, several measurement sequences with a slight time offset are also superimposed on the desired sequence. With the state turned ON - this effect can be switched off, which may increase the measurement speed. This ensures that the measured values of an individual sequence are immediately delivered.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:TRAC:REAL ON | OFF    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     |    This control sets the state of real-time measurement.

Valid Values:
VI_TRUE  (1) - On 
VI_FALSE (0) - Off (Default Value)   <�����  �    Status                           @�   �  �    Instrument Handle                At G  � x    Channel                          A� G �       Realtime                           	               1    On VI_TRUE Off VI_FALSE    �    This function reads the state of real-time measurement setting.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:TRAC:REAL?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     }    This control returns the state of real-time measurement.

Valid Values:
VI_TRUE (1) - On (Default Value)
VI_FALSE (0) - Off   D����  �    Status                           HA   �  �    Instrument Handle                H� G  � x    Channel                          IN G} �  �    Realtime                           	               1    	            �    This function sets the time to be covered by the Scope sequence.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:TRAC:TIME    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the value of scope time.

Valid Range:
0.1e-3 to 0.3 s

Default Value: 0.01 s

Notes:
(1) Actual valid range depends on sensor used   Kt����  �    Status                           O�   �  �    Instrument Handle                P> G  � x    Channel                          P� F � �  x    Scope Time                         	               1    0.01    �    This function reads the value of the time to be covered by the Scope sequence.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:TRAC:TIME?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     :    This control returns the value of scope time in seconds.   R�����  �    Status                           W"   �  �    Instrument Handle                W� G  � x    Channel                          X/ G� �  x    Scope Time                         	               1    	           �    This function can be used to automatically determine a value for filter bandwidth.

Remote-control command(s):
SENS:TRAC:AVER:COUN:AUTO ON|OFF    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1        This control activates or deactivates automatic determination of a value for filter bandwidth.
If the automatic switchover is activated with the ON parameter, the sensor always defines a suitable filter length.

Valid Values:
VI_FALSE (0) - Off
VI_TRUE  (1) - On (Default Value)   Y�����  �    Status                           ^)   �  �    Instrument Handle                ^� G  � x    Channel                          _6 G � �       Auto Enabled                       	               1   On VI_TRUE Off VI_FALSE    �    This function queries the setting of automatic switchover of filter bandwidth.

Remote-control command(s):
SENS:TRAC:AVER:COUN:AUTO?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     P    This control returns the setting of automatic switchover of filter bandwidth.
   a�����  �    Status                           f   �  �    Instrument Handle                f� G  � x    Channel                          g  G� �  x    Auto Enabled                       	               1    	                This function sets an upper time limit can be set via (maximum time). It should never be exceeded. Undesired long measurement times can thus be prevented if the automatic filter length switchover is on.

Remote-control command(s):
SENS:TRAC:AVER:COUN:AUTO:MTIM    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the upper time limit (maximum time to fill the filter).

Valid Range:

NRP-21: 0.01 - 999.99
FSH-Z1: 0.01 - 999.99

Default Value: 4.0

Notes:
(1) This value is not range checked, the actual range depends on sensor used.   i|����  �    Status                           m�   �  �    Instrument Handle                nF G  � x    Channel                          n� G � �  x    Upper Time Limit                   	               1    4.0    �    This function queries an upper time limit (maximum time to fill the filter).

Remote-control command(s):
SENS:TRAC:AVER:COUN:AUTO:MTIM    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     M    This control returns an upper time limit (maximum time to fill the filter).   q,����  �    Status                           uW   �  �    Instrument Handle                u� G  � x    Channel                          vd G� �  x    Upper Time Limit                   	               1    	           �    This function sets the maximum noise ratio in the measurement result.

Remote-control command(s):
SENS:TRAC:AVER:COUN:AUTO:NSR    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the maximum noise ratio in the measurement result. The value is set in dB.

Valid Range:

NRP-Z21: 0.0 - 1.0
FSH-Z1:  0.0 - 1.0

Default Value: 0.1

Notes:
(1) This value is not range checked; the actual range depends on sensor used.   x6����  �    Status                           |a   �  �    Instrument Handle                }  G  � x    Channel                          }n G � �  x    Maximum Noise Ratio                	               1    0.1    w    This function queries the maximum noise signal ratio value.

Remote-control command(s):
SENS:TRAC:AVER:COUN:AUTO:NSR?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     :    This control returns a maximum noise signal ratio in dB.   �����  �    Status                           �   �  �    Instrument Handle                �� G  � x    Channel                          � G� �  x    Maximum Noise Ratio                	               1    	          *    This function defines the number of significant places for linear units and the number of decimal places for logarithmic units which should be free of noise in the measurement result. This setting does not affect the setting of display.

Remote-control command(s):
SENS:AVER:COUN:AUTO:RES 1 ... 4    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1    8    This control defines the number of significant places for linear units and the number of decimal places for logarithmic units which should be free of noise in the measurement result.

Valid Range:
1 to 4

Default Value: 3

Notes:
(1) Actual range depend on sensor used and may vary from the range stated above.   ������  �    Status                           ��   �  �    Instrument Handle                �M G  � x    Channel                          �� G � �  x    Resolution                         	               1    3    �    This function returns the number of significant places for linear units and the number of decimal places for logarithmic units which should be free of noise in the measurement result. 

Remote-control command(s):
SENS:AVER:COUN:AUTO:RES?    $    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control returns the number of significant places for linear units and the number of decimal places for logarithmic units which should be free of noise in the measurement result.

Valid Range:
1 to 4   ������  �    Status                           �   �  �    Instrument Handle                �� G  � x    Channel                          � G� �  x    Resolution                         	               1    	            �    This function selects a method by which the automatic filter length switchover can operate.

Remote-control command(s):
SENS:TRAC:AVER:COUN:AUTO:TYPE RES | NSR    U    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control selects a method by which the automatic filter length switchover can operate.

Valid Values:
RSNRPZ_AUTO_COUNT_TYPE_RESOLUTION (0) - Resolution (Default Value)
RSNRPZ_AUTO_COUNT_TYPE_NSR (1) - Noise Ratio   ������  �    Status                           ��   �  �    Instrument Handle                �� G  � x    Channel                          �� G � � x    Method                             	               1               TResolution RSNRPZ_AUTO_COUNT_TYPE_RESOLUTION Noise Ratio RSNRPZ_AUTO_COUNT_TYPE_NSR    �    This function returns a method by which the automatic filter length switchover can operate.

Remote-control command(s):
SENS:TRAC:AVER:COUN:AUTO:TYPE?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control returns a method by which the automatic filter length switchover can operate.

Valid Values:
Resolution (RSNRPZ_AUTO_COUNT_TYPE_RESOLUTION)
Noise Ratio (RSNRPZ_AUTO_COUNT_TYPE_NSR)   ������  �    Status                           ��   �  �    Instrument Handle                �� G  � x    Channel                          �� G� �  x    Method                             	               1    	               This function activates or deactivates the automatic equivalent sampling if the resolution of the trace measurement is configured lower than a sample period.

Note:
1) This function is only available for NRP-Z81.

Remote-control command(s):
SENS:TRAC:ESAM:AUTO    U    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control activates or deactivates the automatic equivalent sampling if the resolution of the trace measurement is configured lower than a sample period.

Valid Values:
VI_TRUE  (1) - On (Default Value)
VI_FALSE (0) - Off   ������  �    Status                           �(   �  �    Instrument Handle                �� G  � x    Channel                          �5 G � �       Scope Equivalent Sampling          	               1   On VI_TRUE Off VI_FALSE       This function returns the state of the automatic equivalent sampling if the resolution of the trace measurement is configured lower than a sample period.

Note:
1) This function is only available for NRP-Z81.

Remote-control command(s):
SENS:TRAC:ESAM:AUTO?    U    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control returns the state of the automatic equivalent sampling if the resolution of the trace measurement is configured lower than a sample period.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off   �.����  �    Status                           ��   �  �    Instrument Handle                �* G  � x    Channel                          �� G � �  `    Scope Equivalent Sampling          	               1    	           K    This function turns on or off the automatic pulse measurement feature. When traceMeasurements is set to on, the sensor tries to compute the pulse parameters for the current measured trace.

Note:
1) This function is only available for NRP-Z81.

Remote-control command(s):
SENS:TRAC:MEAS:STAT ON | OFF
SENS:TRAC:MEAS:AUTO ON | OFF    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control switches the automatic pulse measurement feature.

Valid Values:
VI_TRUE  (1) - On (Default Value)
VI_FALSE (0) - Off   ������  �    Status                           ��   �  �    Instrument Handle                �� G  � x    Channel                          �� G � �       Trace Measurements                 	               1   On VI_TRUE Off VI_FALSE    �    This function queries the state of the automatic pulse measurement feature.

Note:
1) This function is only available for NRP-Z81.

Remote-control command(s):
SENS:TRAC:MEAS:STAT?
SENS:TRAC:MEAS:TRAN:AUTO?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control returns the state of the automatic pulse measurement feature.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off   �U����  �    Status                           Ā   �  �    Instrument Handle                � G  � x    Channel                          ō G� �  `    Trace Measurements                 	               1    	            �    This function selects the algorithm for detecting the top and the base level of the pulsed signal.

Note:
1) This function is only available for NRP-Z81.

Remote-control command(s):
SENS:TRAC:MEAS:ALG HIST | INT    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1    �    This control selects the algorithm for detecting the top and the base level of the pulsed signal.

Valid Values:
RSNRPZ_SCOPE_MEAS_ALG_HIST (0) - Histogram (Default Value)
RSNRPZ_SCOPE_MEAS_ALG_INT  (1) - Integral

Note(s):

(1) Histogram - The Histogram Algorithm computes the pulse levels analysing the Histogram of the trace data. Toplevel and Baselevel are the bins with the maximum number of hits in the upper and the lower half of the histogram.
If  the signal has too much noise that there is no maximum bin, the algorithm returns the min and max peak sample values as base and top level.

(2) Integration - The Integration Algorithm tries to find the pulse top power by fitting a reference rectangle pulse into the pulse by doing the integration of the pulse power and the according voltages. This algorithm should be used if the energy content of the complete pulse (including rising and falling edges) is needed and not only the most probable top level.   ������  �    Status                           �   �  �    Instrument Handle                ̱ G  � x    Channel                          � G � � `    Algorithm                          	               1               KHistogram RSNRPZ_SCOPE_MEAS_ALG_HIST Integration RSNRPZ_SCOPE_MEAS_ALG_INT    �    This function queries selected algorithm for detecting the top and the base level of the pulsed signal.

Note:
1) This function is only available for NRP-Z81.

Remote-control command(s):
SENS:TRAC:MEAS:ALG?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control returns selected algorithm for detecting the top and the base level of the pulsed signal.

Valid Values:
RSNRPZ_SCOPE_MEAS_ALG_HIST (0) - Histogram
RSNRPZ_SCOPE_MEAS_ALG_INT  (1) - Integral   �����  �    Status                           �2   �  �    Instrument Handle                �� G  � x    Channel                          �? G� � `    Algorithm                          	               1    	               This function defines the thresholds of the reference and transition levels that are used for the calculation  of the pulse's time parameter.
The duration reference level is used to calculate pulse duration and pulse period, the transition low and high levels are used to calculate the pulse transition�s rise/fall time and their occurrences.

Note:
1) This function is only available for NRP-Z81.

Remote-control command(s):
SENS:TRAC:MEAS:DEF:DUR:REF 
SENS:TRAC:MEAS:DEF:TRAN:LREF
SENS:TRAC:MEAS:DEF:TRAN:HREF    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control defines duration reference level used to calculate pulse duration and pulse period.

Valid Range:
0.0 - 100.0 %

Default Value: 50.0 %
     �    This control defines transition low level used to calculate the pulse transition's rise time and its occurrences.

Valid Range:
0.0 - 100.0 %

Default Value: 10.0 %     �    This control defines transition high level used to calculate the pulse transition's fall time and its occurrences.

Valid Range:
0.0 - 100.0 %

Default Value: 90.0 %   �����  �    Status                           �<   �  �    Instrument Handle                �� G  � x    Channel                          �I G � �  `    Duration Ref                     �� G2 �  `    Transition Low Ref               � G� �  `    Transition High Ref                	               1    50.0    10.0    90.0   ;    This function queries the thresholds of the reference and transition levels that are used for the calculation  of the pulse's time parameter.

Note:
1) This function is only available for NRP-Z81.

Remote-control command(s):
SENS:TRAC:MEAS:DEF:DUR:REF? 
SENS:TRAC:MEAS:DEF:TRAN:LREF?
SENS:TRAC:MEAS:DEF:TRAN:HREF?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     L    This control defines duration reference level.

Valid Range:
0.0 - 100.0 %     H    This control returns transition low level.

Valid Range:
0.0 - 100.0 %     I    This control returns transition high level.

Valid Range:
0.0 - 100.0 %   ������  �    Status                           �   �  �    Instrument Handle                � G  � x    Channel                          �* G � �  `    Duration Ref                     �~ G2 �  `    Transition Low Ref               �� G� �  `    Transition High Ref                	               1    	           	           	              This function defines measurement time which sets the duration of analysing the current trace for the pulse parameters. The measurement time could be used together with the measurement offset time to select the second (or any other) pulse in the trace and not the whole trace.

Note:
1) This function is only available for NRP-Z81.

Remote-control command(s):
SENSe:TRACe:MEAS:TIME    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1    l    The measurement time is used to set the duration of analysing the current trace for the pulse parameters. The measurement time could be used together with the measurement offset time to select the second (or any other) pulse in the trace and not the whole trace.

To disable this "time gate" set the measurement time to 0.0.

Valid Range:
-

Default Value: 0.0 s   �����  �    Status                           �H   �  �    Instrument Handle                �� G  � x    Channel                          �U G � �  x    Meas Time                          	               1    0.0    �    This function returns the measurement time.

Note:
1) This function is only available for NRP-Z81.

Remote-control command(s):
SENSe:TRACe:MEAS:TIME?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     ,    This control returns the measurement time.   �X����  �    Status                           ��   �  �    Instrument Handle                �" G  � x    Channel                          �� G� �  x    Meas Time                          	               1    	          |    This function defines offset time used to set the start point of analysing the current trace for the pulse parameters. The offset time could be used to start analysis from the second (or any other) pulse occurrence in the trace and not from the beginning of the trace.

Note:
1) This function is only available for NRP-Z81.

Remote-control command(s):
SENSe:TRACe:MEAS:OFFS:TIME    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1    =    This control defines offset time used to set the start point of analysing the current trace for the pulse parameters. The offset time could be used to start analysis from the second (or any other) pulse occurrence in the trace and not from the beginning of the trace.

Valid Range:
0 - 0.99 s

Default Value: 0.0 s
   �=����  �    Status                           h   �  �    Instrument Handle                 G  � x    Channel                          u G � �  `    Offset Time                        	               1    0.0    �    This function queries offset time used to set the start point of analysing the current trace for the pulse parameters.

Note:
1) This function is only available for NRP-Z81.

Remote-control command(s):
SENSe:TRACe:MEAS:OFFS:TIME?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     w    This control returns offset time used to set the start point of analysing the current trace for the pulse parameters.   �����  �    Status                           �   �  �    Instrument Handle                c G  � x    Channel                          � G� �  `    Offset Time                        	               1    	          �    This function returns the calculated pulse time parameters of the last recorded trace. If a parameter could not be calculated the returned value is NAN. The Sensor takes the time values when the trace crosses the reference level points for duration and period calculation.

Note:
1) This function is only available for NRP-Z81.

Remote-control command(s):
SENS:TRAC:MEAS:PULS:DCYC?
SENS:TRAC:MEAS:PULS:DUR?
SENS:TRAC:MEAS:PULS:PER?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     [    This control returns duty cycle value. Duty Cycle = (pulse duration / pulse period) * 100     �    This control returns pulse duration value. Pulse Duration is the time between the positive and the negative transition of one pulse.     }    This control returns pulse period value. Pulse Period is the time between two consecutive transitions of the same polarity.   �����  �    Status                           )   �  �    Instrument Handle                � G  � x    Channel                          6 G � �  `    Duty Cycle                       � G9 �  `    Pulse Duration                   ' G� �  `    Pulse Period                       	               1    	           	           	              This function returns the transition parameters of the last examined trace data.
The NRP Sensor always searches for the first rising edge and the first falling edge in the trace. If offset time is set greater than  zero the algorithm searches the edges from this time in the trace.

Note:
1) This function is only available for NRP-Z81.

Remote-control command(s):
SENS:TRAC:MEAS:TRAN:POS:DUR?
SENS:TRAC:MEAS:TRAN:POS:OCC?
SENS:TRAC:MEAS:TRAN:POS:OVER?
SENS:TRAC:MEAS:TRAN:NEG:DUR?
SENS:TRAC:MEAS:TRAN:NEG:OCC?
SENS:TRAC:MEAS:TRAN:NEG:OVER?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control returns transition duration value. The positive transition duration is measured from the point when the trace crosses the low reference level until it reaches the high reference level. Negative transition is vice versa.     �    This control returns transition occurence value. The positive transition occurrence is the absolut time of the trace when it crosses the medial reference level.    �    This control returns overshoot value. The overshoot measures the height of the local maximum (minimum) following a rising (falling) transition. Overshoot is calculated in percent of the pulse amplitude (top level - base level).

Overshoot (pos) = 100 * (local maximum - top level) / (top level - base level)
Overshoot (neg) = 100 * (base level - local minimum) / (top level - base level)     �    Selects measured transition.

Valid Values:
RSNRPZ_SLOPE_POSITIVE (0) - Positive (Default Value)
RSNRPZ_SLOPE_NEGATIVE (1) - Negative   I����  �    Status                           t   �  �    Instrument Handle                 G  � x    Channel                          � G3 �  `    Duration                          s G� �  `    Occurence                        ! � � �  `    Overshoot                        "� G � � `    Slope                              	               1    	           	           	                      >Positive RSNRPZ_SLOPE_POSITIVE Negative RSNRPZ_SLOPE_NEGATIVE       This function returns the average power, the minimum level and the maximum level of the analysed trace in Watt.

Note(s):
1) This function is only available for NRP-Z81.

Remote-control command(s):
SENS:TRAC:MEAS:POW:AVG?
SENS:TRAC:MEAS:POW:MIN?
SENS:TRAC:MEAS:POW:MAX?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     +    This control returns average power value.     ,    This control returns min peak power value.     ,    This control returns max peak power value.   &I����  �    Status                           *t   �  �    Instrument Handle                + G  � x    Channel                          +� G � �  `    Average                          +� G9 �  `    Min Peak                         +� G� �  `    Max Peak                           	               1    	           	           	          R    This function returns the pulse top level and the pulse base level in watt. Both levels are calculated with the algorithm that was set with the rsnrpz_scope_meas_setMeasAlgorithm(...)  function.

Note:
1) This function is only available for NRP-Z81.

Remote-control command(s):
SENS:TRAC:MEAS:POW:PULS:TOP?
SENS:TRAC:MEAS:POW:PULS:BASE?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     '    This control returns top level value.     (    This control returns base level value.   .�����  �    Status                           3   �  �    Instrument Handle                3� G  � x    Channel                          4% G � �  `    Top Level                        4T G9 �  `    Base Level                         	               1    	           	          �    This function returns the calculated reference level in Watt at the defined thresholds of the last recorded trace. The thresholds in percent are defined with the function  rsnrpz_scope_meas_setLevelThresholds(�) of the pulse amplitude.

Note:
1) This function is only available for NRP-Z81.

Remote-control command(s):
SENS:TRAC:MEAS:POW:LREF?
SENS:TRAC:MEAS:POW:HREF?
SENS:TRAC:MEAS:POW:REF?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     A    This control returns absolute power at the 10% amplitude level.     A    This control returns absolute power at the 90% amplitude level.     E    This control returns the absolute power at the 50% amplitude level.   7L����  �    Status                           ;w   �  �    Instrument Handle                < G  � x    Channel                          <� G � �  `    Low Ref Level                    <� G9 �  `    High Ref Level                   = G� �  `    Duration Ref Level                 	               1    	           	           	          �    This function activates or deactivates the automatic equivalent sampling mode during automatic pulse analysis.
If equivalent sampling is enabled, the sensor tries to measure the time parameters (mainly rise/fall times) of the pulse with a high resolution by doing equivalent sampling.
To do the equivalent sampling a periodic signal is mandatory. The sensor decides automatically if equivalent  sampling is possible. To get the resolution of the measured time parameter the function "rsnrpz_scope_meas_getSamplePeriod" could be used.

Note:
1) This function is only available for NRP-Z81.

Remote-control command(s):
SENS:TRAC:MEAS:TRANS:ESAM:AUTO    U    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control activates or deactivates the automatic equivalent sampling mode during automatic pulse analysis.

Valid Values:
VI_TRUE  (1) - On (Default Value)
VI_FALSE (0) - Off   Ak����  �    Status                           E�   �  �    Instrument Handle                Fg G  � x    Channel                          F� G � �       Scope Meas Equiv Sampling          	               1   On VI_TRUE Off VI_FALSE    �    This function returns the state of the automatic equivalent sampling mode during automatic pulse analysis.

Note:
1) This function is only available for NRP-Z81.

Remote-control command(s):
SENS:TRAC:MEAS:TRANS:ESAM:AUTO?    U    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control returns the state of the automatic equivalent sampling mode during automatic pulse analysis.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off   I{����  �    Status                           M�   �  �    Instrument Handle                Nw G  � x    Channel                          N� G � �  `    Scope Meas Equiv Sampling          	               1    	           9    This function returns the sample period (in s) of the last pulse analysis. This parameter is a good indicator if the equivalent sampling mode of measuring the rise and fall times was successful or not.

Note:
1) This function is only available for NRP-Z81.

Remote-control command(s):
SENS:TRAC:MEAS:TRANS:SPER?    U    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     L    This function returns the sample period (in s) of the last pulse analysis.   Q�����  �    Status                           V   �  �    Instrument Handle                V� G  � x    Channel                          W, G� �  x    Sample Period                      	               1    	           �    This function configures the parameters of internal trigger system.

Remote-control command(s):
TRIG:DEL:AUTO ON
TRIG:ATR OFF
TRIG:COUN 1
TRIG:DEL 0.0
TRIG:HOLD 0.0
TRIG:HYST 3DB
TRIG:LEV <value>
TRIG:SLOP POS | NEG
TRIG:SOUR INT    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control determines the power (in W) a trigger signal must exceed before a trigger event is detected.

Valid Range:
0.1e-6 to 0.2 W

Default Value:
1.0e-6 W

Notes:
(1) Actual valid range depends on sensor used     �    This control determines whether the rising (POSitive) or the falling (NEGative) edge of the signal is used for triggering.

Valid Values:
RSNRPZ_SLOPE_POSITIVE (0) - Positive (Default Value)
RSNRPZ_SLOPE_NEGATIVE (1) - Negative   Yd����  �    Status                           ]�   �  �    Instrument Handle                ^. G  � x    Channel                          ^� G � �  x    Trigger Level                    _| G � x    Trigger Slope                      	               1    1.0e-6               >Positive RSNRPZ_SLOPE_POSITIVE Negative RSNRPZ_SLOPE_NEGATIVE    �    This function configures the parameters of external trigger system.

Remote-control command(s):
TRIG:DEL <value>
TRIG:SOUR EXT
TRIG:COUN 1
TRIG:ATR OFF
TRIG:HOLD 0.0
TRIG:DEL:AUTO ON    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets a the delay (in seconds) between the trigger event and the beginning of the actual measurement (integration).

Valid Range:
-5.0e-3 to 100.0 s

Default Value:
0.0 s

Notes:
(1) Actual valid range depends on sensor used   b�����  �    Status                           f�   �  �    Instrument Handle                gh G  � x    Channel                          g� G � �  x    Trigger Delay                      	               1    0.0   �    This function performs triggering and ensures that the sensor directly changes from the WAIT_FOR_TRG state to the MEASURING state irrespective of the selected trigger source. A trigger delay set with TRIG:DEL is ignored but not the automatic delay determined when TRIG:DEL:AUTO:ON is set.
When the trigger source is HOLD, a measurement can only be started with TRIG.

Remote-control command(s):
TRIG:IMM    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1   kY����  �    Status                           o�   �  �    Instrument Handle                p# G  � x    Channel                            	               1       This function ensures (if parameter is set to On) by means of an automatically determined delay that a measurement is started only after the sensor has settled. This is important when thermal sensors are used.

Remote-control command(s):
TRIG:DEL:AUTO ON | OFF    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control enables or disables automatic determination of delay.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)   rS����  �    Status                           v~   �  �    Instrument Handle                w G  � x    Channel                          w� G � �       Auto Delay                         	               1    On VI_TRUE Off VI_FALSE    c    This function reads the setting of auto delay feature.

Remote-control command(s):
TRIG:DEL:AUTO?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     k    This control returns the state of Auto Delay feature.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off   y�����  �    Status                           }�   �  �    Instrument Handle                ~T G  � x    Channel                          ~� G� �  x    Auto Delay                         	               1    	           `    This function turns On or Off the auto trigger feature. When auto trigger is set to On, the WAIT_FOR_TRG state is automatically exited when no trigger event occurs within a period that corresponds to the reciprocal of the display update rate.

Note:
  
1) This function is not available for NRP-Z51.

Remote-control command(s):
TRIG:ATR:STAT ON | OFF    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     x    This control enables or disables the Auto Trigger.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)   ������  �    Status                           ��   �  �    Instrument Handle                �\ G  � x    Channel                          �� G � �       Auto Trigger                       	               1    On VI_TRUE Off VI_FALSE    �    This function reads the state of Auto Trigger.

Note:
  
1) This function is not available for NRP-Z51.

Remote-control command(s):
TRIG:ATR:STAT?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     d    This control returns the state of Auto Trigger.

Valid Values:
VI_TRUE (1) - On
VI_FALSE (0) - Off   ������  �    Status                           �   �  �    Instrument Handle                �� G  � x    Channel                          �" G� �  x    Auto Trigger                       	               1    	            �    This function sets the number of measurement cycles to be  performed when the measurement is started with INIT.

Remote-control command(s):
TRIG:COUN    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the number of measurement cycles to be  performed when the measurement is started with INIT.

Valid Range:
1 to 2147483646

Default Value:
1

Notes:
(1) Actual valid range depends on sensor used   �"����  �    Status                           �M   �  �    Instrument Handle                �� G  � x    Channel                          �Z G � �  x    Trigger Count                      	               1    1    �    This function reads the number of measurement cycles to be  performed when the measurement is started with INIT.

Remote-control command(s):
TRIG:COUN?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     s    This control returns the number of measurement cycles to be  performed when the measurement is started with INIT.   ������  �    Status                           ��   �  �    Instrument Handle                �� G  � x    Channel                          �� G� �  x    Trigger Count                      	               1    	            �    This function defines the delay between the trigger event and the beginning of the actual measurement (integration).

Remote-control command(s):
TRIG:DEL    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1    /    This control sets a the delay (in seconds) between the trigger event and the beginning of the actual measurement (integration).

Valid Range:
NRP-Z21: -5.0e-3 to 100.0 s
NRP-Z51:  0.0    to 100.0 s
FSH-Z1:  -5.0e-3 to 100.0 s

Default Value:
0.0 s

Notes:
(1) Actual valid range depends on sensor used   �����  �    Status                           �=   �  �    Instrument Handle                �� G  � x    Channel                          �J G � �  x    Trigger Delay                      	               1    0.0    �    This function reads value of the delay (in seconds) between the trigger event and the beginning of the actual measurement (integration).

Remote-control command(s):
TRIG:DEL?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control returns value of the delay (in seconds) between the trigger event and the beginning of the actual measurement (integration).   �)����  �    Status                           �T   �  �    Instrument Handle                �� G  � x    Channel                          �a G� �  x    Trigger Delay                      	               1    	           �    This function defines a period after a trigger event within which all further trigger events are ignored.

Remote-control command(s):
TRIG:HOLD    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control defines a period (in seconds) after a trigger event within which all further trigger events are ignored.

Valid Range:
0.0 - 10.0 s

Default Value:
0.0 s

Notes:
(1) Actual valid range depends on sensor used   ������  �    Status                           ��   �  �    Instrument Handle                �L G  � x    Channel                          �� G � �  x    Trigger Holdoff                    	               1    0.0    �    This function returns the value of a period after a trigger event within which all further trigger events are ignored.

Remote-control command(s):
TRIGger[1..4]:HOLDoff?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control returns the value of a period (in seconds) after a trigger event within which all further trigger events are ignored.   �C����  �    Status                           �n   �  �    Instrument Handle                � G  � x    Channel                          �{ G� �  x    Trigger Holdoff                    	               1    	          B    This function is used to specify how far the signal level has to drop below the trigger level before a new signal edge can be detected as a trigger event. Thus, this command can be used to eliminate the effects of noise in the signal on the transition filters of the trigger system.

Remote-control command(s):
TRIG:HYST    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control defines the trigger hysteresis in dB.

Valid Range:
0.0 to 10.0 dB

Default Value: 0.0 dB

Notes:
(1) Actual valid range depends on sensor used   �F����  �    Status                           �q   �  �    Instrument Handle                � G  � x    Channel                          �~ G � �  x    Trigger Hysteresis                 	               1    0.0    ]    This function reads the value of trigger hysteresis.

Remote-control command(s):
TRIG:HYST?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     =    This control returns the value of trigger hysteresis in dB.   �y����  �    Status                           ɤ   �  �    Instrument Handle                �C G  � x    Channel                          ʱ G� �  x    Trigger Hysteresis                 	               1    	           �    This function determines the power a trigger signal must exceed before a trigger event is detected. This setting is only used for internal trigger signal source.

Remote-control command(s):
TRIG:LEV    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1        This control determines the power (in W) a trigger signal must exceed before a trigger event is detected.

Valid Range:
NRP-Z21: 0.1e-6  to 0.2 W
NRP-Z51: 0.25e-6 to 0.1 W
FSH-Z1:  0.1e-6  to 0.2 W

Default Value:
1.0e-6 W

Notes:
(1) Actual valid range depends on sensor used   ̻����  �    Status                           ��   �  �    Instrument Handle                х G  � x    Channel                          �� G � �  x    Trigger Level                      	               1    1.0e-6    �    This function reads the power a trigger signal must exceed before a trigger event is detected.

Remote-control command(s):
TRIG:LEV?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     h    This control returns the power (in W) a trigger signal must exceed before a trigger event is detected.   Ԓ����  �    Status                           ؽ   �  �    Instrument Handle                �\ G  � x    Channel                          �� G� �  x    Trigger Level                      	               1    	           �    This function determines whether the rising (POSitive) or the falling (NEGative) edge of the signal is used for triggering.

Remote-control command(s):
TRIG:SLOP POSitive | NEGative    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control determines whether the rising (POSitive) or the falling (NEGative) edge of the signal is used for triggering.

Valid Values:
RSNRPZ_SLOPE_POSITIVE (0) - Positive (Default Value)
RSNRPZ_SLOPE_NEGATIVE (1) - Negative   ������  �    Status                           �   �  �    Instrument Handle                � G  � x    Channel                          �& G � � x    Trigger Slope                      	               1               >Positive RSNRPZ_SLOPE_POSITIVE Negative RSNRPZ_SLOPE_NEGATIVE    �    This function reads whether the rising (POSitive) or the falling (NEGative) edge of the signal is used for triggering.

Remote-control command(s):
TRIG:SLOP?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control returns whether the rising (POSitive) or the falling (NEGative) edge of the signal is used for triggering.

Valid Values:
RSNRPZ_SLOPE_POSITIVE (0) - Positive
RSNRPZ_SLOPE_NEGATIVE (1) - Negative   ������  �    Status                           �   �  �    Instrument Handle                � G  � x    Channel                          �( G� �  x    Trigger Slope                      	               1    	            �    This function sets the trigger signal source for the WAIT_FOR_TRG state.

Remote-control command(s):
TRIG:SOUR BUS | EXT | HOLD | IMM | INT    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1    �    This control selects the trigger signal source for the WAIT_FOR_TRG state.

Valid Values:
RSNRPZ_TRIGGER_SOURCE_BUS       (0) - Bus 
RSNRPZ_TRIGGER_SOURCE_EXTERNAL  (1) - External
RSNRPZ_TRIGGER_SOURCE_HOLD      (2) - Hold
RSNRPZ_TRIGGER_SOURCE_IMMEDIATE (3) - Immediate (Default Value)
RSNRPZ_TRIGGER_SOURCE_INTERNAL  (4) - Internal

Notes:
(1) Bus: The trigger event is initiated by TRIG:IMM or *TRG. In this case, the setting for Trigger Slope is meaningless.

(2) External: Triggering is performed with an external signal applied to the trigger connector. The Trigger Slope setting determines whether the rising or the falling edge of the signal is to be used for triggering. Waiting for a trigger event can be skipped by Immediate Trigger.

(3) Hold: A measurement can only be triggered when Immediate Trigger is executed.

(4) Immediate: The sensor does not remain in the WAIT_FOR_TRG state but immediately changes to the MEASURING state.

(5) Internal: The sensor determines the trigger time by means of the signal to be measured. When this signal exceeds the power set by Trigger Level, the measurement is started after the time set by Trigger Delay. Similar to External Trigger, waiting for a trigger event can also be skipped by Immediate Trigger.   �����  �    Status                           �   �  �    Instrument Handle                �V G  � x    Channel                          �� G � � x    Trigger Source                     	               1              �Bus RSNRPZ_TRIGGER_SOURCE_BUS External RSNRPZ_TRIGGER_SOURCE_EXTERNAL Hold RSNRPZ_TRIGGER_SOURCE_HOLD Immediate RSNRPZ_TRIGGER_SOURCE_IMMEDIATE Internal RSNRPZ_TRIGGER_SOURCE_INTERNAL    q    This function gets the trigger signal source for the WAIT_FOR_TRG state.

Remote-control command(s):
TRIG:SOUR?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1    1    This control returns the trigger signal source for the WAIT_FOR_TRG state.

Valid Values:
RSNRPZ_TRIGGER_SOURCE_BUS (0) - Bus
RSNRPZ_TRIGGER_SOURCE_EXTERNAL (1) - External
RSNRPZ_TRIGGER_SOURCE_HOLD (2) - Hold
RSNRPZ_TRIGGER_SOURCE_IMMEDIATE (3) - Immediate
RSNRPZ_TRIGGER_SOURCE_INTERNAL (4) - Internal   ������  �    Status                           �   �  �    Instrument Handle                �� G  � x    Channel                          � G� �  x    Trigger Source                     	               1    	           =    This function defines the dropout time value. With a positive (negative) trigger slope, the dropout time is the minimum time for which the signal must be below (above) the power level defined by rsnrpz_trigger_setLevel and rsnrpz_trigger_setHysteresis before triggering can occur again. As with the Holdoff parameter, unwanted trigger events can be excluded. The set dropout time only affects the internal trigger source.
The dropout time parameter is useful when dealing with, for example, GSM signals with several active slots.

Remote-control command(s):
TRIGger:DTIMe    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     `    This control defines the dropout time value.

Valid Range:
0.0 to 10.0 s

Default Value:
0.0 s   �����  �    Status                           �   �  �    Instrument Handle                U G  � x    Channel                          � G � �  x    Dropout Time                       	               1    0.0    Z    This function queries the dropout time value.

Remote-control command(s):
TRIGger:DTIMe?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     J    This control returns the dropout time value.

Valid Range:
0.0 to 10.0 s   }����  �    Status                           �   �  �    Instrument Handle                G G  � x    Channel                          � G � �  x    Dropout Time                       	               1    	          �    This function can be used to configure an R&S NRP-Z81 power sensor as the trigger master, enabling it to output a digital trigger signal in sync with its own trigger event. This makes it possible to synchronize several sensors (see rsnrpz_trigger_setSyncState) and to perform measurements in sync with a signal at very low power, which normally would not allow signal triggering. The trigger signal which is output has a length of 1Rs and the positive slope coincides with the physical trigger point. At present, it can be distributed to other R&S NRP-Zxx sensors only via the R&S NRP base unit and not via the R&S NRP-Z3/-Z4 interface adapter.
Generally, the trigger master is set to internal triggering (signal triggering) (the BUS and IMMEDIATE settings can also be used); the sensors acting as trigger slaves must be set to external triggering and positive trigger slope.
With the R&S NRP-Z81 power sensor, digital trigger signals are sent and received via a single differential line pair, the trigger bus. Only one instrument on the trigger bus can act as the trigger master. If the application is time-critical, the trigger-signal delay from the master to a slave must be taken into account.

Remote-control command(s):
TRIG:MAST:STAT ON | OFF    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     v    This control enables or disables trigger master.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)   �����  �    Status                              �  �    Instrument Handle                � G  � x    Channel                           G � �       State                              	               1    On VI_TRUE Off VI_FALSE    \    This function queries state of trigger master.

Remote-control command(s):
TRIG:MAST:STAT?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     c    This control returns state of trigger master.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off   ����  �    Status                           0   �  �    Instrument Handle                � G  � x    Channel                           = G � �  `    State                              	               1    	           �    This function can be used to synchronize the sensors connected to the trigger bus. Synchronization is achieved by enabling the
trigger signal only when all the sensors are in the WAIT_FOR_TRIGGER state (wired-OR). This ensures that the measurements are started simultaneously and also that repetitions due to averaging start at the same time. It must be ensured that the number of repetitions is the same for all the sensors involved in the measurement. Otherwise, the trigger bus will be blocked by any sensor that has completed its measurements before the others and has returned to the IDLE state.

Remote-control command(s):
TRIG:SYNC:STAT ON | OFF    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     ~    This control enables or disables sensor synchronization.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)   $3����  �    Status                           (^   �  �    Instrument Handle                (� G  � x    Channel                          )k G � �       State                              	               1    On VI_TRUE Off VI_FALSE    d    This function queries state of sensor synchronization.

Remote-control command(s):
TRIG:SYNC:STAT?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     k    This control returns state of sensor synchronization.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off   +a����  �    Status                           /�   �  �    Instrument Handle                0+ G  � x    Channel                          0� G � �  `    State                              	               1    	            l    This function returns selected information on a sensor.

Remote-control command(s):
SYST:INFO? <Info Type>    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     >    This control returns requested informations from the sensor.    �    This control specifies which info should be retrieved from the sensor.

Valid Values:
 "Manufacturer"
 "Type"
 "Stock Number"
 "Serial"
 "HWVersion"
 "HWVariant"
 "SW Build"
 "Technology"
 "Function"
 "MinPower"
 "MaxPower" 
 "MinFreq"
 "MaxFreq"
 "Resolution"
 "Impedance"
 "Coupling"
 "Cal. Abs."
 "Cal. Refl."
 "Cal. S-Para."
 "Cal. Misc."
 "Cal. Temp."
 "Cal. Lin."
 "SPD Mnemonic"

Default Value:
""     T    This control defines the size of array 'Info'.

Valid Range:
-

Default Value:
100   2u����  �    Status                           6�   �  �    Instrument Handle                7? G  � x    Channel                          7� �  � �    Info                             7� G � �  x    Info Type                        9� G� �  x    Array Size                         	               1    	            ""        �    This function returns specified parameter header which can be retrieved from selected sensor.

Remote-control command(s):
SYST:INFO?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     2    This control returns specified parameter header.         This control defines the position of parameter header to be retrieved.

Valid Range:
0 to (count of headers - 1)

Default Value:
0

Notes:
(1) Only Minimum value of the parameter is checked. Maximum value depends on sensor used and can be retrieved by function rsnrpz_chan_infosCount().     V    This control defines the size of array 'Header'.

Valid Range:
-

Default Value:
100   ;�����  �    Status                           @   �  �    Instrument Handle                @� G  � x    Channel                          A �  � �    Header                           AV G � �  x    Parameter Number                 B~ G� �  x    Array Size                         	               1    	            0        o    This function returns the number of info headers for selected channel.

Remote-control command(s):
SYST:INFO?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     P    This control returns the number of available info headers for selected sensor.   D�����  �    Status                           H�   �  �    Instrument Handle                I� G  � x    Channel                          I� G� �  x    Count                              	               1    	            �    This function is checking whether the firmware-version of a sensor is reasonably actual.

Remote-control command(s):
SYST:INFO? "TYPE"
SYST:INFO? "SW BUILD"    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    Size of the character arrays which return current and
required firmware version.
(both char arrays should be same size and MUST be at least
16 chars each)

Valid Range:
>15

Default Value:
256     �    This control returns the character array for returning the firmware version of the sensor.

Notes:
(1) The array must contain at least 16 elements ViChar[16].     �    This control returns the character array for returning the required miminum firmware version.

Notes:
(1) The array must contain at least 16 elements ViChar[16].     �    This control returns 1 (TRUE) if sensor firmware is actual enough, 0 (FALSE) if firmware is out-dated. 
This parameter can be set to NULL if you are not interested in the result of the firmware version check.   K�����  �    Status                           P   �  �    Instrument Handle                P� G� �  x    Buffer Size                      Qz � 1 �  x    Firmware Current                 R" � � �  x    Firmware Required Minimum        R� �� �  x    Firmware Okay                      	               256    	            	            	            �    This function sets status update time, which influences USB traffic during sensor's waiting for trigger.

Note:

1) This function is available only for NRP-Z81.

Remote-control command(s):
SYST:SUT    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets status update time, which influences USB traffic during sensor's waiting for trigger.

Valid Range:
0.0 to 10.0 s

Default Value: 100.0e-4 s   U�����  �    Status                           Z   �  �    Instrument Handle                Z� G  � x    Channel                          [' G� �  x    Status Update Time                 	               1    	100.0e-4    �    This function gets status update time.

Note:

1) This function is available only for NRP-Z81.

Remote-control command(s):
SYST:SUT    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     F    This control returns status update time.

Valid Range:
0.0 to 10.0 s   ]Q����  �    Status                           a|   �  �    Instrument Handle                b G  � x    Channel                          b� G� �  x    Status Update Time                 	               1    	           �    This function sets result update time, which influences USB traffic if sensor is in continuous sweep mode.

Note:

1) This function is available only for NRP-Z81.

Remote-control command(s):
SYST:RUT    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets result update time, which influences USB traffic if sensor is in continuous sweep mode.

Valid Range:
0.0 to 10.0 s

Default Value: 0.1 s   d�����  �    Status                           h�   �  �    Instrument Handle                ig G  � x    Channel                          i� G� �  x    Result Update Time                 	               1    0.1    �    This function gets result update time.

Note:

1) This function is available only for NRP-Z81.

Remote-control command(s):
SYST:RUT    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     C    This control gets result update time.

Valid Range:
0.0 to 10.0 s   k�����  �    Status                           p"   �  �    Instrument Handle                p� G  � x    Channel                          q/ G� �  x    Result Update Time                 	               1    	          L    This function does internal test measurements with enabled and disabled heater and returns the power difference between both measurements.
The result of this test is used to determine the long time drift of the power sensor.

Note:

1) This function is available only for NRP-Z56 and NRP-Z57.

Remote-control command(s):
CAL:TEST?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     p    This control returns the power difference between internal test measurements with enabled and disabled heater.   s�����  �    Status                           w�   �  �    Instrument Handle                x� G  � x    Channel                          x� G� �  x    Calib Test                         	               1    	          =    This function  first does an internal heater test with CAL:TEST and returns the relative deviation between the test result and the result that was measured in the calibration lab during sensor calibration.

Note:

1) This function is available only for NRP-Z56 and NRP-Z57.

Remote-control command(s):
CAL:TEST:DEV?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control returns the relative deviation between the test result and the result that was measured in the calibration lab during sensor calibration.   {�����  �    Status                           �   �  �    Instrument Handle                �w G  � x    Channel                          �� G� �  x    Test Deviation                     	               1    	           �    This function returns the heater test result that was measured in the calibration lab during sensor calibration.

Note:

1) This function is available only for NRP-Z56 and NRP-Z57.

Remote-control command(s):
CAL:TEST:REF?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     q    This control returns the heater test result that was measured in the calibration lab during sensor calibration.   �b����  �    Status                           ��   �  �    Instrument Handle                �, G  � x    Channel                          �� G� �  x    Test Reference                     	               1    	           �    This function immediately sets selected sensor to the IDLE state. Measurements in progress are interrupted. If INIT:CONT ON is set, a new measurement is immediately started since the trigger system is not influenced.

Remote-control command(s):
ABOR    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1   �����  �    Status                           �6   �  �    Instrument Handle                �� G  � x    Channel                            	               1   �    This function starts a single-shot measurement on selected channel. The respective sensor goes to the INITIATED state. The command is completely executed when the sensor returns to the IDLE state. The command is ignored when the sensor is not in the IDLE state or when continuous measurements are selected (INIT:CONT ON). The command is only fully executed when the measurement is completed and the trigger system has again reached the IDLE state. INIT is the only remote control command that permits overlapping execution. Other commands can be received and processed while the command is being executed.

Remote-control command(s):
STAT:OPER:MEAS?
INITiate[1..4]    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1   ������  �    Status                           ��   �  �    Instrument Handle                �c G  � x    Channel                            	               1    �    This function selects either single-shot or continuous (free-running) measurement cycles.

Remote-control command(s):
INIT:CONT ON | OFF    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control enables or disables the continuous measurement mode.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)   �����  �    Status                           �B   �  �    Instrument Handle                �� G  � x    Channel                          �O G � �       Continuous Initiate                	               1    On VI_TRUE Off VI_FALSE    �    This function returns whether single-shot or continuous (free-running) measurement is selected.

Remote-control command(s):
INIT:CONT?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     l    This control returns the state of continuous initiate.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off   �r����  �    Status                           ��   �  �    Instrument Handle                �< G  � x    Channel                          �� G� �  x    Continuous Initiate                	               1    	           Z    From the point of view of the R&S NRP basic unit, the sensors are stand-alone measuring devices. They communicate with the R&S NRP via a command set complying with SCPI.
This function prompts the basic unit to send an *RST to the respective sensor. Measurements in progress are interrupted.

Remote-control command(s):
SYSTem:SENSor[1..4]:RESet    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1   �u����  �    Status                           ��   �  �    Instrument Handle                �? G  � x    Channel                            	               1       If the signal to be measured has modulation sections just above the video bandwidth of the sensor used, measurement errors might be caused due to aliasing effects. In this case, the sampling rate of the sensor can be set to a safe lower value (Sampling Frequency 2). However, the measurement time required to obtain noise-free results is extended compared to the normal sampling rate (Sampling Frequency 1).

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:SAMP FREQ1 | FREQ2    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control selects the sampling frequency.

Valid Values:
RSNRPZ_SAMPLING_FREQUENCY1 (1) - Sampling Frq 1 (High) (Default Value)
RSNRPZ_SAMPLING_FREQUENCY2 (2) - Sampling Frq 2 (Low)   �m����  �    Status                           ��   �  �    Instrument Handle                �7 G  � x    Channel                          �� G � � x    Sampling Frequency                 	               1               aSampling Frq 1 (High) RSNRPZ_SAMPLING_FREQUENCY1 Sampling Frq 2 (Low) RSNRPZ_SAMPLING_FREQUENCY2    �    This function returns the selected sampling frequency.

Note:

1) This function is not available for NRP-Z51.

Remote-control command(s):
SENS:SAMP?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control returns the selected sampling frequency.

Valid Values:
RSNRPZ_SAMPLING_FREQUENCY1 (1) - Sampling Frq 1 (High)
RSNRPZ_SAMPLING_FREQUENCY2 (2) - Sampling Frq 2 (Low)   �^����  �    Status                           ��   �  �    Instrument Handle                �( G  � x    Channel                          �� G� �  x    Sampling Frequency                 	               1    	           B    This function performs zeroing of selected sensor using the signal at the sensor input. The sensor must be disconnected from all power sources. If the signal at the input considerably deviates from 0 W, an error message is issued and the command is aborted.

Remote-control command(s):
STAT:OPER:MEAS?
CAL:ZERO:AUTO ONCE    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1   ������  �    Status                           Ż   �  �    Instrument Handle                �Z G  � x    Channel                            	               1   ]    This function performs zeroing using the signal at the sensor input. The sensor must be disconnected from all power sources. If the signal at the input considerably deviates from 0 W, an error message is issued and the function is aborted.

Note(s):

(1) This function is valid only for NRP-Z81.

Remote-control command(s):
CAL:ZERO:AUTO LFR | UFR        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    M    This control selects type of advanced zeroing.

Valid Values:
RSNRPZ_ZERO_LFR (0) - Low Frequencies
RSNRPZ_ZERO_UFR (1) - High Frequencies

Default Value: RSNRPZ_ZERO_LFR (0)

Note(s):

(1) Low Frequencies - Does zeroing only for low frequencies (< 500 MHZ)

(2) High Frequencies - Does zeroing for higher Frequencies (>= 500 MHz).     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1   ������  �    Status                           �   �  �    Instrument Handle                ͡ G � � x    Zeroing                          �� G E � x    Channel                            	                          ALow Frequencies RSNRPZ_ZERO_LFR High Frequencies RSNRPZ_ZERO_UFR    1    ;    This function returns the state of zeroing of the sensor.    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     w    This control returns the state of the zeroing of the sensor.

Valid Values:
Complete (VI_TRUE)
In Progress (VI_FALSE)   ������  �    Status                           �   �  �    Instrument Handle                ժ G  � x    Channel                          � G� �  x    Zeroing Complete                   	               1    	            5    This function returns the state of the measurement.    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     m    This control returns the state of the measurement.

Valid Values:
Complete (VI_TRUE)
In Progress (VI_FALSE)   ������  �    Status                           ��   �  �    Instrument Handle                ܓ G  � x    Channel                          � G� �  x    Measurement Complete               	               1    	            �    This function performs a sensor test and returns a list of strings separated by commas. The contents of this test protocol is sensor-specific. For its meaning, please refer to the sensor documentation.

Remote-control command(s):
TEST:SENS?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     6    This control returns the result string of self-test.   �e����  �    Status                           �   �  �    Instrument Handle                �/ G  � x    Channel                          � G� �  x    Result                             	               1    	            �    This function selects which measurement results are to be made available in the Trace mode.

Note(s):

(1) This functions is available only for NRP-Z81

Remote-control command(s):
SENSe:AUXiliary NONE | MINMAX | RNDMAX    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1    �    This control selects which measurement results are to be made available in the Trace mode.

Valid Values:
RSNRPZ_AUX_NONE   (0) - None
RSNRPZ_AUX_MINMAX (1) - Min Max
RSNRPZ_AUX_RNDMAX (2) - Rnd Max

Note(s):

(1) None - only the average power of the associated samples

(2) Min Max - provides the maximum and minimum as well

(3) Rnd Max - provides the maximum and a random sample.   �����  �    Status                           ��   �  �    Instrument Handle                �~ G  � x    Channel                          �� G � � x    Auxiliary Value                    	               1               INone RSNRPZ_AUX_NONE Min Max RSNRPZ_AUX_MINMAX Rnd Max RSNRPZ_AUX_RNDMAX    �    This function queries which measurement results are available in the Trace mode.

Note(s):

(1) This functions is available only for NRP-Z81

Remote-control command(s):
SENSe:AUXiliary?    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control returns which measurement results are available in the Trace mode.

Valid Values:
RSNRPZ_AUX_NONE   (0) - None (Default Value)
RSNRPZ_AUX_MINMAX (1) - Min Max
RSNRPZ_AUX_RNDMAX (2) - Rnd Max   �x����  �    Status                           �   �  �    Instrument Handle                �B G  � x    Channel                          �� G � � x    Auxiliary Value                    	               1    	            �    This function initiates an acquisition on the channels that you specifies in channel parameter.  It then waits for the acquisition to complete, and returns the measurement for the channel you specify.    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    _    Pass the maximum length of time in which to allow the read measurement operation to complete.    

If the operation does not complete within this time interval, the function returns the RSNRPZ_ERROR_MAX_TIME_EXCEEDED error code.  When this occurs, you can call rsnrpz_chan_abort to cancel the read measurement operation and return the sensor to the Idle state.

Units:  milliseconds.  

Defined Values:
RSNRPZ_VAL_MAX_TIME_INFINITE
RSNRPZ_VAL_MAX_TIME_IMMEDIATE

Default Value: 5000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters.     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1         Returns single measurement.   �L����  �    Status                           �w   �  �    Instrument Handle                � P � �  x    Timeout (ms)                     �} P * �  x    Channel                          �� P| �  x    Measurement                        	               5000    1    	          '    This function returns the measurement the sensor acquires for the channel you specify.  The measurement is from an acquisition that you previously initiated.  

You use the rsnrpz_chan_initiate function to start an acquisition on the channels that you specify. You use the rsnrpz_chan_isMeasurementComplete function to determine when the acquisition is complete.

You can call the rsnrpz_meass_readMeasurement function instead of the rsnrpz_chan_initiate function.  The rsnrpz_meass_readMeasurement function starts an acquisition, waits for the acquisition to complete, and returns the measurement for the channel you specify.

Note:

1) If the acquisition has not be initialized or measurement is still in progress and value is not available, function returns an error( RSNRPZ_ERROR_MEAS_NOT_AVAILABLE ).    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1         Returns single measurement.   q����  �    Status                           �   �  �    Instrument Handle                ; F ( �  x    Channel                          � Fz �  x    Measurement                        	               1    	           �    This function initiates an acquisition on the channels that you specifies in channel parameter.  It then waits for the acquisition to complete, and returns the measurement for the channel you specify.    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    v    Pass the maximum length of time in which to allow the read measurement operation to complete.    

If the operation does not complete within this time interval, the function returns the RSNRPZ_ERROR_MAX_TIME_EXCEEDED error code.  When this occurs, you can call rsnrpz_chan_abort to cancel the read measurement operation and return the sensor to the Idle state.

Units:  milliseconds.  

Defined Values:
RSNRPZ_VAL_MAX_TIME_INFINITE             RSNRPZ_VAL_MAX_TIME_IMMEDIATE           

Default Value: 5000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters.     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     =    Returns the measurement buffer that the sensor acquires.  
     W    Pass the number of elements in the Measurement Array parameter.

Default Value: None
     X    Indicates the number of points the function places in the Measurement Array parameter.   
�����  �    Status                           �   �  �    Instrument Handle                _ N � �  x    Maximum Time (ms)                � N , �  x    Channel                          K � � �  x    Measurement Array                � � , �  x    Buffer Size                      � �� �  x    Read Count                         	               5000    1    	                	           9    This function returns the buffer measurement the sensor acquires for the channel you specify.  The measurement is from an acquisition that you previously initiated.  

You use the rsnrpz_chan_initiate function to start an acquisition on the channels that you specify. You use the rsnrpz_chan_isMeasurementComplete function to determine when the acquisition is complete.

You can call the rsnrpz_meas_readBufferMeasurement function instead of the rsnrpz_chan_initiate function.  The rsnrpz_meass_readBufferMeasurement function starts an acquisition, waits for the acquisition to complete, and returns the measurement for the channel you specify.

Note:

1) If the acquisition has not be initialized or measurement is still in progress and value is not available, function returns an error( RSNRPZ_ERROR_MEAS_NOT_AVAILABLE ).    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     =    Returns the measurement buffer that the sensor acquires.  
     W    Pass the number of elements in the Measurement Array parameter.

Default Value: None
     Y    Indicates the number of points the function places in the Measurement Array parameter.
   <����  �    Status                           g   �  �    Instrument Handle                 O 2 �  x    Channel                          t � � �  x    Measurement Array                � � 2 �  x    Array Size                        �� �  x    Read Count                         	               1    	                	           �    Triggers a BUS event. If the sensor is in the WAIT_FOR_TRG state and the source for the trigger source is set to BUS, the sensor enters the MEASURING state. This function invalidates all current measuring results. A query of measurement data following this function will thus always return the measured value determined in response to this function.

Remote-control command(s):
*TRG    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1   !p����  �    Status                           %�   �  �    Instrument Handle                &: = � �  x    Channel                            	               1       This function initiates an acquisition on the channels that you specifies in channel parameter. It then waits for the acquisition to complete, and returns the auxiliary measurement for the channel you specify.

Note(s):

(1) If SENSE:AUX is set to None, this function returns error.    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    _    Pass the maximum length of time in which to allow the read measurement operation to complete.    

If the operation does not complete within this time interval, the function returns the RSNRPZ_ERROR_MAX_TIME_EXCEEDED error code.  When this occurs, you can call rsnrpz_chan_abort to cancel the read measurement operation and return the sensor to the Idle state.

Units:  milliseconds.  

Defined Values:
RSNRPZ_VAL_MAX_TIME_INFINITE
RSNRPZ_VAL_MAX_TIME_IMMEDIATE

Default Value: 5000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters.     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1         Returns single measurement.     1    This control returns the first Auxiliary value.     2    This control returns the second Auxiliary value.   (�����  �    Status                           ,�   �  �    Instrument Handle                -J P � �  x    Timeout (ms)                     /� P * �  x    Channel                          0 P{ �  x    Measurement                      0D �{ �  x    Aux 1                            0} �{ �  x    Aux 2                              	               5000    1    	           	           	          h    This function returns the measurement the sensor acquires for the channel you specify.  The measurement is from an acquisition that you previously initiated.  

You use the rsnrpz_chan_initiate function to start an acquisition on the channels that you specify. You use the rsnrpz_chan_isMeasurementComplete function to determine when the acquisition is complete.

You can call the rsnrpz_meass_readMeasurement function instead of the rsnrpz_chan_initiate function.  The rsnrpz_meass_readMeasurement function starts an acquisition, waits for the acquisition to complete, and returns the measurement for the channel you specify.

Note(s):

1) If the acquisition has not be initialized or measurement is still in progress and value is not available, function returns an error( RSNRPZ_ERROR_MEAS_NOT_AVAILABLE ).

2) If SENSE:AUX is set to None, this function returns error.    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    _    Pass the maximum length of time in which to allow the read measurement operation to complete.    

If the operation does not complete within this time interval, the function returns the RSNRPZ_ERROR_MAX_TIME_EXCEEDED error code.  When this occurs, you can call rsnrpz_chan_abort to cancel the read measurement operation and return the sensor to the Idle state.

Units:  milliseconds.  

Defined Values:
RSNRPZ_VAL_MAX_TIME_INFINITE
RSNRPZ_VAL_MAX_TIME_IMMEDIATE

Default Value: 5000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters.     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1         Returns single measurement.     1    This control returns the first Auxiliary value.     2    This control returns the second Auxiliary value.   5�����  �    Status                           :   �  �    Instrument Handle                :� P � �  x    Timeout (ms)                     = P * �  x    Channel                          =z P{ �  x    Measurement                      =� �{ �  x    Aux 1                            =� �{ �  x    Aux 2                              	               5000    1    	           	           	           �    This function initiates an acquisition on the channels that you specifies in channel parameter.  It then waits for the acquisition to complete, and returns the measurement for the channel you specify.    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    v    Pass the maximum length of time in which to allow the read measurement operation to complete.    

If the operation does not complete within this time interval, the function returns the RSNRPZ_ERROR_MAX_TIME_EXCEEDED error code.  When this occurs, you can call rsnrpz_chan_abort to cancel the read measurement operation and return the sensor to the Idle state.

Units:  milliseconds.  

Defined Values:
RSNRPZ_VAL_MAX_TIME_INFINITE             RSNRPZ_VAL_MAX_TIME_IMMEDIATE           

Default Value: 5000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters.     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     =    Returns the measurement buffer that the sensor acquires.  
     W    Pass the number of elements in the Measurement Array parameter.

Default Value: None
     X    Indicates the number of points the function places in the Measurement Array parameter.     7    Returns the Aux 1 buffer that the sensor acquires.  
     7    Returns the Aux 2 buffer that the sensor acquires.  
   @�����  �    Status                           D�   �  �    Instrument Handle                Eb N � �  x    Maximum Time (ms)                G� N , �  x    Channel                          HN � , �  x    Measurement Array                H� N� �  x    Buffer Size                      H� � � �  x    Read Count                       IR � � �  x    Aux 1 Array                      I� �� �  x    Aux 2 Array                        	               5000    1    	                	            	            	           w    This function returns the buffer measurement the sensor acquires for the channel you specify.  The measurement is from an acquisition that you previously initiated.  

You use the rsnrpz_chan_initiate function to start an acquisition on the channels that you specify. You use the rsnrpz_chan_isMeasurementComplete function to determine when the acquisition is complete.

You can call the rsnrpz_meas_readBufferMeasurement function instead of the rsnrpz_chan_initiate function.  The rsnrpz_meass_readBufferMeasurement function starts an acquisition, waits for the acquisition to complete, and returns the measurement for the channel you specify.

Note:

1) If the acquisition has not be initialized or measurement is still in progress and value is not available, function returns an error( RSNRPZ_ERROR_MEAS_NOT_AVAILABLE ).

2) If SENSE:AUX is set to None, this function returns error.    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    v    Pass the maximum length of time in which to allow the read measurement operation to complete.    

If the operation does not complete within this time interval, the function returns the RSNRPZ_ERROR_MAX_TIME_EXCEEDED error code.  When this occurs, you can call rsnrpz_chan_abort to cancel the read measurement operation and return the sensor to the Idle state.

Units:  milliseconds.  

Defined Values:
RSNRPZ_VAL_MAX_TIME_INFINITE             RSNRPZ_VAL_MAX_TIME_IMMEDIATE           

Default Value: 5000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters.     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     =    Returns the measurement buffer that the sensor acquires.  
     W    Pass the number of elements in the Measurement Array parameter.

Default Value: None
     X    Indicates the number of points the function places in the Measurement Array parameter.     7    Returns the Aux 1 buffer that the sensor acquires.  
     7    Returns the Aux 2 buffer that the sensor acquires.  
   O}����  �    Status                           S�   �  �    Instrument Handle                TG N � �  x    Maximum Time (ms)                V� N , �  x    Channel                          W3 � , �  x    Measurement Array                Wx N� �  x    Buffer Size                      W� � � �  x    Read Count                       X7 � � �  x    Aux 1 Array                      Xv �� �  x    Aux 2 Array                        	               5000    1    	                	            	            	            ?    This function resets the R&S NRPZ registry to default values.    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None   [*����  �    Status                           _U   �  �    Instrument Handle                  	               y    This function checks selected status register for bits defined in Bitmask and returns a logical OR of all defined bits.    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    \    This control selects the status register.

Valid Values:
RSNRPZ_STATCLASS_D_CONN (1) - Sensor Connected 
RSNRPZ_STATCLASS_D_ERR  (2) - Sensor Error
RSNRPZ_STATCLASS_O_CAL  (3) - Operation Calibrating Status Register
RSNRPZ_STATCLASS_O_MEAS (4) - Operation Measuring Status Register
RSNRPZ_STATCLASS_O_TRIGGER (5) - Operation Trigger Status Register
RSNRPZ_STATCLASS_O_SENSE (6) - Operation Sense Status Register
RSNRPZ_STATCLASS_O_LOWER (7) - Operation Lower Limit Fail Status Register
RSNRPZ_STATCLASS_O_UPPER (8) - Operation Upper Limit Fail Status Register
RSNRPZ_STATCLASS_Q_POWER (9) - Power Part of Questionable Power Status Register
RSNRPZ_STATCLASS_Q_WINDOW (10) - Questionable Window Status Register
RSNRPZ_STATCLASS_Q_CAL (11) - Questionable Calibration Status Register
RSNRPZ_STATCLASS_Q_ZER (12) - Zero Part of Questionable Power Status Register
    �    This control defines the bit which should be checked in the specified Status Register.

You can use following constant for checking operation and questionable registers. To check multiple bits, bitwise OR them together. For example, if you want check sensor on channel 1 and sensor on channel 2, then pass 
RSNRPZ_SENSOR_01 | RSNRPZ_SENSOR_02

Valid Values:
constant               bit     value
RSNRPZ_SENSOR_01        1       0x2
RSNRPZ_SENSOR_02        2       0x4
RSNRPZ_SENSOR_03        3       0x8
RSNRPZ_SENSOR_04        4       0x10 
RSNRPZ_SENSOR_05        5       0x20 
RSNRPZ_SENSOR_06        6       0x40 
RSNRPZ_SENSOR_07        7       0x80 
RSNRPZ_SENSOR_08        8       0x100
RSNRPZ_SENSOR_09        9       0x200
RSNRPZ_SENSOR_10       10       0x400 
RSNRPZ_SENSOR_11       11       0x800 
RSNRPZ_SENSOR_12       12       0x1000
RSNRPZ_SENSOR_13       13       0x2000 
RSNRPZ_SENSOR_14       14       0x4000
RSNRPZ_SENSOR_15       15       0x8000
RSNRPZ_SENSOR_16       16       0x10000
RSNRPZ_SENSOR_17       17       0x20000
RSNRPZ_SENSOR_18       18       0x40000
RSNRPZ_SENSOR_19       19       0x80000
RSNRPZ_SENSOR_20       20       0x100000
RSNRPZ_SENSOR_21       21       0x200000
RSNRPZ_SENSOR_22       22       0x400000
RSNRPZ_SENSOR_23       23       0x800000
RSNRPZ_SENSOR_24       24       0x1000000
RSNRPZ_SENSOR_25       25       0x2000000
RSNRPZ_SENSOR_26       26       0x4000000
RSNRPZ_SENSOR_27       27       0x8000000
RSNRPZ_SENSOR_28       28       0x10000000
RSNRPZ_SENSOR_29       29       0x20000000
RSNRPZ_SENSOR_30       30       0x40000000
RSNRPZ_SENSOR_31       31       0x80000000
RSNRPZ_ALL_SENSORS    all       0xFFFFFFFE

Default Value:
RSNRPZ_ALL_SENSORS     �    This control returns the bitwise OR of all bits defined by the bitmask.

Valid Values:
VI_TRUE (1) - Logical True
VI_FALSE (0) - Logical False   `�����  �    Status                           e   �  �    Instrument Handle                e� G  � �    Status Class                     i G � �  �    Mask                             o� G� �  x    State                              	                         nDevice Status Connected RSNRPZ_STATCLASS_D_CONN Device Status Error RSNRPZ_STATCLASS_D_ERR Operation Calibrating Status RSNRPZ_STATCLASS_O_CAL Operation Measuring Status RSNRPZ_STATCLASS_O_MEAS Operation Trigger Status RSNRPZ_STATCLASS_O_TRIGGER Operation Sense Status RSNRPZ_STATCLASS_O_SENSE Operation Lower Limit Fail Status RSNRPZ_STATCLASS_O_LOWER Operation Upper Limit Fail Status RSNRPZ_STATCLASS_O_UPPER Questionable Power Status RSNRPZ_STATCLASS_Q_POWER Questionable Window Status RSNRPZ_STATCLASS_Q_WINDOW Questionable Calibrating Status RSNRPZ_STATCLASS_Q_CAL Questionable Zeroing Status RSNRPZ_STATCLASS_Q_ZER    RSNRPZ_ALL_SENSORS    	            o    This function sets the PTransition and NTransition register of selected status register according to bitmask.    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    �    This control defines the bit which should be checked in the specified Status Register.

You can use following constant for checking operation and questionable registers. To check multiple bits, bitwise OR them together. For example, if you want check sensor on channel 1 and sensor on channel 2, then pass 
RSNRPZ_SENSOR_01 | RSNRPZ_SENSOR_02

Valid Values:
constant               bit     value
RSNRPZ_SENSOR_01        1       0x2
RSNRPZ_SENSOR_02        2       0x4
RSNRPZ_SENSOR_03        3       0x8
RSNRPZ_SENSOR_04        4       0x10 
RSNRPZ_SENSOR_05        5       0x20 
RSNRPZ_SENSOR_06        6       0x40 
RSNRPZ_SENSOR_07        7       0x80 
RSNRPZ_SENSOR_08        8       0x100
RSNRPZ_SENSOR_09        9       0x200
RSNRPZ_SENSOR_10       10       0x400 
RSNRPZ_SENSOR_11       11       0x800 
RSNRPZ_SENSOR_12       12       0x1000
RSNRPZ_SENSOR_13       13       0x2000 
RSNRPZ_SENSOR_14       14       0x4000
RSNRPZ_SENSOR_15       15       0x8000
RSNRPZ_SENSOR_16       16       0x10000
RSNRPZ_SENSOR_17       17       0x20000
RSNRPZ_SENSOR_18       18       0x40000
RSNRPZ_SENSOR_19       19       0x80000
RSNRPZ_SENSOR_20       20       0x100000
RSNRPZ_SENSOR_21       21       0x200000
RSNRPZ_SENSOR_22       22       0x400000
RSNRPZ_SENSOR_23       23       0x800000
RSNRPZ_SENSOR_24       24       0x1000000
RSNRPZ_SENSOR_25       25       0x2000000
RSNRPZ_SENSOR_26       26       0x4000000
RSNRPZ_SENSOR_27       27       0x8000000
RSNRPZ_SENSOR_28       28       0x10000000
RSNRPZ_SENSOR_29       29       0x20000000
RSNRPZ_SENSOR_30       30       0x40000000
RSNRPZ_SENSOR_31       31       0x80000000
RSNRPZ_ALL_SENSORS    all       0xFFFFFFFE

Default Value:
RSNRPZ_ALL_SENSORS        This control defines the direction of transition of the event.

Valid Values:
RSNRPZ_DIRECTION_NONE (0) - None Transition
RSNRPZ_DIRECTION_PTR (1) - Positive Transition  (Default Value)
RSNRPZ_DIRECTION_NTR (2) - Negative Transition
RSNRPZ_DIRECTION_BOTH (3) - Both Transition
    �    This control selects the status register.

Valid Values:
RSNRPZ_STATCLASS_D_CONN (1) - Sensor Connected 
RSNRPZ_STATCLASS_D_ERR  (2) - Sensor Error
RSNRPZ_STATCLASS_O_CAL  (3) - Operation Calibrating Status Register
RSNRPZ_STATCLASS_O_MEAS (4) - Operation Measuring Status Register
RSNRPZ_STATCLASS_O_TRIGGER (5) - Operation Trigger Status Register
RSNRPZ_STATCLASS_O_SENSE (6) - Operation Sense Status Register
RSNRPZ_STATCLASS_O_LOWER (7) - Operation Lower Limit Fail Status Register
RSNRPZ_STATCLASS_O_UPPER (8) - Operation Upper Limit Fail Status Register
RSNRPZ_STATCLASS_Q_POWER (9) - Power Part of Questionable Power Status Register
RSNRPZ_STATCLASS_Q_WINDOW (10) - Questionable Window Status Register
RSNRPZ_STATCLASS_Q_CAL (11) - Questionable Calibration Status Register
RSNRPZ_STATCLASS_Q_ZER (12) - Zero Part of Questionable Power Status Register

Notes:
(1) For meaning of each status register consult Operation Manual.   t�����  �    Status                           x�   �  �    Instrument Handle                yc G � �  �    Mask                             � G� � x    Direction                        �7 G  � �    Status Class                       	               RSNRPZ_ALL_SENSORS               rPositive RSNRPZ_DIRECTION_PTR Negative RSNRPZ_DIRECTION_NTR Both RSNRPZ_DIRECTION_BOTH None RSNRPZ_DIRECTION_NONE              nDevice Status Connected RSNRPZ_STATCLASS_D_CONN Device Status Error RSNRPZ_STATCLASS_D_ERR Operation Calibrating Status RSNRPZ_STATCLASS_O_CAL Operation Measuring Status RSNRPZ_STATCLASS_O_MEAS Operation Trigger Status RSNRPZ_STATCLASS_O_TRIGGER Operation Sense Status RSNRPZ_STATCLASS_O_SENSE Operation Lower Limit Fail Status RSNRPZ_STATCLASS_O_LOWER Operation Upper Limit Fail Status RSNRPZ_STATCLASS_O_UPPER Questionable Power Status RSNRPZ_STATCLASS_Q_POWER Questionable Window Status RSNRPZ_STATCLASS_Q_WINDOW Questionable Calibrating Status RSNRPZ_STATCLASS_Q_CAL Questionable Zeroing Status RSNRPZ_STATCLASS_Q_ZER    �    This function checks the selected status register for events specified by bitmask and sets returns their states. Finally all bits of shadow status register specified by Reset Action will be set to zero.
    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    �    This control defines the bit which should be checked in the specified Status Register.

You can use following constant for checking operation and questionable registers. To check multiple bits, bitwise OR them together. For example, if you want check sensor on channel 1 and sensor on channel 2, then pass 
RSNRPZ_SENSOR_01 | RSNRPZ_SENSOR_02

Valid Values:
constant               bit     value
RSNRPZ_SENSOR_01        1       0x2
RSNRPZ_SENSOR_02        2       0x4
RSNRPZ_SENSOR_03        3       0x8
RSNRPZ_SENSOR_04        4       0x10 
RSNRPZ_SENSOR_05        5       0x20 
RSNRPZ_SENSOR_06        6       0x40 
RSNRPZ_SENSOR_07        7       0x80 
RSNRPZ_SENSOR_08        8       0x100
RSNRPZ_SENSOR_09        9       0x200
RSNRPZ_SENSOR_10       10       0x400 
RSNRPZ_SENSOR_11       11       0x800 
RSNRPZ_SENSOR_12       12       0x1000
RSNRPZ_SENSOR_13       13       0x2000 
RSNRPZ_SENSOR_14       14       0x4000
RSNRPZ_SENSOR_15       15       0x8000
RSNRPZ_SENSOR_16       16       0x10000
RSNRPZ_SENSOR_17       17       0x20000
RSNRPZ_SENSOR_18       18       0x40000
RSNRPZ_SENSOR_19       19       0x80000
RSNRPZ_SENSOR_20       20       0x100000
RSNRPZ_SENSOR_21       21       0x200000
RSNRPZ_SENSOR_22       22       0x400000
RSNRPZ_SENSOR_23       23       0x800000
RSNRPZ_SENSOR_24       24       0x1000000
RSNRPZ_SENSOR_25       25       0x2000000
RSNRPZ_SENSOR_26       26       0x4000000
RSNRPZ_SENSOR_27       27       0x8000000
RSNRPZ_SENSOR_28       28       0x10000000
RSNRPZ_SENSOR_29       29       0x20000000
RSNRPZ_SENSOR_30       30       0x40000000
RSNRPZ_SENSOR_31       31       0x80000000
RSNRPZ_ALL_SENSORS    all       0xFFFFFFFE

Default Value:
RSNRPZ_ALL_SENSORS     �    This control returns the bitwise OR of all bits defined by the bitmask.

Valid Values:
VI_TRUE (1) - Logical True
VI_FALSE (0) - Logical False    �    This control defines which bits of the shadow status register will reset to zero when finishing the function.

You can use following constant for reset operation. To reset multiple bits, bitwise OR them together. For example, if you want reset only bits corresponding with sensor on channel 1 and sensor on channel 2, then pass 
RSNRPZ_SENSOR_01 | RSNRPZ_SENSOR_02

Valid Values:
constant               bit     value
RSNRPZ_SENSOR_01        1       0x2
RSNRPZ_SENSOR_02        2       0x4
RSNRPZ_SENSOR_03        3       0x8
RSNRPZ_SENSOR_04        4       0x10 
RSNRPZ_SENSOR_05        5       0x20 
RSNRPZ_SENSOR_06        6       0x40 
RSNRPZ_SENSOR_07        7       0x80 
RSNRPZ_SENSOR_08        8       0x100
RSNRPZ_SENSOR_09        9       0x200
RSNRPZ_SENSOR_10       10       0x400 
RSNRPZ_SENSOR_11       11       0x800 
RSNRPZ_SENSOR_12       12       0x1000
RSNRPZ_SENSOR_13       13       0x2000 
RSNRPZ_SENSOR_14       14       0x4000
RSNRPZ_SENSOR_15       15       0x8000
RSNRPZ_SENSOR_16       16       0x10000
RSNRPZ_SENSOR_17       17       0x20000
RSNRPZ_SENSOR_18       18       0x40000
RSNRPZ_SENSOR_19       19       0x80000
RSNRPZ_SENSOR_20       20       0x100000
RSNRPZ_SENSOR_21       21       0x200000
RSNRPZ_SENSOR_22       22       0x400000
RSNRPZ_SENSOR_23       23       0x800000
RSNRPZ_SENSOR_24       24       0x1000000
RSNRPZ_SENSOR_25       25       0x2000000
RSNRPZ_SENSOR_26       26       0x4000000
RSNRPZ_SENSOR_27       27       0x8000000
RSNRPZ_SENSOR_28       28       0x10000000
RSNRPZ_SENSOR_29       29       0x20000000
RSNRPZ_SENSOR_30       30       0x40000000
RSNRPZ_SENSOR_31       31       0x80000000
RSNRPZ_ALL_SENSORS    all       0xFFFFFFFE

Default Value:
RSNRPZ_ALL_SENSORS    �    This control selects the status register.

Valid Values:
RSNRPZ_STATCLASS_D_CONN (1) - Sensor Connected 
RSNRPZ_STATCLASS_D_ERR  (2) - Sensor Error
RSNRPZ_STATCLASS_O_CAL  (3) - Operation Calibrating Status Register
RSNRPZ_STATCLASS_O_MEAS (4) - Operation Measuring Status Register
RSNRPZ_STATCLASS_O_TRIGGER (5) - Operation Trigger Status Register
RSNRPZ_STATCLASS_O_SENSE (6) - Operation Sense Status Register
RSNRPZ_STATCLASS_O_LOWER (7) - Operation Lower Limit Fail Status Register
RSNRPZ_STATCLASS_O_UPPER (8) - Operation Upper Limit Fail Status Register
RSNRPZ_STATCLASS_Q_POWER (9) - Power Part of Questionable Power Status Register
RSNRPZ_STATCLASS_Q_WINDOW (10) - Questionable Window Status Register
RSNRPZ_STATCLASS_Q_CAL (11) - Questionable Calibration Status Register
RSNRPZ_STATCLASS_Q_ZER (12) - Zero Part of Questionable Power Status Register

Notes:
(1) For meaning of each status register consult Operation Manual.   ������  �    Status                           �   �  �    Instrument Handle                �� G � �  �    Mask                             �e �y �  x    Events                           �� Gy �  �    Reset Mask                       �� G 
 � �    Status Class                       	               RSNRPZ_ALL_SENSORS    	            RSNRPZ_ALL_SENSORS              nDevice Status Connected RSNRPZ_STATCLASS_D_CONN Device Status Error RSNRPZ_STATCLASS_D_ERR Operation Calibrating Status RSNRPZ_STATCLASS_O_CAL Operation Measuring Status RSNRPZ_STATCLASS_O_MEAS Operation Trigger Status RSNRPZ_STATCLASS_O_TRIGGER Operation Sense Status RSNRPZ_STATCLASS_O_SENSE Operation Lower Limit Fail Status RSNRPZ_STATCLASS_O_LOWER Operation Upper Limit Fail Status RSNRPZ_STATCLASS_O_UPPER Questionable Power Status RSNRPZ_STATCLASS_Q_POWER Questionable Window Status RSNRPZ_STATCLASS_Q_WINDOW Questionable Calibrating Status RSNRPZ_STATCLASS_Q_CAL Questionable Zeroing Status RSNRPZ_STATCLASS_Q_ZER    p    This function enables events defined by Bitmask in enable register respective to the selected status register.    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    �    This control defines the bits(channels) which should be set to one and will generate SRQ.

You can use following constant for enabling SRQ for specified channels. To disable multiple channels, bitwise OR them together. For example, if you want enable SRQ for sensor on channel 1 and sensor on channel 2, then pass 
RSNRPZ_SENSOR_01 | RSNRPZ_SENSOR_02.

Valid Values:
constant               bit     value
RSNRPZ_SENSOR_01        1       0x2
RSNRPZ_SENSOR_02        2       0x4
RSNRPZ_SENSOR_03        3       0x8
RSNRPZ_SENSOR_04        4       0x10 
RSNRPZ_SENSOR_05        5       0x20 
RSNRPZ_SENSOR_06        6       0x40 
RSNRPZ_SENSOR_07        7       0x80 
RSNRPZ_SENSOR_08        8       0x100
RSNRPZ_SENSOR_09        9       0x200
RSNRPZ_SENSOR_10       10       0x400 
RSNRPZ_SENSOR_11       11       0x800 
RSNRPZ_SENSOR_12       12       0x1000
RSNRPZ_SENSOR_13       13       0x2000 
RSNRPZ_SENSOR_14       14       0x4000
RSNRPZ_SENSOR_15       15       0x8000
RSNRPZ_SENSOR_16       16       0x10000
RSNRPZ_SENSOR_17       17       0x20000
RSNRPZ_SENSOR_18       18       0x40000
RSNRPZ_SENSOR_19       19       0x80000
RSNRPZ_SENSOR_20       20       0x100000
RSNRPZ_SENSOR_21       21       0x200000
RSNRPZ_SENSOR_22       22       0x400000
RSNRPZ_SENSOR_23       23       0x800000
RSNRPZ_SENSOR_24       24       0x1000000
RSNRPZ_SENSOR_25       25       0x2000000
RSNRPZ_SENSOR_26       26       0x4000000
RSNRPZ_SENSOR_27       27       0x8000000
RSNRPZ_SENSOR_28       28       0x10000000
RSNRPZ_SENSOR_29       29       0x20000000
RSNRPZ_SENSOR_30       30       0x40000000
RSNRPZ_SENSOR_31       31       0x80000000
RSNRPZ_ALL_SENSORS    all       0xFFFFFFFE

Default Value:
RSNRPZ_ALL_SENSORS    �    This control selects the status register.

Valid Values:
RSNRPZ_STATCLASS_D_CONN (1) - Sensor Connected 
RSNRPZ_STATCLASS_D_ERR  (2) - Sensor Error
RSNRPZ_STATCLASS_O_CAL  (3) - Operation Calibrating Status Register
RSNRPZ_STATCLASS_O_MEAS (4) - Operation Measuring Status Register
RSNRPZ_STATCLASS_O_TRIGGER (5) - Operation Trigger Status Register
RSNRPZ_STATCLASS_O_SENSE (6) - Operation Sense Status Register
RSNRPZ_STATCLASS_O_LOWER (7) - Operation Lower Limit Fail Status Register
RSNRPZ_STATCLASS_O_UPPER (8) - Operation Upper Limit Fail Status Register
RSNRPZ_STATCLASS_Q_POWER (9) - Power Part of Questionable Power Status Register
RSNRPZ_STATCLASS_Q_WINDOW (10) - Questionable Window Status Register
RSNRPZ_STATCLASS_Q_CAL (11) - Questionable Calibration Status Register
RSNRPZ_STATCLASS_Q_ZER (12) - Zero Part of Questionable Power Status Register

Notes:
(1) For meaning of each status register consult Operation Manual.   ������  �    Status                           �   �  �    Instrument Handle                �� G � �  �    Mask                             �x G  � �    Status Class                       	               RSNRPZ_ALL_SENSORS              nDevice Status Connected RSNRPZ_STATCLASS_D_CONN Device Status Error RSNRPZ_STATCLASS_D_ERR Operation Calibrating Status RSNRPZ_STATCLASS_O_CAL Operation Measuring Status RSNRPZ_STATCLASS_O_MEAS Operation Trigger Status RSNRPZ_STATCLASS_O_TRIGGER Operation Sense Status RSNRPZ_STATCLASS_O_SENSE Operation Lower Limit Fail Status RSNRPZ_STATCLASS_O_LOWER Operation Upper Limit Fail Status RSNRPZ_STATCLASS_O_UPPER Questionable Power Status RSNRPZ_STATCLASS_Q_POWER Questionable Window Status RSNRPZ_STATCLASS_Q_WINDOW Questionable Calibrating Status RSNRPZ_STATCLASS_Q_CAL Questionable Zeroing Status RSNRPZ_STATCLASS_Q_ZER    q    This function disables events defined by Bitmask in enable register respective to the selected status register.    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    �    This control defines the bit which should be set to zero in the specified Enable Register.

You can use following constant for disabling SRQ for specified channels. To disable multiple channels, bitwise OR them together. For example, if you want disable SRQ for sensor on channel 1 and sensor on channel 2, then pass 
RSNRPZ_SENSOR_01 | RSNRPZ_SENSOR_02.

Valid Values:
constant               bit     value
RSNRPZ_SENSOR_01        1       0x2
RSNRPZ_SENSOR_02        2       0x4
RSNRPZ_SENSOR_03        3       0x8
RSNRPZ_SENSOR_04        4       0x10 
RSNRPZ_SENSOR_05        5       0x20 
RSNRPZ_SENSOR_06        6       0x40 
RSNRPZ_SENSOR_07        7       0x80 
RSNRPZ_SENSOR_08        8       0x100
RSNRPZ_SENSOR_09        9       0x200
RSNRPZ_SENSOR_10       10       0x400 
RSNRPZ_SENSOR_11       11       0x800 
RSNRPZ_SENSOR_12       12       0x1000
RSNRPZ_SENSOR_13       13       0x2000 
RSNRPZ_SENSOR_14       14       0x4000
RSNRPZ_SENSOR_15       15       0x8000
RSNRPZ_SENSOR_16       16       0x10000
RSNRPZ_SENSOR_17       17       0x20000
RSNRPZ_SENSOR_18       18       0x40000
RSNRPZ_SENSOR_19       19       0x80000
RSNRPZ_SENSOR_20       20       0x100000
RSNRPZ_SENSOR_21       21       0x200000
RSNRPZ_SENSOR_22       22       0x400000
RSNRPZ_SENSOR_23       23       0x800000
RSNRPZ_SENSOR_24       24       0x1000000
RSNRPZ_SENSOR_25       25       0x2000000
RSNRPZ_SENSOR_26       26       0x4000000
RSNRPZ_SENSOR_27       27       0x8000000
RSNRPZ_SENSOR_28       28       0x10000000
RSNRPZ_SENSOR_29       29       0x20000000
RSNRPZ_SENSOR_30       30       0x40000000
RSNRPZ_SENSOR_31       31       0x80000000
RSNRPZ_ALL_SENSORS    all       0xFFFFFFFE

Default Value:
RSNRPZ_ALL_SENSORS    �    This control selects the status register.

Valid Values:
RSNRPZ_STATCLASS_D_CONN (1) - Sensor Connected 
RSNRPZ_STATCLASS_D_ERR  (2) - Sensor Error
RSNRPZ_STATCLASS_O_CAL  (3) - Operation Calibrating Status Register
RSNRPZ_STATCLASS_O_MEAS (4) - Operation Measuring Status Register
RSNRPZ_STATCLASS_O_TRIGGER (5) - Operation Trigger Status Register
RSNRPZ_STATCLASS_O_SENSE (6) - Operation Sense Status Register
RSNRPZ_STATCLASS_O_LOWER (7) - Operation Lower Limit Fail Status Register
RSNRPZ_STATCLASS_O_UPPER (8) - Operation Upper Limit Fail Status Register
RSNRPZ_STATCLASS_Q_POWER (9) - Power Part of Questionable Power Status Register
RSNRPZ_STATCLASS_Q_WINDOW (10) - Questionable Window Status Register
RSNRPZ_STATCLASS_Q_CAL (11) - Questionable Calibration Status Register
RSNRPZ_STATCLASS_Q_ZER (12) - Zero Part of Questionable Power Status Register

Notes:
(1) For meaning of each status register consult Operation Manual.   �����  �    Status                           �@   �  �    Instrument Handle                �� G � �  �    Mask                             à G  � �    Status Class                       	               RSNRPZ_ALL_SENSORS              nDevice Status Connected RSNRPZ_STATCLASS_D_CONN Device Status Error RSNRPZ_STATCLASS_D_ERR Operation Calibrating Status RSNRPZ_STATCLASS_O_CAL Operation Measuring Status RSNRPZ_STATCLASS_O_MEAS Operation Trigger Status RSNRPZ_STATCLASS_O_TRIGGER Operation Sense Status RSNRPZ_STATCLASS_O_SENSE Operation Lower Limit Fail Status RSNRPZ_STATCLASS_O_LOWER Operation Upper Limit Fail Status RSNRPZ_STATCLASS_O_UPPER Questionable Power Status RSNRPZ_STATCLASS_Q_POWER Questionable Window Status RSNRPZ_STATCLASS_Q_WINDOW Questionable Calibrating Status RSNRPZ_STATCLASS_Q_CAL Questionable Zeroing Status RSNRPZ_STATCLASS_Q_ZER    6    This function returns the Nrp low level driver state    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
3FFF0085  Unknown status code - VI_WARN_UNKNOWN_STATUS
          
This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     6    This control returns the Nrp low level driver state.   �����  �    Status                           ��   �  �    Instrument Handle                Б G � �  `    Driver State                       	               	            _    This function registers message, which will be send to specified window, when SRQ is occured.    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    Handle to the window whose window procedure is to receive the message. If the parameter is set to 0 (NULL), the message is disabled.     a    Specifies the message to be posted.  If the message ID is set to 0, message will be not posted.   ������  �    Status                           �   �  �    Instrument Handle                ֻ G $ �  x    Window Handle                    �I G � �  x    Message ID                         	                       v    This function initiates a temperature measurement of the sensor and reads the temperature value from the instrument.     A    This control returns the temperature value from the instrument.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
3FFF0085  Unknown status code - VI_WARN_UNKNOWN_STATUS
          
This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  none     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1   � G, �  `    Temperature                      �e����  �    Status                           �U   �  �    Instrument Handle                �� G � � `    Channel                            	           	               1    @    This function sets the number of simulation pairs count-value.     n    This control sets the number of simulation pairs count-value.

Valid Values: not checked

Default Value: 100    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
3FFF0085  Unknown status code - VI_WARN_UNKNOWN_STATUS
          
This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  none     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1   �� G, �  `    Block Count                      �����  �    Status                           �   �  �    Instrument Handle                � G � � `    Channel                            100    	               1    �    This function sets the values which will be simulated. Right before calling this function must be called function rsnrpz_service_startSimulation!     �    This control sets the value count. The amount of values is equal to Block Count set with function rsnrpz_service_startSimulation.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
3FFF0085  Unknown status code - VI_WARN_UNKNOWN_STATUS
          
This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  none     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     �    This control sets the values which will be simulated. The amount of values is equal to Block Count set with function rsnrpz_service_startSimulation.   � G � �  `    Value Count                      �(����  �    Status                           �   �  �    Instrument Handle                � G n � `    Channel                          �% G �  `    Values                                 	               1        N    This function stops the simulation by setting the count-value pairs to zero.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
3FFF0085  Unknown status code - VI_WARN_UNKNOWN_STATUS
          
This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  none     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1   �?����  �    Status                           �/   �  �    Instrument Handle                �� G � � `    Channel                            	               1       This function switches state checking of the instrument (reading of the Standard Event Register and checking it for error) status subsystem. Driver functions are using state checking which is by default enabled.

Note:

(1) In debug mode enable state checking.

(2) For better bus throughput and instruments performance disable state checking.

(3) When state checking is disabled driver does not check if correct instrument model or option is used with each of the functions. This might cause unexpected behaviour of the instrument.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC0002  Parameter 2 (State Checking) out of range.
          
This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control switches instrument state checking On or Off.

Valid Range:
VI_FALSE (0) - Off
VI_TRUE  (1) - On (Default Value)
   �����  �    Status                           ��   �  �    Instrument Handle                �� G	 �       State Checking                     	              On VI_TRUE Off VI_FALSE       This function resets the instrument to a known state and sends initialization commands to the instrument that set any necessary programmatic variables such as Headers Off, Short Command form, and Data Transfer Binary to the state necessary for the operation of the instrument driver.
    $    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors      �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None   ����  �    Status                           A   �  �    Instrument Handle                  	               X    This function runs the instrument's self test routine and returns the test result(s).
     �    This control contains the value returned from the instrument self test.  Zero means success.  For any other code, see the device's operator's manual.
     �    This control contains the string returned from the self test. See the device's operation manual for an explanation of the string's contents.

Notes:

(1) The array must contain at least 256 elements ViChar[256].    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC0002  Parameter 2 (Self-Test Result) NULL pointer.
          
This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None   � = 2 �  `    Self Test Result                 Z = � � ,    Self-Test Message                	7����  �    Status                           '   �  �    Instrument Handle                  	           	            	               G    This function reads an error code from the instrument's error queue.
     N    This control returns the error code read from the instrument's error queue.
     �    This control returns the error message string read from the instrument's error message queue.

Notes:

(1) The array must contain at least 256 elements ViChar[256].        Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC0002  Parameter 2 (Error Code) NULL pointer.
BFFC0003  Parameter 3 (Error Message) NULL pointer.
          
This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    = 2 �  `    Error Code                       g = � � ,    Error Message                    ����  �    Status                           3   �  �    Instrument Handle                  	            	            	               �    This function takes the Status Code returned by the instrument driver functions, interprets it and returns it as a user readable string.      t    This control accepts the Status Code returned from the instrument driver functions.

Default Value:
0 - VI_SUCCESS     �    This control returns the interpreted Status Code as a user readable message string.

Notes:

(1) The array must contain at least 256 elements ViChar[256].    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
3FFF0085  Unknown status code - VI_WARN_UNKNOWN_STATUS
          
This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  VI_NULL   a =  �  `    Status Code                      � = � � �    Message                          �����  �    Status                           q   �  �    Instrument Handle                  0    	            	           VI_NULL    �    This function returns the revision numbers of the instrument driver and instrument firmware, and tells the user with which  instrument firmware this revision of the driver is compatible. 
     �    This control returns the Instrument Driver Software Revision.

Notes:

(1) The array must contain at least 256 elements ViChar[256].     �    This control returns the Instrument Firmware Revision.

Notes:

(1) Because instrument does not support firmware revision the array is set to empty string or ignored if used VI_NULL.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
3FFC0105  Revision query not supported - VI_WARN_NSUP_REV_QUERY

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    � = 2 �  �    Instrument Driver Revision       !c =, �  �    Firmware Revision                "#����  �    Status                           '   �  �    Instrument Handle                  	                    VI_NULL    	               A    This function returns the number of currently connected sensors     @    This control returns the number of currently connected sensors    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
3FFF0085  Unknown status code - VI_WARN_UNKNOWN_STATUS
          
This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  VI_NULL   (� G � �  `    Sensor Count                     )E����  �    Status                           .5   �  �    Instrument Handle                  	            	           VI_NULL    B    This function returns the name/descriptor of a connected sensor.     t    This control returns selected sensor's name.

Note(s):

(1) The array has to have allocated at least 128 elements.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
3FFF0085  Unknown status code - VI_WARN_UNKNOWN_STATUS
          
This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  VI_NULL     f    This control defines the channel number.

Valid Range:
1 to max available channels

Default Value: 1     t    This control returns selected sensor's type.

Note(s):

(1) The array has to have allocated at least 128 elements.     }    This control returns selected sensor's serial number.

Note(s):

(1) The array has to have allocated at least 128 elements.   /� G � �  `    Sensor Name                      0_����  �    Status                           5O   �  �    Instrument Handle                5� G 2 � `    Channel                          6_ G/ �  `    Sensor Type                      6� G� �  `    Sensor Serial                      	            	           VI_NULL    1    	            	            U    This functions provides information about whether an NRP-Z5 is connected to the PC.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
3FFF0085  Unknown status code - VI_WARN_UNKNOWN_STATUS
          
This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  VI_NULL     h    This control returns whether NRP-Z5 is available on PC.

Valid Values:
0 - Not Available
1 - Available   9;����  �    Status                           >+   �  �    Instrument Handle                >� G � �  `    Availability                       	           VI_NULL    	            �    If the above status function (= NrpGetDeviceStatusZ5() ) indicates that there is an NRP-Z5, this function supplies information about the connected devices at its ports A...D (using 'iPortIdx' = 0...3).     t    This control returns selected sensor's name.

Note(s):

(1) The array has to have allocated at least 128 elements.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
3FFF0085  Unknown status code - VI_WARN_UNKNOWN_STATUS
          
This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  VI_NULL     �    This control selects the port.

Valid Values:
RSNRPZ_Z5_PORT_A (0) - A
RSNRPZ_Z5_PORT_B (1) - B
RSNRPZ_Z5_PORT_C (2) - C
RSNRPZ_Z5_PORT_D (3) - D

Default Value: RSNRPZ_Z5_PORT_A (0)     t    This control returns selected sensor's type.

Note(s):

(1) The array has to have allocated at least 128 elements.     }    This control returns selected sensor's serial number.

Note(s):

(1) The array has to have allocated at least 128 elements.     j    Returns whether device is connected.

Valid Values:
VI_FALSE (0) - Disconnected
VI_TRUE  (1) - Connected   @� G � �  `    Sensor Name                      AN����  �    Status                           F>   �  �    Instrument Handle                F� G 2 � `    Port                             G� G/ �  `    Sensor Type                      H G� �  `    Sensor Serial                    H� � � �  `    Connected                          	            	           VI_NULL               LA RSNRPZ_Z5_PORT_A B RSNRPZ_Z5_PORT_B C RSNRPZ_Z5_PORT_C D RSNRPZ_Z5_PORT_D    	            	            	           �    This function performs the following initialization actions and assigned specified sesnor to channel 1:

- Opens a session to the specified device using the interface and address specified in the Resource Name control.

- Performs an identification query on the sensor.

- Resets the instrument to a known state.

- Sends initialization commands to the sensor

- Returns an Instrument Handle which is used to differentiate between different sessions of this instrument driver.    #    This control specifies if an ID Query is sent to the instrument during the initialization procedure.

Valid Range:
VI_FALSE (0) - Skip Query
VI_TRUE  (1) - Do Query (Default Value)

Notes:
   
(1) Under normal circumstances the ID Query ensures that the instrument initialized is the type supported by this driver. However circumstances may arise where it is undesirable to send an ID Query to the instrument.  In those cases; set this control to "Skip Query" and this function will initialize the selected interface, without doing an ID Query.
    H    This control specifies if the instrument is to be reset to its power-on settings during the initialization procedure.

Valid Range:
VI_FALSE (0) - Don't Reset
VI_TRUE  (1) - Reset Device (Default Value)

Notes:

(1) If you do not want the instrument reset. Set this control to "Don't Reset" while initializing the instrument.
    7    This control returns an Instrument Handle that is used in all subsequent function calls to differentiate between different sessions of this instrument driver.

Notes:

(1) Each time this function is invoked a Unique Session is opened.  It is possible to have more than one session open for the same resource.
    E    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC0002  Parameter 2 (ID Query) out of range.
BFFC0003  Parameter 3 (Reset Device) out of range.
BFFC0011  Instrument returned invalid response to ID Query
          
This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings

BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control selects the port.

Valid Values:
RSNRPZ_Z5_PORT_A (0) - A
RSNRPZ_Z5_PORT_B (1) - B
RSNRPZ_Z5_PORT_C (2) - C
RSNRPZ_Z5_PORT_D (3) - D

Default Value: RSNRPZ_Z5_PORT_A (0)   M X  �       ID Query                         O9 [� �       Reset Device                     P� � � �  }    Instrument Handle                Q�����  �    Status                          ���� 
 2��                                          W W P � `    Port                             % Do Query VI_TRUE Skip Query VI_FALSE  * Reset Device VI_TRUE Don't Reset VI_FALSE    	           	           DWarning: The driver requires NRP Toolkit installed on your computer               LA RSNRPZ_Z5_PORT_A B RSNRPZ_Z5_PORT_B C RSNRPZ_Z5_PORT_C D RSNRPZ_Z5_PORT_D    A    This function disconnect all channels and close driver session.    #    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the rsnrpz_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None   Zk����  �    Status                           ^�   �  �    Instrument Handle                  	            ����         
�  �             K.        init                                                                                                                                    ����           2Q             K.        long_distance_setup                                                                                                                     ����         4�  :�             K.        chans_abort                                                                                                                             ����         ;4  AI             K.        chans_getCount                                                                                                                          ����         B  I\             K.        chans_initiate                                                                                                                          ����         I�  O�             K.        chans_zero                                                                                                                              ����         P3  U�             K.        chans_isZeroingComplete                                                                                                                 ����         VJ  [�             K.        chans_isMeasurementComplete                                                                                                             ����         \g  fn             K.        chan_mode                                                                                                                               ����         hP  pH             K.        timing_configureExclude                                                                                                                 ����         qt  xW             K.        timing_setTimingExcludeStart                                                                                                            ����         yG  �             K.        timing_getTimingExcludeStart                                                                                                            ����         ��  �~             K.        timing_setTimingExcludeStop                                                                                                             ����         �n  ��             K.        timing_getTimingExcludeStop                                                                                                             ����         ��  �             K.        bandwidth_setBw                                                                                                                         ����         �  ��             K.        bandwidth_getBw                                                                                                                         ����         ��  �b             K)        bandwidth_getBwList                                                                                                                     ����         ��  ��             K.        avg_configureAvgAuto                                                                                                                    ����         ��  �I             K.        avg_configureAvgNSRatio                                                                                                                 ����         �u  ��             K.        avg_configureAvgManual                                                                                                                  ����         ��  ʻ             K.        avg_setAutoEnabled                                                                                                                      ����         ˿  ��             K.        avg_getAutoEnabled                                                                                                                      ����         ��  ��             K.        avg_setAutoMaxMeasuringTime                                                                                                             ����         ��  ��             K.        avg_getAutoMaxMeasuringTime                                                                                                             ����         ��  �             K.        avg_setAutoNoiseSignalRatio                                                                                                             ����         �  �w             K.        avg_getAutoNoiseSignalRatio                                                                                                             ����         �l  �             K.        avg_setAutoResolution                                                                                                                   ����         ��  ��             K.        avg_getAutoResolution                                                                                                                   ����         � �             K.        avg_setAutoType                                                                                                                         ����        � ~             K.        avg_getAutoType                                                                                                                         ����        s �             K.        avg_setCount                                                                                                                            ����        � �             K.        avg_getCount                                                                                                                            ����        � %�             K.        avg_setEnabled                                                                                                                          ����        &� ,�             K.        avg_getEnabled                                                                                                                          ����        -� 4_             K.        avg_setSlot                                                                                                                             ����        5M ;�             K.        avg_getSlot                                                                                                                             ����        <� C�             K.        avg_setTerminalControl                                                                                                                  ����        D� K=             K.        avg_getTerminalControl                                                                                                                  ����        L2 Q�             K.        avg_reset                                                                                                                               ����        R� Y*             K.        range_setAutoEnabled                                                                                                                    ����        Z. `�             K.        range_getAutoEnabled                                                                                                                    ����        a� h�             K.        range_setCrossoverLevel                                                                                                                 ����        i� o�             K.        range_getCrossoverLevel                                                                                                                 ����        p� wc             K.        range_setRange                                                                                                                          ����        xQ ~�             K.        range_getRange                                                                                                                          ����        � �6             K.        corr_configureCorrections                                                                                                               ����        �Q ��             K.        chan_setCorrectionFrequency                                                                                                             ����        �� �V             K.        chan_getCorrectionFrequency                                                                                                             ����        �K �d             K.        chan_setCorrectionFrequencyStep                                                                                                         ����        �T �             K.        chan_getCorrectionFrequencyStep                                                                                                         ����        � �$             K.        chan_setCorrectionFrequencySpacing                                                                                                      ����        �X �/             K.        chan_getCorrectionFrequencySpacing                                                                                                      ����        �$ ��             K.        corr_setOffset                                                                                                                          ����        �� �N             K.        corr_getOffset                                                                                                                          ����        �C �p             K.        corr_setOffsetEnabled                                                                                                                   ����        �t ؅             K.        corr_getOffsetEnabled                                                                                                                   ����        �z �             K.        corr_setSParamDeviceEnabled                                                                                                             ����        � �q             K.        corr_getSParamDeviceEnabled                                                                                                             ����        �f �             K.        corr_setSParamDevice                                                                                                                    ����        � �>             K.        corr_getSParamDevice                                                                                                                    ����        �3 ��             K.        corr_getSParamDevList                                                                                                                   ����        ��              K.        chan_configureSourceGammaCorr                                                                                                           ����        	}              K.        chan_setSourceGammaMagnitude                                                                                                            ����        �              K.        chan_getSourceGammaMagnitude                                                                                                            ����         �             K.        chan_setSourceGammaPhase                                                                                                                ����        � %�             K.        chan_getSourceGammaPhase                                                                                                                ����        &� -3             K.        chan_setSourceGammaCorrEnabled                                                                                                          ����        .7 4Q             K.        chan_getSourceGammaCorrEnabled                                                                                                          ����        5F <�             K.        chan_configureReflectGammaCorr                                                                                                          ����        > E�             K.        chan_setReflectionGammaMagn                                                                                                             ����        F� M             K.        chan_getReflectionGammaMagn                                                                                                             ����        N U              K.        chan_setReflectionGammaPhase                                                                                                            ����        V \�             K.        chan_getReflectionGammaPhase                                                                                                            ����        ]� c�             K.        chan_setReflectionGammaUncertainty                                                                                                      ����        d� k             K.        chan_getReflectionGammaUncertainty                                                                                                      ����        k� r�             K.        corr_configureDutyCycle                                                                                                                 ����        t? {�             K.        corr_setDutyCycle                                                                                                                       ����        |� ��             K.        corr_getDutyCycle                                                                                                                       ����        �� �             K.        corr_setDutyCycleEnabled                                                                                                                ����        � �             K.        corr_getDutyCycleEnabled                                                                                                                ����        � �_             K.        chan_setContAvAperture                                                                                                                  ����        �P �7             K.        chan_getContAvAperture                                                                                                                  ����        �, �-             K.        chan_setContAvSmoothingEnabled                                                                                                          ����        �1 ��             K.        chan_getContAvSmoothingEnabled                                                                                                          ����        �} �Q             K.        chan_setContAvBufferedEnabled                                                                                                           ����        �U �R             K.        chan_getContAvBufferedEnabled                                                                                                           ����        �G �{             K.        chan_setContAvBufferSize                                                                                                                ����        �i ͘             K.        chan_getContAvBufferSize                                                                                                                ����        ΍ �             K.        chan_getContAvBufferCount                                                                                                               ����        � ��             K.        chan_getContAvBufferInfo                                                                                                                ����        �? �             K.        chan_setBurstDropoutTolerance                                                                                                           ����        � �             K.        chan_getBurstDropoutTolerance                                                                                                           ����        � �s             K.        chan_setBurstChopperEnabled                                                                                                             ����        �w �t             K.        chan_getBurstChopperEnabled                                                                                                             ����        �i 4             K.        stat_confTimegate                                                                                                                       ����        	� p             K.        stat_confScale                                                                                                                          ����        � j             K.        stat_setOffsetTime                                                                                                                      ����        Z "�             K.        stat_getOffsetTime                                                                                                                      ����        #� *6             K.        stat_setTime                                                                                                                            ����        +' 1o             K.        stat_getTime                                                                                                                            ����        2d 9@             K.        stat_setMidOffset                                                                                                                       ����        :0 @�             K.        stat_getMidOffset                                                                                                                       ����        A� G�             K.        stat_setMidLength                                                                                                                       ����        H� N�             K.        stat_getMidLength                                                                                                                       ����        O� W�             K.        stat_setScaleRefLevel                                                                                                                   ����        Xw `             K.        stat_getScaleRefLevel                                                                                                                   ����        a g�             K.        stat_setScaleRange                                                                                                                      ����        hx n�             K.        stat_getScaleRange                                                                                                                      ����        o� wh             K.        stat_setScalePoints                                                                                                                     ����        xX ~�             K.        stat_getScalePoints                                                                                                                     ����        � �             K.        stat_getScaleWidth                                                                                                                      ����        �� ��             K.        tslot_configureTimeSlot                                                                                                                 ����        �� ��             K.        tslot_setTimeSlotCount                                                                                                                  ����        �� ��             K.        tslot_getTimeSlotCount                                                                                                                  ����        �� ��             K.        tslot_setTimeSlotWidth                                                                                                                  ����        �� ��             K.        tslot_getTimeSlotWidth                                                                                                                  ����        �� �=             K.        tslot_setTimeSlotMidOffset                                                                                                              ����        �- �f             K.        tslot_getTimeSlotMidOffset                                                                                                              ����        �[ �*             K.        tslot_setTimeSlotMidLength                                                                                                              ����        � �N             K.        tslot_getTimeSlotMidLength                                                                                                              ����        �C �&             K.        tslot_setTimeSlotChopperEnabled                                                                                                         ����        �* �1             K.        tslot_getTimeSlotChopperEnabled                                                                                                         ����        �& �             K.        scope_configureScope                                                                                                                    ����        �b ��             K.        scope_fastZero                                                                                                                          ����        �S ��             K.        scope_setAverageEnabled                                                                                                                 ����        �� �,             K.        scope_getAverageEnabled                                                                                                                 ����        �! �             K.        scope_setAverageCount                                                                                                                   ����        � 
�             K.        scope_getAverageCount                                                                                                                   ����        � �             K.        scope_setAverageTerminalControl                                                                                                         ����        � z             K.        scope_getAverageTerminalControl                                                                                                         ����        o #?             K.        scope_setOffsetTime                                                                                                                     ����        $/ *�             K.        scope_getOffsetTime                                                                                                                     ����        +� 2$             K.        scope_setPoints                                                                                                                         ����        3 9L             K.        scope_getPoints                                                                                                                         ����        :A Bf             K.        scope_setRealtimeEnabled                                                                                                                ����        Cj I�             K.        scope_getRealtimeEnabled                                                                                                                ����        J� QK             K.        scope_setTime                                                                                                                           ����        R< Xq             K.        scope_getTime                                                                                                                           ����        Yf `V             K.        scope_setAutoEnabled                                                                                                                    ����        aZ gx             K.        scope_getAutoEnabled                                                                                                                    ����        hm o�             K.        scope_setAutoMaxMeasuringTime                                                                                                           ����        p� v�             K.        scope_getAutoMaxMeasuringTime                                                                                                           ����        w� ~s             K.        scope_setAutoNoiseSignalRatio                                                                                                           ����        c �\             K.        scope_getAutoNoiseSignalRatio                                                                                                           ����        �Q ��             K.        scope_setAutoResolution                                                                                                                 ����        �� ��             K.        scope_getAutoResolution                                                                                                                 ����        �� ��             K.        scope_setAutoType                                                                                                                       ����        �% ��             K.        scope_getAutoType                                                                                                                       ����        �� �             K.        scope_setEquivalentSampling                                                                                                             ����        �# �n             K.        scope_getEquivalentSampling                                                                                                             ����        �c �z             K.        scope_meas_setMeasEnabled                                                                                                               ����        �~ �             K.        scope_meas_getMeasEnabled                                                                                                               ����        �
 ��             K.        scope_meas_setMeasAlgorithm                                                                                                             ����        �/ �             K.        scope_meas_getMeasAlgorithm                                                                                                             ����        � �D             K.        scope_meas_setLevelThresholds                                                                                                           ����        � �             K.        scope_meas_getLevelThresholds                                                                                                           ����        � ��             K.        scope_meas_setTime                                                                                                                      ����        �� ��             K.        scope_meas_getTime                                                                                                                      ����        �� �             K.        scope_meas_setOffsetTime                                                                                                                ����        � P             K.        scope_meas_getOffsetTime                                                                                                                ����        E �             K.        scope_meas_getPulseTimes                                                                                                                ����        # #9             K.        scope_meas_getPulseTransition                                                                                                           ����        %2 ,             K.        scope_meas_getPulsePower                                                                                                                ����        -� 4�             K.        scope_meas_getPulseLevels                                                                                                               ����        5� =c             K.        scope_meas_getPulseReferenceLevels                                                                                                      ����        >� G�             K.        scope_meas_setEquivalentSampling                                                                                                        ����        H� O�             K.        scope_meas_getEquivalentSampling                                                                                                        ����        P� W�             K.        scope_meas_getSamplePeriod                                                                                                              ����        Xu `i             K.        trigger_configureInternal                                                                                                               ����        a� h�             K.        trigger_configureExternal                                                                                                               ����        i� p�             K.        trigger_immediate                                                                                                                       ����        qE x             K.        trigger_setAutoDelayEnabled                                                                                                             ����        y 5             K.        trigger_getAutoDelayEnabled                                                                                                             ����        �* �J             K.        trigger_setAutoTriggerEnabled                                                                                                           ����        �N ��             K.        trigger_getAutoTriggerEnabled                                                                                                           ����        �� �8             K.        trigger_setCount                                                                                                                        ����        �& �z             K.        trigger_getCount                                                                                                                        ����        �o ��             K.        trigger_setDelay                                                                                                                        ����        �q ��             K.        trigger_getDelay                                                                                                                        ����        �� ��             K.        trigger_setHoldoff                                                                                                                      ����        �� �             K.        trigger_getHoldoff                                                                                                                      ����        �� �$             K.        trigger_setHysteresis                                                                                                                   ����        � ��             K.        trigger_getHysteresis                                                                                                                   ����        �� �             K.        trigger_setLevel                                                                                                                        ����        � �:             K.        trigger_getLevel                                                                                                                        ����        �/ �             K.        trigger_setSlope                                                                                                                        ����        �I �             K.        trigger_getSlope                                                                                                                        ����        �� ��             K.        trigger_setSource                                                                                                                       ����        �g �Q             K.        trigger_getSource                                                                                                                       ����        �F +             K.        trigger_setDropoutTime                                                                                                                  ����                      K.        trigger_getDropoutTime                                                                                                                  ����        � �             K.        trigger_setMasterState                                                                                                                  ����        �  �             K.        trigger_getMasterState                                                                                                                  ����        !� )�             K.        trigger_setSyncState                                                                                                                    ����        *� 1             K.        trigger_getSyncState                                                                                                                    ����        2 9�             K.        chan_info                                                                                                                               ����        ;V B�             K.        chan_infoHeader                                                                                                                         ����        DD JK             K.        chan_infosCount                                                                                                                         ����        K@ S�             K.        fw_version_check                                                                                                                        ����        U  [�             K.        system_setStatusUpdateTime                                                                                                              ����        \� b�             K.        system_getStatusUpdateTime                                                                                                              ����        c� jz             K.        system_setResultUpdateTime                                                                                                              ����        kj qz             K.        system_getResultUpdateTime                                                                                                              ����        ro ys             K.        calib_test                                                                                                                              ����        zh ��             K.        calib_getTestDeviation                                                                                                                  ����        �z �             K.        calib_getTestReference                                                                                                                  ����        � �C             K.        chan_abort                                                                                                                              ����        �� ��             K.        chan_initiate                                                                                                                           ����        �� ��             K.        chan_setInitContinuousEnabled                                                                                                           ����        �� �             K.        chan_getInitContinuousEnabled                                                                                                           ����        � ��             K.        chan_reset                                                                                                                              ����        �a �g             K.        chan_setSamplingFrequency                                                                                                               ����        �� �Q             K.        chan_getSamplingFrequency                                                                                                               ����        �F ��             K.        chan_zero                                                                                                                               ����        �| �d             K.        chan_zeroAdvanced                                                                                                                       ����        Н ֗             K.        chan_isZeroComplete                                                                                                                     ����        ׌ �v             K.        chan_isMeasurementComplete                                                                                                              ����        �k ��             K.        chan_selfTest                                                                                                                           ����        �� �t             K.        chan_setAuxiliary                                                                                                                       ����        � ��             K.        chan_getAuxiliary                                                                                                                       ����        �z �             K.        meass_readMeasurement                                                                                                                   ����         B �             K.        meass_fetchMeasurement                                                                                                                  ����        	� O             K.        meass_readBufferMeasurement                                                                                                             ����        � y             K.        meass_fetchBufferMeasurement                                                                                                            ����        � &�             K.        meass_sendSoftwareTrigger                                                                                                               ����        '\ 0�             K.        meass_readMeasurementAux                                                                                                                ����        2k >             K.        meass_fetchMeasurementAux                                                                                                               ����        ?� I�         	    K.        meass_readBufferMeasurementAux                                                                                                          ����        K� X�         	    K.        meass_fetchBufferMeasurementAux                                                                                                         ����        Z� _�             K.        status_preset                                                                                                                           ����        `n pj             K.        status_checkCondition                                                                                                                   ����        t" ��             K.        status_catchEvent                                                                                                                       ����        � �u             K.        status_checkEvent                                                                                                                       ����        �x �%             K.        status_enableEventNotification                                                                                                          ����        �� �M             K.        status_disableEventNotification                                                                                                         ����        �� ��             K.        status_driverOpenState                                                                                                                  ����        ъ ײ             K.        status_registerWindowMessage                                                                                                            ����        ؞ �b             K.        service_getDetectorTemperature                                                                                                          ����        �W �             K.        service_startSimulation                                                                                                                 ����        � ��             K.        service_setSimulationValues                                                                                                             ����        �� �<             K.        service_stopSimulation                                                                                                                  ����        ��  %             K.        errorCheckState                                                                                                                         ����         � �             K.        reset                                                                                                                                   ����        Z �             K.        self_test                                                                                                                               ����        � �             K.        error_query                                                                                                                             ����        �              K.        error_message                                                                                                                           ����          '�             K.        revision_query                                                                                                                          ����        (� .�             K.        GetSensorCount                                                                                                                          ����        /� 7`             K.        GetSensorInfo                                                                                                                           ����        8� ?=             K.        GetDeviceStatusZ5                                                                                                                       ����        ?� I             K.        GetDeviceInfoZ5                                                                                                                         ����        K( W�             K.        initZ5                                                                                                                                  ����        Z" _5             K.        close                                                                                                                                                                                                                              �Initialize                                                                           �Long Distance Setup                                                               ����Channels                                                                             �Abort                                                                                �Count                                                                                �Initiate                                                                             �Zero                                                                                 �Get Zeroing Complete State                                                           �Get Measurement Complete State                                                    ����Channel                                                                              �Measurement Mode                                                                  ����Timing                                                                               �Configure Exclude                                                                 ����Low-Level                                                                            �Set Timing Exclude Start                                                             �Get Timing Exclude Start                                                             �Set Timing Exclude Stop                                                              �Get Timing Exclude Stop                                                           ����Bandwidth                                                                            �Set Video Bandwidth                                                                  �Get Video Bandwidth                                                                  �Get Video Bandwidth List                                                          ����Averaging                                                                            �Configure Averaging Auto                                                             �Configure Averaging NS Ratio                                                         �Configure Averaging Manual                                                        ����Low-Level                                                                            �Set Auto Averaging State                                                             �Get Auto Averaging State                                                             �Set Auto Max Measuring Time                                                          �Get Auto Max Measuring Time                                                          �Set Auto Noise Signal Ratio                                                          �Get Auto Noise Signal Ratio                                                          �Set Auto Resolution                                                                  �Get Auto Resolution                                                                  �Set Auto Type                                                                        �Get Auto Type                                                                        �Set Averaging Count                                                                  �Get Averaging Count                                                                  �Set Averaging State                                                                  �Get Averaging State                                                                  �Set Timeslot                                                                         �Get Timeslot                                                                         �Set Terminal Control                                                                 �Get Terminal Control                                                                 �Reset                                                                             ����Range                                                                             ����Low-Level                                                                            �Set Auto Range State                                                                 �Get Auto Range State                                                                 �Set Crossover Level                                                                  �Get Crossover Level                                                                  �Set Range                                                                            �Get Range                                                                         ����Corrections                                                                          �Configure Corrections                                                                �Set Correction Frequency                                                             �Get Correction Frequency                                                             �Set Correction Frequency Step                                                        �Get Correction Frequency Step                                                        �Set Correction Frequency Spacing                                                     �Get Correction Frequency Spacing                                                  ����Offset                                                                               �Set Offset                                                                           �Get Offset                                                                           �Set Offset State                                                                     �Get Offset State                                                                  ����S-Parameter                                                                          �Set S-Parameter Device State                                                         �Get S-Parameter Device State                                                         �Set S-Parameter Device                                                               �Get S-Parameter Device                                                               �Get S-Parameter Device List                                                       ����Source Gamma Correction                                                              �Configure Source Gamma Corr                                                       ����Low-Level                                                                            �Set Source Gamma Magnitude                                                           �Get Source Gamma Magnitude                                                           �Set Source Gamma Phase                                                               �Get Source Gamma Phase                                                               �Set Source Gamma Corr State                                                          �Get Source Gamma Corr State                                                       ����Reflection Gamma Correction                                                          �Configure Reflection Gamma Corr                                                   ����Low-Level                                                                            �Set Reflection Gamma Magnitude                                                       �Get Reflection Gamma Magnitude                                                       �Set Reflection Gamma Phase                                                           �Get Reflection Gamma Phase                                                           �Set Reflection Gamma Uncertainty                                                     �Get Reflection Gamma Uncertainty                                                  ����Duty Cycle                                                                           �Configure Duty Cycle                                                              ����Low-Level                                                                            �Set Duty Cycle                                                                       �Get Duty Cycle                                                                       �Set Duty Cycle State                                                                 �Get Duty Cycle State                                                              ����ContAv                                                                               �Set ContAv Aperture                                                                  �Get ContAv Aperture                                                                  �Set ContAv Smoothing State                                                           �Get ContAv Smoothing State                                                        ����Buffered ContAv                                                                      �Set Buffered ContAv State                                                            �Get Buffered ContAv State                                                            �Set ContAv Buffer Size                                                               �Get ContAv Buffer Size                                                               �Get ContAv Buffer Count                                                              �Get ContAv Buffer Info                                                            ����BurstAv                                                                              �Set Burst Drop-Out Tolerance                                                         �Get Burst Drop-Out Tolerance                                                         �Set Burst Chopper State                                                              �Get Burst Chopper State                                                           ����Statistics                                                                           �Configure Statistics Timegate                                                        �Configure Statistics Scale                                                        ����Low-Level                                                                            �Set Statistics Offset Time                                                           �Get Statistics Offset Time                                                           �Set Statistics Time                                                                  �Get Statistics Time                                                                  �Set Statistics Mid Offset                                                            �Get Statistics Mid Offset                                                            �Set Statistics Mid Length                                                            �Get Statistics Mid Length                                                            �Set Statistics Scale Ref Level                                                       �Get Statistics Scale Ref Level                                                       �Set Statistics Scale Range                                                           �Get Statistics Scale Range                                                           �Set Statistics Scale Points                                                          �Get Statistics Scale Points                                                          �Get Statistics Scale Width                                                        ����Timeslot                                                                             �Configure Timeslot                                                                ����Low-Level                                                                            �Set Time Slot Count                                                                  �Get Time Slot Count                                                                  �Set Time Slot Width                                                                  �Get Time Slot Width                                                                  �Set Time Slot Mid Offset                                                             �Get Time Slot Mid Offset                                                             �Set Time Slot Mid Length                                                             �Get Time Slot Mid Length                                                             �Set Time Slot Chopper State                                                          �Get Time Slot Chopper State                                                       ����Scope                                                                                �Configure Scope                                                                      �Fast Zero                                                                         ����Low-Level                                                                            �Set Scope Averaging State                                                            �Get Scope Averaging State                                                            �Set Scope Average Count                                                              �Get Scope Average Count                                                              �Set Scope Terminal Control                                                           �Get Scope Terminal Control                                                           �Set Scope Offset Time                                                                �Get Scope Offset Time                                                                �Set Scope Points                                                                     �Get Scope Points                                                                     �Set Scope Realtime State                                                             �Get Scope Realtime State                                                             �Set Scope Time                                                                       �Get Scope Time                                                                       �Set Scope Auto Averaging State                                                       �Get Scope Auto Averaging State                                                       �Set Scope Auto Max Meas Time                                                         �Get Scope Auto Max Meas Time                                                         �Set Scope Auto NSR                                                                   �Get Scope Auto NSR                                                                   �Set Scope Auto Resolution                                                            �Get Scope Auto Resolution                                                            �Set Scope Auto Type                                                                  �Get Scope Auto Type                                                                  �Set Scope Equivalent Sampling                                                        �Get Scope Equivalent Sampling                                                     ����Pulse Analysis Measurement                                                           �Set Scope Measurements State                                                         �Get Scope Measurements State                                                         �Set Scope Measurements Algorithm                                                     �Get Scope Measurements Algorithm                                                     �Set Scope Measurements Level Thresholds                                              �Get Scope Measurements Level Thresholds                                              �Set Scope Measurements Time                                                          �Get Scope Measurements Time                                                          �Set Scope Measurements Offset Time                                                   �Get Scope Measurements Offset Time                                                   �Get Scope Measurements Pulse Times                                                   �Get Scope Measurements Pulse Transition                                              �Get Scope Measurements Pulse Power                                                   �Get Scope Measurements Pulse Levels                                                  �Get Scope Measurements Pulse Reference Levels                                        �Set Scope Measurement Equivalent Sampling                                            �Get Scope Measurement Equivalent Sampling                                            �Get Scope Measurement Sample Period                                               ����Trigger                                                                              �Configure Internal                                                                   �Configure External                                                                   �Immediate Trigger                                                                 ����Low-Level                                                                            �Set Trigger Auto Delay State                                                         �Get Trigger Auto Delay State                                                         �Set Auto Trigger State                                                               �Get Auto Trigger State                                                               �Set Trigger Count                                                                    �Get Trigger Count                                                                    �Set Trigger Delay                                                                    �Get Trigger Delay                                                                    �Set Trigger Holdoff                                                                  �Get Trigger Holdoff                                                                  �Set Trigger Hysteresis                                                               �Get Trigger Hysteresis                                                               �Set Trigger Level                                                                    �Get Trigger Level                                                                    �Set Trigger Slope                                                                    �Get Trigger Slope                                                                    �Set Trigger Source                                                                   �Get Trigger Source                                                                   �Set Dropout Time                                                                     �Get Dropout Time                                                                     �Set Trigger Master State                                                             �Get Trigger Master State                                                             �Set Trigger Synchronization State                                                    �Get Trigger Synchronization State                                                 ����Sensor Info                                                                          �Sensor Info                                                                          �Sensors Info Header                                                                  �Sensors Info Count                                                                   �Sensor Firmware Version Check                                                     ����System                                                                               �Set Status Update Time                                                               �Get Status Update Time                                                               �Set Result Update Time                                                               �Get Result Update Time                                                            ����Calibration                                                                          �Test                                                                                 �Get Test Deviation                                                                   �Get Test Reference                                                                   �Abort                                                                                �Initiate                                                                             �Set Initiate Continuous State                                                        �Get Initiate Continuous State                                                        �Reset                                                                                �Set Sampling Frequency                                                               �Get Sampling Frequency                                                               �Zero                                                                                 �Advanced Zero                                                                        �Get Zeroing Complete State                                                           �Get Measurement Complete State                                                       �Sensor Self Test                                                                     �Set Auxiliary Value                                                                  �Get Auxiliary Value                                                               ����Measurement                                                                          �Read Measurement                                                                     �Fetch Measurement                                                                    �Read Buffer Data                                                                     �Fetch Buffer Data                                                                    �Send Software Trigger                                                                �Read Measurement Aux                                                                 �Fetch Measurement Aux                                                                �Read Buffer Data Aux                                                                 �Fetch Buffer Data Aux                                                             ����Status                                                                               �Preset                                                                               �Check Condition                                                                      �Catch Event                                                                          �Check Event                                                                          �Enable Event Notification                                                            �Disable Event Notification                                                           �Get Driver Open State                                                             ����Window Message                                                                       �Register Window Message                                                           ����Service                                                                              �Get Detector Temperature                                                             �Start Simulation                                                                     �Set Simulation Values                                                                �Stop Simulation                                                                     kUtility Functions                                                                    �State Checking                                                                       �Reset                                                                                �Self-Test                                                                            �Error-Query                                                                          �Error Message                                                                        �Revision Query                                                                       �Get Sensor Count                                                                     �Get Sensor Info                                                                     
lNRP-Z5                                                                               �Get Device Status Z5                                                                 �Get Device Info Z5                                                                   �Initialize Z5                                                                        �Close                                                                           