s��        �\   e �,  0   �   ����                               age441x     Agilent EPM Series Power Meters               � � ��ViInt16  �  � ��ViInt32  � � ��ViReal64     � ��ViRsrc     	� 	��ViBoolean     	� 	��ViSession     � ��ViStatus     �  ViChar[]     � ��ViChar     � ��ViString     	�  ViInt16[]     	�  ViInt32[]     
�  	ViReal64[]     � 	 
ViBoolean[]  � � ��ViUInt16  d    This instrument module provides programming support for the Agilent EPM Series Power Meters. The module is divided into the following functions:

Functions/Classes:

(1) Initialize:
This function initializes the instrument and sets it to a default configuration.

(2) Application Functions: (Class)
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
    @    This class contains high-level, test and measurement routines.  These examples call other instrument driver functions to configure, start, and read from the instrument.

Functions/SubClasses:

(1) Power Measurement:
This function configures the channel, inits measurement and returns measured value in specified units.        This class of functions configures the instrument by setting acquisition and system configuration parameters.

Functions/SubClasses:

(1) General Device Setting: (Class)
This class contains the functions/subclasses which provides the general device setting.

(2) E-Series Sensors: (Class)
This class provides the special settings for E Series sensors.

(3) Non E-Series Sensors: (Class)
This class provides the special settings for non E Series sensors (usually 8480 Series);

(4) Memory: (Class)
This class provides memory setting.    f    This class of functions/subclasses configures the instrument by setting the general system parameters.

Functions/SubClasses:

(1) Input: (Class)
This class provides the instrument input(s) configuration.

(2) Calculate: (Class)
This class provides the insstrument calculation system setting.

(3) Measurement: (Class)
This class provides the measurement parameters configuration.

(4) Calibration: (Class)
This class provides the calibration configuration.

(5) Output: (Class)
This class provides the instrument outputs configuration.

(6) Trigger: (Class)
This class provides the trigger system configuration.    �    This class of functions configures the instrument insput(s).

Functions:

(1) Configure Input:
This function configures the parameters for selected input.

(2) Configure Channel Offset:
This function configures the input channel offset.

(3) Configure Averaging Auto:
This function configures all parameters necessary for auto averaging.

(4) Configure Averaging:
This function configures the input averaging manualy.

(5) Linearity Correction:
This function configures the type of linearity correction that will be applied to the channel sensors.

(6) Get Frequency Dependent Offset:
This function returns the frequency dependent offset currently
being applied.



    u    This class contains configuration Functions for calculation subsystem. This subsystem performs post acquisition data processing.

Functions:

(1) Configure Limits:
This function configures parameters of limits.

(2) Configure Math:
This function configures the measurement provided with instrument. The measurement can be set to the single chennel, channel ratio or channel difference.

(3) Get Math Expressions:
This function returns the arrays with available mathematical expressions.

(4) Configure Gain:
This functions configures display offset aplied to the value after any math operation.

(5) Reset Ref Value:
This function sets the actual value as reference value.

(6) Set Ref Value State:
This function enables/disables the using of reference value.

(7) Feed:
This function sets the input measurement mode to be fed to the specified input. (Only for E4416 or E4417).





     �    This class contains configuration functions for measurement subsystem. This subsystem performs data acquisition.

Functions:

(1) Configure Measurement:
This function configures the measurement.        This class contains configuration functions for calibration subsystem. 

Functions:

(1) Set TTL Calibration State:
This function enables and disables the rear panel TTL zero/cal inputs.

(2) Calibration Lockout:
This function enables/disables the zero/cal lockout facility.         This class contains configuration functions for output. 

Functions:

(1) Configure Recorder:
This function configures the recorder outputs.

(2) Recorder Measurement:
This function sets the measurement, that should be sent to the recorder output. (Only for E4416 or E4417).

(3) Reference Oscillator State:
This function enables/disables the POWER REF output.

(4) Output Trigger State:
This function enables/disables the output trigger state. (Only for E4416 or E4417).

(5) Configure TTL:
This function configures the TTL outputs.
        This class contains configuration functions for trigger system. 

Functions:

(1) Set Initiate Continuous State:
This function enables/disables the continuos trigger initiation.

(2) Configure Trigger:
This function configures the trigger system.

(3) Configure Channel A Trigger:
This function configures the parameters which can be set only for channel A. (only for E4416 or E4417)

(4) Trigger Event Count:
controls the path of the trigger subsystem in the upward traverse of the wait for trigger state. (only for E4416 or E4417)
    �    This class contains configuration functions available only for E-Series Sensors.

Functions:

(1) E Series Offset Table:
This function configures the offset table.

(2) E Series Configure Input:
This function configures the special parameters for E-Series sensors connected to input.

(3) E Series Configure Measurement:
This function configures the channel measurement for E series sensors. The expected value can be set.

(4) E9320 Video Averaging:
This function configures the video averaging.

(5) E9320 Sensor Parameters:
This function sets the parameters of E9320 sensor.

(6) E9320 Configure Trace:
This function configures the trace for E9320 sensor.

(7) E9320 Configure Gate:
This function configures the time-gated measurement parameters.




    �    This class contains configuration functions available only for Non E-Series Sensors.

Functions:

(1) Configure Duty Cycle:
This function configures the pulse power measurement feature of the power meter.

(2) Set Corrections:
This function configures the calibration corrections for selected channel.

(3) Set Calibration Factor:
This function sets the reference calibration factor of the specified channel.        This class contains function/subclasses for editing and review of the memory contents.

Functions:

(1) Memory Contents:
This function returns the name of tables (registers) stored into memory.

(2) Size Of Memory Block
This function returns the size of Table or Save/Recall Register defined by name.

(3) Calibration/Offset Tables: (Class)
This class provides the operation with calibration or offset tables stored in instrument memory.

(4) Save/Recall Register: (Class)
This class provides the operation with registers stored into memory.    �    This class contains functions specific for calibration frequency/frequency depended offset tables.

Functions:

(1) Active Table Values:
This function returns the contents of active table stored in memory.

(2) Active Table Information:
This function returns the name and numbers of points in currently selected table.

(3) Table Operation:
This function operates the sensor calibration/frequency dependent offset table.

(4) Define Calibration Table:
This function is used to enter data into the current selected sensor calibration table.

(5) Define Offset Table:
This function is used to enter data into the current selected frequency dependent offset table.
    �    This class contains functions specific for save/recall registry.

Functions:

(1) Register Map Name:
This function associate a name with a save/recall register
number.

(2) Register Count:
This function returns the number of registers that are available for save/recall.

(3) Load From Save/Recall Register:
This function loads the instrument configuration from Save/Recall Register.

(4) Save To Save/Recall Register:
This function stores the instrument configuration to the  Save/Recall Register.
    w    This class of Functions/SubClasses begins or terminates an acquisition. It also provides functions which allow the user to determine the current status of the instrument.

Functions/SubClasses:

(1) Calculate: (Class)
This class provides checking calculation information.

(2) Calibration: (Class)
This class provides calibration performing.

(3) E Series Sensors: (Class)
This class provides action for E Series Sensors.

(4) Memory: (Class)
This class provides the memory information checking.

(5) Trigger: (Class)
This class provides trigger operation.

(6) Status: (Class)
This class provides the status register operation .    7    This class of functions provides the calculation checking.

Functions:

(1) Get Limits Failure:
This function indicating whether there have been any limit failures for the specified window.

(2) Clear Fail Count:
This function clears the FCO (fail counter) of any limit
failures for the specified measurement.     �    This class of functions provides the calibration.

Functions:

(1) Calibration:
This function performs calibration and/or zeroing on selected channel and returns the result.    r    This class contains action  function for E Series Sensors.

Functions:

(1) E9320 Clear Peak Hold:
This function clears the peak hold value for a specified CALC block so that a new peak hold value can be set.

(2) E9320 Normal Path Zeroing:
This function provides a quick way of zeroing the NORMAL path of an E9320 series sensor. The average only path is unaffected. 
     �    This class provides function for memory checking.

Functions:

(1) Available Memory:
This function returns the amount of memory free for sensor calibration tables (8480 series sensors only) and frequency dependent offset tables.         This class contain function for trigger action.

Functions:

(1) Abort:
This function aborts the waiting for trigger on selected channel. 

(2) Initiate:
This function sets the power meter for a single trigger cycle.

(3) Trigger Immediate:
This function triggers immediate the channel.     �    This class contains function for status register operation.

Functions:

(1) Set Status Registers:
This function sets the instrument status registers.

(2) Get Status Register:
This function returns the instrument status registers state.    �    This class of functions transfers data from the instrument.

Functions/SubClasses:

(1) Fetch:
This function returns the last valid result of measurement.

(2) Read:
This function initiates the measurement and returns the measured value.

(3) Measure:
This function configures and initiates the channel measurement and returns the measured value.

(4) E Series Sensors: (Class)
This class contains function for data transfer, if E Series Sensor is connected.    &    This class contains function for data transfer, if E Series Sensor is connected.

Functions:

(1) E Series Measure:
This function configures and initiates the channel measurement for E-Series sensors and returns the measured value.

(2) E9320 Trace Data:
This function returns the trace data.    �    This class of functions provides lower level functions to communicate with the instrument, and change instrument parameters.

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

(8) Instrument Type:
This function returns the instrument type. The E4416, E4417, E4418 and E4419 instruments are supported.

(9) Get Sensor Type:
This function  returns the type of sensor connected to the selected input.

(10) Set Check Status:
This function sets the status checking.

(11) Get Check Status:
This function returns the status checking state.    3    This function performs the following initialization actions:

- Opens a session to the Default Resource Manager resource and a session to the specified device using the interface and address specified in the Resource_Name control.

- Performs an identification query on the Instrument.

- Resets the instrument to a known state.

- Sends initialization commands to the instrument that set any necessary programmatic variables such as Headers Off, Short Command form, and Data Transfer Binary to the state necessary for the operation of the instrument driver.

- Returns an Instrument Handle which is used to differentiate between different sessions of this instrument driver.

- Each time this function is invoked a Unique Session is opened.  It is possible to have more than one session open for the same resource.

    q    This control specifies the interface and address of the device that is to be initialized (Instrument Descriptor). The exact grammar to be used in this control is shown in the note below. 

Default Value:  "GPIB::1"

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
        This control specifies if an ID Query is sent to the instrument during the initialization procedure.

Valid Range:
VI_OFF (0) - Skip Query
VI_ON  (1) - Do Query (Default Value)

Notes:
   
(1) Under normal circumstances the ID Query ensures that the instrument initialized is the type supported by this driver. However circumstances may arise where it is undesirable to send an ID Query to the instrument.  In those cases; set this control to "Skip Query" and this function will initialize the selected interface, without doing an ID Query.

/**** DELETE THIS NOTE AND THE STATUS CODE IF SUPPORTED *****/
(2) If this instrument does not support an ID Query, and this control is set to "Do Query" then this function should return the Warning Code 0x3FFC0101 - VI_WARN_NSUP_ID_QUERY.
    2    This control specifies if the instrument is to be reset to its power-on settings during the initialization procedure.

Valid Range:
VI_OFF (0) - Don't Reset
VI_ON  (1) - Reset Device (Default Value)

Notes:

(1) If you do not want the instrument reset. Set this control to "Don't Reset" while initializing the instrument.

/**** DELETE THIS NOTE AND THE STATUS CODE IF SUPPORTED *****/
(2) If this instrument does not support a Reset, and this control is set to "Reset Device" then this function should return the Warning Code 0x3FFC0102 - VI_WARN_NSUP_RESET.
    7    This control returns an Instrument Handle that is used in all subsequent function calls to differentiate between different sessions of this instrument driver.

Notes:

(1) Each time this function is invoked a Unique Session is opened.  It is possible to have more than one session open for the same resource.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    7� =   �  �    Resource Name                     ; : �       ID Query                          >* =� �       Reset Device                      @d � � �  }    Instrument Handle                 A�#����  �    Status                             "GPIB::13"  ! Do Query VI_ON Skip Query VI_OFF  & Reset Device VI_ON Don't Reset VI_OFF    	           	           h    This function configures the channel, inits measurement and returns measured value in specified units.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0): A (Default)
AGE441X_CHANNEL_B (1): B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

    )    This contorl sets the power measurement units for a specified
measurement.

Valid Values:
AGE411X_UNIT_DBM (0) - dBm (Default Value)
AGE411X_UNIT_W   (1) - W

Notes:
(1) The ratio units are coupled with power unit as follows. Power Unit = dBm -> Ratio unit = dB
Power Unit = W -> Ration Unit = %     �    This control sets a lower limit for the measured values.

Valid Range:
-150 to +230 dBm
-180 to +200 dB

Default Value:
-90.0

Notes:
(1) The unit depends on measurement configuration. The value is set in active unit.
     �    This control sets an upper limit for the measured values.

Valid Range:
-150 to +230 dBm
-180 to +200 dB

Default Value:
90.0 

Notes:
(1) The unit depends on measurement configuration. The value is set in active unit.
     K    Returns limit fail state.
Limit fail - VI_TRUE
Signal in limit - VI_FALSE         Returns measured value.    I�#����  �    Status                            Oy#   �  �    Instrument Handle                 P - + � `    Channel                           P� - � � `    Unit                              R- � + �  `    Lower Limit                       S � � �  `    Upper Limit                       S� �� �       Limit Fail                        TI -� �       Value                              	                          (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B               &dBm AGE441X_UNIT_DBM W AGE441X_UNIT_W    -90.0    90.0    	            	           t    This function configures the input parameters.

Notes:
(1) The sensor has to be connected to the selected channel.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

     �    This control sets the frequency in Hz of the power to be measured since this frequency is not automatically determined.


Valid Range
1.000E+3 to 999.999E+9 Hz

Default Value
50.000E+6 Hz    H    This control slects the measurement speed on the selected channel.

Valid Values:
AGE441X_MEAS_NORMAL (0) - Normal (Default Value)
AGE441X_MEAS_DOUBLE (1) - Double
AGE441X_MEAS_FAST   (2) - Fast


Notes:
(1) FAST mode cannot be used over RS232 or RS422 serial interfaces.
(2) FAST mode is avaialable only for E Series Sensors.    W3#����  �    Status                            ](#   �  �    Instrument Handle                 ]� C $ � `    Channel                           ^� C � �       Frequency                         _r C� � `    Measurement Speed                  	                          (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B    50.0E+6               MNormal AGE441X_MEAS_NORMAL Double AGE441X_MEAS_DOUBLE Fast AGE441X_MEAS_FAST    6    This function configures the input channel offset.

    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control enables/disables a channel offset for the power
meter setup.

Valid Values
VI_FALSE (0) - Off (Default Value)
VI_TRUE  (1) - On

Notes:
(1) The value On is valid only if Measurement Speed (Configure Input function) isn't FAST.     t    This control sets a channel offset value for the power meter.

Valid Range
-100.0 to 100.0 dB

Default Value
0.0 %     �    This control selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

    b�#����  �    Status                            h�#   �  �    Instrument Handle                 iL C � �       Channel Offset State              jE C� �       Channel Offset                    j� C $ � `    Channel                            	               On VI_TRUE Off VI_FALSE    0               (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B    H    This function configures all parameters necessary for auto averaging.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     v    This parameter enables/disables he step detection.

Valid Values:
VI_OFF (0) - Off
VI_ON  (1) - On (Default Value)

     �    This control selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

    mf#����  �    Status                            s[#   �  �    Instrument Handle                 s� C � �       Step Detection                    ty C $ � `    Channel                            	              On VI_ON Off VI_OFF               (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B    1    This function configures the input averaging.

    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     W    This parameter defines the filter length.

Valid Range:
1 to 1024

Default Value:
4

     p    This parametr enables/disables the averaging.

Valid Values:
VI_OFF (0) - Off
VI_ON  (1) - On (Default Value)
     �    This control selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

    v�#����  �    Status                            |�#   �  �    Instrument Handle                 }^ C� �       Filter Length                     }� C � �       State                             ~5 C $ � `    Channel                            	               4   On VI_ON Off VI_OFF               (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B    �    This function configures the type of linearity correction that will be applied to the channel sensors.

Notes:
(1) This function is valid only if a sensor A type is connected.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control sets the type of linearity correction that will be
applied to the channel sensors being used.

Valid Values:
AGE441X_LINCORR_ATYP (0) - A Type (Default Value)
AGE441X_LINCORR_DTYP (1) - D Type     �    This control selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

    �?#����  �    Status                            �4#   �  �    Instrument Handle                 �� C � �      Type                              �� C $ � `    Channel                            	                          8A Type AGE441X_LINCORR_ATYP D Type AGE441X_LINCORR_DTYP               (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B    P    This function returns the frequency dependent offset currently
being applied.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     O    This control returns the frequency dependent offset currently
being applied.
     �    This control selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

    �J#����  �    Status                            �?#   �  �    Instrument Handle                 �� D� �       Offset                            �5 C $ � `    Channel                            	               	                      (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B    �    This function configures parameters of limits. This limits are used for TTL logic level output on the rear panel TTL Input/Output connector.

Notes:
(1) For limits failure checking see function Get Limits Failure.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    1    This control selects the measurement by number.

Valid Range:
1 to 4

Default Value: 1

Notes:
(1) The value 2 is available only for dual channels instrument (E4417A or E4419B).
(2) The value 3 is available only for instruments E4416A or E4417A.
(3) The value 4 is available only for instrument E4417A.
     �    This control sets a lower limit for the measured values.

Valid Range:
-150 to +230 dBm
-180 to +200 dB

Default Value:
-90.0

Notes:
(1) The unit depends on measurement configuration. The value is set in active unit.
     �    This control enables/disables the test limits for the specified measurement.

Valid Values:
VI_FALSE (0) - Off
VI_TRUE  (1) - On  (Default Value)
     �    This control sets an upper limit for the measured values.

Valid Range:
-150 to +230 dBm
-180 to +200 dB

Default Value:
90.0 

Notes:
(1) The unit depends on measurement configuration. The value is set in active unit.
    -    This control determines when the FCO (fail counter) is cleared of any limit failures. 

Valid Values:
AGE441X_STATE_OFF  (0) - Off
AGE441X_STATE_ON   (1) - On (Default Value)
AGE441X_STATE_ONCE (2) - Once

Notes:
(1) On - the FCO is set to 0 each time a measurement is:
          - Initiated using Initiate function
          - Measured using Measure function
          - Read using Read function
(2) Off - FCO is not cleared by the above commands.
(3) Once - FCO is cleared only after the first initialization then starts accumulating any limit failures.    � #����  �    Status                            �#   �  �    Instrument Handle                 �� G  �      Measurement                       �� � � �  `    Lower Limit                       �� G � �       State                             �m �� �  `    Upper Limit                       �R G� � `    Auto Clear                         	               ����                 -90.0    On VI_TRUE Off VI_FALSE    90.0              BOff AGE441X_STATE_OFF On AGE441X_STATE_ON ONCE AGE441X_STATE_ONCE    �    This function sets the specified measurement to a single
channel, difference or ratio measurement. The result of this calculation is made available as a measured value and can be queried with function Fetch.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    0    This control selects the measurement by number.

Valid Range:
1 to 4

Default Value: 1

Notes:
(1) The value 2 is available only for dual channels instrument (E4417A or E4419B).
(2) The value 3 is available only for instruments E4416A or E4417A.
(3) The value 4 is available only for instrument E4417A.    '    This control selects the channel which should be used as the first operand for specified mathematical operation.

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

    H    This control selects the mathematical operation to be performed in the specified calculate block.

Valid Values:

AGE441X_MATH_VALUE (0) - Value of Sensor 1 (Default Value)
AGE441X_MATH_DIFF  (1) - Difference
AGE441X_MATH_RATIO (2) - Ratio

Notes:
(1) Value of Sensor 1 - The calculate block outputs the measured value of sensor specified by Sensor 1 parameter.

(2) Difference - The calculate block outputs the difference between the measured values of Sensor 1 and Sensor 2.

(3) Ratio - The calculate block outputs the ratio between the measured values of Sensor 1 and Sensor 2.
    &    This control selects the channel which should be used as the second operand for specified mathematical operation.

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)    �x#����  �    Status                            �m#   �  �    Instrument Handle                 � G  �      Measurement                       �D G } � `    Sensor 1                          �s G � � x    Operation                         �� G{ � `    Sensor 2                           	               ����                            8Channel A AGE441X_CHANNEL_A Channel B AGE441X_CHANNEL_B               [Value of Sensor 1 AGE441X_MATH_VALUE Difference AGE441X_MATH_DIFF Ratio AGE441X_MATH_RATIO               8Channel A AGE441X_CHANNEL_A Channel B AGE441X_CHANNEL_B    @    This function returns the available mathematical expressions.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    0    This control selects the measurement by number.

Valid Range:
1 to 4

Default Value: 1

Notes:
(1) The value 2 is available only for dual channels instrument (E4417A or E4419B).
(2) The value 3 is available only for instruments E4416A or E4417A.
(3) The value 4 is available only for instrument E4417A.         Determines the array size.
     �    Returns the array of first parameter of available math expressions.

Returned Values:
AGE441X_CHANNEL_A (0) 
AGE441X_CHANNEL_B (1)     �    Returns the array of the second parameter of available math expressions.

Returned Values:
AGE441X_CHANNEL_A (0) 
AGE441X_CHANNEL_B (1)

Notes:
(1) This parameter has no effect, if Expression is AGE441X_MATH_VALUE.     �    Returns the array of expressions.

Valid Values:
AGE441X_MATH_VALUE (0) - Single sensor value
AGE441X_MATH_DIFF  (1) - Sensor difference
AGE441X_MATH_RATIO (2) - Sensor ratio     @    Returns the count of expressions returned from the instrument.    ��#����  �    Status                            ��#   �  �    Instrument Handle                 �* D  �      Measurement                       �b D � �       Array Size                        �� | � �       Sensor 1                          � |� �       Sensor 2                          �� | �       Expression                        �� �� �       Returned Values                    	               ����                 0    	            	            	            	            �    This function configures the display offset. The display offset is applied the measurement signal after any math calculation.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    0    This control selects the measurement by number.

Valid Range:
1 to 4

Default Value: 1

Notes:
(1) The value 2 is available only for dual channels instrument (E4417A or E4419B).
(2) The value 3 is available only for instruments E4416A or E4417A.
(3) The value 4 is available only for instrument E4417A.     x    This control enables/disables the display offset.

Valid Values:
VI_FALSE (0) - Off (Default Value)
VI_TRUE  (1) - On
     �    This control sets the a value for the display offset on the
specified window/measurement. The display offset is applied to the measurement signal after any math calculation.

Valid Range:
-100.000 to 100.000 dB

Default Value:
0.0 dB
    �#����  �    Status                            �t#   �  �    Instrument Handle                 � G  �      Measurement                       �K G � �       State                             �� G� �       Value                              	               ����                 On VI_TRUE Off VI_FALSE    0.0    �    This function sets the current measured value as the reference value.

Notes:
(1) The sensor has to be connected to the channel.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    0    This control selects the measurement by number.

Valid Range:
1 to 4

Default Value: 1

Notes:
(1) The value 2 is available only for dual channels instrument (E4417A or E4419B).
(2) The value 3 is available only for instruments E4416A or E4417A.
(3) The value 4 is available only for instrument E4417A.    ˛#����  �    Status                            ѐ#   �  �    Instrument Handle                 �/ G  �      Measurement                        	               ����                 �    This function determines whether a reference value is used. If this function is called with ON, all results of the calculate block are divided by the reference value.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    0    This control selects the measurement by number.

Valid Range:
1 to 4

Default Value: 1

Notes:
(1) The value 2 is available only for dual channels instrument (E4417A or E4419B).
(2) The value 3 is available only for instruments E4416A or E4417A.
(3) The value 4 is available only for instrument E4417A.     |    This control defines whether reference value is used.

Valid Values:
VI_FALSE (0) - Off (Default Value)
VI_TRUE  (1) - On
    ��#����  �    Status                            ��#   �  �    Instrument Handle                 �r G  �      Measurement                       ܪ G �       State                              	               ����                 On VI_TRUE Off VI_FALSE   >    This function sets the input measurement mode to be fed to the specified input on the CALC block. It is applied to the measurement after the Configure Math function and has been used to specify which channel the feed will be taken from.


Notes:
(1) This function is available only for instruments E4416A and E4417A.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    0    This control selects the measurement by number.

Valid Range:
1 to 4

Default Value: 1

Notes:
(1) The value 2 is available only for dual channels instrument (E4417A or E4419B).
(2) The value 3 is available only for instruments E4416A or E4417A.
(3) The value 4 is available only for instrument E4417A.     Q    This control selects the feed by number.

Valid Range:
1 to 2

Default Value: 1    '    This control sets the type to be fed to the specific input.

Valid Values:
AGE441X_FEED_AVER (0) - Average (Deafult Value)
AGE441X_FEED_PTAV (1) - Peak To Average
AGE441X_FEED_PEAK (2) - Peak

Notes:
(1) The modes Peak To Average and Peak are available only for E9320 sensors in mode Normal.

    ߊ#����  �    Status                            �#   �  �    Instrument Handle                 � G  �      Measurement                       �V G � �      Feed                              � G� � `    Type                               	               ����                 ����                           SAverage AGE441X_FEED_AVER Peak To Average AGE441X_FEED_PTAV Peak AGE441X_FEED_PEAK    -    This function configures the measurement.

    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
    0    This control selects the measurement by number.

Valid Range:
1 to 4

Default Value: 1

Notes:
(1) The value 2 is available only for dual channels instrument (E4417A or E4419B).
(2) The value 3 is available only for instruments E4416A or E4417A.
(3) The value 4 is available only for instrument E4417A.    M    This control selects the measuring function.

Valid Values:
AGE441X_MEAS_SINGLE     (0) - Single (Default Value)
AGE441X_MEAS_SINGLE_REL (1) - Single Relative
AGE441X_MEAS_DIFF       (2) - Difference
AGE441X_MEAS_DIFF_REL   (3) - Difference Relative
AGE441X_MEAS_RATIO      (4) - Ratio
AGE441X_MEAS_RATIO_REL  (5) - Ratio Relative
     �    This control selects the channel which should be used as the first operand for specified mathematical operation.

Valid Range:
AGE441X_CHANNEL_A (0) - Channel A (Default Value)
AGE441X_CHANNEL_B (1) - Channel B    1    This control selects the channel which should be used as the second operand for specified mathematical operation.

Valid Range:
AGE441X_CHANNEL_A (0) - Channel A (Default Value)
AGE441X_CHANNEL_B (1) - Channel B

Notes:
(1) This parameter has no effect for Measuring function Single and Single Relative.    �    This control sets the resolution of auto averaging.

Valid Ranges:
1 to 4

Default Value:

3


Notes:
(1) When the measurement result is linear this parameter represents the number of significant digits. When the measurement result is logarithmic 1 to 4 represents a
resolution of 1, 0.1, 0.01 and 0.001 respectively.
(2) If the Auto averaging is set Off (see function Configure Averaging Auto), this parameter has no effect.    )    This contorl sets the power measurement units for a specified
measurement.

Valid Values:
AGE411X_UNIT_DBM (0) - dBm (Default Value)
AGE411X_UNIT_W   (1) - W

Notes:
(1) The ratio units are coupled with power unit as follows. Power Unit = dBm -> Ratio unit = dB
Power Unit = W -> Ration Unit = %    �#����  �    Status                            �#   �  �    Instrument Handle                 �Q C 5 �      Measurement                       � C � � `    Measuring Function                �� C  � `    Sensor 1                          �� C� � `    Sensor 2                          �� � � �      Resolution                        �� �  � `    Unit                               	               ����                           �Single AGE441X_MEAS_SINGLE Single Relative AGE441X_MEAS_SINGLE_REL Difference AGE441X_MEAS_DIFF Difference Relative AGE441X_MEAS_DIFF_REL Ratio AGE441X_MEAS_RATIO Ratio Relative AGE441X_MEAS_RATIO_REL               8Channel A AGE441X_CHANNEL_A Channel B AGE441X_CHANNEL_B               8Channel A AGE441X_CHANNEL_A Channel B AGE441X_CHANNEL_B    ����                            &dBm AGE441X_UNIT_DBM W AGE441X_UNIT_W    �    This function enables and disables the rear panel TTL zero/cal inputs. The TTL inputs provide an external means to initiate ZERO and CAL cycles.


Notes:
(1) The TTL inputs are channel indepented.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control enables/disables the rear panel TTL zero/cal inputs.

Valid Values:
VI_FALSE (0) - Off (Default Value)
VI_TRUE  (1) - On
    �'#����  �    Status                           #   �  �    Instrument Handle                � L �       State                              	               On VI_TRUE Off VI_FALSE    �    This function enables/disables the zero/cal lockout facility. With the lockout facility enabled the power meter is prevented from making measurements until the sensor connected has been zeroed and calibrated.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control enables/disables the zero/cal lockout facility. 

Valid Values:
VI_FALSE (0) - Off (Default Value)
VI_TRUE  (1) - On
     �    This control selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

   �#����  �    Status                           �#   �  �    Instrument Handle                � C �       State                             C $ � `    Channel                            	               On VI_TRUE Off VI_FALSE               (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B    3    This function configures the recorder outputs.


    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control selects the recorder output

Valid Range:
1 to 2

Default Value:
1

Notes:
(1) Value 2 is valid only for dual channel instruments (E4417A or E4419B)

    *    This control sets the minimum scaling value for the specified recorder output. The units used are dependent on the units currently set for recorder source (Calc block).


Valid Ranges:

-150.0 to +20.0 dBm
1.0 aW to 100.0 mW
0.0 to 100.0 %

Default Value
-150.0 dBm

Notes:
(1) No range checking.        This control sets the maximum scaling value for the specified recorder output. The units used are dependent on the units currently set for recorder source.


Valid Ranges:

-150.0 to +20.0 dBm
1.0 aW to 100.0 mW
0.0 to 100.0 %

Default Value
+20.0 dBm

Notes:
(1) No range checking.     �    This control enables/disables the specified recorder output.

Valid Values:
VI_FALSE (0) - Off (Default Value)
VI_TRUE  (1) - On   h#����  �    Status                           ]#   �  �    Instrument Handle                � C $ � `    Recorder                         � C � �       Limit Lower                      � C� �       Limit Upper                        C � �       State                              	               1    -150.0    20.0    On VI_TRUE Off VI_FALSE    �    This function sets the measurement which is sent to the recorder output.


Notes:
(1) This function is available for EPM-P instruments (E4416A and E4417A).

    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control selects the recorder output

Valid Range:
1 to 2

Default Value:
1

Notes:
(1) Value 2 is valid only for dual channel instruments (E4417A or E4419B)

    0    This control selects the measurement by number.

Valid Range:
1 to 4

Default Value: 1

Notes:
(1) The value 2 is available only for dual channels instrument (E4417A or E4419B).
(2) The value 3 is available only for instruments E4416A or E4417A.
(3) The value 4 is available only for instrument E4417A.   �#����  �    Status                           !�#   �  �    Instrument Handle                "F C $ � `    Recorder                         "� C � �      Measurement                        	               1    ����                 9    This function enables/disables the POWER REF output.


    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     v    This control sets the state of reference output.

Valid Values:
VI_FALSE (0) - Off (Default Value)
VI_TRUE  (1) - On   %l#����  �    Status                           +a#   �  �    Instrument Handle                , C
 �       State                              	               On VI_TRUE Off VI_FALSE    .    This function configures the TTL outputs.


    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     N    This control selects the TTL output

Valid Range:
1 to 2

Default Value:
1

     �    This control enables/disables the rear panel Upper and
Lower window TTL Outputs.

Valid Values:
VI_FALSE (0) - Off (Default Value)
VI_TRUE  (1) - On     �    This control indicates which TTL state is active for a limit fail.

Valid Values:
AGE441X_TTL_LOW  (0) - Low
AGE441X_TTL_HIGH (1) - High (Default Value)

    �    This control selects the measurement by number.

Valid Range:
1 to 4

Default Value: 1

Notes:
(1) The value 2 is available only for dual channels instrument (E4417A or E4419B).
(2) The value 3 is available only for instruments E4416A or E4417A.
(3) The value 4 is available only for instrument E4417A.
(4) This parameter has effect only for EPM-P Series instrument (E4416A and E4417A). For E4418B and E4419B the TTL Output 1 agrees with measurement 1 and TTL Output 2 agrees with measurement 2 .    �    This control indicates which limit test drives a given TTL output.

Valid Values:
AGE441X_TTL_LOW  (0) - Low
AGE441X_TTL_HIGH (1) - High (Default Value)
AGE441X_TTL_BOTH (2) - Both 


Notes:
(1) Low - TTL Output asserted indicates a lower limit fail on the appropriate measurement.
(2) High - TTL Output asserted indicates an upper limit fail on the appropriatemeasurement.
(3) Both - TTL Output asserted indicates that either the lower or upper limit failed on the appropriate measurement.

   -#����  �    Status                           3t#   �  �    Instrument Handle                4 C $ � `    TTL Output                       4j C � �       State                            5 C� � `    Active Mode                      5� � � �      Measurement                      7� �� � `    Limit                              	               1    On VI_TRUE Off VI_FALSE              *Low AGE441X_TTL_LOW High AGE441X_TTL_HIGH    ����                           CLower AGE441X_TTL_LOW Upper AGE441X_TTL_HIGH Both AGE441X_TTL_BOTH    F    This function sets the power meter for continuous trigger cycles.


    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

     �    This control sets the initate continuous trigger state.

Valid Values:
VI_FALSE (0) - Off (Default Value)
VI_TRUE  (1) - On

Notes:
(1) State ON is valid only for a sensor connected to the input.   </#����  �    Status                           B$#   �  �    Instrument Handle                B� C $ � `    Channel                          C� C � �       State                              	                          (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B    On VI_TRUE Off VI_FALSE    0    This function configures the trigger system.

    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

     �    This control determines whether or not there is a settling-time
delay before a measurement is made.

Valid Values:
VI_FALSE (0) - Off (Default Value)
VI_TRUE  (1) - On
    �    This control sets the trigger source.

Valid Values:
AGE441X_TRIG_IMM  (0) - Immediate (Default Value)
AGE441X_TRIG_BUS  (1) - Bus
AGE441X_TRIG_HOLD (2) - Hold
AGE441X_TRIG_EXT  (3) - External
AGE441X_TRIG_INTA (4) - Internal A
AGE441X_TRIG_INTB (5) - Internal B


Notes:
(1) Immediate - the trigger system is always true.
(2) Bus - the trigger can be initiate using command *TRG or TRIG:IMM (Initite function)
(3) Hold - the trigger can be initiate using command TRIG:IMM (Initiate function) only.
(4) External - the trigger source is the trigger input in the back panel. (Available only for E4416A or E4417A)
(5) Internal A - the channel A is set as trigger source.  (Available only for E4416A or E4417A)
(6) Internal B - the channel B is set as trigger source.  (Available only for E4417A)
(7) The values External, Internal A and Internal B are valid only if measurement speed isn't Fast and Sensor mode isn't set to Average.


   E�#����  �    Status                           K�#   �  �    Instrument Handle                Ly C $ � `    Channel                          M^ C � �       Delay Auto State                 N C� � `    Source                             	                          (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B    On VI_TRUE Off VI_FALSE               �Immediate AGE441X_TRIG_IMM Bus AGE441X_TRIG_BUS Hold AGE441X_TRIG_HOLD External AGE441X_TRIG_EXT Internal A AGE441X_TRIG_INTA Internal B AGE441X_TRIG_INTB    �    This function configures the parameters which can be set only for channel A.


Notes:
(1) This function is available only for instruments E4416A or E4417A.
(2) The measurement speed hasn't to be fast.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control sets the delay between the recognition of a trigger event and the start of a measurement.

Valid Range:
-1.000 to 1.000

Default Value:
0.000     i    This control sets the trigger holdoff in seconds.

Valid Range:
1.0E-6 to 4.0E-1

Default Value:
1.0E-6     �    This control determines how far a signal must fall/rise before
a rising or falling edge can be detected.


Valid Range:
0.00 to 3.00 dB

Default Value:
0.00 dB     �    This control sets the power level at which a trigger event is recognized.

Valid Range:
-40.0 to 20.0 dBm

Default Value:
0.0 dBm     �    This control enables/disables automatic setting of the trigger level.

Valid Values:
AGE441X_STATE_OFF  (0) - Off
AGE441X_STATE_ON   (1) - On (Default Value)
AGE441X_STATE_ONCE (2) - Once     �    Thsi control specifies whether a trigger event is recognized on the rising or falling edge of a signal.

Valid Values:
AGE441X_SLOPE_NEG (0) - Falling
AGE441X_SLOPE_POS (1) - Rising (Default Value)
   T�#����  �    Status                           Z�#   �  �    Instrument Handle                [: C < �       Delay                            [� C � �       Holdoff                          \O C� �       Hysteresis                       \� � < �       Power Level                      ]� � � � `    Level Auto                       ^H �� � `    Slope                              	               0.000    1.0E-6    0.00    0.0              BOff AGE441X_STATE_OFF On AGE441X_STATE_ON Once AGE441X_STATE_ONCE              3Falling AGE441X_SLOPE_NEG Rising AGE441X_SLOPE_POS   �    This function controls the path of the trigger subsystem in the upward traverse of the wait for trigger state. COUNt loops through the event detection/measurement cycle are performed. That is, COUNt measurements are performed in response to COUNt trigger events.

Notes:
(1) This function is available only for instruments E4416A or E4417A.
(2) Trigger source has to be set to Immediatelly, Bus or Hold (Configure Trigger function)
(3) Measurement speed has to be Fast (age441x_configureInput function)    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

     u    This control sets the number of triggered events for the measurement cycle. 

Valid Range:
1 to 50

Defaut Value:
1   c�#����  �    Status                           iz#   �  �    Instrument Handle                j C $ � `    Channel                          j� C � �       Count                              	                          (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B    1    m    This function configures the offset table.

Notes:
(1) This function is available only for E Series Sensor
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control activates and deactivates the using of selected frequency-dependent offset table.

Valid Values
VI_FALSE (0) - Off (Default Value)
VI_TRUE  (1) - On     �    This control defines the name of offset table to be selected.

Valid Values:
any existing name of table

Default Value:
"table_1"     �    This control selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

   m#����  �    Status                           s#   �  �    Instrument Handle                s� C � �       Table State                      tQ C� �  x    Table Name                       t� C $ � `    Channel                            	               On VI_TRUE Off VI_FALSE    
"table_1"               (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B    �    This function configures the special parameters for E-Series sensors connected to input.

Notes:
(1) This function is available only if E-Series sensor is connected.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control selects one of two power ranges.

Valid Values:
AGE441_POWRANG_LOW (0) - Lower
AGE441_POWRANG_UPP (1) - Upper (Default Value)

Notes:
(1) This parameter has no effect, if Autoranging is set On.    #    This contorl enables/disables autoranging. When autoranging is ON, the power meter selects the best measuring range for the measurement. When autoranging is set to OFF, the power meter remains in the currently set range.

Valid Values:
VI_FALSE (0) - Off
VI_TRUE  (1) - On (Default Value)
     �    This control selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

   w�#����  �    Status                           }�#   �  �    Instrument Handle                ~} C� � `    Power Range                      U C � �       Autoranging                      �� C 5 � `    Channel                            	                         4Lower AGE441X_POWRANG_LOW Upper AGE441X_POWRANG_UPP   On VI_TRUE Off VI_FALSE               (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B    j    This function configures the channel measurement for E series sensors. The expected value can be set.


    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
    0    This control selects the measurement by number.

Valid Range:
1 to 4

Default Value: 1

Notes:
(1) The value 2 is available only for dual channels instrument (E4417A or E4419B).
(2) The value 3 is available only for instruments E4416A or E4417A.
(3) The value 4 is available only for instrument E4417A.    M    This control selects the measuring function.

Valid Values:
AGE441X_MEAS_SINGLE     (0) - Single (Default Value)
AGE441X_MEAS_SINGLE_REL (1) - Single Relative
AGE441X_MEAS_DIFF       (2) - Difference
AGE441X_MEAS_DIFF_REL   (3) - Difference Relative
AGE441X_MEAS_RATIO      (4) - Ratio
AGE441X_MEAS_RATIO_REL  (5) - Ratio Relative
     �    This control selects the channel which should be used as the first operand for specified mathematical operation.

Valid Range:
1 to max available channels

Default Value:
1        This control selects the channel which should be used as the second operand for specified mathematical operation.

Valid Range:
1 to max available channels

Default Value:
1

Notes:
(1) This parameter has no effect for Measuring function Single and Single Relative.    �    This control sets the resolution of auto averaging.

Valid Ranges:
1 to 4

Default Value:

3


Notes:
(1) When the measurement result is linear this parameter represents the number of significant digits. When the measurement result is logarithmic 1 to 4 represents a
resolution of 1, 0.1, 0.01 and 0.001 respectively.
(2) If the Auto averaging is set Off (see function Configure Averaging Auto), this parameter has no effect.    )    This contorl sets the power measurement units for a specified
measurement.

Valid Values:
AGE411X_UNIT_DBM (0) - dBm (Default Value)
AGE411X_UNIT_W   (1) - W

Notes:
(1) The ratio units are coupled with power unit as follows. Power Unit = dBm -> Ratio unit = dB
Power Unit = W -> Ration Unit = %     <    This control sets the value for the expected power level.
   ��#����  �    Status                           �z#   �  �    Instrument Handle                � C 5 �      Measurement                      �R C � � `    Measuring Function               �� C  �      Sensor 1                         �] C� �      Sensor 2                         �p � � �      Resolution                       �# �� � `    Unit                             �T �  �       Expected Value                     	               ����                            �Single AGE441X_MEAS_SINGLE Single Relative AGE441X_MEAS_SINGLE_REL Difference AGE441X_MEAS_DIFF Difference Relative AGE441X_MEAS_DIFF_REL Ratio AGE441X_MEAS_RATIO Ratio Relative AGE441X_MEAS_RATIO_REL    ����                 ����                 ����                            &dBm AGE441X_UNIT_DBM W AGE441X_UNIT_W    0    m    This function configures the video averaging.

Notes:
(1) This function is available only for sensor E9320
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This parameter selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

     �    This parameter defines the video filter length.

Valid Range:
1 to 256

Default Value:
4

Notes:
(1) This value has effect only if Auto Averaging is set Off.     z    This parametr enables/disables the video averaging.

Valid Values:
VI_FALSE (0) - Off
VI_TRUE  (1) - On (Default Value)
   �h#����  �    Status                           �]#   �  �    Instrument Handle                �� C . � `    Channel                          �� C� �       Filter Length                    �� C � �       State                              	                          (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B    4   On VI_ON Off VI_OFF    s    This function sets the parameters of E9320 sensor.

Notes:
(1) This function is available only for sensor E9320.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This parameter selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

     �    This control sets the sensor mode.

Valid Values:
AGE441X_E9320_MODE_NORM (0) - Normal (Default Value)
AGE441X_E9320_MODE_AVER (1) - Average     �    This control sets the sensor bandwidth.

Valid Values:
AGE441X_BAND_OFF  (0) - Off
AGE441X_BAND_LOW  (1) - Low
AGE441X_BAND_MED  (2) - Medium 
AGE441X_BAND_HIGH (3) - High (Default Value)


Notes:
(1) This contol is valid only for Normal mode.   ��#����  �    Status                           ��#   �  �    Instrument Handle                �� C . � `    Channel                          �p C � � `    Mode                             � C� � `    Bandwidth                          	                          (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B               ?Normal AGE441X_E9320_MODE_NORM Average AGE441X_E9320_MODE_AVER              YOff AGE441X_BAND_OFF Low AGE441X_BAND_LOW Medium AGE441X_BAND_MED High AGE441X_BAND_HIGH    �    This function configures the trace for E9320 sensor.


Notes:
(1) This function is available only for sensor E9320.
(2) This function sets the sensor to Normal mode.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This parameter selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

     �    This control sets the delay between the delayed trigger point and the start of the trace

Valid Range:
-1.0 to 1.0 s 

Default Value:
0.0 s


     n    This control sets sets the duration of the trace.

Valid Range:
10.0E-6 to 1.0 s

Default Value:
100.0E-6 s
     �    This control sets the units for the trace for the specified channel.

Valid Values:
AGE441X_UNIT_DBM (0) - dBm (Default Value)
AGE441X_UNIT_W   (1) - W
     �    This control enables/disables trace capture for the specified channel.

Valid Values:
VI_FALSE (0) - Off (Default Value)
VI_TRUE  (1) - On

Notes:
(1) If Off, no other parameter has effect.
     u    This control sets the lower scale limit of the trace.

Valid Range:
-150.0 to 230.0 dBm 

Default Value:
-50.0 dBm
     u    This control sets the upper scale limit of the trace.

Valid Range:
-150.0 to 230.0 dBm 

Default Value:
-50.0 dBm
   ��#����  �    Status                           ��#   �  �    Instrument Handle                �M C . � `    Channel                          �4 � � �       Trace Offset Time                �� �� �       Trace Time                       �B �� � `    Trace Unit                       �� � _ �       Trace State                      �� � . �       Trace Low Limit                  �) � � �       Trace Upper Limit                  	                          (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B    0.0    	100.0E-6               &dBm AGE441X_UNIT_DBM W AGE441X_UNIT_W    On VI_TRUE Off VI_FALSE    -50.0    20.0        This function configures the time-gated measurement parameters.

Notes:
(1) This function is available only for sensor E9320
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This parameter selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

     �    This control sets sets the delay between the delayed trigger point and the start of the time-gated period (the offset time).

Valid Range:
-1.0 to 1.0 s

Default Value:
0.0 s


Notes:
(1) This parameter is available only for Normal Mode.     �    This control sets the length of the time-gated period (time-gate length) for time-gated measurements.

Valid Range:
0.0 to 1.0 s

Default Value:
1.0 s



Notes:
(1) This parameter is available only for Normal Mode.     R    This control selects the measurement gate

Valid Range:
1 to 4

Default Value: 1   ��#����  �    Status                           ��#   �  �    Instrument Handle                �Z C . � `    Channel                          �A C �       Offset Time                      �8 C� �       Time                             � C � �      Gate                               	                          (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B    0.0    1.0    ����                    This function enables/disables the output trigger state.

Notes:
(1) This function is available only for E4416 or E4417 instrument.
(2) This function is avaialable only for E9320 Series Sensor.
(3) The trigger has to set to properly trigger mode. Free run mode isn't available.

    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     q    This control sets the output trigger state.

Valid Values:
VI_FALSE (0) - Off (Default Value)
VI_TRUE  (1) - On   �=#����  �    Status                           �2#   �  �    Instrument Handle                �� C
 �       State                              	               On VI_TRUE Off VI_FALSE    �    This function configures the pulse power measurement feature of the power meter.

Notes:
(1) This function isn't valid for E Series sensors.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
         This control sets the duty cycle for the pulse power
measurement feature.

Valid Range
0.001 to 99.999 %

Default Value
1.0 %     �    This control enables/disables the pulse power
measurement feature.

Valid Values
VI_FALSE (0) - Off (Default Value)
VI_TRUE  (1) - On
     �    This control selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

   Ϋ#����  �    Status                           Ԡ#   �  �    Instrument Handle                �@ C� �       Duty Cycle                       �� C � �       Duty Cycle State                 �W C $ � `    Channel                            	               1.0    On VI_TRUE Off VI_FALSE               (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B    �    This function configures the calibration corrections for selected channel. The calibration factor or calibration table can be selected.

Notes:
(1) This function isn't available for E-Series Sensor.


    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
        This control sets the gain correction value for the calibration factor. The power meter corrects every measurement by this factor to compensate for the gain.

Valid Range
1.0 to 150.0 %

Default Value
100.0 %

Notes:
(1) This parameter has effect only if table state is set Off.
     �    This control activates and deactivates the using of selected calibration table.

Valid Values
VI_FALSE (0) - Off (Default Value)
VI_TRUE  (1) - On     �    This control defines the name of calibration table to be selected.

Valid Values:
any existing name of table

Default Value:
"table_1"     �    This control selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

   ف#����  �    Status                           �v#   �  �    Instrument Handle                � �� �       Calibration Factor Gain          �7 C � �       Table State                      �� C� �  x    Table Name                       �c C $ � `    Channel                            	               100.0    On VI_TRUE Off VI_FALSE    
"table_1"               (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B   3    This function sets the reference calibration factor of the specified channel. Reference calibration factors can also be set using sensor calibration tables. The power meter uses the most recently set reference calibration factor.

Notes:
(1) This function is available only for 8480 series power sensors.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

     e    This control sets the refernce calibration factor.

Valid Range:
1.0 to 150 %

Default Value:
100 %   �9#����  �    Status                           �.#   �  �    Instrument Handle                �� C $ � `    Channel                          �� C � �       Factor                             	                          (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B    100.0    L    This function returns the name of tables (registers) stored into memory.

    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control sets the type of memory, should be returned.

Valid Values:

AGE441X_MEM_TABLE (0) - Table (Default Value)
AGE441X_MEM_SRREG (1) - Save/Recall Registers     o    Returns string with names of Tables or Save/Recall Registers.
The names are in string separated with commmas.     �    This control indicates the length of string (in chars) in control Catalog.

The enough memory has to be allocated in Catalog.

No range checking is performed.     >    Returns the length of string which was read from instrument.   �#����  �    Status                           ��#   �  �    Instrument Handle                �- C $ � `    Type                             �� C� �       Catalog                          �S C � �       String Length                    �� �� �       Ret Length                         	                          @Table AGE441X_MEM_TABLE Save/Recall Registers AGE441X_MEM_SRREG    	            512    	            V    This function returns the size of Table or Save/Recall Register defined by name.



    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control defines the name of Save/Recall Register or Sensor calibration/frequency dependent offset table to be selected.

Valid Values:
any valid name

Default Value:
""     <    Returns size in bytes of memory block with selected name.    �[#����  �    Status                            P#   �  �    Instrument Handle                 � D $ �  x    Name                             � D� �       Size                               	               ""    	            H    This function returns the contents of active table stored in memory.

    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     b    Returns the frequency data into the current selected
table.

Valid Values:
array of frequencies
     Y    This control defines the size of Frequency array.

Valid Range:
  1 .. available memory     �    Returns the calibration factors/offsets from the calibration/frequency dependent offset table,

Valid Values:
array of values


     <    Returns the number of values returned for Frequency array.     @    Returns the number of values returned for Factor/Offset array.     ]    This control defines the size of Factor/Offset array.

Valid Range:
  1 .. available memory   1#����  �    Status                           	&#   �  �    Instrument Handle                	� C � �       Frequency Array                  
0 C 8 �       Frequency Array Size             
� � � �       Factor/Offset                     C� �       Returned Freq Values             _ �� �       Returned Offset Values           � � < �       Factor  Array Size                 	               	            0    	            	            	            0    T    This function returns the name and numbers of points in currently selected table.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     2    Returns the number of values in Frequency array.     6    Returns the number of values in Factor/Offset array.     y    Returns the name of currently selected table.

Notes:
(1) At least 12 characters have to be allocated for this control.   Z#����  �    Status                           O#   �  �    Instrument Handle                � C � �       Freq Points                      ) C� �       Offset Points                    g C $ �       Name                               	               	            	            	            R    This function operates the sensor calibration/frequency dependent offset table.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
    R    This control selects the function.

Valid Range:
AGE441X_MEM_SEL   (0) - Select (Default)
AGE441X_MEM_CLEAR (1) - Clear
AGE441X_MEM_MOVE  (2) - Move

Notes:
(1) Select -  activate either a sensor calibration table (8480
series sensors only), or a frequency dependent offset table selected in Table 1.
(2) Clear - clears the contents of a specified sensor calibration table (8480 series sensors only), frequency dependent offset table selected in Table 1.
(3) Move - rename a sensor calibration table (8480 series
sensors only) or a frequency dependent offset table from Table 1 to Table 2.


     �    This control defines the name of sensor calibration/frequency dependent offset table to be selected.

Valid Values:
any valid table name

Default Value:
""     �    This control defines the name of sensor calibration/frequency dependent offset table.

Valid Values:
any valid table name

Default Value:
""

Notes:
(1) This parameter has effect only for function Move.   #����  �    Status                           t#   �  �    Instrument Handle                 C $ � `    Function                          n C � �  x    Table 1                          ! C� �  x    Table 2                            	                          ESelect AGE441X_MEM_SEL Clear AGE441X_MEM_CLEAR Move AGE441X_MEM_MOVE    ""    ""    Z    This function is used to enter data into the current selected sensor calibration table.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
        This control sets the frequency data into the current selected
table.

Valid Values:
array of frequencies


Notes:
(1) The number of points must be oneless than the number of calibration factor data points.
(2) The frequencies have to be in ascending order.     �    This control defines the array size of the frequency array. The Calibration Factor array has to be one greater than Frequency array.

Valid Range:
  0 to 80

Default Value:
 80    X    This parameter sets the calibration factors into the sensor
calibration table.

Valid Values:
array of values

Notes:

(1) The first  parameter is the reference calibration factor, each subsequent parameter is a calibration factor point in the sensor calibration table.
(2) The number of the points must be one greater than frequency points.
   #�#����  �    Status                           )�#   �  �    Instrument Handle                *W D � �       Frequency Array                  +b D < �       Array Size                       , D� �       Calibration Factors                	               0    80    0    c    This function is used to enter data into the current selected frequency dependent offset table.

    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control sets the frequency data into the current selected
table.

Valid Values:
array of frequencies

Notes:
(1) The frequencis have to be in ascending order.
     Q    This control defines the array size.

Valid Range:
  0 to 80

Default Value:
80     n    This parameter sets the offsets into the frequency dependent offset table,

Valid Values:
array of values


   /#����  �    Status                           5#   �  �    Instrument Handle                5� D � �       Frequency Array                  6S D < �       Array Size                       6� D� �       Offsets                            	               0    80    0    G    This function associate a name with a save/recall register
number.


    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control defines new register name.

Valid Values:
any valid register name (included characters A..Z, a..z, _ , 0..9

Default Value:
"State1"     f    The number of register to which the name will be associated.

Valid Range:
 0 to 9

Default Value:
0   8�#����  �    Status                           >�#   �  �    Instrument Handle                ?/ E� �  x    Name                             ?� E < �       Register Number                    	               	"State1"    0    �    This function returns the number of registers that are available for save/recall. As there are ten registers this query always returns ten.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     U    This control returns number of available save/recall registers, which is always 10.   A�����  �    Status                           G�   �  �    Instrument Handle                HW G� �  x    Count                              	               	            N    This function restores the power meter state from the save/recall register.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    The number of the register that the current state of the power meter is to be load from to.

Valid Range:
1 - 10

Default Value :
1   I�#����  �    Status                           O�#   �  �    Instrument Handle                PZ N � �       Register Number                    	               1    I    This function saves the power meter state to the save/recall register.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    The number of the register that the current state of the power meter is to be saved to.

Valid Range:
1 - 10

Default Value:
1   Q�#����  �    Status                           W�#   �  �    Instrument Handle                X� N � �       Register Number                    	               1    `    This function indicating whether there have been any limit failures for the specified window.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    0    This control selects the measurement by number.

Valid Range:
1 to 4

Default Value: 1

Notes:
(1) The value 2 is available only for dual channels instrument (E4417A or E4419B).
(2) The value 3 is available only for instruments E4416A or E4417A.
(3) The value 4 is available only for instrument E4417A.     J    This control returns whether upper or lower limits have been exceeded.

     Z    This control returns the total number of limit failures for the specified measurement.

   Z%#����  �    Status                           `#   �  �    Instrument Handle                `� C % �      Measurement                      a� D � �       Limit Exceeded                   bC D� �       Number Of Failures                 	               ����                 	            	            c    This function clears the FCO (fail counter) of any limit
failures for the specified measurement.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    0    This control selects the measurement by number.

Valid Range:
1 to 4

Default Value: 1

Notes:
(1) The value 2 is available only for dual channels instrument (E4417A or E4419B).
(2) The value 3 is available only for instruments E4416A or E4417A.
(3) The value 4 is available only for instrument E4417A.   dX#����  �    Status                           jM#   �  �    Instrument Handle                j� C % �      Measurement                        	               ����                    This function performs calibration and/or zeroing on selected channel and returns the result. The function assumes that the power sensor is connected to a 1 mW reference signal.


Notes:
(1) This function waits, until calibration is performed. Timeout is set to 60s.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control selects the input channel

Valid Range:
AGE441x_CHANNEL_A (0) - A (Default)
AGE441x_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441x_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

    Y    This control selects the action that should be performed.

Valid Values:
AGE441X_CAL_ALL  (0) - All (Default Value)
AGE441X_CAL_CAL  (1) - Calibration
AGE441X_CAL_ZERO (2) - Zeroing


Notes:
(1) All - Calibration and zeroing will be performed.
(2) Calibration - Only calibration will be performed.
(3) Zeroing - Only Zeroing will be performed.        Returns the result of zeroing and calibration.

0 - Pass
1 - Fail

Notes:
(1) This parameter returns the result only forn action All. The action Zeroing and Calibration returns always 0 - Pass. Enable status checking to determine errors at Zeroing and Calibration action.   m�#����  �    Status                           s�#   �  �    Instrument Handle                t� C $ � `    Channel                          uy C � � `    Action                           v� C� �       Fail                               	                          (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B               IAll AGE441X_CAL_ALL Calibration AGE441X_CAL_CAL Zeroing AGE441X_CAL_ZERO    	           X    This function clears the peak hold value for a specified CALC block so that a new peak hold value can be set.

Notes:
(1) This function is valid only for sensor E9320. The sensor type isn't checked!!
(2) The sensor mode has to be Normal.
(3) Trigger source has to be Immediate, Hold or Bus. The Channel A, Channel B or External isn't allowed.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     X    This control selects the measurement by number.

Valid Range:
1 to 4

Default Value: 1   {#����  �    Status                           ��#   �  �    Instrument Handle                �� D - �      Measurement                        	               ����                 �    This function provides a quick way of zeroing the NORMAL path of an E9320 series sensor. The average only path is unaffected. 

Note:
(1) The function is valid only for E9320 series sensor.     �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control selects the input channel

Valid Range:
E441x_CHANNEL_A (0) - A (Default)
E441x_CHANNEL_B (1) - B 

Notes:
(1) Value E441x_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

   ��#����  �    Status                           �#   �  �    Instrument Handle                � C & � `    Channel                            	                          (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B    �    This function returns the amount of memory free for sensor calibration tables (8480 series sensors only) and frequency dependent offset tables.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    Returns amount of free memory in bytes for selected type. It can be all free memory, memory free for save/recall registers or memory free for  sensor calibration tables (8480 series sensors only) and frequency dependent offset tables.     �    Returns amount of memory in bytes used with sensor calibration tables (8480 series sensors only) and frequency dependent offset tables.     �    This control sets the type of free memory, should be returned.

Valid Values:

AGE441X_MEM_TABLE (0) - Table
AGE441X_MEM_SRREG (1) - Save/Recall Registers
AGE441X_MEM_ALL   (2) - All (Default Value)   �~#����  �    Status                           �s#   �  �    Instrument Handle                � C � �       Free                             � C� �       Used                             �� C & � }    Type                               	               	            	                      TTable AGE441X_MEM_TABLE Save/Recall Registers AGE441X_MEM_SRREG All AGE441X_MEM_ALL    �    This function aborts the waiting for trigger on selected channel. The channel will be switched to the idle state. It does not affect any other settings of the trigger system.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

   ��#����  �    Status                           ��#   �  �    Instrument Handle                �J C $ � `    Channel                            	                          (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B    A    This function sets the power meter for a single trigger cycle.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

   �^#����  �    Status                           �S#   �  �    Instrument Handle                �� C $ � `    Channel                            	                          (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B    �    This function triggers immediate the channel.

SCPI Command(s) -
TRIG[1]|2:IMM

Notes:
(1) The channel has to be in mode wait-for trigger. (Initiate continuous has to be set ON or Initiate function has been used).


    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    This control selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

   ��#����  �    Status                           ��#   �  �    Instrument Handle                �5 C $ � `    Channel                            	                          (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B    5    This function sets the instrument status registers.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control sets the register value.

Valid Range:
Service Request Enable Service
Standard Event Status Enable Register - 0 to 255

Operation and Questionable Registers - 0 to 65535

Note:
Condition and Event parts of cen not be set.    �    This control sets the register.

Valid Range:
AGE441X_STATUS_SRE     (0)  - Service Request Enable Register 
AGE441X_STATUS_ESE     (1)  - Standard Event Status Enable Reg.
AGE441X_STATUS_DEVICE  (2)  - Device Status Register   
AGE441X_STATUS_OPER    (3)  - Operation Status Register  
AGE441X_STATUS_QUES    (4)  - Questionable Status Register   
AGE441X_STATUS_O_CAL   (5)  - Operation Status Calibration  
AGE441X_STATUS_O_MEAS  (6)  - Operation Status Measuring   
AGE441X_STATUS_O_TRIGG (7)  - Operation Status Trigger   
AGE441X_STATUS_O_SENSE (8)  - Operation Status Sense   
AGE441X_STATUS_O_LFAIL (9)  - Operation Status Low Limit Fail   
AGE441X_STATUS_O_UFAIL (10) - Operation Status Upper Limit Fail  
AGE441X_STATUS_Q_POWER (11) - Question Status Power
AGE441X_STATUS_Q_CAL   (12) - Question Status Calibration  


Default Value:
AGE441X_STATUS_OPER    (3)  - Operation Status Register  

        This control sets the register part.

Valid Range:
AGE441X_STATUS_NEG    (0) - Negative Transition
AGE441X_STATUS_POS    (1) - Positive Transition
AGE441X_STATUS_ENABLE (2) - Enable (Default Value)

Notes:
(1) This control does not apply to STB, SRE, ESR and ESE registers.
   �=����  �    Status                           �2   �  �    Instrument Handle                �� �Y �  `    State                            �� 3 � � �    Register                         �V � y � �    Register Part                      	               0             �Service Request Enable Register (SRE) AGE441X_STATUS_SRE Standard Event Status Enable Register (ESE) AGE441X_STATUS_ESE Device Status Register AGE441X_STATUS_DEVICE Operation Status Register AGE441X_STATUS_OPERATION Questionable Status Register AGE441X_STATUS_QUESTIONABLE Operation Status Calibration AGE441X_STATUS_O_CAL Operation Status Measuring AGE441X_STATUS_O_MEAS Operation Status Trigger AGE441X_STATUS_O_TRIGGER Operation Status Sense AGE441X_STATUS_O_SENSE Operation Status Low Limit Fail AGE441X_STATUS_O_LFAIL Operation Status Upper Limit Fail AGE441X_STATUS_O_UFAIL Questionable Status Power AGE441X_STATUS_Q_POWER Questionable Status Calibration AGE441X_STATUS_Q_CAL               kEnable AGE441X_STATUS_ENABLE Negative Transition AGE441X_STATUS_NEG Positive Transition AGE441X_STATUS_POS    >    This function returns the instrument status registers state.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ,    This control returns the register value.

    �    This control sets the register.

Valid Range:
AGE441X_STATUS_SRE     (0)  - Service Request Enable Register 
AGE441X_STATUS_ESE     (1)  - Standard Event Status Enable Reg.
AGE441X_STATUS_DEVICE  (2)  - Device Status Register   
AGE441X_STATUS_OPER    (3)  - Operation Status Register  
AGE441X_STATUS_QUES    (4)  - Questionable Status Register   
AGE441X_STATUS_O_CAL   (5)  - Operation Status Calibration  
AGE441X_STATUS_O_MEAS  (6)  - Operation Status Measuring   
AGE441X_STATUS_O_TRIGG (7)  - Operation Status Trigger   
AGE441X_STATUS_O_SENSE (8)  - Operation Status Sense   
AGE441X_STATUS_O_LFAIL (9)  - Operation Status Low Limit Fail   
AGE441X_STATUS_O_UFAIL (10) - Operation Status Upper Limit Fail  
AGE441X_STATUS_Q_POWER (11) - Question Status Power
AGE441X_STATUS_Q_CAL   (12) - Question Status Calibration  
AGE441X_STATUS_ESR     (13) - Event Status Register
AGE441X_STATUS_STB     (14) - Status Byte Register


Default Value:
AGE441X_STATUS_OPER    (3)  - Operation Status Register  

    W    This control sets the register part.

Valid Range:
AGE441X_STATUS_NEG    (0) - Negative Transition
AGE441X_STATUS_POS    (1) - Positive Transition
AGE441X_STATUS_ENABLE (2) - Enable (Default Value)
AGE441X_STATUS_EVEN   (3) - Event
AGE441X_STATUS_COND   (4) - Condition

Notes:
(1) This control does not apply to SRE, ESR and ESE registers.
   �	����  �    Status                           ��   �  �    Instrument Handle                ɝ �� �  `    State                            �� 3 � � �    Register                         �� � 0 � �    Register Part                      	               	                     �Service Request Enable Register (SRE) AGE441X_STATUS_SRE Standard Event Status Enable Register (ESE) AGE441X_STATUS_ESE Device Status Register AGE441X_STATUS_DEVICE Operation Status Register AGE441X_STATUS_OPERATION Questionable Status Register AGE441X_STATUS_QUESTIONABLE Operation Status Calibration AGE441X_STATUS_O_CAL Operation Status Measuring AGE441X_STATUS_O_MEAS Operation Status Trigger AGE441X_STATUS_O_TRIGGER Operation Status Sense AGE441X_STATUS_O_SENSE Operation Status Low Limit Fail AGE441X_STATUS_O_LFAIL Operation Status Upper Limit Fail AGE441X_STATUS_O_UFAIL Questionable Status Power AGE441X_STATUS_Q_POWER Questionable Status Calibration AGE441X_STATUS_Q_CAL               �Enable AGE441X_STATUS_ENABLE Negative Transition AGE441X_STATUS_NEG Positive Transition AGE441X_STATUS_POS Event AGE441X_STATUS_EVEN Condition AGE441X_STATUS_COND   y    This function returns the last valid result. The command is only completed after a valid measurement has been performed. If data is invalid, or the power meter has been reconfigured and no new measurement has been initiated, routine generates the error -230, �Data corrupt or stale� and no result is returned. A common cause for this error is receiving a FETCh? after reset.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
    0    This control selects the measurement by number.

Valid Range:
1 to 4

Default Value: 1

Notes:
(1) The value 2 is available only for dual channels instrument (E4417A or E4419B).
(2) The value 3 is available only for instruments E4416A or E4417A.
(3) The value 4 is available only for instrument E4417A.     )    This control returns last valid result.    C    This control selects the function.

Valid Values:
AGE441X_MEAS_SINGLE     (0) - Single (Default Value)
AGE441X_MEAS_SINGLE_REL (1) - Single Relative
AGE441X_MEAS_DIFF       (2) - Difference
AGE441X_MEAS_DIFF_REL   (3) - Difference Relative
AGE441X_MEAS_RATIO      (4) - Ratio
AGE441X_MEAS_RATIO_REL  (5) - Ratio Relative
   �9#����  �    Status                           �.#   �  �    Instrument Handle                �� C 3 �      Measurement                      � C� �  x    Measured Value                   �7 C � � i    Measuring Function                 	               ����                 	                      �Single AGE441X_MEAS_SINGLE Single Relative AGE441X_MEAS_SINGLE_REL Difference AGE441X_MEAS_DIFF Difference Relative AGE441X_MEAS_DIFF_REL Ratio AGE441X_MEAS_RATIO Ratio Relative AGE441X_MEAS_RATIO_REL    J    This function initiates the measurement and returns the measured value.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     X    This control selects the measurement by number.

Valid Range:
1 to 4

Default Value: 1     )    This control returns last valid result.    M    This control selects the measuring function.

Valid Values:
AGE441X_MEAS_SINGLE     (0) - Single (Default Value)
AGE441X_MEAS_SINGLE_REL (1) - Single Relative
AGE441X_MEAS_DIFF       (2) - Difference
AGE441X_MEAS_DIFF_REL   (3) - Difference Relative
AGE441X_MEAS_RATIO      (4) - Ratio
AGE441X_MEAS_RATIO_REL  (5) - Ratio Relative
   ��#����  �    Status                           ��#   �  �    Instrument Handle                �} C 3 �      Measurement                      �� C� �  x    Measured Value                   � C � � i    Measuring Function                 	               ����                 	                      �Single AGE441X_MEAS_SINGLE Single Relative AGE441X_MEAS_SINGLE_REL Difference AGE441X_MEAS_DIFF Difference Relative AGE441X_MEAS_DIFF_REL Ratio AGE441X_MEAS_RATIO Ratio Relative AGE441X_MEAS_RATIO_REL    a    This function configures and initiates the channel measurement and returns the measured value.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     X    This control selects the measurement by number.

Valid Range:
1 to 4

Default Value: 1    M    This control selects the measuring function.

Valid Values:
AGE441X_MEAS_SINGLE     (0) - Single (Default Value)
AGE441X_MEAS_SINGLE_REL (1) - Single Relative
AGE441X_MEAS_DIFF       (2) - Difference
AGE441X_MEAS_DIFF_REL   (3) - Difference Relative
AGE441X_MEAS_RATIO      (4) - Ratio
AGE441X_MEAS_RATIO_REL  (5) - Ratio Relative
     �    This control selects the channel which should be used as the first operand for specified mathematical operation.

Valid Range:
AGE441X_CHANNEL_A (0) - Channel A (Default Value)
AGE441X_CHANNEL_B (1) - Channel B     �    This control selects the channel which should be used as the second operand for specified mathematical operation.

Valid Range:
AGE441X_CHANNEL_A (0) - Channel A (Default Value)
AGE441X_CHANNEL_B (1) - Channel B
     )    This control returns last valid result.    �    This control sets the resolution of auto averaging.

Valid Ranges:
1 to 4

Default Value:

3


Notes:
(1) When the measurement result is linear this parameter represents the number of significant digits. When the measurement result is logarithmic 1 to 4 represents a
resolution of 1, 0.1, 0.01 and 0.001 respectively.
(2) If the Auto averaging is set Off (see function Configure Averaging Auto), this parameter has no effect.    )    This contorl sets the power measurement units for a specified
measurement.

Valid Values:
AGE411X_UNIT_DBM (0) - dBm (Default Value)
AGE411X_UNIT_W   (1) - W

Notes:
(1) The ratio units are coupled with power unit as follows. Power Unit = dBm -> Ratio unit = dB
Power Unit = W -> Ration Unit = %   ��#����  �    Status                           ��#   �  �    Instrument Handle                �u C 3 �      Measurement                      �� C � � i    Measuring Function               �* C � `    Sensor 1                         � C� � `    Sensor 2                         �� �� �  x    Measured Value                   � � � �      Resolution                       �� � � `    Unit                               	               ����                            �Single AGE441X_MEAS_SINGLE Single Relative AGE441X_MEAS_SINGLE_REL Difference AGE441X_MEAS_DIFF Difference Relative AGE441X_MEAS_DIFF_REL Ratio AGE441X_MEAS_RATIO Ratio Relative AGE441X_MEAS_RATIO_REL               8Channel A AGE441X_CHANNEL_A Channel B AGE441X_CHANNEL_B               8Channel A AGE441X_CHANNEL_A Channel B AGE441X_CHANNEL_B    	           ����                            &dBm AGE441X_UNIT_DBM W AGE441X_UNIT_W    �    This function configures and initiates the channel measurement for E-Series sensors and returns the measured value.

Note:
(1) This function is valid only for E-Series sensors    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     X    This control selects the measurement by number.

Valid Range:
1 to 4

Default Value: 1    M    This control selects the measuring function.

Valid Values:
AGE441X_MEAS_SINGLE     (0) - Single (Default Value)
AGE441X_MEAS_SINGLE_REL (1) - Single Relative
AGE441X_MEAS_DIFF       (2) - Difference
AGE441X_MEAS_DIFF_REL   (3) - Difference Relative
AGE441X_MEAS_RATIO      (4) - Ratio
AGE441X_MEAS_RATIO_REL  (5) - Ratio Relative
     �    This control selects the channel which should be used as the first operand for specified mathematical operation.

Valid Range:
AGE441X_CHANNEL_A (0) - Channel A (Default Value)
AGE441X_CHANNEL_B (1) - Channel B     �    This control selects the channel which should be used as the second operand for specified mathematical operation.

Valid Range:
AGE441X_CHANNEL_A (0) - Channel A (Default Value)
AGE441X_CHANNEL_B (1) - Channel B     )    This control returns last valid result.     <    This control sets the value for the expected power level.
    �    This control sets the resolution of auto averaging.

Valid Ranges:
1 to 4

Default Value:

3


Notes:
(1) When the measurement result is linear this parameter represents the number of significant digits. When the measurement result is logarithmic 1 to 4 represents a
resolution of 1, 0.1, 0.01 and 0.001 respectively.
(2) If the Auto averaging is set Off (see function Configure Averaging Auto), this parameter has no effect.    )    This contorl sets the power measurement units for a specified
measurement.

Valid Values:
AGE411X_UNIT_DBM (0) - dBm (Default Value)
AGE411X_UNIT_W   (1) - W

Notes:
(1) The ratio units are coupled with power unit as follows. Power Unit = dBm -> Ratio unit = dB
Power Unit = W -> Ration Unit = %   �t#����  �    Status                           i#   �  �    Instrument Handle                	 C 3 �      Measurement                      i C � � x    Measuring Function               � C � `    Sensor 1                         � C� � `    Sensor 2                         w �� �  x    Measured Value                   � � �       Expected Value                   � � � �      Resolution                       	� �� � `    Unit                               	               ����                            �Single AGE441X_MEAS_SINGLE Single Relative AGE441X_MEAS_SINGLE_REL Difference AGE441X_MEAS_DIFF Difference Relative AGE441X_MEAS_DIFF_REL Ratio AGE441X_MEAS_RATIO Ratio Relative AGE441X_MEAS_RATIO_REL               8Channel A AGE441X_CHANNEL_A Channel B AGE441X_CHANNEL_B               8Channel A AGE441X_CHANNEL_A Channel B AGE441X_CHANNEL_B    	           0    ����                            &dBm AGE441X_UNIT_DBM W AGE441X_UNIT_W    �    This function returns the trace data.

Notes:
(1) This function is valid only for GPIB.
(2) This function is available only for E9320 sensor.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     "    This control returns trace data.     �    This control selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

     +    This control sets the size of Data array.    X    This control determines the resolution of returned data.

Valid Values:
AGE441X_TRACE_RES_LOW  (0) - Low 
AGE441X_TRACE_RES_MED  (1) - Medium
AGE441X_TRACE_RES_HIGH (2) - High (Default Value)

Notes:
(1) Low - A subset of the capture buffer, decimated to the number of points required for the display. This is really a way of outputting the same data used to generate the graphical power display.
(2) Medium - A subset of the capture buffer decimated to 1000 points.
(3) High - The complete capture buffer at the internal sample rate. The number of points in this trace is determined by Trace Time
     8    Returns the number of values read from the instrument.   d#����  �    Status                           Y#   �  �    Instrument Handle                � C� �  x    Data                             # C  � `    Channel                           C �       Array Size                       ; C � � `    Resolution                       � �� �       Returned Values                    	               	                       (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B    0              SLow AGE441X_TRACE_RES_LOW Medium AGE441X_TRACE_RES_MED High AGE441X_TRACE_RES_HIGH    	            n    This function writes commands and queries to the instrument to modify parameters and query device settings.
    �    The user can use this control to send common commands and queries to the instrument. This control can also be used to write any valid command to the instrument.

Default Value:  "*RST\n"

Notes:

(1) The command or query to be sent to the instrument may be a literal enclosed in double quotes i.e. "*RST\n" or may be contained in a variable of type string.
(2) The termination character '\n' has to be at the end of command. Instrument driver doesn't sent termination character automatically.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
   � = E � �    Write Buffer                     �#����  �    Status                           $v#   �  �    Instrument Handle                  	"*RST\n"    	              8    This function reads data from the instrument's output buffer and returns it to the specified variable in memory.

Notes:

(1) Because the instrument may return both numeric and text data in response to queries this function returns the data in string format.

(2) If valid data is not available at the instrument's output buffer when this function is called the instrument will hang up and the function will not return until it times out.  If the time-out is disabled this function will hang indefinitely and it may be necessary to reboot the computer to break out.
    �    The number of bytes specified by this control should be greater than or equal to the number of bytes which are to be read from the instrument. If the actual number of bytes to be read is greater than the number this control specifies then multiple reads will be required to empty the instrument's output buffer.

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

(1) If the actual number of bytes read is less than the number of bytes specified in the Number Bytes To Read control then the output buffer has probably been emptied. If the read function fails and the number of bytes read is 0, the most probable cause for the failure is there was no data available at the instrument's output buffer.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
   ( = K �       Number Bytes To Read             +� � H � �    Read Buffer                      .� =x �       NumBytes Read                    0w#����  �    Status                           6l#   �  �    Instrument Handle                  50    	            	            	               l    This function resets the instrument to a known state and sends initialization commands to the instrument.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
   8�#����  �    Status                           >�#   �  �    Instrument Handle                  	               ~    This function runs the instrument's self test routine and returns the test result(s). The self test takes aproximate 30 s.

     �    This control contains the value returned from the instrument self test.  Zero means success.  For any other code, see the device's operator's manual.
     �    This control contains the string returned from the self test. 

Notes:

(1) The array must contain at least 256 elements ViChar[256].    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
   @L = 2 �       Self Test Result                 @� = � � ,    Self-Test Message                A{#����  �    Status                           Gp#   �  �    Instrument Handle                  	           	            	               H    This function reads an error code from the instrument's error queue.

     N    This control returns the error code read from the instrument's error queue.
     �    This control returns the error message string read from the instrument's error message queue.

Notes:

(1) The array must contain at least 256 elements ViChar[256].
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
   I\ = 2 �       Error Code                       I� = � � ,    Error Message                    Ja#����  �    Status                           PV#   �  �    Instrument Handle                  	            	            	               �    This function takes the Status Code returned by the instrument driver functions, interprets it and returns it as a user readable string. 
     u    This control accepts the Status Code returned from the instrument driver functions.

Default Value: 0 - VI_SUCCESS
     �    This control returns the interpreted Status Code as a user readable message string.

Notes:

(1) The array must contain at least 256 elements ViChar[256].
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  VI_NULL
   R� =  �       Error Code                       S = � � �    Error Message                    S�#����  �    Status                           Y�#   �  �    Instrument Handle                  0    	            	           VI_NULL   H    This function returns the revision numbers of the instrument driver and instrument firmware, and tells the user with which  instrument firmware this revision of the driver is compatible. 

This instrument driver's Revision Number is "Rev 1.0.0, 07/2003, CVI 5.5" and is compatible with Instrument Firmware Revision "A2.08.01".     �    This control returns the Instrument Driver Software Revision.

Notes:

(1) The array must contain at least 256 elements ViChar[256].
     �    This control returns the Instrument Firmware Revision.

Notes:

(1) The array must contain at least 256 elements ViChar[256].
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
   \� = 2 �  �    Instrument Driver Revision       ] =, �  �    Firmware Revision                ]�#����  �    Status                           c�#   �  �    Instrument Handle                  	            	            	               i    This function returns the instrument type. The E4416, E4417, E4418 and E4419 instruments are supported.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     l    Returns the last two number of instrument number.

16 for E4416A
17 for E4417A
18 for E4418B
19 for E4419B   e�#����  �    Status                           k�#   �  �    Instrument Handle                l: D� �       Type                               	               	            L    This function returns the type of sensor connected to the selected input.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     �    Returns the sensor type, if some sensor is connected.

Characters A, B, D or H are returned for sensors Agilent 8480 series
Number of type is returned for the others sensors.     �    This control selects the input channel

Valid Range:
AGE441X_CHANNEL_A (0) - A (Default)
AGE441X_CHANNEL_B (1) - B 

Notes:
(1) Value AGE441X_CHANNEL_B (1) is valid only for dual channel instruments (E4417A or E4419B)

     T    Returns the sensor type.
VI_TRUE - Sensor connected
VI_FALSE - Sensor disconnected   m�#����  �    Status                           s�#   �  �    Instrument Handle                tR �� �       Sensor Type                      u
 C $ � `    Channel                          u� C� �       State                              	               	                       (A AGE441X_CHANNEL_A B AGE441X_CHANNEL_B    	            *    This function sets the status checking.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     l    This control sets the status checking.

Valid Range:
VI_FALSE (0) - Off (Default Value)
VI_TRUE  (1) - On
   w�#����  �    Status                           }�#   �  �    Instrument Handle                ~z K �       State                              	               On VI_TRUE Off VI_FALSE    3    This function returns the status checking state.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
     $    Returns the status checking state.   �#����  �    Status                           ��#   �  �    Instrument Handle                �� R� �       State                              	               	            �    This function performs the following operations:
viClose (instrSession) and viClose (rmSession).

Notes:

(1) The instrument must be reinitialized to use it again.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred. To obtain a text description of the status code, call the age441x_error_message function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
BFFC09F0      Instrument Status Error
BFFC09F1      Instrument Number Error
BFFC09F2      Not supported parameter or function
BFFC09F3      Bad Sensor
BFFC09F4      Save/Recall register name not found
BFFC09F5      Function not available 


This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None
   �#����  �    Status                           �#   �  �    Instrument Handle                  	            ����         4^  G�     K.    init                            ����         I  Tj     K.    powerMeasurement                ����         V�  `�     K.    configureInput                  ����         by  k�     K.    configureChannelOffset          ����         m  u^     K.    configureAveragingAuto          ����         v�       K.    configureAveraging              ����         ��  ��     K.    linearityCorrection             ����         ��  �     K.    getFrequencyDependentOffset     ����         �A  ��     K.    configureLimits                 ����         ��  ��     K.    configureMath                   ����         �N  ��     K.    getMathExpressions              ����         ��  ɿ     K.    configureGain                   ����         �  �g     K.    resetRefValue                   ����         �-  �.     K.    setRefValueState                ����         �D  ��     K.    feed                            ����         �  ��     K.    configureMeasurement            ����         �X L     K.    setTTLCalibrationState          ����         �     K.    calibrationLockout              ����        - �     K.    configureRecorder               ����        
 $+     K.    recorderMeasurement             ����        %+ ,     K.    referenceOscillatorState        ����        -I 9�     K.    configureTTL                    ����        ;� Dv     K.    setInitiateContinuousState      ����        E� Q�     K.    configureTrigger                ����        S� _     K)    configureChannelATrigger        ����        a� k|     K.    triggerEventCount               ����        l� u�     K.    eSeriesOffsetTable              ����        w9 �e     K.    eSeriesConfigureInput           ����        � �� 	    K.    eSeriesConfigureMeasurement     ����        �� �     K.    e9320VideoAveraging             ����        �y �     K.    e9320SensorParameters           ����        �	 �� 	    K.    e9320ConfigureTrace             ����        �> �r     K.    e9320ConfigureGate              ����        � �K     K.    e9320OutputTriggerState         ����        � �<     K.    configureDutyCycle              ����        خ �H     K.    setCorrections                  ����        �� �      K.    setCalibrationFactor            ����        �D �A     K.    memoryContents                  ����        �� �     K.    sizeOfMemoryBlock               ����        �      K.    activeTableValues               ����        � �     K.    activeTableInformation          ����        % !�     K.    tableOperation                  ����        #` -|     K.    defineCalibrationTable          ����        .� 7"     K.    defineOffsetTable               ����        8K @8     K.    registerMapName                 ����        A- H�     K.    registerCount                   ����        Io P�     K.    loadFromRegister                ����        Q� Y	     K.    saveToRegister                  ����        Y� b�     K.    getLimitsFailure                ����        c� l$     K.    clearFailCount                  ����        l� w�     K.    calibration                     ����        y� ��     K.    e9320ClearPeakHold              ����        �� ��     K.    e9320NormalPathZeroing          ����        �� �h     K.    availableMemory                 ����        �� �/     K.    abort                           ����        � ��     K.    initiate                        ����        �� �     K.    triggerImmediate                ����        �  �r     K.    setStatusRegisters              ����        �� �(     K.    getStatusRegisters              ����        Ӹ ނ     K.    fetch                           ����        �� �c     K.    read                            ����        �w �� 	    K.    measure                         ����        �� 
� 
    K.    eSeriesMeasure                  ����        � �     K.    e9320TraceData                  ����         %     K.    writeInstrData                  ����        %� 7     K.    readInstrData                   ����        8C ?L     K.    reset                           ����        ?� H     K.    self_test                       ����        I P�     K.    error_query                     ����        Q� Z@     K.    error_message                   ����        [< d8     K.    revision_query                  ����        e4 l�     K.    instrumentType                  ����        mi vK     K.    getSensorType                   ����        w� ~�     K.    setCheckStatus                  ����        � ��     K.    getCheckStatus                  ����        �o ��     K.    close                                 �                                     DInitialize                          Application Functions                DPower Measurement                   cConfiguration Functions             	�General Device Setting              �Input                                DConfigure Input                      DConfigure Channel Offset             DConfigure Averaging Auto             DConfigure Averaging                  DLinearity Correction                 DGet Frequency Dependent Offset      �Calculate                            DConfigure Limits                     DConfigure Math                       DGet Math Expressions                 DConfigure Gain                       DReset Ref Value                      DSet Ref Value State                  DFeed                                Measurement                          DConfigure Measurement               �Calibration                          DSet TTL Calibration State            DCalibration Lockout                 �Output                               DConfigure Recorder                   DRecorder Measurement                 DReference Oscillator State           DConfigure TTL                       Trigger                              DSet Initiate Continuous State        DConfigure Trigger                    DConfigure Channel A Trigger          DTrigger Event Count                 8E-Series Sensors                     DE Series Offset Table                DE Series Configure Input             DE Series Configure Measurement       DE9320 Video Averaging                DE9320 Sensor Parameters              DE9320 Configure Trace                DE9320 Configure Gate                 DE9320 Output Trigger State          4Non E-Series Sensors                 DConfigure Duty Cycle                 DSet Corrections                      DSet Calibration Factor              �Memory                               DMemory Contents                      DSize Of Memory Block                �Calibration/Offset Tables            DActive Table Values                  DActive Table Information             DTable Operation                      DDefine Calibration Table             DDefine Offset Table                 !�Save/Recall Register                 DRegister Map Name                    DRegister Count                       DLoad From Save/Recall Register       DSave To Save/Recall Register        #�Action/Status Functions             &Calculate                            DGet Limits Failure                   DClear Fail Count                    'XCalibration                          DCalibration                         (E Series Sensors                     DE9320 Clear Peak Hold                DE9320 Normal Path Zeroing           )�Memory                               DAvailable Memory                    *wTrigger                              DAbort                                DInitiate                             DTrigger Immediate                   +�Status                               DSet Status Registers                 DGet Status Registers                ,�Data Functions                       DFetch                                DRead                                 DMeasure                             .jE Series Sensors                     DE Series Measure                     DE9320 Trace Data                    /�Utility Functions                    DWrite To Instrument                  DRead Instrument Data                 DReset                                DSelf-Test                            DError-Query                          DError Message                        DRevision Query                       DInstrument Type                      DGet Sensor Type                      DSet Check Status                     DGet Check Status                     DClose                           