s��        k�   a 3�  8   �   ����                               ag1000ni                        Agilent 1000 Series Oscilloscopes                                                                     � � ��ViInt16  �  � ��ViInt32  � � ��ViReal64     � ��ViRsrc     	� 	��ViBoolean     	� 	��ViSession     � ��ViStatus     �  ViChar[]     � ��ViChar     � ��ViString     	�  ViInt16[]     	�  ViInt32[]     
�  	ViReal64[]     � 	 
ViBoolean[]     � ��ViConstString     � ��ViAttr      This instrument driver provides programming support for the Agilent 1000 Series Oscilloscopes.  The driver contains all the functions that IVI and VXIplug&play require.  In addition, the driver contains high-level functions that configure the oscilloscope and read waveforms.  The driver also contains lower level functions that initiate an acquisition and fetch a waveform in separate operations.  The driver acquires waveforms using a variety of trigger types including edge, TV, runt, glitch, and width.  The driver supports the normal, average, high-resolution, envelope, and peak-detect acquisition types.  The driver also performs waveform measurements such as rise-time, peak-to-peak voltage, and frequency.  

Note:  This driver requires the VISA and IVI libraries.  

    "    This class contains functions and sub-classes that configure the oscilloscope.  The class includes high-level functions that configure the vertical, horizontal, and trigger subsystems.  The class also contains the low-level functions that set, get, and check individual attribute values.
     I    This class contains functions that configure the acquisition subsystem.     �    The class contains functions that configure the vertical subsystem of the oscilloscope.  These functions configure the channel you specify.      �    This class contains functions that configure the trigger subsystem.  To configure the trigger subsystem, first call the ag1000ni_ConfigureTrigger.  Then call the trigger configuration function that corresonds to the trigger type you specify.     �    This class contains functions that configure the waveform measurements subsystem.  To configure the measurement subsystem,  call the ag1000ni_ConfigureRefLevels.      g    This class contains functions you use to obtain the configuration information about the oscilloscope.     T    This class contains sub-classes for the set, get, and check attribute functions.       �    This class contains functions that set an attribute to a new value.  There are typesafe functions for each attribute data type.     �    This class contains functions that obtain the current value of an attribute.  There are typesafe functions for each attribute data type.     �    This class contains functions that obtain the current value of an attribute.  There are typesafe functions for each attribute data type.    �    This class contains functions and sub-classes that initiate and retrieve waveforms and waveform measurements using the current configuration.  The class contains high-level read functions that intiate an acquisition and fetch the data in one operation.  The class also contains low-level functions that intiate an acquisition, and fetch a waveform or wavefrom measurement in separate operations.
    [    The class contains functions that give low-level control over how the oscilloscope acquires waveforms and waveform measurements.  The functions perform the following operations:

- intiate an acquisition,
- send a software trigger,
- return the status of acquisition, 
- fetch a waveform or waveform measurement, and 
- abort an acquisition.  

    _    This class contains functions and sub-classes that control common instrument operations.  These functions include many of functions that VXIplug&play require, such as reset, self-test, revision query, error query, and error message.  This class also contains functions that access IVI error infomation, lock the session, and perform instrument I/O.
     R    This class contains functions that retrieve and clear the IVI error information.     ?    This class contains functions that retrieve coercion records.     J    This class contains functions that retrieve interchangeability warnings.     k    This class contains functions that lock and unlock IVI instrument driver sessions for multithread safefy.     F    This class contains functions that send and receive instrument data.    C    This function performs the following initialization actions:

- Creates a new IVI instrument driver session.

- Opens a session to the specified device using the interface and address you specify for the Resource Name parameter.

- If the ID Query parameter is set to VI_TRUE, this function queries the instrument ID and checks that it is valid for this instrument driver.

- If the Reset parameter is set to VI_TRUE, this function resets the instrument to a known state.

- Sends initialization commands to set the instrument to the state necessary for the operation of the instrument driver.

- Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Note:  This function creates a new session each time you invoke it. Although you can open more than one IVI session for the same resource, it is best not to do so.  You can use the same session in multiple program threads.  You can use the ag1000ni_LockSession and ag1000ni_UnlockSession functions to protect sections of code that require exclusive access to the resource.

Content from the IVI specifications reproduced with permission from the IVI Foundation.

The IVI Foundation and its member companies make no warranty of any kind with regard to this material, including, but not limited to, the implied warranties of merchantability and fitness for a particular purpose. The IVI Foundation and its member companies shall not be liable for errors contained herein or for incidental or consequential damages in connection with the furnishing, performance, or use of this material.    �    Pass the resource name of the device to initialize.

You can also pass the name of a virtual instrument or logical name that you configure with the IVI Configuration utility.  The virtual instrument identifies a specific device and specifies the initial settings for the session.  A logical Name identifies a particular virtual instrument.

Refer to the following table below for the exact grammar to use for this parameter.  Optional fields are shown in square brackets ([]).

Syntax
------------------------------------------------------
GPIB[board]::<primary address>[::secondary address]::INSTR
VXI[board]::<logical address>::INSTR
GPIB-VXI[board]::<logical address>::INSTR
ASRL<port>::INSTR
<LogicalName>
<Driver Session>

If you do not specify a value for an optional field, the following values are used:

Optional Field - Value
------------------------------------------------------
board - 0
secondary address - none (31)

The following table contains example valid values for this parameter.

"Valid Value" - Description
------------------------------------------------------
"GPIB::22::INSTR" - GPIB board 0, primary address 22 no
                    secondary address
"GPIB::22::5::INSTR" - GPIB board 0, primary address 22
                       secondary address 5
"GPIB1::22::5::INSTR" - GPIB board 1, primary address 22
                        secondary address 5
"VXI::64::INSTR" - VXI board 0, logical address 64
"VXI1::64::INSTR" - VXI board 1, logical address 64
"GPIB-VXI::64::INSTR" - GPIB-VXI board 0, logical address 64
"GPIB-VXI1::64::INSTR" - GPIB-VXI board 1, logical address 64
"ASRL2::INSTR" - COM port 2
"SampleInstr" - Logical name "SampleInstr"
"xyz432" - Driver Session "xyz432"        Specify whether you want the instrument driver to perform an ID Query.

Valid Range:
VI_TRUE  (1) - Perform ID Query (Default Value)
VI_FALSE (0) - Skip ID Query

When you set this parameter to VI_TRUE, the driver verifies that the instrument you initialize is a type that this driver supports.  

Circumstances can arise where it is undesirable to send an ID Query command string to the instrument.  When you set this parameter to VI_FALSE, the function initializes the instrument without performing an ID Query.     �    Specify whether you want the to reset the instrument during the initialization procedure.

Valid Range:
VI_TRUE  (1) - Reset Device (Default Value)
VI_FALSE (0) - Don't Reset

    �    Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Notes:

(1) This function creates a new session each time you invoke it.  This is useful if you have multiple physical instances of the same type of instrument.  

(2) Avoid creating multiple concurrent sessions to the same physical instrument.  Although you can create more than one IVI session for the same resource, it is best not to do so.  A better approach is to use the same IVI session in multiple execution threads.  You can use functions ag1000ni_LockSession and ag1000ni_UnlockSession to protect sections of code that require exclusive access to the resource.

    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    � =   �  �    Resource Name                     m : �       ID Query                           x =� �       Reset Device                      !2 �C �  �    Instrument Handle                 #�#����  �    Status                                Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	          N    This function performs the following initialization actions:

- Creates a new IVI instrument driver and optionally sets the initial state of the following session attributes:

    AG1000NI_ATTR_RANGE_CHECK         
    AG1000NI_ATTR_QUERY_INSTRUMENT_STATUS  
    AG1000NI_ATTR_CACHE               
    AG1000NI_ATTR_SIMULATE            
    AG1000NI_ATTR_RECORD_COERCIONS    

- Opens a session to the specified device using the interface and address you specify for the Resource Name parameter.

- If the ID Query parameter is set to VI_TRUE, this function queries the instrument ID and checks that it is valid for this instrument driver.

- If the Reset parameter is set to VI_TRUE, this function resets the instrument to a known state.

- Sends initialization commands to set the instrument to the state necessary for the operation of the instrument driver.

- Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Note:  This function creates a new session each time you invoke it. Although you can open more than one IVI session for the same resource, it is best not to do so.  You can use the same session in multiple program threads.  You can use the ag1000ni_LockSession and ag1000ni_UnlockSession functions to protect sections of code that require exclusive access to the resource.

Content from the IVI specifications reproduced with permission from the IVI Foundation.

The IVI Foundation and its member companies make no warranty of any kind with regard to this material, including, but not limited to, the implied warranties of merchantability and fitness for a particular purpose. The IVI Foundation and its member companies shall not be liable for errors contained herein or for incidental or consequential damages in connection with the furnishing, performance, or use of this material.    �    Pass the resource name of the device to initialize.

You can also pass the name of a virtual instrument or logical name that you configure with the IVI Configuration utility.  The virtual instrument identifies a specific device and specifies the initial settings for the session.  A logical Name identifies a particular virtual instrument.

Refer to the following table below for the exact grammar to use for this parameter.  Optional fields are shown in square brackets ([]).

Syntax
------------------------------------------------------
GPIB[board]::<primary address>[::secondary address]::INSTR
VXI[board]::<logical address>::INSTR
GPIB-VXI[board]::<logical address>::INSTR
ASRL<port>::INSTR
<LogicalName>
<DriverSession>

If you do not specify a value for an optional field, the following values are used:

Optional Field - Value
------------------------------------------------------
board - 0
secondary address - none (31)

The following table contains example valid values for this parameter.

"Valid Value" - Description
------------------------------------------------------
"GPIB::22::INSTR" - GPIB board 0, primary address 22 no
                    secondary address
"GPIB::22::5::INSTR" - GPIB board 0, primary address 22
                       secondary address 5
"GPIB1::22::5::INSTR" - GPIB board 1, primary address 22
                        secondary address 5
"VXI::64::INSTR" - VXI board 0, logical address 64
"VXI1::64::INSTR" - VXI board 1, logical address 64
"GPIB-VXI::64::INSTR" - GPIB-VXI board 0, logical address 64
"GPIB-VXI1::64::INSTR" - GPIB-VXI board 1, logical address 64
"ASRL2::INSTR" - COM port 2
"SampleInstr" - Logical name "SampleInstr"
"xyz432" - Driver Session "xyz432"        Specify whether you want the instrument driver to perform an ID Query.

Valid Range:
VI_TRUE  (1) - Perform ID Query (Default Value)
VI_FALSE (0) - Skip ID Query

When you set this parameter to VI_TRUE, the driver verifies that the instrument you initialize is a type that this driver supports.  

Circumstances can arise where it is undesirable to send an ID Query command string to the instrument.  When you set this parameter to VI_FALSE, the function initializes the instrument without performing an ID Query.     �    Specify whether you want the to reset the instrument during the initialization procedure.

Valid Range:
VI_TRUE  (1) - Reset Device (Default Value)
VI_FALSE (0) - Don't Reset

    �    Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Notes:

(1) This function creates a new session each time you invoke it.  This is useful if you have multiple physical instances of the same type of instrument.  

(2) Avoid creating multiple concurrent sessions to the same physical instrument.  Although you can create more than one IVI session for the same resource, it is best not to do so.  A better approach is to use the same IVI session in multiple execution threads.  You can use functions ag1000ni_LockSession and ag1000ni_UnlockSession to protect sections of code that require exclusive access to the resource.

    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    �    You can use this control to set the initial value of certain attributes for the session.  The following table lists the attributes and the name you use in this parameter to identify the attribute.

Name              Attribute Defined Constant   
--------------------------------------------
RangeCheck        AG1000NI_ATTR_RANGE_CHECK
QueryInstrStatus  AG1000NI_ATTR_QUERY_INSTRUMENT_STATUS   
Cache             AG1000NI_ATTR_CACHE   
Simulate          AG1000NI_ATTR_SIMULATE  
RecordCoercions   AG1000NI_ATTR_RECORD_COERCIONS

The format of this string is, "AttributeName=Value" where AttributeName is the name of the attribute and Value is the value to which the attribute will be set.  To set multiple attributes, separate their assignments with a comma.  

If you pass NULL or an empty string for this parameter, the session uses the default values for the attributes.   You can override the default values by assigning a value explicitly in a string you pass for this parameter.  You do not have to specify all of the attributes and may leave any of them out.  If you do not specify one of the attributes, its default value will be used.  

The default values for the attributes are shown below:

    Attribute Name     Default Value
    ----------------   -------------
    RangeCheck         VI_TRUE
    QueryInstrStatus   VI_FALSE
    Cache              VI_TRUE
    Simulate           VI_FALSE
    RecordCoercions    VI_FALSE
    

The following are the valid values for ViBoolean attributes:

    True:     1, TRUE, or VI_TRUE
    False:    0, False, or VI_FALSE


Default Value:
       "Simulate=0,RangeCheck=1,QueryInstrStatus=0,Cache=1"

Notes:
(1) For the DriverSetup parameter, you can pass the following strings:
  Model: X where X is the instrument type DSO1002A, DSO1004A, DSO1012A, DSO1014A, DSO1022A and DSO1024A.

Here is an example of this option string which turns on simulation and emulates the Agilent DSO1002A:

  "Simulate=1,DriverSetup=Model:DSO1002A"    3 =   �  �    Resource Name                     9� : �       ID Query                          ;� =� �       Reset Device                      <� �Y �  �    Instrument Handle                 ?R#����  �    Status                            E� �  � �    Option String                         Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	           5"Simulate=0,RangeCheck=1,QueryInstrStatus=0,Cache=1"    ^    This function configures how the oscilloscope acquires data and fills the waveform record.       �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    �    Specify the manner in which you want the oscilloscope to acquire data and fill the waveform record.  The driver sets the AG1000NI_ATTR_ACQUISITION_TYPE to this value. 

Valid Values:
- AG1000NI_VAL_NORMAL - Sets the oscilloscope to
  the normal acquisition mode.  The oscilloscope acquires one
  sample for each point in the waveform record.  The   
  oscilloscope can use real-time or equivalent-time sampling.

- AG1000NI_VAL_PEAK_DETECT - Sets the oscilloscope
  to the peak-detect acquisition mode.  The oscilloscope 
  oversamples the input signal and keeps the minimum and
  maximum values that correspond to each position in the 
  waveform record.  The oscilloscope uses only real-time
  sampling.

- AG1000NI_VAL_AVERAGE - Sets the oscilloscope to
  the average acquisition mode.  The oscilloscope acquires
  multiple waveforms and calculates an average value for each
  point in the waveform record.  You specify the number of 
  waveforms the oscilloscope acquires with the 
  ag1000ni_ConfigureNumberOfAverages function.  The
  oscilloscope can use real-time or equivalent-time sampling. 

Default value: AG1000NI_VAL_NORMAL

Notes:

(1) When you set this parameter to AG1000NI_VAL_ENVELOPE or AG1000NI_VAL_PEAK_DETECT, the oscilloscope acquires minimum and maximum waveforms.  To retrieve the minimum and maximum waveforms, use the ag1000ni_ReadMinMaxWaveform and ag1000ni_FetchMinMaxWaveform functions.

    O�-   �  �    Instrument Handle                 Pt#����  �    Status                            V� : � � �    Acquisition Type                       	                      ]Normal AG1000NI_VAL_NORMAL Peak Detect AG1000NI_VAL_PEAK_DETECT Average AG1000NI_VAL_AVERAGE    �    This function configures the common attributes of the acquisition subsystem.  These attributes are the time per record, minimum record length, and acquisition start time.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Pass the time in seconds that corresponds to the record length.  The driver sets the AG1000NI_ATTR_HORZ_TIME_PER_RECORD attribute to this value.

Units: seconds

Valid Range:
The time value of each horizontal scale is in a 1- 2- 5 sequence (for example, 1.0E- 9, 2.0E- 9, 5.0E- 9, ..., 1.0E+00, 2.0E+00, 5.0E+00) from:
1 ns/div to 50 s/div (DSO102xA).
2 ns/div to 50 s/div (DSO101xA).
5 ns/div to 50 s/div (DSO100xA).

Default Value: 0.001    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    ;    Pass the minimum number of points you require in the waveform record for each channel.  The driver sets the  AG1000NI_ATTR_HORZ_MIN_NUM_PTS attribute to this value and configures the record length that the oscilloscope uses for waveform acquisition.  Call the ag1000ni_ActualRecordLength function to obtain the actual record length.

Valid Values:
10240
20480   

Default Value: 10240

Notes:
(1) For memory data, whether 10k or 20k points are available depends on the sample rate. When the sample rate is 2 GSa/s (that is, when the horizontal scale is 20 ns/div or less and in half channel), up to 20k points of memory data can be returned; otherwise, up to 10k points of memory data can be returned. Half channel is when only one channel of a pair is on. Channels 1and 2 are one pair, and channels 3 and 4 are another pair.        Specifies the length of time from the trigger event to the first point in the waveform record.  If the value is positive, the first point in the waveform record occurs after the trigger event.  If the value is negative, the first point in the waveform record occurs before the trigger event. The driver sets the AG1000NI_ATTR_ACQUISITION_START_TIME to this value.

Valid Range:
The maximum position value depends on the time/division  settings.
If the horizontal time base is set between 50 s/div and 50 ms/div, the delayed trigger time range is:
offset_value = ��6div x time base setting
If the horizontal time base is set to less than 50 ms/div then the delayed trigger time range is:
offset_value = �C14div x time base setting to 1s

The unit is in seconds.
Default Value: 0.0

    ^M-   �  �    Instrument Handle                 _ =  �  �    Time Per Record (seconds)         `�#����  �    Status                            g> = � �  �    Minimum Record Length             j� =~ �  �    Acquisition Start Time (second)        0.001    	           10240    0.0   t    This function configures the number of waveforms that the oscilloscope  acquires and averages.  After the oscilloscope acquires as many waveforms as you specify, it returns to the idle state.  

Notes:

(1) Set the acquisition type to AG1000NI_VAL_AVERAGE before you call this function.  To set the acquisition type, call the ag1000ni_ConfigureAcquisitionType function.      �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    �    Pass the number of waveforms you want the oscilloscope to acquire and to average.  The driver sets the AG1000NI_ATTR_NUM_AVERAGES attribute to this value.  

After the oscilloscope acquires as many waveforms as you specify, it returns to the idle state.

Valid Values:
2, 4, 8, 16, 32, 64, 128, 256

Default Value: 2

Notes:

(1) This parameter affects instrument behavior only when the Acquisition Type is set to AG1000NI_VAL_AVERAGE.    pF-   �  �    Instrument Handle                 q #����  �    Status                            wv = � �  �    Number of Averages                     	           2    G    This function sets the continuous acquisition mode on the instrument.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    Specifies whether the oscilloscope is enabled for continuous acquisition. The driver uses this value to set the AG1000NI_ATTR_INITIATE_CONTINUOUS attribute. 

Valid Values: 
    VI_TRUE
    VI_FALSE

Default Value: VI_FALSE    z6-   �  �    Instrument Handle                 z�#����  �    Status                            �f V � �       Initiate Continuous                    	           On VI_TRUE Off VI_FALSE    �    This function configures the common attributes of the oscilloscope's channel subsystem for a particular channel.  These attributes are the vertical range, vertical offset, coupling, probe attenuation, and channel enabled.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Pass the channel name you want to configure.

Valid Channel Names:
For DSO1X2X:
"CHAN1"
"CHAN2"
For DSO1X4X:
"CHAN1"
"CHAN2"
"CHAN3"
"CHAN4"

Default Value: ""

Notes:

(1) You can specify the channel name as a string variable or as a literal enclosed in double quotes.    �    Pass the value of the input range the oscilloscope uses for the channel.  The driver sets the AG1000NI_ATTR_VERTICAL_RANGE attribute to this value.
For example, to acquire a sine wave that spans between 0.0 and 10.0 volts, pass 10.0 as the value of this parameter.

Units:  volts
  
Valid Values: 
2 mV to 10 V for each vertical scale when the probe attenuation factor is 1X.
20 mV to 100 V for each vertical scale when the probe attenuation factor is 10X.
200 mV to 1000 for each vertical scale V when the probe attenuation factor is 100X.
2 V to 10000 V for each vertical scale when the probe attenuation factor is 1000X.
 
Default Value: 10.0

    z    Pass the location of the center of the range that you specify with for the Vertical Range parameter.  Express the value with respect to ground.  The driver sets the AG1000NI_ATTR_VERTICAL_OFFSET to this value.

For example, to acquire a sine wave that spans between 0.0 and 10.0 volts, pass 5.0 as the value of this parameter.

Units:  volts

Valid Range:  
The range of legal values varies with the value of Vertical Range. If you set the offset to a value outside of the legal range, the offset value is automatically set to the nearest legal value. Legal values are affected by the probe attenuation setting.
 
Default Value: 0.0    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    9    Specify how you want the oscilloscope to couple the input signal for the channel.  The driver sets the AG1000NI_ATTR_VERTICAL_COUPLING attribute to this value.

Valid Values:
  AG1000NI_VAL_AC  - AC Coupling
  AG1000NI_VAL_DC  - DC Coupling
  AG1000NI_VAL_GND - Ground Coupling

Default value: AG1000NI_VAL_AC

    a    Pass the scaling factor by which the probe you attach to the channel attenuates the input.  For example, when you use a 10:1 probe, set this parameter to 10.0.  The driver sets the AG1000NI_ATTR_PROBE_ATTENUATION to this value.

This driver reserves negative values to control the oscilloscope's automatic probe sense capability.  Setting this parameter to AG1000NI_VAL_PROBE_SENSE_ON (-1) configures the oscilloscope to sense the attenuation of the probe automatically.  

Valid Values:
  0.001 - Sets the manual probe attenuation to 0.001
   0.01 - Sets the manual probe attenuation to 0.01
    0.1 - Sets the manual probe attenuation to 0.1
      1 - Sets the manual probe attenuation to 1
     10 - Sets the manual probe attenuation to 10
    100 - Sets the manual probe attenuation to 100
   1000 - Sets the manual probe attenuation to 1000

Default Value: 1    t    Specify whether you want the oscilloscope to acquire a waveform for the channel when you call the  ag1000ni_InitiateAcquisition, ag1000ni_ReadWaveform, ag1000ni_ReadMinMaxWaveform, or ag1000ni_ReadWaveformMeasurement function.  The driver sets the AG1000NI_ATTR_CHANNEL_ENABLED attribute to this value. 
 
Valid Values: 
    VI_TRUE
    VI_FALSE

Default Value: VI_TRUE
    � -   �  �    Instrument Handle                 �� =  �  �    Channel Name                      �� = � �  �    Vertical Range (volts)            �b =~ �  �    Vertical Offset (volts)           ��#����  �    Status                            �Z �  � �    Vertical Coupling                 �� � � �  �    Probe Attenuation                 � �� �  �    Channel Enabled                        "CHAN1"    10.0    0.0    	                      ;AC AG1000NI_VAL_AC DC AG1000NI_VAL_DC GND AG1000NI_VAL_GND    1   True VI_TRUE False VI_FALSE    �    This function configures the attributes that control the electrical characteristics of the channel.  These attributes are the input impedance and the bandwidth.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Pass the channel name you want to configure.

Valid Channel Names:
For DSO1X2X:
"CHAN1"
"CHAN2"
For DSO1X4X:
"CHAN1"
"CHAN2"
"CHAN3"

Default Value: "CHAN1"

Notes:

(1) You can specify the channel name as a string variable or as a literal enclosed in double quotes.     �    Pass the input impedance you want to use for the channel.  The driver sets the AG1000NI_ATTR_INPUT_IMPEDANCE to this value.

Units:  ohms.

Valid Values:
  1.0 mega ohm

Default Value:   1.0 mega ohm     �    Pass the bandwidth you want to use for the channel.  Express this value as the frequency at which the input circuitry attenuates the input signal by 3 dB.  The driver sets the AG1000NI_ATTR_MAX_INPUT_FREQUENCY attribute to this value.  

Units:  hertz.

Valid Range:  
Passing 25 MHz or a lower value will set the Max Input Frequency to 25 MHz.
Passing a value greater than 25 MHz will set the Max Input Frequency to Infinity.

Default value:  25 MHz    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    �j-   �  �    Instrument Handle                 �$ Q  �  �    Channel Name                      �8 P � � �    Input Impedance (ohms)            �
 Q~ �  �    Max Input Frequency (hertz)       ��#����  �    Status                                 "CHAN1"               1.0 mega ohm 1.0E+06    25.0e6    	           e    This function configures the attributes that control the adjustment characteristics of the channel.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Pass the channel name you want to configure.

Valid Channel Names:
For DSO1X2X:
"CHAN1"
"CHAN2"
For DSO1X4X:
"CHAN1"
"CHAN2"
"CHAN3"

Default Value: "CHAN1"

Notes:

(1) You can specify the channel name as a string variable or as a literal enclosed in double quotes.    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    Specifies whether the oscilloscope is enabled for input inversion. The driver uses this value to set the AG1000NI_ATTR_INPUT_INVERSION_ENABLED attribute. 

Valid Values: 
    VI_TRUE
    VI_FALSE

Default Value: VI_FALSE     �    Specifies whether the digital filter is enabled. The driver uses this value to set the AG1000NI_ATTR_DIGITAL_FILTER_ENABLED attribute. 

Valid Values: 
    VI_TRUE
    VI_FALSE

Default Value: VI_FALSE    � �   �  �    Instrument Handle                 �� #  �  �    Channel Name                      �� �����  �    Status                            �O  � �       Input Inverted                    �5 � �       Digital Filter Enabled                 "CHAN1"    	           On VI_TRUE Off VI_FALSE    On VI_TRUE Off VI_FALSE   0    This function configures the common attributes of the trigger subsystem.  These attributes are the trigger type and holdoff.

When you call ag1000ni_ReadWaveform, ag1000ni_ReadWaveformMeasurement, ag1000ni_ReadMinMaxWaveform, or ag1000ni_InitiateAcquisition, the oscilloscope waits for a trigger.  You specify the type of trigger for which the oscilloscope waits with the Trigger Type parameter.  

If the oscilloscope requires multiple waveform acquisitions to build a complete waveform, it waits for the length of time you specify with the Holdoff parameter to elapse since the previous trigger.  The oscilloscope then waits for the next trigger.  Once the oscilloscope acquires a complete waveform, it returns to the Idle state.

Notes:

(1) After you call this function, you must call the trigger configuration function that corresponds to the Trigger Type you select to completely specify the trigger.  For example, if you set the Trigger Type to AG1000NI_VAL_EDGE_TRIGGER, you use the ag1000ni_ConfigureEdgeTriggerSource function to completely specify the trigger.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Pass the type of trigger you want the oscilloscope to use.  The driver sets the AG1000NI_ATTR_TRIGGER_TYPE to this value.  

Defined Values:

- AG1000NI_VAL_EDGE_TRIGGER - Configures the oscilloscope
  for edge triggering.  An edge trigger occurs when the trigger
  signal crosses the trigger level you specify with the slope
  you specify.  You configure the trigger level and slope with
  the ag1000ni_ConfigureEdgeTriggerSource function.
  
- AG1000NI_VAL_TV_TRIGGER - Configures the oscilloscope for
  TV triggering.  You configure the TV signal type, the field
  and line on which to trigger, and the signal polarity with the
  ag1000ni_ConfigureTVTriggerSource function.

- AG1000NI_VAL_PULSE_TRIGGER - Configures the oscilloscope for
  Pulse triggering. You configure the trigger level, trigger 
  width and mode with the ag1000ni_ConfigurePulseTriggerSource 
  function.

- AG1000NI_VAL_PATTERN_TRIGGER - Configures the oscilloscope for
  Pattern triggering. You configure the trigger level and 
  pattern with the ag1000ni_ConfigurePatternTriggerSource 
  function.

- AG1000NI_VAL_ALTERNATION_TRIGGER - Configures the oscilloscope 
  for Pulse triggering. You configure the trigger source, mode 
  with the ag1000ni_ConfigureAlternationTrigger function.

Default Value: AG1000NI_VAL_EDGE_TRIGGER

Notes:

(1) This control configures the type of trigger the oscilloscope uses.  After you call this function, you must call the appropriate trigger configuration function to completely specify the trigger.    f    Pass the length of time you want the oscilloscope to wait after it detects a trigger until the oscilloscope enables the trigger subsystem to detect another trigger.  The driver sets the AG1000NI_ATTR_TRIGGER_HOLDOFF attribute to this value.

This parameter affects instrument operation only when the oscilloscope requires multiple acquisitions to build a complete waveform.  The oscilloscope requires multiple waveform acquisitions when it uses equivalent-time sampling or when you set the acquisition type to envelope or average.

Units:  seconds

Valid Range:  100.0e-9 to 1.5 seconds

Default Value:  100.0e-9    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    ��-   �  �    Instrument Handle                 �T G E � �    Trigger Type                      �F F> �  �    Trigger Holdoff (sec)             ��#����  �    Status                                            �Edge AG1000NI_VAL_EDGE_TRIGGER TV AG1000NI_VAL_TV_TRIGGER Pulse AG1000NI_VAL_PULSE_TRIGGER Pattern AG1000NI_VAL_PATTERN_TRIGGER Alternation AG1000NI_VAL_ALTERNATION_TRIGGER    	100.0e-9    	           C    Sets the AG1000NI_ATTR_TRIGGER_COUPLING attribute of the driver.
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    �    Sets the AG1000NI_ATTR_TRIGGER_COUPLING attribute.

Valid Values:
  AG1000NI_VAL_AC           - AC Trigger Coupling
  AG1000NI_VAL_DC           - DC Trigger Coupling
  AG1000NI_VAL_LF_REJECT    - Low Frequency Reject

Default Value:  AG1000NI_VAL_DC

Notes:

(1) The instrument keeps three seperate records for the values defined in this function: AC/DC coupling, LF/HF/No reject, and Noise/No Noise reject.  However, for class compliance, the driver masks the three records by turning off any unused state.  For example, if coupling is set to DC, both LF/HF reject and Noise reject are turned off.

(2) Since the instrument requires itself to be in either DC or AC coupling state, the driver automatically sets the instrument to DC coupling if the user sets coupling to LF reject, HF reject, or Noise reject.  Also note that the instrument cannot have both AC coupling and high frequency reject both turned on.
    �!+   �  �    Instrument Handle                 ��!����  �    Status                            �Q W � � �    Trigger Coupling                       	                     MAC AG1000NI_VAL_AC DC AG1000NI_VAL_DC Low Freq Reject AG1000NI_VAL_LF_REJECT    B    Sets the AG1000NI_ATTR_TRIGGER_MODIFIER attribute of the driver.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    8    Sets the AG1000NI_ATTR_TRIGGER_MODIFIER attribute.

Valid Values:
  AG1000NI_VAL_NO_TRIGGER_MOD - no modifier
  AG1000NI_VAL_AUTO           - automatic trigger
  AG1000NI_VAL_SINGLE         - when trigger occurs, the  
                                oscilloscope will sweep once,
                                and waveform data from a single
                                acquisition will appear on the
                                screen.

Default Value:  AG1000NI_VAL_NO_TRIGGER_MOD

Notes:
(1) This attribute is not available in Alternation Trigger mode.
    �@+   �  �    Instrument Handle                 ��!����  �    Status                            �p W � � �    Trigger Modifier                       	                      bNo Trigger Modifier AG1000NI_VAL_NO_TRIGGER_MOD Auto AG1000NI_VAL_AUTO Single AG1000NI_VAL_SINGLE    7    Configures additional characteristics for triggering.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Trigger sensitivity specifies the vertical change that must occur in order for a trigger to be recognized.  The driver sets the AG1000NI_ATTR_TRIGGER_SENSITIVITY attribute to this value.

Units:  volts

Valid Range:  
Depends on the vertical range.
0.1 to 1 div

Default Value:  1.0    �    Turns the high frequency reject filter on or off. The high frequency reject filter adds a 10 kHz low- pass filter in the trigger path to remove high frequency components from the trigger waveform. Use this filter to remove high- frequency noise, such as AM or FM broadcast stations, from the trigger path.  The driver sets the AG1000NI_ATTR_TRIGGER_HF_REJECT_ENABLED attribute to this value. 
 
Valid Values: 
    VI_TRUE
    VI_FALSE

Default Value: VI_FALSE
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    �-   �  �    Instrument Handle                 �� -  �  �    Sensitivity (volts)               �� -� �  �    HF Reject Filter Enabled          ��#����  �    Status                                 1.0    True VI_TRUE False VI_FALSE    	          �    This function configures the edge trigger.  An edge trigger occurs when the trigger signal passes through the voltage threshold that you specify with the Trigger Level parameter and has the slope that you specify with the Trigger Slope parameter.  

Notes:

(1)  This function affects instrument behavior only if the Trigger Type is AG1000NI_VAL_EDGE_TRIGGER.  Call the ag1000ni_ConfigureTrigger function to set the Trigger Type before you call this function.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    �    Pass the voltage threshold you want the oscilloscope to use for edge triggering.  The driver sets the AG1000NI_ATTR_TRIGGER_LEVEL attribute to this value.

The oscilloscope triggers when the trigger signal passes through the threshold you specify with this parameter and has the slope you specify with the Trigger Slope parameter.

Units:  volts

Valid Range:
Depends on the Vertical Range attribute.
-12 div to +12 div
 
Default Value: 0.0

Notes:

(1) This parameter only affects instrument behavior when you select a channel or the external trigger input as the Trigger Source.  You cannot configure the trigger level that the oscilloscope uses for other trigger sources.      �    Specify whether you want a rising edge or a falling edge passing through the Trigger Level to trigger the oscilloscope.  The driver sets the AG1000NI_ATTR_TRIGGER_SLOPE attribute to this value.

Defined Values:
  AG1000NI_VAL_POSITIVE    - Rising edge
  AG1000NI_VAL_NEGATIVE    - Falling edge
  AG1000NI_VAL_ALTERNATION - Rising or falling edge

Default value: AG1000NI_VAL_POSITIVE

    x    Pass the source you want the oscilloscope to monitor for a trigger.  The driver sets the AG1000NI_ATTR_TRIGGER_SOURCE attribute to this value. 

After you call one of the ag1000ni_ReadWaveform, ag1000ni_ReadMinMaxWaveform, ag1000ni_ReadWaveformMeasurement, or ag1000ni_InitiateAcquisition functions, the oscilloscope waits for the trigger you specify in this parameter.  

This control accepts one of the valid channel names or additional trigger sources listed below.  

Valid Channel Names:
"CHAN1"
"CHAN2"
"CHAN3"
"CHAN4"
"EXT"
"EXT5"
"ACLINE"

Notes:
(1) "CHAN3" and "CHAN4" are only available for scopes with four channels.

    �-   �  �    Instrument Handle                 ��#����  �    Status                            �H B; �  �    Trigger Level (volts)             �� �; � �    Trigger Slope                     �� B K � �    Trigger Source                         	           0.0               cPositive AG1000NI_VAL_POSITIVE Negative AG1000NI_VAL_NEGATIVE Alternation AG1000NI_VAL_ALTERNATION               YChan1 "CHAN1" Chan2 "CHAN2" Chan3 "CHAN3" Chan4 "CHAN4" External "EXT" External 5 "EXT5"   h    This function configures the TV trigger.  You configure the TV trigger source, signal format, the event on which to trigger, and the signal polarity.

Notes:

(1)  This function affects instrument behavior only if the Trigger Type is AG1000NI_VAL_TV_TRIGGER.  Call the ag1000ni_ConfigureTrigger function to set the Trigger Type before you call this function.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    0    Pass the type of TV signal on which the oscilloscope triggers.  The driver sets the AG1000NI_ATTR_TV_TRIGGER_SIGNAL_FORMAT attribute to this value.

Defined Values:
  AG1000NI_VAL_NTSC       - NTSC video signal
  AG1000NI_VAL_PALSECAM   - PAL or SECAM video signal

Default Value:  AG1000NI_VAL_NTSC  
     �    Pass the polarity of the TV signal.  The driver sets the AG1000NI_ATTR_TV_TRIGGER_POLARITY attribute to this value.

Defined Values:
  AG1000NI_VAL_TV_POSITIVE
  AG1000NI_VAL_TV_NEGATIVE

Default value: AG1000NI_VAL_TV_POSITIVE        Pass the source you want the oscilloscope to monitor for a trigger.  The driver sets the AG1000NI_ATTR_TRIGGER_SOURCE attribute to this value. 

After you call one of the ag1000ni_ReadWaveform, ag1000ni_ReadMinMaxWaveform, ag1000ni_ReadWaveformMeasurement, or ag1000ni_InitiateAcquisition functions, the oscilloscope waits for the trigger you specify in this parameter.  

This control accepts one of the valid channel names or additional trigger sources listed below.  

Valid Channel Names:
"CHAN1"
"CHAN2"
"CHAN3"
"CHAN4"
"EXT"
"EXT5"
        Pass the TV event on which you want the oscilloscope to trigger.  The driver sets the AG1000NI_ATTR_TV_TRIGGER_EVENT attribute to this value.

Defined Values:
  AG1000NI_VAL_TV_EVENT_LINE_NUMBER - Line Number
  AG1000NI_VAL_TV_EVENT_ALL_LINE     - All Lines
  AG1000NI_VAL_TV_EVENT_ODD_FIELD   - Odd Field
  AG1000NI_VAL_TV_EVENT_EVEN_FIELD  - Even Field

Note: If you select the Line Number event, use the ag1000ni_ConfigureTVTriggerLineNumber to configure the line number.

Default Value:  AG1000NI_VAL_TV_EVENT_LINE_NUMBER
    �k-   �  �    Instrument Handle                 �%#����  �    Status                           � FA � �    TV Trigger Signal Format         � �A � �    Trigger Polarity                 � F Y � �    Trigger Source                   � � a � �    TV Event                               	                      7NTSC AG1000NI_VAL_NTSC PAL-SECAM AG1000NI_VAL_PALSECAM               DPositive AG1000NI_VAL_TV_POSITIVE Negative AG1000NI_VAL_TV_NEGATIVE               YChan1 "CHAN1" Chan2 "CHAN2" Chan3 "CHAN3" Chan4 "CHAN4" External "EXT" External 5 "EXT5"               �Line Number AG1000NI_VAL_TV_EVENT_LINE_NUMBER All Line AG1000NI_VAL_TV_EVENT_ALL_LINE Odd Field AG1000NI_VAL_TV_EVENT_ODD_FIELD Even Field AG1000NI_VAL_TV_EVENT_EVEN_FIELD       This function configures the line on which TV trigger is set.

Notes:

(1)  This function affects instrument behavior only if the Trigger Type is AG1000NI_VAL_TV_TRIGGER.  Call the ag1000ni_ConfigureTrigger function to set the Trigger Type before you call this function.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    S    Pass the line on which you want the oscilloscope to trigger.  The line must be supported by the TV event you specify for the attribute AG1000NI_ATTR_TV_TRIGGER_EVENT.  The driver sets the AG1000NI_ATTR_TV_TRIGGER_LINE_NUMBER attribute to this value.

Valid Range:
1 to 625 in PALSECAM standard
1 to 525 in NTSC standard

Default Value: 1   -   �  �    Instrument Handle                �#����  �    Status                           N x � �  �    Line Count                             	           1    4    Sets the AG1000NI_ATTR_TV_TRIGGER_LEVEL attribute.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Pass the voltage threshold you want the oscilloscope to use for tv triggering.  The driver sets the AG1000NI_ATTR_TV_TRIGGER_LEVEL attribute to this value.

Units:  volts

Valid Range:
Depends on the Vertical Range attribute.
-12 div to +12 div
 
Default Value: 0.0    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
   �-   �  �    Instrument Handle                S - � �  �    TV Trigger Level (volts)         f#����  �    Status                                 0.0    	          K    This function configures the Pattern trigger.  You configure the Pattern trigger source, trigger level and pattern.

Notes:

(1)  This function affects instrument behavior only if the Trigger Type is AG1000NI_VAL_PATTERN_TRIGGER.  Call the ag1000ni_ConfigureTrigger function to set the Trigger Type before you call this function.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    �    Pass the pattern for pattern triggering.  The driver sets the AG1000NI_ATTR_PATTERN_TRIGGER_PATTERN attribute to this value.

Valid Values:
<pattern> ::= <value>,<mask>,<ext setting>[,<edge source>,<edge dir>]
<value> ::= integer in NR1 format
<mask> ::= integer in NR1 format
<ext setting> ::= {0 | 1} where 0=EXT, 1=EXT5
<edge source> ::= {0-4} where 0=Channel1, 1=Channel2, 2=Channel3,
3=Channel4, 4=EXT/EXT5 (specified by <ext setting>)
<edge dir> ::= {0 | 1} where 0=Negative, 1=Positive

For both <value> and <mask>, each bit corresponds to an input channel:
Bit 0 - Channel 1.
Bit 1 - Channel 2.
Bit 2 - Channel 3.
Bit 3 - Channel 4.
Bit 4 - External trigger input.
Set a <value> bit to "0" to select a low value for the input channel. Set a <value> bit to "1" to select a high value for the input channel. Set a <mask> bit to "0" to ignore the input channel (displayed as "X" on screen which means "don't care"). Only channels with a "1" set on the appropriate mask bit are used.
For example, to trigger on ch1=high, ch2=low, ch3=high, and EXT=rising edge, you would use the value 0 0101b or 5. To ignore the ch4 input, you would use the mask 1 0111b or 23. The resulting pattern command would be:
:TRIGger:PATTern:PATTern 5,23,0,4,1

Default value: "0,0,0"    m    Pass the source you want the oscilloscope to monitor for a trigger.  The driver sets the AG1000NI_ATTR_TRIGGER_SOURCE attribute to this value. 

After you call one of the ag1000ni_ReadWaveform, ag1000ni_ReadMinMaxWaveform, ag1000ni_ReadWaveformMeasurement, or ag1000ni_InitiateAcquisition functions, the oscilloscope waits for the trigger you specify in this parameter.  

This control accepts one of the valid channel names or additional trigger sources listed below.  

Valid Channel Names:
"CHAN1"
"CHAN2"
"CHAN3"
"CHAN4"
"EXT"
"EXT5"

Notes:
(1) "CHAN3" and "CHAN4" are only available for scopes with four channels.        Pass the voltage threshold you want the oscilloscope to use for pattern triggering.  The driver sets the AG1000NI_ATTR_PATTERN_TRIGGER_LEVEL attribute to this value.

Units:  volts

Valid Range:
Depends on the Vertical Range attribute.
-12 div to +12 div
 
Default Value: 0.0

Notes:

(1) This parameter only affects instrument behavior when you select a channel or the external trigger input as the Trigger Source.  You cannot configure the trigger level that the oscilloscope uses for other trigger sources.     "�-   �  �    Instrument Handle                #�#����  �    Status                           * �A �  �    Pattern                          / F Y � �    Trigger Source                   1� � a �  �    Pattern Trigger Level (volts)          	           "0,0,0"               YChan1 "CHAN1" Chan2 "CHAN2" Chan3 "CHAN3" Chan4 "CHAN4" External "EXT" External 5 "EXT5"    0.0   Y    This function configures the pulse trigger.  You configure the pulse trigger source, trigger mode, trigger level and trigger width.

Notes:

(1)  This function affects instrument behavior only if the Trigger Type is AG1000NI_VAL_PULSE_TRIGGER.  Call the ag1000ni_ConfigureTrigger function to set the Trigger Type before you call this function.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    �    Pass the mode on which the oscilloscope triggers.  The driver sets the AG1000NI_ATTR_PULSE_TRIGGER_MODE attribute to this value.

Defined Values:
  AG1000NI_VAL_PULSE_TRIGGER_GT_POSITIVE - Greater than Positive Pulse
  AG1000NI_VAL_PULSE_TRIGGER_LT_POSITIVE - Less than Positive Pulse
  AG1000NI_VAL_PULSE_TRIGGER_GT_NEGATIVE - Greater than Negative Pulse
  AG1000NI_VAL_PULSE_TRIGGER_LT_NEGATIVE - Less than Negative Pulse

Default Value:  AG1000NI_VAL_PULSE_TRIGGER_GT_POSITIVE  
     �    Pass the width of the pulse trigger.  The driver sets the AG1000NI_ATTR_PULSE_TRIGGER_WIDTH attribute to this value.

Units: seconds

Valid Range:
  20.0e-9 to 10.0

Default value: 20.0e-9    v    Pass the source you want the oscilloscope to monitor for a trigger.  The driver sets the AG1000NI_ATTR_TRIGGER_SOURCE attribute to this value. 

After you call one of the ag1000ni_ReadWaveform, ag1000ni_ReadMinMaxWaveform, ag1000ni_ReadWaveformMeasurement, or ag1000ni_InitiateAcquisition functions, the oscilloscope waits for the trigger you specify in this parameter.  

This control accepts one of the valid channel names or additional trigger sources listed below.  

Valid Channel Names:
"CHAN1"
"CHAN2"
"CHAN3"
"CHAN4"
"EXT"
"EXT5"
"ACLINE"

Notes:
(1) "CHAN3" and "CHAN4" are only available for scopes with four channels.        Pass the voltage threshold you want the oscilloscope to use for pattern triggering.  The driver sets the AG1000NI_ATTR_PATTERN_TRIGGER_LEVEL attribute to this value.

Units:  volts

Valid Range:
Depends on the Vertical Range attribute.
-12 div to +12 div
 
Default Value: 0.0

Notes:

(1) This parameter only affects instrument behavior when you select a channel or the external trigger input as the Trigger Source.  You cannot configure the trigger level that the oscilloscope uses for other trigger sources.     6�-   �  �    Instrument Handle                7<#����  �    Status                           =� FA � �    Pulse Trigger Mode               ?� �A �  �    Pulse Trigger Width (sec)        @d F Y � �    Trigger Source                   B� � a �  �    Pulse Trigger Level (volts)            	                     
Greater Than Positive Pulses AG1000NI_VAL_PULSE_TRIGGER_GT_POSITIVE Less Than Positive Pulses AG1000NI_VAL_PULSE_TRIGGER_LT_POSITIVE Greater Than Negative Pulses AG1000NI_VAL_PULSE_TRIGGER_GT_NEGATIVE Less Than Negative Pulses AG1000NI_VAL_PULSE_TRIGGER_LT_NEGATIVE    20.0e-9               YChan1 "CHAN1" Chan2 "CHAN2" Chan3 "CHAN3" Chan4 "CHAN4" External "EXT" External 5 "EXT5"    0.0       This function configures the alternation trigger. 

Notes:

(1)  This function affects instrument behavior only if the Trigger Type is AG1000NI_VAL_ALTERNATION_TRIGGER.  Call the ag1000ni_ConfigureTrigger function to set the Trigger Type before you call this function.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Pass the sources you want the oscilloscope to monitor for a trigger.  The driver sets the AG1000NI_ATTR_ALTERNATION_TRIGGER_SOURCE attribute to this value. 

This control accepts two of the valid channel names or additional trigger sources listed below.  

Valid Values:
AG1000NI_VAL_CH1CH2
AG1000NI_VAL_CH1CH3
AG1000NI_VAL_CH1CH4
AG1000NI_VAL_CH2CH3
AG1000NI_VAL_CH2CH4
AG1000NI_VAL_CH3CH4

Default Value: AG1000NI_VAL_CH1CH2

Notes:
(1) Sources with CH3 or CH4 involved are only available for scopes with four channels.     �    Specifies the current source configured for alternation trigger.

Valid Values:
"SOURA" - Specifies the first channel in alternation trigger source.
"SOURB" - Specifies the second channel in alternation trigger source.

Default Value: "SOURA"    k    Specify the alternation trigger type.  The driver sets the AG1000NI_ATTR_ALTERNATION_TRIGGER_TYPE attribute to this value.

Defined Values:
  AG1000NI_VAL_ALTERNATION_EDGE_TRIGGER  - Edge Trigger
  AG1000NI_VAL_ALTERNATION_TV_TRIGGER    - TV Trigger
  AG1000NI_VAL_ALTERNATION_PULSE_TRIGGER - Pulse Trigger

Default value: AG1000NI_VAL_ALTERNATION_EDGE_TRIGGER
        Sets the AG1000NI_ATTR_ALTERNATION_TRIGGER_COUPLING attribute.

Valid Values:
  AG1000NI_VAL_AC           - AC Trigger Coupling
  AG1000NI_VAL_DC           - DC Trigger Coupling
  AG1000NI_VAL_LF_REJECT    - Low Frequency Reject

Default Value:  AG1000NI_VAL_DC    l    Pass the length of time you want the oscilloscope to wait after it detects a trigger until the oscilloscope enables the trigger subsystem to detect another trigger.  The driver sets the AG1000NI_ATTR_PULSE_TRIGGER_HOLDOFF attribute to this value.

This parameter affects instrument operation only when the oscilloscope requires multiple acquisitions to build a complete waveform.  The oscilloscope requires multiple waveform acquisitions when it uses equivalent-time sampling or when you set the acquisition type to envelope or average.

Units:  seconds

Valid Range:  100.0e-9 to 1.5 seconds

Default Value:  100.0e-9    (    Trigger sensitivity specifies the vertical change that must occur in order for a trigger to be recognized.  The driver sets the AG1000NI_ATTR_ALTERNATION_TRIGGER_SENSITIVITY attribute to this value.

Units:  volts

Valid Range:  
Depends on the vertical range.
0.1 to 1 div

Default Value:  1.0    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
   H�-   �  �    Instrument Handle                I� -  � �    Source                           K� - � � �    Current Source                   L� -� � �    Alternation Trigger Type         N �  � �    Trigger Coupling                 O- � � �  �    Trigger Holdoff (sec)            Q� �� �  �    Trigger Sensitivity (volts)      R�#����  �    Status                                            �Channel1 Channel2 AG1000NI_VAL_CH1CH2 Channel1 Channel3 AG1000NI_VAL_CH1CH3 Channel1 Channel4 AG1000NI_VAL_CH1CH4 Channel2 Channel3 AG1000NI_VAL_CH2CH3 Channel2 Channel4 AG1000NI_VAL_CH2CH4 Channel3 Channel4 AG1000NI_VAL_CH3CH4               "Source A "SOURA" Source B "SOURB"               �Alternation Edge Trigger AG1000NI_VAL_ALTERNATION_EDGE_TRIGGER Alternation TV Trigger AG1000NI_VAL_ALTERNATION_TV_TRIGGER Alternation Pulse Trigger AG1000NI_VAL_ALTERNATION_PULSE_TRIGGER              GAC AG1000NI_VAL_AC DC AG1000NI_VAL_DC LF Reject AG1000NI_VAL_LF_REJECT    	100.0e-9    1.0    	          �    This function configures the alternation edge trigger.  An edge trigger occurs when the trigger signal passes through the voltage threshold that you specify with the Trigger Level parameter and has the slope that you specify with the Trigger Slope parameter.  

Notes:

(1)  This function affects instrument behavior only if the Trigger Type is AG1000NI_VAL_ALTERNATION_EDGE_TRIGGER.  Call the ag1000ni_ConfigureAlternationTrigger function to set the Trigger Type before you call this function.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Pass the voltage threshold you want the oscilloscope to use for edge triggering.  The driver sets the AG1000NI_ATTR_ALTERNATION_EDGE_TRIGGER_LEVEL attribute to this value.

Units:  volts

Valid Range:
Depends on the Vertical Range attribute.
-12 div to +12 div
 
Default Value: 0.0    �    Specify whether you want a rising edge or a falling edge passing through the Trigger Level to trigger the oscilloscope.  The driver sets the AG1000NI_ATTR_ALTERNATION_EDGE_TRIGGER_SLOPE attribute to this value.

Defined Values:
  AG1000NI_VAL_POSITIVE    - Rising edge
  AG1000NI_VAL_NEGATIVE    - Falling edge
  AG1000NI_VAL_ALTERNATION - Rising or falling edge

Default value: AG1000NI_VAL_POSITIVE

    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    Specifies the current source configured for alternation trigger.

Valid Values:
"SOURA" - Specifies the first channel in alternation trigger source.
"SOURB" - Specifies the second channel in alternation trigger source.

Default Value: "SOURA"   _N-   �  �    Instrument Handle                ` . � �  �    Level (volts)                    a+ -� � �    Slope                            b�#����  �    Status                           i= - % � �    Current Source                         0.0               cPositive AG1000NI_VAL_POSITIVE Negative AG1000NI_VAL_NEGATIVE Alternation AG1000NI_VAL_ALTERNATION    	                      "Source A "SOURA" Source B "SOURB"   m    This function configures the alternation pulse trigger.  You configure the pulse trigger source, trigger mode and trigger width.

Notes:

(1)  This function affects instrument behavior only if the Trigger Type is AG1000NI_VAL_ALTERNATION_PULSE_TRIGGER.  Call the ag1000ni_ConfigureAlternationTrigger function to set the Trigger Type before you call this function.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Pass the mode on which the oscilloscope triggers.  The driver sets the AG1000NI_ATTR_ALTERNATION_PULSE_TRIGGER_MODE attribute to this value.

Defined Values:
  AG1000NI_VAL_PULSE_TRIGGER_GT_POSITIVE - Greater than Positive Pulse
  AG1000NI_VAL_PULSE_TRIGGER_LT_POSITIVE - Less than Positive Pulse
  AG1000NI_VAL_PULSE_TRIGGER_GT_NEGATIVE - Greater than Negative Pulse
  AG1000NI_VAL_PULSE_TRIGGER_LT_NEGATIVE - Less than Negative Pulse

Default Value:  AG1000NI_VAL_PULSE_TRIGGER_GT_POSITIVE  
     �    Pass the width of the pulse trigger.  The driver sets the AG1000NI_ATTR_ALTERNATION_PULSE_TRIGGER_WIDTH attribute to this value.

Units: seconds

Valid Range:
  20.0e-9 to 10.0

Default value: 20.0e-9    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    Specifies the current source configured for alternation trigger.

Valid Values:
"SOURA" - Specifies the first channel in alternation trigger source.
"SOURB" - Specifies the second channel in alternation trigger source.

Default Value: "SOURA"   mq-   �  �    Instrument Handle                n+ . � � �    Mode                             p# /� �  �    Width (sec)                      p�#����  �    Status                           wk . % � �    Current Source                                   
Greater Than Positive Pulses AG1000NI_VAL_PULSE_TRIGGER_GT_POSITIVE Less Than Positive Pulses AG1000NI_VAL_PULSE_TRIGGER_LT_POSITIVE Greater Than Negative Pulses AG1000NI_VAL_PULSE_TRIGGER_GT_NEGATIVE Less Than Negative Pulses AG1000NI_VAL_PULSE_TRIGGER_LT_NEGATIVE    20.0e-9    	                      "Source A "SOURA" Source B "SOURB"   �    This function configures the alternation TV trigger.  You configure the TV trigger source, signal format, the event on which to trigger, the signal polarity and line number.

Notes:

(1)  This function affects instrument behavior only if the Trigger Type is AG1000NI_VAL_ALTERNATION_TV_TRIGGER.  Call the ag1000ni_ConfigureAlternationTrigger function to set the Trigger Type before you call this function.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    <    Pass the type of TV signal on which the oscilloscope triggers.  The driver sets the AG1000NI_ATTR_ALTERNATION_TV_TRIGGER_SIGNAL_FORMAT attribute to this value.

Defined Values:
  AG1000NI_VAL_NTSC       - NTSC video signal
  AG1000NI_VAL_PALSECAM   - PAL or SECAM video signal

Default Value:  AG1000NI_VAL_NTSC  
    �    Pass the TV event on which you want the oscilloscope to trigger.  The driver sets the AG1000NI_ATTR_ALTERNATION_TV_TRIGGER_EVENT attribute to this value.

Defined Values:
  AG1000NI_VAL_TV_EVENT_LINE_NUMBER - Line Number
  AG1000NI_VAL_TV_EVENT_ALL_LINE     - All Lines
  AG1000NI_VAL_TV_EVENT_ODD_FIELD    - Odd Field
  AG1000NI_VAL_TV_EVENT_EVEN_FIELD   - Even Field

Default Value:  AG1000NI_VAL_TV_EVENT_LINE_NUMBER
     �    Pass the polarity of the TV signal.  The driver sets the AG1000NI_ATTR_ALTERNATION_TV_TRIGGER_POLARITY attribute to this value.

Defined Values:
  AG1000NI_VAL_TV_POSITIVE
  AG1000NI_VAL_TV_NEGATIVE

Default value: AG1000NI_VAL_TV_POSITIVE    �    Pass the line on which you want the oscilloscope to trigger.  The line must be supported by the TV event you specify for the attribute AG1000NI_ATTR_ALTERNATION_TV_TRIGGER_EVENT.  The driver sets the AG1000NI_ATTR_TV_TRIGGER_LINE_NUMBER attribute to this value.

Valid Range:
1 to 625 in PALSECAM standard
1 to 525 in NTSC standard

Default Value: 1

Notes:
(1) This control is only valid when the Alternation TV Trigger Event attribute is set to AG1000NI_VAL_TV_EVENT_LINE_NUMBER.    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    Specifies the current source configured for alternation trigger.

Valid Values:
"SOURA" - Specifies the first channel in alternation trigger source.
"SOURB" - Specifies the second channel in alternation trigger source.

Default Value: "SOURA"   |t-   �  �    Instrument Handle                }. - � � �    Signal Format                    ~r -� � �    Event                            �  � % � �    Polarity                         � � � �  �    Line Number                      �#����  �    Status                           �z - % � �    Current Source                                    7NTSC AG1000NI_VAL_NTSC PAL-SECAM AG1000NI_VAL_PALSECAM               �TV Event Line Number AG1000NI_VAL_TV_EVENT_LINE_NUMBER TV Event All Line AG1000NI_VAL_TV_EVENT_ALL_LINE TV Event Odd Field AG1000NI_VAL_TV_EVENT_ODD_FIELD TV Event Even Field AG1000NI_VAL_TV_EVENT_EVEN_FIELD               JTV Positive AG1000NI_VAL_TV_POSITIVE TV Negative AG1000NI_VAL_TV_NEGATIVE    1    	                      "Source A "SOURA" Source B "SOURB"    �    This function configures the common attributes of the acquisition subsystem when alternation trigger mode is enabled.  These attributes are the time per record, and acquisition start time.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Pass the time in seconds that corresponds to the record length.  The driver sets the AG1000NI_ATTR_ALTERNATION_TRIGGER_HORZ_TIME_PER_RECORD attribute to this value.

Units: seconds

Valid Range:
The time value of each horizontal scale is in a 1- 2- 5 sequence (for example, 1.0E- 9, 2.0E- 9, 5.0E- 9, ..., 1.0E+00, 2.0E+00, 5.0E+00) from:
1 ns/div to 50 s/div (DSO102xA).
2 ns/div to 50 s/div (DSO101xA).
5 ns/div to 50 s/div (DSO100xA).

Default Value: 0.001    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    $    Specifies the length of time from the trigger event to the first point in the waveform record.  If the value is positive, the first point in the waveform record occurs after the trigger event.  If the value is negative, the first point in the waveform record occurs before the trigger event. The driver sets the AG1000NI_ATTR_ALTERNATION_TRIGGER_ACQUISITION_START_TIME to this value.

Valid Range:
The maximum position value depends on the time/division  settings.
If the horizontal time base is set between 50 s/div and 50 ms/div, the delayed trigger time range is:
offset_value = ��6div x time base setting
If the horizontal time base is set to less than 50 ms/div then the delayed trigger time range is:
offset_value = �C14div x time base setting to 1s

The unit is in seconds.
Default Value: 0.0


   �s-   �  �    Instrument Handle                �- > W �  �    Time Per Record (sec)            �#����  �    Status                           �x >G �  �    Acquisition Start Time (sec)           0.001    	           0.0   �    This function configures the reference levels for waveform measurements.  

You must call this function before you call the ag1000ni_ReadWaveformMeasurement or ag1000ni_FetchWaveformMeasurement to take a rise time, fall time, width negative, width positive, duty cycle negative, or duty cycle positive measurement.

Notes:
(1) This function is not supported. Calling this function will not affect the state of instrument.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
        Pass the low reference you want the oscilloscope to use for waveform measurements.  The driver sets the AG1000NI_ATTR_MEAS_LOW_REF attribute to this value.

Units:  A percentage of the difference between the Voltage High and Voltage Low.

Default Value:  10.0        Pass the mid reference you want the oscilloscope to use for waveform measurements.  The driver sets the AG1000NI_ATTR_MEAS_MID_REF attribute to this value.

Units:  A percentage of the difference between the Voltage High and Voltage Low.

Default Value:  50.0        Pass the high reference you want the oscilloscope to use for waveform measurements.  The driver sets the AG1000NI_ATTR_MEAS_HIGH_REF attribute to this value.

Units:  A percentage of the difference between the Voltage High and Voltage Low.

Default Value:  90.0   �G-   �  �    Instrument Handle                �#����  �    Status                           �w = % �  �    Low Ref (percentage)             �� = � �  �    Mid Ref (percentage)             �� =u �  �    High Ref (percentage)                  	           10.0    50.0    90.0   �    This function returns the actual number of points the oscilloscope acquires for each channel.  After you configure the oscilloscope for an acquisition, call this function to determine the size of the waveforms that the oscilloscope acquires.  The value is equal to or greater than the minimum number of points you specify in the ag1000ni_ConfigureAcquisitionRecord function.  

You must allocate a ViReal64 array of this size or greater to pass as the Waveform Array parameter of the ag1000ni_ReadWaveform and ag1000ni_FetchWaveform functions.

Notes:

(1) The oscilloscope may use different size records depending on the acquisition type.  You specify the acquisition type with the ag1000ni_ConfigureAcquisitionType function.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    n    Returns the actual number of points the oscilloscope acquires for each channel.  The value is equal to or greater than the minimum number of points you specify in the ag1000ni_ConfigureAcquisitionRecord function.  

You must allocate a ViReal64 array of this size or greater to pass as the Waveform Array parameter of the ag1000ni_ReadWaveform and ag1000ni_FetchWaveform functions.

Notes:

(1) The oscilloscope may use different size records depending on the acquisition type.  You specify the acquisition type the oscilloscope uses with the Acquisition Type parameter of the ag1000ni_ConfigureAcquisitionType function.   ��-   �  �    Instrument Handle                �k#����  �    Status                           �� = � �  �    Actual  Record Length                  	           	            L    This function returns the sample mode the oscilloscope is currently using.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    c    Returns the sample mode the oscilloscope is currently using.  The driver returns the value of the AG1000NI_ATTR_SAMPLE_MODE attribute. 

Valid Values:
- AG1000NI_VAL_REAL_TIME (0) - Indicates that the 
  oscilloscope is using real-time sampling.

- AG1000NI_VAL_EQUIVALENT_TIME (1) - Indicates that
  the oscilloscope is using equivalent-time sampling.
   �f-   �  �    Instrument Handle                � #����  �    Status                           �� V � �  �    Sample Mode                            	           	            �    This function returns the effective sample rate of the acquired waveform using the current configuration in samples per second.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    Returns the effective sample rate of the acquired waveform the oscilloscope acquires for each channel. The driver returns the value held in the AG1000NI_ATTR_HORZ_SAMPLE_RATE attribute.    �E-   �  �    Instrument Handle                ��#����  �    Status                           �u V � �  �    Sample Rate                            	           	          ]    This function automatically configures the instrument.

Notes:

(1) When you call this function, the oscilloscope senses the input signal and automatically configures many of the instrument settings.  The settings no longer match the cache values for the corresponding attributes.  Therefore, this function invalidates all attribute cache values.
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
   �Y-   �  �    Instrument Handle                �#����  �    Status                                 	          �    This function sets the value of a ViInt32 attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
        Pass the value to which you want to set the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    C    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Attributes 
  whose value cannot be set are dim.  Help text is shown for 
  each attribute.  Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box.  If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViInt32 type.   
  If you choose to see all IVI attributes, the data types appear
  to the right of the attribute names in the list box. 
  Attributes with data types other than ViInt32 are dim.  If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
     �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  1

Default Value:  ""
   ��-   �  �    Instrument Handle                א#����  �    Status                           � � � �  �    Attribute Value                 ���� � ���                                          �! = � � �    Attribute ID                     �l =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViReal64 attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
        Pass the value to which you want to set the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    B    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Attributes 
  whose value cannot be set are dim.  Help text is shown for 
  each attribute.  Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box.  If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViReal64
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box.
  Attributes with data types other than ViReal64 are dim.  If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
     �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  1

Default Value:  ""
   ��-   �  �    Instrument Handle                �#����  �    Status                           � � � �  �    Attribute Value                 ���� � ���                                          �* = � � �    Attribute ID                     �t =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViString attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
        Pass the value to which you want to set the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    A    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Attributes 
  whose value cannot be set are dim.  Help text is shown for 
  each attribute.  Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box.  If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViString
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box.
  Attributes with data types other than ViString are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
     �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  1

Default Value:  ""
   �-   �  �    Instrument Handle                �#����  �    Status                           
 � � �  �    Attribute Value                 ���� � ���                                          2 = � � �    Attribute ID                     { =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViBoolean attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
        Pass the value to which you want to set the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    C    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Attributes 
  whose value cannot be set are dim.  Help text is shown for 
  each attribute.  Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box.  If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViBoolean
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box.
  Attributes with data types other than ViBoolean are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
     �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  1

Default Value:  ""
   �-   �  �    Instrument Handle                �#����  �    Status                             � � �  �    Attribute Value                 ���� � ���                                          ": = � � �    Attribute ID                     '� =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViSession attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
        Pass the value to which you want to set the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none     �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  1

Default Value:  ""
    C    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Attributes 
  whose value cannot be set are dim.  Help text is shown for 
  each attribute.  Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box.  If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViSession
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box.
  Attributes with data types other than ViSession are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
   .�-   �  �    Instrument Handle                /�#����  �    Status                           6) � � �  �    Attribute Value                  8D =  �  �    Channel Name                     9H = � � �    Attribute ID                    ���� � ���                                                	               ""                0    .Press <ENTER> for a list of 
value constants.   �    This function queries the value of a ViInt32 attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    �    Returns the current value of the attribute.  Pass the address of a ViInt32 variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
     �    If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  1

Default Value:  ""
    �    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Help text is
  shown for each attribute.  Select an attribute by 
  double-clicking on it or by selecting it and then pressing
  <ENTER>.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViInt32 type. 
  If you choose to see all IVI attributes, the data types appear
  to the right of the attribute names in the list box.  
  Attributes with data types other than ViInt32 are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
   A�-   �  �    Instrument Handle                B�#����  �    Status                           I � � �  �    Attribute Value                  J� =  �  �    Channel Name                     K� = � � �    Attribute ID                           	           	            ""                0   �    This function queries the value of a ViReal64 attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    �    Returns the current value of the attribute.  Pass the address of a ViReal64 variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
     �    If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  1

Default Value:  ""
    �    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Help text is
  shown for each attribute.  Select an attribute by 
  double-clicking on it or by selecting it and then pressing
  <ENTER>.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViReal64
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box. 
  Attributes with data types other than ViReal64 are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
   S{-   �  �    Instrument Handle                T5#����  �    Status                           Z� � � �  �    Attribute Value                  \j =  �  �    Channel Name                     ]q = � � �    Attribute ID                           	           	           ""                0   4    This function queries the value of a ViString attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

You must provide a ViChar array to serve as a buffer for the value.  You pass the number of bytes in the buffer as the Buffer Size parameter.  If the current value of the attribute, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you want to call this function just to get the required buffer size, you can pass 0 for the Buffer Size and VI_NULL for the Attribute Value buffer.  

If you want the function to fill in the buffer regardless of the   number of bytes in the value, pass a negative number for the Buffer Size parameter.  


     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    ,    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    &    The buffer in which the function returns the current value of the attribute.  The buffer must be of type ViChar and have at least as many bytes as indicated in the Buffer Size parameter.

If the current value of the attribute, including the terminating NUL byte, contains more bytes that you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you specify 0 for the Buffer Size parameter, you can pass VI_NULL for this parameter.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
     �    If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  1

Default Value:  ""
    �    Pass the number of bytes in the ViChar array you specify for the Attribute Value parameter.  

If the current value of the attribute, including the terminating NUL byte, contains more bytes that you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Attribute Value buffer parameter.

Default Value: 512    �    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Help text is
  shown for each attribute.  Select an attribute by 
  double-clicking on it or by selecting it and then pressing
  <ENTER>.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViString
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box. 
  Attributes with data types other than ViString are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
   h�-   �  �    Instrument Handle                iE#����  �    Status or Required Size          qy � L � �    Attribute Value                  u� =  �  �    Channel Name                     v� =� �  �    Buffer Size                      y� = � � �    Attribute ID                           	           	            ""    512                0   �    This function queries the value of a ViBoolean attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    �    Returns the current value of the attribute.  Pass the address of a ViBoolean variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
     �    If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  1

Default Value:  ""
    �    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Help text is
  shown for each attribute.  Select an attribute by 
  double-clicking on it or by selecting it and then pressing
  <ENTER>.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViBoolean
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box. 
  Attributes with data types other than ViBoolean are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
   �}-   �  �    Instrument Handle                �7#����  �    Status                           �� � � �  �    Attribute Value                  �m =  �  �    Channel Name                     �t = � � �    Attribute ID                           	           	            ""                0   �    This function queries the value of a ViSession attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    �    Returns the current value of the attribute.  Pass the address of a ViSession variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
     �    If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  1

Default Value:  ""
    �    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Help text is
  shown for each attribute.  Select an attribute by 
  double-clicking on it or by selecting it and then pressing
  <ENTER>.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViSession
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box. 
  Attributes with data types other than ViSession are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
   �-   �  �    Instrument Handle                ��#����  �    Status                           �C � � �  �    Attribute Value                  � =  �  �    Channel Name                     �
 = � � �    Attribute ID                           	           	            ""                0    S    This function checks the validity of a value you specify for a ViInt32 attribute.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    (    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none     �    If the attribute is channel-based, this parameter specifies the name of the channel on which to check the attribute value. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  1

Default Value:  ""
    @    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Attributes 
  whose value cannot be set are dim.  Help text is shown for 
  each attribute.  Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box.  If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViInt32 type. 
  If you choose to see all IVI attributes, the data types appear
  to the right of the attribute names in the list box. 
  Attributes with data types other than ViInt32 are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
   �E-   �  �    Instrument Handle                ��#����  �    Status                           �u � � �  �    Attribute Value                  �� =  �  �    Channel Name                    ���� � ���                                          �� = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    T    This function checks the validity of a value you specify for a ViReal64 attribute.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    (    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none     �    If the attribute is channel-based, this parameter specifies the name of the channel on which to check the attribute value. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  1

Default Value:  ""
    B    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Attributes 
  whose value cannot be set are dim.  Help text is shown for 
  each attribute.  Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box.  If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViReal64
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box. 
  Attributes with data types other than ViReal64 are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
   ��-   �  �    Instrument Handle                ��#����  �    Status                           � � � �  �    Attribute Value                  �C =  �  �    Channel Name                    ���� � ���                                          �B = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    T    This function checks the validity of a value you specify for a ViString attribute.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    (    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none     �    If the attribute is channel-based, this parameter specifies the name of the channel on which to check the attribute value. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  1

Default Value:  ""
    B    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Attributes 
  whose value cannot be set are dim.  Help text is shown for 
  each attribute.  Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box.  If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViString
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box. 
  Attributes with data types other than ViString are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
   ƃ-   �  �    Instrument Handle                �=#����  �    Status                           ͳ � � �  �    Attribute Value                  �� =  �  �    Channel Name                    ���� � ���                                          �� = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    U    This function checks the validity of a value you specify for a ViBoolean attribute.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    (    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none     �    If the attribute is channel-based, this parameter specifies the name of the channel on which to check the attribute value. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  1

Default Value:  ""
    D    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Attributes 
  whose value cannot be set are dim.  Help text is shown for 
  each attribute.  Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box.  If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViBoolean
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box. 
  Attributes with data types other than ViBoolean are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
   �$-   �  �    Instrument Handle                ��#����  �    Status                           �T � � �  �    Attribute Value                  � =  �  �    Channel Name                    ���� � ���                                          � = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    U    This function checks the validity of a value you specify for a ViSession attribute.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    (    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none     �    If the attribute is channel-based, this parameter specifies the name of the channel on which to check the attribute value. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  1

Default Value:  ""
    D    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Attributes 
  whose value cannot be set are dim.  Help text is shown for 
  each attribute.  Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box.  If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViSession
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box. 
  Attributes with data types other than ViSession are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
   ��-   �  �    Instrument Handle                �#����  �    Status                           �� � � �  �    Attribute Value                  �' =  �  �    Channel Name                    ���� � ���                                          �& = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0   �    This function initiates an acquisition on the channels that you enable with the ag1000ni_ConfigureChannel function.  It then waits for the acquisition to complete, and returns the waveform for the channel you specify.  You call the ag1000ni_FetchWaveform function to obtain the waveforms for each of the remaining enabled channels without initiating another acquisition.

Notes:

(1) After this function executes, each element in the Waveform Array parameter is either a voltage or a value indicating that the oscilloscope could not sample a voltage.

(2) You can test each element in the Waveform Array parameter for an invalid waveform element with the ag1000ni_IsInvalidWfmElement function.
        Pass the channel name for which to read the waveform.

Valid Channel Names:
For DSO1X2X:
"CHAN1"
"CHAN2"
For DSO1X4X:
"CHAN1"
"CHAN2"
"CHAN3"
"CHAN4"

Default Value: ""

Notes:

(1) You can specify the channel name as a string variable or as a literal enclosed in double quotes.     U    Pass the number of elements in the Waveform Array parameter.

Default Value: None

    �    Pass the maximum length of time in which to allow the read waveform operation to complete.    

If the operation does not complete within this time interval, the function returns the AG1000NI_ERROR_MAX_TIME_EXCEEDED (0xBFFA2003) error code.  When this occurs, you can call ag1000ni_Abort to cancel the read waveform operation and return the oscilloscope to the Idle state.

Units:  milliseconds.  

Defined Values:
AG1000NI_VAL_MAX_TIME_INFINITE (-1)             AG1000NI_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 5000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    �    Returns the waveform that the oscilloscope acquires.  

Units:  volts

Notes:

(1) The ag1000ni_ActualRecordLength function returns the number of points the oscilloscope acquires for each channel.  Pass a ViReal64 array with at least this many elements.

(2) You can test each element in the Waveform Array parameter for an invalid waveform element with the ag1000ni_IsInvalidWfmElement function.
     V    Indicates the number of points the function places in the Waveform Array parameter.
    �    Indicates the time of the first point in the Waveform Array.  The time is relative to the trigger event.  

For example, if the oscilloscope acquires the first point in the Waveform Array 1 second before the trigger, this parameter returns the value -1.0.  If the acquisition of the first point occurs at the same time as the trigger, this parameter returns the value 0.0.

Units:  seconds     W    Indicates the length of time between points in the Waveform Array.  

Units:  seconds   �� =   �  �    Channel Name                     �� = � �  �    Waveform Size                    �J =| �  �    Maximum Time (ms)                �-   �  �    Instrument Handle                �#����  �    Status                           	 � d �  �    Waveform Array                   
� �: �  �    Actual Points                     � d �  �    Initial X                        � �: �  �    X Increment                        "CHAN1"        5000        	           	            	            	           	          �    This function initiates an acquisition on the channels that you enable with the ag1000ni_ConfigureChannel function.  It then waits for the acquisition to complete, and returns the min/max waveforms for the channel you specify.  You call the ag1000ni_FetchMinMaxWaveform function to obtain the min/max waveforms for each of the remaining enabled channels without initiating another acquisition.

Use this function to read waveforms when you set the acquisition type to AG1000NI_VAL_PEAK_DETECT or AG1000NI_VAL_ENVELOPE.

Notes:

(1) After this function executes, each element in the Min Waveform Array and Max Waveform Array parameters is either a voltage or a value indicating that the oscilloscope could not sample a voltage.

(2) You can test each element in the Min Waveform Array parameter and the Max Waveform Array parameter for an invalid waveform element with the ag1000ni_IsInvalidWfmElement function.
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    %    Pass the channel name for which to read the min and max waveforms.

Valid Channel Names:
For DSO1X2X:
"CHAN1"
"CHAN2"
For DSO1X4X:
"CHAN1"
"CHAN2"
"CHAN3"
"CHAN4"

Default Value: ""

Notes:

(1) You can specify the channel name as a string variable or as a literal enclosed in double quotes.     q    Pass the number of elements in the Min Waveform Array and Max Waveform Array parameters.

Default Value: None

    �    Pass the maximum length of time in which to allow the read waveform operation to complete.  

If the operation does not complete within this time interval, the function returns the AG1000NI_ERROR_MAX_TIME_EXCEEDED (0xBFFA2003) error code.  When this occurs, you can call ag1000ni_Abort to cancel the read waveform operation and return the oscilloscope to the Idle state.

Units:  milliseconds.  

Defined Values:
AG1000NI_VAL_MAX_TIME_INFINITE (-1)             AG1000NI_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 5000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.
    �    Returns the minimum waveform that the oscilloscope acquires.

Units: volts

Notes:

(1) The ag1000ni_ActualRecordLength function returns the number of points the oscilloscope acquires for each channel.  Pass a ViReal64 array with at least this many elements.

(2) You can test each element in the Min Waveform Array parameter for an invalid waveform element with the ag1000ni_IsInvalidWfmElement function.
    �    Returns the maximum waveform that the oscilloscope acquires.  

Units: volts

Notes:

(1) The ag1000ni_ActualRecordLength function returns the number of points the oscilloscope acquires for each channel.  Pass a ViReal64 array with at least this many elements.

(2) You can test each element in the Max Waveform Array parameter for an invalid waveform element with the ag1000ni_IsInvalidWfmElement function.
     r    Indicates the number of points the function places in the Min Waveform Array and Max Waveform Array parameters.
    �    Indicates the time of the first point in the Min Waveform Array and Max Waveform Array.  The time is relative to the trigger event.  

Units:  seconds  

For example, if the oscilloscope acquires the first point in the waveforms 1 second before the trigger, this parameter returns the value -1.0.  If the acquisition of the first point occurs at the same time as the trigger, this parameter returns the value 0.0.     r    Indicates the length of time between points in the Min Waveform Array and Max Waveform Array.  

Units:  seconds   �-   �  �    Instrument Handle                �#����  �    Status                           � =   �  �    Channel Name                     , = � �  �    Waveform Size                    � =| �  �    Maximum Time (ms)                H �   �  �    Min Waveform Array               � � � �  �    Max Waveform Array               !� �| �  �    Actual Points                    " � d �  �    Initial X                        #� �: �  �    X Increment                            	           "CHAN1"        5000    	            	            	            	           	          �    This function initiates an acquisition on the channels that you enable with the ag1000ni_ConfigureChannel function.  It then waits for the acquisition to complete, obtains a waveform measurement on the channel you specify, and returns the measurement value.  You specify a particular measurement type, such as rise time, frequency, and voltage peak-to-peak.  You can call the ag1000ni_FetchWaveformMeasurement function separately for any other waveform measurement that you want to obtain on a specific channel without initiating another acquisition.

Notes:

(1) You must configure the appropriate reference levels before you call this function to take a rise time, fall time, width negative, width positive, duty cycle negative, or duty cycle positive measurement.

(2) You configure the low, mid, and high references either by calling the ag1000ni_ConfigureRefLevels function or by setting the following attributes.

  AG1000NI_ATTR_MEAS_HIGH_REF
  AG1000NI_ATTR_MEAS_LOW_REF
  AG1000NI_ATTR_MEAS_MID_REF
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    "    Pass the channel name for which to read a waveform measurement.

Valid Channel Names:
For DSO1X2X:
"CHAN1"
"CHAN2"
For DSO1X4X:
"CHAN1"
"CHAN2"
"CHAN3"
"CHAN4"

Default Value: ""

Notes:

(1) You can specify the channel name as a string variable or as a literal enclosed in double quotes.    �    Pass the maximum length of time in which to allow the read waveform measurement operation to complete.    

If the operation does not complete within this time interval, the function returns the AG1000NI_ERROR_MAX_TIME_EXCEEDED (0xBFFA2003) error code.  When this occurs, you can call ag1000ni_Abort to cancel the read waveform operation and return the oscilloscope to the Idle state.

Units:  milliseconds.  

Defined Values:
AG1000NI_VAL_MAX_TIME_INFINITE (-1)            AG1000NI_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 5000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.
    �    Returns the measured value.  

Units:  The units depend on the Measurement Function you select as shown below.

    Rise Time            - seconds
    Fall Time            - seconds
    Frequency            - hertz
    Period               - seconds
    Voltage RMS          - volts
    Voltage RMS (Cycle)  - volts
    Voltage Max          - volts
    Voltage Min          - volts
    Voltage Vpp          - volts
    Voltage High         - volts
    Voltage Low          - volts
    Voltage Avg.         - volts
    Voltage Avg. (Cycle) - volts
    Width Negative       - seconds
    Width Positive       - seconds
    Duty Cycle Negative  - percent
    Duty Cycle Positive  - percent
    Amplitude            - volts


    j    Pass the waveform measurement you want the oscilloscope to perform.

Valid Values:

- AG1000NI_VAL_RISE_TIME - Rise Time
  The length of time for the first rising edge of the signal to
  rise from the low reference level to the high reference level.

- AG1000NI_VAL_FALL_TIME - Fall Time
  The length of time for the first falling edge of the signal to
  fall from the high reference level to the low reference level.

- AG1000NI_VAL_FREQUENCY - Frequency
  The frequency of one complete cycle in the waveform.

- AG1000NI_VAL_PERIOD - Period
  The length of time of one complete cycle in the waveform.

- AG1000NI_VAL_VOLTAGE_RMS - Voltage RMS
  The true Root Mean Square voltage of the entire waveform.

- AG1000NI_VAL_VOLTAGE_MAX - Voltage Max
  The maximum amplitude found in the entire waveform.

- AG1000NI_VAL_VOLTAGE_MIN - Voltage Min
  The minimum amplitude found in the entire waveform.

- AG1000NI_VAL_VOLTAGE_PEAK_TO_PEAK - Voltage Vpp
  The absolute difference between the Voltage Max and the
  Voltage Min.

- AG1000NI_VAL_VOLTAGE_HIGH - Voltage High
  The voltage that corresponds to 100% when you use the
  reference levels.  The oscilloscope calculates this value
  using either the min/max or histogram methods.  The min/max
  method uses the maximum value found.  The histogram method
  uses the most common value found above the middle of the
  waveform.

- AG1000NI_VAL_VOLTAGE_LOW - Voltage Low 
  The voltage that corresponds to 0% when you use the reference
  levels.  The oscilloscope calculates this value using either
  the min/max or histogram methods.  The min/max method uses the
  minimum value found.  The histogram method uses the most
  common value found below the middle of the waveform.

- AG1000NI_VAL_VOLTAGE_AVERAGE - Voltage Avg.
  The arithmetic average amplitude of the entire waveform.

- AG1000NI_VAL_WIDTH_NEG - Width Negative
  The length of time between the mid reference level points of
  the first negative pulse in the waveform.

- AG1000NI_VAL_WIDTH_POS - Width Positive
  The length of time between the mid reference level points of
  the first positive pulse in the waveform.

- AG1000NI_VAL_DUTY_CYCLE_NEG - Duty Cycle Negative
  The ratio of the Width Negative to the Period of the first
  cycle in the waveform expressed as a percentage.

  Duty Cycle Negative = 100.0 x (Width Negative)/Period

- AG1000NI_VAL_DUTY_CYCLE_POS - Duty Cycle Positive
  The ratio of the Width Positive to the Period of the first
  cycle in the waveform expressed as a percentage.

  Duty Cycle Positive = 100.0 X (Width Positive)/Period

- AG1000NI_VAL_AMPLITUDE - Amplitude
  The Voltage High less the Voltage Low in Volts over the entire
  waveform.

- AG1000NI_VAL_OVERSHOOT - Overshoot
  The relative waveform distortion which follows an edge
  transition. It is calculated using the following formula:

  -for the rising edge 

  Overshoot = (local maximum - Voltage High)/Amplitude*100%

  where the local maximum is the maximum voltage of the signal
  in the first half of the time period that commences when the
  rising edge crosses the high reference level and concludes
  when the subsequent falling edge crosses the high reference
  level.
  -for the falling edge:  

  Overshoot = (Voltage Low - local minimum)/Amplitude*100%

  where the local minimum is the minimum value of the signal
  measured in the first half of the time period that commences
  when the falling edge crosses the low reference level and
  concludes when the subsequent rising edge crosses the low
  reference level.

  The instrument makes the measurement on the edge closest to
  the beginning of the waveform record. The units are the
  percentage of the signal amplitude.

- AG1000NI_VAL_PRESHOOT - Preshoot
  The relative waveform distortion which precedes an edge
  transition. It is calculated using the following formula:
  -for the rising edge  

  Preshoot = (Voltage Low - local minimum)/Amplitude*100%

  where the local minimum is the minimum value of the signal
  measured in the second half of the time period that commences
  when the preceding falling edge crosses the low reference
  level and concludes when the rising edge crosses the low
  reference level.

  -for the falling edge:  

  Preshoot = (local maximum - Voltage High)/Amplitude*100%

  where the local maximum is the maximum voltage of the signal
  in the second half of the time period that commences when the
  preceding rising edge crosses the high reference level and
  concludes when the falling edge crosses the high reference
  level.
  The instrument makes the measurement on the edge closest to
  the beginning of the waveform record. The units are the
  percentage of the signal amplitude.


Default Value:  AG1000NI_VAL_RISE_TIME  

Notes:

(1) You must configure the appropriate reference levels before you call this function to take a rise time, fall time, width negative, width positive, duty cycle negative, or duty cycle positive measurement.



   *�-   �  �    Instrument Handle                +N#����  �    Status                           1� >   �  �    Channel Name                     2� >| �  �    Maximum Time (ms)                5� � � �  �    Measurement                      8z = � � �    Measurement Function                   	           "CHAN1"    5000    	                     �Rise Time AG1000NI_VAL_RISE_TIME Fall Time AG1000NI_VAL_FALL_TIME Frequency AG1000NI_VAL_FREQUENCY Period AG1000NI_VAL_PERIOD Voltage RMS AG1000NI_VAL_VOLTAGE_RMS Voltage Max AG1000NI_VAL_VOLTAGE_MAX Voltage Min AG1000NI_VAL_VOLTAGE_MIN Voltage Vpp AG1000NI_VAL_VOLTAGE_PEAK_TO_PEAK Voltage High AG1000NI_VAL_VOLTAGE_HIGH Voltage Low AG1000NI_VAL_VOLTAGE_LOW Voltage Average AG1000NI_VAL_VOLTAGE_AVERAGE Width Negative AG1000NI_VAL_WIDTH_NEG Width Positive AG1000NI_VAL_WIDTH_POS Duty Cycle Negative AG1000NI_VAL_DUTY_CYCLE_NEG Duty Cycle Positive AG1000NI_VAL_DUTY_CYCLE_POS Amplitude AG1000NI_VAL_AMPLITUDE Overshoot AG1000NI_VAL_OVERSHOOT Preshoot AG1000NI_VAL_PRESHOOT   �        This function measures the phase in degrees between two
edges. If two sources are specified, the phase from the specified edge of the first source to the specified edge of the second source is measured.

    This function initiates an acquisition on the channel that the end-user defines. It then waits for the acquisition to complete, obtains a waveform measurement on the channel the end-user specifies, and returns the measurement value.
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Pass the maximum length of time in which to allow the read waveform measurement operation to complete.    

If the operation does not complete within this time interval, the function returns the AG1000NI_ERROR_MAX_TIME_EXCEEDED (0xBFFA2003) error code.  When this occurs, you can call ag1000ni_Abort to cancel the read waveform operation and return the oscilloscope to the Idle state.

Units:  milliseconds.  

Defined Values:
AG1000NI_VAL_MAX_TIME_INFINITE (-1)            AG1000NI_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 5000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.
     =    The measurement result by the delay measurement operations.    l    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------        
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    Selects the direction of the source edge.

Valid Values:
   AG1000NI_VAL_RISING  - Rising
   AG1000NI_VAL_FALLING - Falling

Default Value: AG1000NI_VAL_RISING
    	    Pass Source 1 for a delay measurement.

Valid Channel Names:
For DSO1X2X:
"CHAN1"
"CHAN2"
For DSO1X4X:
"CHAN1"
"CHAN2"
"CHAN3"
"CHAN4"

Default Value: ""

Notes:

(1) You can specify the channel name as a string variable or as a literal enclosed in double quotes.    0    Pass Source 2 for a delay measurement.

Valid Channel Names:
For DSO1X2X:
"CHAN1"
"CHAN2"
For DSO1X4X:
"CHAN1"
"CHAN2"
"CHAN3"
"CHAN4"

Default Value: ""

Notes:

(1) You can specify the channel name as a string variable or as a literal enclosed in double quotes.
(2) It cannot be identical to Source1.   Q�-   �  �    Instrument Handle                R� �  �  �    Maximum Time (ms)                U: � � �  �    Delay                            U#����  �    Status                           [� 4� � �    Direction                        \� 4  � �    Source1                          ]� 4 � � �    Source2                                5000    	           	                      8Rising AG1000NI_VAL_RISING Falling AG1000NI_VAL_FALLING               8CHAN1 "CHAN1" CHAN2 "CHAN2" CHAN3 "CHAN3" CHAN4 "CHAN4"              �CHAN1 "CHAN1" CHAN2 "CHAN2" CHAN3 "CHAN3" CHAN4 "CHAN4" FUNC1 "FUNC1" FUNC2 "FUNC2" FUNC3 "FUNC3" FUNC4 "FUNC4" Waveform1 "WMEM1" Waveform2 "WMEM2" Waveform3 "WMEM3" Waveform4 "WMEM4"   �        This function measures the phase in degrees between two
edges. If two sources are specified, the phase from the specified edge of the first source to the specified edge of the second source is measured.

    This function initiates an acquisition on the channel that the end-user defines. It then waits for the acquisition to complete, obtains a waveform measurement on the channel the end-user specifies, and returns the measurement value.
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Pass the maximum length of time in which to allow the read waveform measurement operation to complete.    

If the operation does not complete within this time interval, the function returns the AG1000NI_ERROR_MAX_TIME_EXCEEDED (0xBFFA2003) error code.  When this occurs, you can call ag1000ni_Abort to cancel the read waveform operation and return the oscilloscope to the Idle state.

Units:  milliseconds.  

Defined Values:
AG1000NI_VAL_MAX_TIME_INFINITE (-1)            AG1000NI_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 5000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.
     >    The measurement result by the phease measurement operations.    l    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------        
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    Selects the direction of the source edge.

Valid Values:
   AG1000NI_VAL_RISING  - Rising
   AG1000NI_VAL_FALLING - Falling

Default Value: AG1000NI_VAL_RISING
        Pass the channel name for which to read a phase measurement.

Valid Channel Names:
For DSO1X2X:
"CHAN1"
"CHAN2"
For DSO1X4X:
"CHAN1"
"CHAN2"
"CHAN3"
"CHAN4"

Default Value: ""

Notes:

(1) You can specify the channel name as a string variable or as a literal enclosed in double quotes.    0    Pass Source 2 for a phase measurement.

Valid Channel Names:
For DSO1X2X:
"CHAN1"
"CHAN2"
For DSO1X4X:
"CHAN1"
"CHAN2"
"CHAN3"
"CHAN4"

Default Value: ""

Notes:

(1) You can specify the channel name as a string variable or as a literal enclosed in double quotes.
(2) It cannot be identical to Source1.   c�-   �  �    Instrument Handle                dS �  �  �    Maximum Time (ms)                g � � �  �    Phase Degree                     gI#����  �    Status                           m� 4� � �    Direction                        ng 4  � �    Source1                          o� 4 � � �    Source2                                5000    	           	                      8Rising AG1000NI_VAL_RISING Falling AG1000NI_VAL_FALLING               8CHAN1 "CHAN1" CHAN2 "CHAN2" CHAN3 "CHAN3" CHAN4 "CHAN4"              8CHAN1 "CHAN1" CHAN2 "CHAN2" CHAN3 "CHAN3" CHAN4 "CHAN4"   �    This function initiates a waveform acquisition.  After you call this function, the oscilloscope leaves the Idle state and waits for a trigger.  The oscilloscope acquires a waveform for each channel you have enabled with the  ag1000ni_ConfigureChannel function.

Notes:

(1) This function does not check the instrument status.   Typically, you call this function only in a sequence of calls to other low-level driver functions.  The sequence performs one operation.  You use the low-level functions to optimize one or more aspects of interaction with the instrument.  If you want to check the instrument status, call the ag1000ni_error_query function at the conclusion of the sequence.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
   u�-   �  �    Instrument Handle                v�#����  �    Status                                 	              This function returns whether an acquisition is in progress, complete, or if the status is unknown.

Notes:

(1) This function does not check the instrument status.   Typically, you call this function only in a sequence of calls to other low-level driver functions.  The sequence performs one operation.  You use the low-level functions to optimize one or more aspects of interaction with the instrument.  If you want to check the instrument status, call the ag1000ni_error_query function at the conclusion of the sequence.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    n    Returns the acquisition status of the oscilloscope.  Possible values that this parameter returns are:

- AG1000NI_VAL_ACQ_IN_PROGRESS (0) - The oscilloscope 
  is currently acquiring a waveform.

- AG1000NI_VAL_ACQ_COMPLETE (1) - The acquisition
  is complete.

- AG1000NI_VAL_ACQ_STATUS_UNKNOWN (-1) - The 
  driver cannot determine the status of the acquisition.   �-   �  �    Instrument Handle                �a#����  �    Status                           �� = � �  �    Acquisition Status                     	           	           �    This function returns the waveform the oscilloscope acquires for the channel you specify.  The waveform is from an acquisition that you previously initiated.  

You use the ag1000ni_InitiateAcquisition function to start an acquisition on the channels that you enable with the ag1000ni_ConfigureChannel function.  The oscilloscope acquires waveforms for the enabled channels concurrently.  You use the ag1000ni_AcquisitionStatus function to determine when the acquisition is complete.  You must call this function separately for each enabled channel to obtain the waveforms.

You can call the ag1000ni_ReadWaveform function instead of the ag1000ni_InitiateAcquisition function.  The ag1000ni_ReadWaveform function starts an acquisition on all enabled channels, waits for the acquisition to complete, and returns the waveform for the channel you specify.  You call this function to obtain the waveforms for each of the remaining channels.

Notes:

(1) After this function executes, each element in the Waveform Array parameter is either a voltage or a value indicating that the oscilloscope could not sample a voltage.

(2) You can test each element in the Waveform Array parameter for an invalid waveform element with the ag1000ni_IsInvalidWfmElement function.

(3) This function does not check the instrument status.   Typically, you call this function only in a sequence of calls to other low-level driver functions.  The sequence performs one operation.  You use the low-level functions to optimize one or more aspects of interaction with the instrument.  If you want to check the instrument status, call the ag1000ni_error_query function at the conclusion of the sequence.
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
        Pass the channel name for which to read the waveform.

Valid Channel Names:
For DSO1X2X:
"CHAN1"
"CHAN2"
For DSO1X4X:
"CHAN1"
"CHAN2"
"CHAN3"
"CHAN4"

Default Value: ""

Notes:

(1) You can specify the channel name as a string variable or as a literal enclosed in double quotes.     U    Pass the number of elements in the Waveform Array parameter.

Default Value: None

    �    Returns the waveform that the oscilloscope acquires.  

Units:  volts

Notes:

(1) The ag1000ni_ActualRecordLength function returns the number of points the oscilloscope acquires for each channel.  Pass a ViReal64 array with at least this many elements.

(2) You can test each element in the Waveform Array parameter for an invalid waveform element with the ag1000ni_IsInvalidWfmElement function.
     V    Indicates the number of points the function places in the Waveform Array parameter.
    �    Indicates the time of the first point in the Waveform Array.  The time is relative to the trigger event.  

For example, if the oscilloscope acquires the first point in the Waveform Array 1 second before the trigger, this parameter returns the value -1.0.  If the acquisition of the first point occurs at the same time as the trigger, this parameter returns the value 0.0.

Units:  seconds  
     W    Indicates the length of time between points in the Waveform Array.  

Units:  seconds   ��-   �  �    Instrument Handle                �X#����  �    Status                           �� =  �  �    Channel Name                     �� = � �  �    Waveform Size                    �K = �  �    Waveform Array                   �� �  �  �    Actual Points                    �@ � � �  �    Initial X                        �� � �  �    X Increment                            	           "CHAN1"        	            	            	           	          �    This function returns the minimum and maximum waveforms that the oscilloscope acquires for the channel you specify.  The waveforms are from an acquisition that you previously initiated.  Use this function to fetch waveforms when you set the acquisition type to AG1000NI_VAL_PEAK_DETECT or AG1000NI_VAL_ENVELOPE.

Use the ag1000ni_InitiateAcquisition function to start an acquisition on the channels that you enable with the ag1000ni_ConfigureChannel function.  The oscilloscope acquires the min/max waveforms for the enabled channels concurrently.  You use the ag1000ni_AcquisitionStatus function to determine when the acquisition is complete.  You must call this function separately for each enabled channel to obtain the min/max waveforms.

You can call the ag1000ni_ReadMinMaxWaveform function instead of the ag1000ni_InitiateAcquisition function.  The ag1000ni_ReadMinMaxWaveform function starts an acquisition on all enabled channels, waits for the acquisition to complete, and returns the min/max waveforms for the channel you specify.  You call this function to obtain the min/max waveforms for each of the remaining channels.

Notes:

(1) After this function executes, each element in the Min Waveform Array and Max Waveform Array parameters is either a voltage or a value indicating that the oscilloscope could not sample a voltage.

(2) You can test each element in the Min Waveform Array parameter and the Max Waveform Array parameter for an invalid waveform element with the ag1000ni_IsInvalidWfmElement function.

(3) This function does not check the instrument status.   Typically, you call this function only in a sequence of calls to other low-level driver functions.  The sequence performs one operation.  You use the low-level functions to optimize one or more aspects of interaction with the instrument.  If you want to check the instrument status, call the ag1000ni_error_query function at the conclusion of the sequence.
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    %    Pass the channel name for which to read the min and max waveforms.

Valid Channel Names:
For DSO1X2X:
"CHAN1"
"CHAN2"
For DSO1X4X:
"CHAN1"
"CHAN2"
"CHAN3"
"CHAN4"

Default Value: ""

Notes:

(1) You can specify the channel name as a string variable or as a literal enclosed in double quotes.     q    Pass the number of elements in the Min Waveform Array and Max Waveform Array parameters.

Default Value: None

    �    Returns the minimum waveform that the oscilloscope acquires.

Units:  volts

Notes:

(1) The ag1000ni_ActualRecordLength function returns the number of points the oscilloscope acquires for each channel.  Pass a ViReal64 array with at least this many elements.

(2) You can test each element in the Min Waveform Array parameter for an invalid waveform element with the ag1000ni_IsInvalidWfmElement function.
    �    Returns the maximum waveform that the oscilloscope acquires.  

Units:  volts

Notes:

(1) The ag1000ni_ActualRecordLength function returns the number of points the oscilloscope acquires for each channel.  Pass a ViReal64 array with at least this many elements.

(2) You can test each element in the Max Waveform Array parameter for an invalid waveform element with the ag1000ni_IsInvalidWfmElement function.
     r    Indicates the number of points the function places in the Min Waveform Array and Max Waveform Array parameters.
    �    Indicates the time of the first point in the Min Waveform Array and Max Waveform Array.  The time is relative to the trigger event.  

For example, if the oscilloscope acquires the first point in the waveforms 1 second before the trigger, this parameter returns the value -1.0.  If the acquisition of the first point occurs at the same time as the trigger, this parameter returns the value 0.0.

Units:  seconds  
     r    Indicates the length of time between points in the Min Waveform Array and Max Waveform Array.  

Units:  seconds   ��-   �  �    Instrument Handle                ��#����  �    Status                           �� =  �  �    Channel Name                     �% = � �  �    Waveform Size                    �� = �  �    Min Waveform Array               �? � S �  �    Max Waveform Array               �� �D �  �    Actual Points                    �\ � S �  �    Initial X                        � �D �  �    X Increment                            	           "CHAN1"        	            	            	            	           	               This function obtains a waveform measurement and returns the measurement value.  You specify a particular measurement type, such as rise time, frequency, and voltage peak-to-peak.  The waveform on which the oscilloscope calculates the waveform measurement is from an acquisition that you previously initiated.  

Use the ag1000ni_InitiateAcquisition function to start an acquisition on the channels that you enable with the ag1000ni_ConfigureChannel function.  The oscilloscope acquires waveforms for the enabled channels concurrently.  You use the ag1000ni_AcquisitionStatus function to determine when the acquisition is complete.  You call this function separately for each waveform measurement you want to obtain on a specific channel.

You can call the ag1000ni_ReadWaveformMeasurement function instead of the ag1000ni_InitiateAcquisition function.  The ag1000ni_ReadWaveformMeasurement function starts an acquisition on all enabled channels.  It then waits for the acquisition to complete, obtains a waveform measurement on the channel you specify, and returns the measurement value.  You call this function separately for any other waveform measurement that you want to obtain on a specific channel.

Notes:

(1) You must configure the appropriate reference levels before you call this function to take a rise time, fall time, width negative, width positive, duty cycle negative, or duty cycle positive measurement.

(2) You configure the low, mid, and high references either by calling the ag1000ni_ConfigureRefLevels function or by setting the following attributes.

  AG1000NI_ATTR_MEAS_HIGH_REF
  AG1000NI_ATTR_MEAS_LOW_REF
  AG1000NI_ATTR_MEAS_MID_REF

(3) This function does not check the instrument status.   Typically, you call this function only in a sequence of calls to other low-level driver functions.  The sequence performs one operation.  You use the low-level functions to optimize one or more aspects of interaction with the instrument.  If you want to check the instrument status, call the ag1000ni_error_query function at the conclusion of the sequence.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    "    Pass the channel name for which to read a waveform measurement.

Valid Channel Names:
For DSO1X2X:
"CHAN1"
"CHAN2"
For DSO1X4X:
"CHAN1"
"CHAN2"
"CHAN3"
"CHAN4"

Default Value: ""

Notes:

(1) You can specify the channel name as a string variable or as a literal enclosed in double quotes.    �    Returns the measured value.  

Units:  The units depend on the Measurement Function you select as shown below.

    Rise Time            - seconds
    Fall Time            - seconds
    Frequency            - hertz
    Period               - seconds
    Voltage RMS          - volts
    Voltage RMS (Cycle)  - volts
    Voltage Max          - volts
    Voltage Min          - volts
    Voltage Vpp          - volts
    Voltage High         - volts
    Voltage Low          - volts
    Voltage Avg.         - volts
    Voltage Avg. (Cycle) - volts
    Width Negative       - seconds
    Width Positive       - seconds
    Duty Cycle Negative  - percent
    Duty Cycle Positive  - percent
    Amplitude            - volts


    j    Pass the waveform measurement you want the oscilloscope to perform.

Valid Values:

- AG1000NI_VAL_RISE_TIME - Rise Time
  The length of time for the first rising edge of the signal to
  rise from the low reference level to the high reference level.

- AG1000NI_VAL_FALL_TIME - Fall Time
  The length of time for the first falling edge of the signal to
  fall from the high reference level to the low reference level.

- AG1000NI_VAL_FREQUENCY - Frequency
  The frequency of one complete cycle in the waveform.

- AG1000NI_VAL_PERIOD - Period
  The length of time of one complete cycle in the waveform.

- AG1000NI_VAL_VOLTAGE_RMS - Voltage RMS
  The true Root Mean Square voltage of the entire waveform.

- AG1000NI_VAL_VOLTAGE_MAX - Voltage Max
  The maximum amplitude found in the entire waveform.

- AG1000NI_VAL_VOLTAGE_MIN - Voltage Min
  The minimum amplitude found in the entire waveform.

- AG1000NI_VAL_VOLTAGE_PEAK_TO_PEAK - Voltage Vpp
  The absolute difference between the Voltage Max and the
  Voltage Min.

- AG1000NI_VAL_VOLTAGE_HIGH - Voltage High
  The voltage that corresponds to 100% when you use the
  reference levels.  The oscilloscope calculates this value
  using either the min/max or histogram methods.  The min/max
  method uses the maximum value found.  The histogram method
  uses the most common value found above the middle of the
  waveform.

- AG1000NI_VAL_VOLTAGE_LOW - Voltage Low 
  The voltage that corresponds to 0% when you use the reference
  levels.  The oscilloscope calculates this value using either
  the min/max or histogram methods.  The min/max method uses the
  minimum value found.  The histogram method uses the most
  common value found below the middle of the waveform.

- AG1000NI_VAL_VOLTAGE_AVERAGE - Voltage Avg.
  The arithmetic average amplitude of the entire waveform.

- AG1000NI_VAL_WIDTH_NEG - Width Negative
  The length of time between the mid reference level points of
  the first negative pulse in the waveform.

- AG1000NI_VAL_WIDTH_POS - Width Positive
  The length of time between the mid reference level points of
  the first positive pulse in the waveform.

- AG1000NI_VAL_DUTY_CYCLE_NEG - Duty Cycle Negative
  The ratio of the Width Negative to the Period of the first
  cycle in the waveform expressed as a percentage.

  Duty Cycle Negative = 100.0 x (Width Negative)/Period

- AG1000NI_VAL_DUTY_CYCLE_POS - Duty Cycle Positive
  The ratio of the Width Positive to the Period of the first
  cycle in the waveform expressed as a percentage.

  Duty Cycle Positive = 100.0 X (Width Positive)/Period

- AG1000NI_VAL_AMPLITUDE - Amplitude
  The Voltage High less the Voltage Low in Volts over the entire
  waveform.

- AG1000NI_VAL_OVERSHOOT - Overshoot
  The relative waveform distortion which follows an edge
  transition. It is calculated using the following formula:

  -for the rising edge 

  Overshoot = (local maximum - Voltage High)/Amplitude*100%

  where the local maximum is the maximum voltage of the signal
  in the first half of the time period that commences when the
  rising edge crosses the high reference level and concludes
  when the subsequent falling edge crosses the high reference
  level.
  -for the falling edge:  

  Overshoot = (Voltage Low - local minimum)/Amplitude*100%

  where the local minimum is the minimum value of the signal
  measured in the first half of the time period that commences
  when the falling edge crosses the low reference level and
  concludes when the subsequent rising edge crosses the low
  reference level.

  The instrument makes the measurement on the edge closest to
  the beginning of the waveform record. The units are the
  percentage of the signal amplitude.

- AG1000NI_VAL_PRESHOOT - Preshoot
  The relative waveform distortion which precedes an edge
  transition. It is calculated using the following formula:
  -for the rising edge  

  Preshoot = (Voltage Low - local minimum)/Amplitude*100%

  where the local minimum is the minimum value of the signal
  measured in the second half of the time period that commences
  when the preceding falling edge crosses the low reference
  level and concludes when the rising edge crosses the low
  reference level.

  -for the falling edge:  

  Preshoot = (local maximum - Voltage High)/Amplitude*100%

  where the local maximum is the maximum voltage of the signal
  in the second half of the time period that commences when the
  preceding rising edge crosses the high reference level and
  concludes when the falling edge crosses the high reference
  level.
  The instrument makes the measurement on the edge closest to
  the beginning of the waveform record. The units are the
  percentage of the signal amplitude.


Default Value:  AG1000NI_VAL_RISE_TIME  

Notes:

(1) You must configure the appropriate reference levels before you call this function to take a rise time, fall time, width negative, width positive, duty cycle negative, or duty cycle positive measurement.



   ��-   �  �    Instrument Handle                ��#����  �    Status                           � : - �  �    Channel Name                     �8 � � �  �    Measurement                      � 9c � �    Measurement Function                   	           "CHAN1"    	                     �Rise Time AG1000NI_VAL_RISE_TIME Fall Time AG1000NI_VAL_FALL_TIME Frequency AG1000NI_VAL_FREQUENCY Period AG1000NI_VAL_PERIOD Voltage RMS AG1000NI_VAL_VOLTAGE_RMS Voltage Max AG1000NI_VAL_VOLTAGE_MAX Voltage Min AG1000NI_VAL_VOLTAGE_MIN Voltage Vpp AG1000NI_VAL_VOLTAGE_PEAK_TO_PEAK Voltage High AG1000NI_VAL_VOLTAGE_HIGH Voltage Low AG1000NI_VAL_VOLTAGE_LOW Voltage Average AG1000NI_VAL_VOLTAGE_AVERAGE Width Negative AG1000NI_VAL_WIDTH_NEG Width Positive AG1000NI_VAL_WIDTH_POS Duty Cycle Negative AG1000NI_VAL_DUTY_CYCLE_NEG Duty Cycle Positive AG1000NI_VAL_DUTY_CYCLE_POS Amplitude AG1000NI_VAL_AMPLITUDE Overshoot AG1000NI_VAL_OVERSHOOT Preshoot AG1000NI_VAL_PRESHOOT    �        This function measures the phase in degrees between two
edges. If two sources are specified, the phase from the specified edge of the first source to the specified edge of the second source is measured.      �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     �    Selects the direction of the source edge.

Valid Values:
   AG1000NI_VAL_RISING  - Rising
   AG1000NI_VAL_FALLING - Falling

Default Value: AG1000NI_VAL_RISING
     =    The measurement result by the delay measurement operations.    l    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------        
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
    	    Pass Source 1 for a delay measurement.

Valid Channel Names:
For DSO1X2X:
"CHAN1"
"CHAN2"
For DSO1X4X:
"CHAN1"
"CHAN2"
"CHAN3"
"CHAN4"

Default Value: ""

Notes:

(1) You can specify the channel name as a string variable or as a literal enclosed in double quotes.    0    Pass Source 2 for a delay measurement.

Valid Channel Names:
For DSO1X2X:
"CHAN1"
"CHAN2"
For DSO1X4X:
"CHAN1"
"CHAN2"
"CHAN3"
"CHAN4"

Default Value: ""

Notes:

(1) You can specify the channel name as a string variable or as a literal enclosed in double quotes.
(2) It cannot be identical to Source1.   �?-   �  �    Instrument Handle                �� ,� � �    Direction                        � �  �  �    Delay                            ��#����  �    Status                           �\ ,  � �    Source1                          �m , � � �    Source2                                           8Rising AG1000NI_VAL_RISING Falling AG1000NI_VAL_FALLING    	           	                      �CHAN1 "CHAN1" CHAN2 "CHAN2" CHAN3 "CHAN3" CHAN4 "CHAN4" FUNC1 "FUNC1" FUNC2 "FUNC2" FUNC3 "FUNC3" FUNC4 "FUNC4" Waveform1 "WMEM1" Waveform2 "WMEM2" Waveform3 "WMEM3" Waveform4 "WMEM4"              �CHAN1 "CHAN1" CHAN2 "CHAN2" CHAN3 "CHAN3" CHAN4 "CHAN4" FUNC1 "FUNC1" FUNC2 "FUNC2" FUNC3 "FUNC3" FUNC4 "FUNC4" Waveform1 "WMEM1" Waveform2 "WMEM2" Waveform3 "WMEM3" Waveform4 "WMEM4"    �        This function measures the phase in degrees between two
edges. If two sources are specified, the phase from the specified edge of the first source to the specified edge of the second source is measured.      �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     �    Selects the direction of the source edge.

Valid Values:
   AG1000NI_VAL_RISING  - Rising
   AG1000NI_VAL_FALLING - Falling

Default Value: AG1000NI_VAL_RISING
     >    The measurement result by the phease measurement operations.    l    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------        
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
        Pass the channel name for which to read a phase measurement.

Valid Channel Names:
For DSO1X2X:
"CHAN1"
"CHAN2"
For DSO1X4X:
"CHAN1"
"CHAN2"
"CHAN3"
"CHAN4"

Default Value: ""

Notes:

(1) You can specify the channel name as a string variable or as a literal enclosed in double quotes.    0    Pass Source 2 for a phase measurement.

Valid Channel Names:
For DSO1X2X:
"CHAN1"
"CHAN2"
For DSO1X4X:
"CHAN1"
"CHAN2"
"CHAN3"
"CHAN4"

Default Value: ""

Notes:

(1) You can specify the channel name as a string variable or as a literal enclosed in double quotes.
(2) It cannot be identical to Source1.   �-   �  �    Instrument Handle                �g ,� � �    Direction                        � �  �  �    Phase Degree                     �W#����  �    Status                           �� ,  � �    Source1                          �� , � � �    Source2                                           8Rising AG1000NI_VAL_RISING Falling AG1000NI_VAL_FALLING    	           	                      8CHAN1 "CHAN1" CHAN2 "CHAN2" CHAN3 "CHAN3" CHAN4 "CHAN4"              8CHAN1 "CHAN1" CHAN2 "CHAN2" CHAN3 "CHAN3" CHAN4 "CHAN4"   J    This function aborts an acquisition and returns the oscilloscope to the Idle state.  You initiate an acquisition with the ag1000ni_InitiateAcquisition function.

Notes:

(1) This function does not check the instrument status.   Typically, you call this function only in a sequence of calls to other low-level driver functions.  The sequence performs one operation.  You use the low-level functions to optimize one or more aspects of interaction with the instrument.  If you want to check the instrument status, call the ag1000ni_error_query function at the conclusion of the sequence.     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
   ��-   �  �    Instrument Handle                 e#����  �    Status                                 	          &    This function resets the instrument to a known state and sends initialization commands to the instrument.  The initialization commands set instrument settings such as Headers Off, Short Command form, and Data Transfer Binary to the state necessary for the operation of the instrument driver.
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   �#����  �    Status                           �-   �  �    Instrument Handle                  	                  This function resets the instrument and applies initial user specified settings from the Logical Name which was used to initialize the session.  If the session was created without a Logical Name, this function is equivalent to the ag1000ni_reset function.    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   6#����  �    Status                           �-   �  �    Instrument Handle                  	               �    This function places the instrument in a quiescent state where it has minimal or no impact on the system to which it is connected.    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   l#����  �    Status                           �-   �  �    Instrument Handle                  	               Z    This function runs the instrument's self test routine and returns the test result(s). 

    &    This control contains the value returned from the instrument self test.  Zero means success.  For any other code, see the device's operator's manual.

Self-Test Code    Description
---------------------------------------
   0              Passed self test
   1              Self test failed

     �    Returns the self-test response string from the instrument. See the device's operation manual for an explanation of the string's contents.

You must pass a ViChar array with at least 256 bytes.    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   !x =  �  �    Self Test Result                 "� = � � ,    Self-Test Message                #p#����  �    Status                           )�-   �  �    Instrument Handle                  	           	            	               `    This function returns the revision numbers of the instrument driver and instrument firmware.

     �    Returns the instrument driver software revision numbers in the form of a string.

You must pass a ViChar array with at least 256 bytes.     �    Returns the instrument firmware revision numbers in the form of a string.

You must pass a ViChar array with at least 256 bytes.
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   , = 3 �  �    Instrument Driver Revision       ,� =6 �  �    Firmware Revision                - #����  �    Status                           3�-   �  �    Instrument Handle                  	            	            	               V    This function reads an error code and a message from the instrument's error queue.

     B    Returns the error code read from the instrument's error queue.

     �    Returns the error message string read from the instrument's error message queue.

You must pass a ViChar array with at least 256 bytes.
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   5� =  �  �    Error Code                       5� = � � ,    Error Message                    6�#����  �    Status                           <�-   �  �    Instrument Handle                  	           	            	               n    This function converts a status code returned by an instrument driver function into a user-readable string.     %�    Pass the Status parameter that is returned from any of the instrument driver functions.
          
Default Value:  0  (VI_SUCCESS)
          
ag1000ni Status Codes:
Status    Description
-------------------------------------------------
WARNINGS:
IviScope Status Codes:
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  One of the elements in the waveform array is invalid.
  
ERRORS:
BFFA2001  Specified channel is not enabled.
BFFA2002  Unable to perform desired measurement operation.
BFFA2003  Maximum operation time exceeded.

IVI Engine Status Codes:
Status    Description
-------------------------------------------------
ERRORS:
BFFA0001  Instrument error. Call ag1000ni_error_query.
BFFA0002  Cannot open file.
BFFA0003  Error reading from file.
BFFA0004  Error writing to file.
BFFA0005  Driver module file not found.
BFFA0006  Cannot open driver module file for reading.
BFFA0007  Driver module has invalid file format or invalid data.
BFFA0008  Driver module contains undefined references.
BFFA0009  Cannot find function in driver module.
BFFA000A  Failure loading driver module.
BFFA000B  Invalid path name.
BFFA000C  Invalid attribute.
BFFA000D  IVI attribute is not writable.
BFFA000E  IVI attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0011  Function not supported.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0017  Specified item already exists.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001D  Object or item is not initialized.
BFFA001E  Non-interchangeable behavior.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0021  Unable to allocate system resource.
BFFA0022  Permission to access file was denied.
BFFA0023  Too many files are already open.
BFFA0024  Unable to create temporary file in target directory.
BFFA0025  All temporary filenames already used.
BFFA0026  Disk is full.
BFFA0027  Cannot find configuration file on disk.
BFFA0028  Cannot open configuration file.
BFFA0029  Error reading configuration file.
BFFA002A  Invalid ViInt32 value in configuration file.
BFFA002B  Invalid ViReal64 value in configuration file.
BFFA002C  Invalid ViBoolean value in configuration file.
BFFA002D  Entry missing from configuration file.
BFFA002E  Initialization failed in driver DLL.
BFFA002F  Driver module has unresolved external reference.
BFFA0030  Cannot find CVI Run-Time Engine.
BFFA0031  Cannot open CVI Run-Time Engine.
BFFA0032  CVI Run-Time Engine has invalid format.
BFFA0033  CVI Run-Time Engine is missing required function(s).
BFFA0034  CVI Run-Time Engine initialization failed.
BFFA0035  CVI Run-Time Engine has unresolved external reference.
BFFA0036  Failure loading CVI Run-Time Engine.
BFFA0037  Cannot open DLL for read exports.
BFFA0038  DLL file is corrupt.
BFFA0039  No DLL export table in DLL.
BFFA003A  Unknown attribute name in default configuration file.
BFFA003B  Unknown attribute value in default configuration file.
BFFA003C  Memory pointer specified is not known.
BFFA003D  Unable to find any channel strings.
BFFA003E  Duplicate channel string.
BFFA003F  Duplicate virtual channel name.
BFFA0040  Missing virtual channel name.
BFFA0041  Bad virtual channel name.
BFFA0042  Unassigned virtual channel name.
BFFA0043  Bad virtual channel assignment.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0048  Channel already excluded.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA004D  Operation only valid on a class driver session.
BFFA004E  "ivi.ini" filename is reserved.
BFFA004F  Duplicate run-time configuration entry.
BFFA0050  Index parameter is one-based.
BFFA0051  Index parameter is too high.
BFFA0052  Attribute is not cacheable.
BFFA0053  You cannot export a ViAddr attribute to the end-user.
BFFA0054  Bad channel string in channel string list.
BFFA0055  Bad prefix name in default configuration file.
         
VISA Status Codes:
Status    Description
-------------------------------------------------
WARNINGS:
3FFF0002 Event enabled for one or more specified mechanisms.
3FFF0003 Event disabled for one or more specified mechanisms.
3FFF0004 Successful, but queue already empty.
3FFF0005 Specified termination character was read.
3FFF0006 Number of bytes transferred equals input count.
3FFF0077 Configuration non-existant or could not be loaded.
3FFF007D Open successful, but the device not responding.
3FFF0080 Wait successful, but more event objects available.
3FFF0082 Specified object reference is uninitialized.
3FFF0084 Attribute value not supported.
3FFF0085 Status code could not be interpreted.
3FFF0088 Specified I/O buffer type not supported.
3FFF0098 Successful,  but invoke no handlers for this event.
3FFF0099 Successful but session has nested shared locks.
3FFF009A Successful but session has nested exclusive locks.
3FFF009B Successful but operation not asynchronous.
         
ERRORS:
BFFF0000 Unknown system error (miscellaneous error).
BFFF000E Session or object reference is invalid.
BFFF000F Resource is locked.
BFFF0010 Invalid expression specified for search.
BFFF0011 Resource is not present in the system.
BFFF0012 Invalid resource reference specified.  Parsing error.
BFFF0013 Invalid access mode.
BFFF0015 Timeout expired before operation completed.
BFFF0016 Unable to deallocate session data structures.
BFFF001B Specified degree is invalid.
BFFF001C Specified job identifier is invalid.
BFFF001D Attribute is not supported by the referenced object.
BFFF001E Attribute state not supported by the referenced object.
BFFF001F Specified attribute is read-only.
BFFF0020 Lock type lock not supported by this resource.
BFFF0021 Invalid access key.
BFFF0026 Specified event type not supported by the resource.
BFFF0027 Invalid mechanism specified.
BFFF0028 A handler was not installed.
BFFF0029 Handler reference either invalid or was not installed.
BFFF002A Specified event context invalid.
BFFF002D Event queue for specified type has overflowed.
BFFF002F Event type must be enabled in order to receive.
BFFF0030 User abort during transfer.
BFFF0034 Violation of raw write protocol during transfer.
BFFF0035 Violation of raw read protocol during transfer.
BFFF0036 Device reported output protocol error during transfer.
BFFF0037 Device reported input protocol error during transfer.
BFFF0038 Bus error during transfer.
BFFF0039 Unable to queue asynchronous operation.
BFFF003A Unable to start operation because setup is invalid.
BFFF003B Unable to queue the asynchronous operation.
BFFF003C Insufficient resources to perform memory allocation.
BFFF003D Invalid buffer mask specified.
BFFF003E I/O error.
BFFF003F Format specifier invalid.
BFFF0041 Format specifier not supported.
BFFF0042 Trigger line is currently in use.
BFFF004A Service request not received for the session.
BFFF004E Invalid address space specified.
BFFF0051 Invalid offset specified.
BFFF0052 Invalid access width specified.
BFFF0054 Offset not accessible from this hardware.
BFFF0055 Source and destination widths are different.
BFFF0057 Session not currently mapped.
BFFF0059 Previous response still pending.
BFFF005F No listeners condition detected.
BFFF0060 Interface not currently the controller in charge.
BFFF0061 Interface not the system controller.
BFFF0067 Session does not support this operation.
BFFF006A A parity error occurred during transfer.
BFFF006B A framing error occurred during transfer.
BFFF006C An overrun error occurred during transfer.
BFFF0070 Offset not properly aligned for operation access width.
BFFF0071 Specified user buffer not valid.
BFFF0072 Resource valid, but VISA cannot access it.
BFFF0076 Width not supported by this hardware.
BFFF0078 Invalid parameter value, parameter unknown.
BFFF0079 Invalid protocol.
BFFF007B Invalid window size.
BFFF0080 Session currently contains a mapped window.
BFFF0081 Operation not implemented.
BFFF0083 Invalid length.
BFFF0091 Invalid mode.
BFFF009C Session did not have a lock on the resource.
BFFF009D The device does not export any memory.
BFFF009E VISA-required code library not located or not loaded.
         
VXIPnP Driver Status Codes:
Status    Description
-------------------------------------------------
WARNINGS:
3FFC0101  Instrument does not have ID Query capability.
3FFC0102  Instrument does not have Reset capability.
3FFC0103  Instrument does not have Self-Test capability.
3FFC0104  Instrument does not have Error Query capability.
3FFC0105  Instrument does not have Revision Query capability.
          
ERRORS:
BFFC0001  Parameter 1 out of range, or error trying to set it.
BFFC0002  Parameter 2 out of range, or error trying to set it.
BFFC0003  Parameter 3 out of range, or error trying to set it.
BFFC0004  Parameter 4 out of range, or error trying to set it.
BFFC0005  Parameter 5 out of range, or error trying to set it.
BFFC0006  Parameter 6 out of range, or error trying to set it.
BFFC0007  Parameter 7 out of range, or error trying to set it.
BFFC0008  Parameter 8 out of range, or error trying to set it.
BFFC0011  Instrument failed the ID Query.
BFFC0012  Invalid response from instrument.     �    Returns the user-readable message string that corresponds to the status code you specify.

You must pass a ViChar array with at least 256 bytes.
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
        The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

You can pass VI_NULL for this parameter.  This is useful when one of the initialize functions fail.

Default Value:  VI_NULL
   ?( =  �  h    Error Code                       d� = � � �    Error Message                    ez#����  �    Status                           k�-   �  �    Instrument Handle                  0    	            	           VI_NULL   �    After the read and fetch waveform functions execute, each element in the waveform array contains either a voltage or a value indicating that the oscilloscope could not sample a voltage.  The driver uses an IEEE defined NaN (Not a Number) value to mark as invalid each element in the waveform array for which the oscilloscope could not sample a voltage.  This function determines whether a value you pass from the waveform array is invalid.
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    8    Returns whether the Element Value is a valid voltage or a value indicating that the oscilloscope could not sample a voltage.

Valid Return Values:
VI_TRUE  (1) - The Element Value indicates that the oscilloscope
               could not sample the voltage.
VI_FALSE (0) - The Element Value is a valid voltage.
    _    Pass one of the values from the waveform array returned by the read and fetch waveform functions.  The driver uses an IEEE defined NaN (Not a Number) value to mark as invalid each element in the waveform array for which the oscilloscope could not sample a voltage.  The driver determines whether the value you pass is invalid.

Default Value: None

   o�#����  �    Status                           vF#   �  �    Instrument Handle                w  =2 �  �    Is Invalid                       x@ = l �  �    Element Value                      	               	               P    This function invalidates the cached values of all attributes for the session.    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   z�#����  �    Status                           �i-   �  �    Instrument Handle                  	              b    This function returns the highest-level channel name that corresponds to the specific driver channel string that is in the channel table at an index you specify.  By passing 0 for the buffer size, the caller can ascertain the buffer size required to get the entire channel name string and then call the function again with a sufficiently large buffer.
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, or if the status code is not listed below, call the ag1000ni_error_message function.  To obtain additional information about the error condition, use the ag1000ni_GetError and ag1000ni_ClearError functions.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     ;    A 1-based index into the channel table.

Default Value: 1        Returns the highest-level channel name that corresponds to the specific driver channel string that is in the channel table at an index you specify..

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter.  If the channel name description, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass 0 for the Buffer Size, you can pass VI_NULL for this parameter.    �    Pass the number of bytes in the ViChar array you specify for the Channel Name parameter.

If the channel name, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies BufferSize - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Channel Name buffer parameter.

Default Value:  None   �-   �  �    Instrument Handle                ��#����  �    Status                           �� = 0 �  �    Index                            � �6 �  �    Channel Name                     �& � 1 �  �    Buffer Size                            	           1    	               �    This function retrieves and then clears the IVI error information for the session or the current execution thread. One exception exists: If the BufferSize parameter is 0, the function does not clear the error information. By passing 0 for the buffer size, the caller can ascertain the buffer size required to get the entire error description string and then call the function again with a sufficiently large buffer.

If the user specifies a valid IVI session for the InstrumentHandle parameter, Get Error retrieves and then clears the error information for the session.  If the user passes VI_NULL for the InstrumentHandle parameter, this function retrieves and then clears the error information for the current execution thread.  If the InstrumentHandle parameter is an invalid session, the function does nothing and returns an error. Normally, the error information describes the first error that occurred since the user last called ag1000ni_GetError or ag1000ni_ClearError.
    +    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Pass the number of bytes in the ViChar array you specify for the Description parameter.

If the error description, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies BufferSize - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Description buffer parameter.

Default Value:  None     �    Returns the error code for the session or execution thread.

If you pass 0 for the Buffer Size, you can pass VI_NULL for this parameter.
    �    Returns the error description for the IVI session or execution thread.  If there is no description, the function returns an empty string.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter.  If the error description, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass 0 for the Buffer Size, you can pass VI_NULL for this parameter.   �#����  �    Status or Required Size          �?-   �  �    Instrument Handle                �� 3< �  �    BufferSize                       �� 3 P �  �    Code                             �l � Q � �    Description                        	                   	           	           d    This function clears the error code and error description for the IVI session. If the user specifies a valid IVI session for the InstrumentHandle parameter, this function clears the error information for the session. If the user passes VI_NULL for the Vi parameter, this function clears the error information for the current execution thread. If the Vi parameter is an invalid session, the function does nothing and returns an error.
The function clears the error code by setting it to VI_SUCCESS.  If the error description string is non-NULL, the function de-allocates the error description string and sets the address to VI_NULL.

Maintaining the error information separately for each thread is useful if the user does not have a session handle to pass to the ag1000ni_GetError function, which occurs when a call to ag1000ni_init or ag1000ni_InitWithOptions fails.    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   �	#����  �    Status                           �-   �  �    Instrument Handle                  	              �    This function returns the coercion information associated with the IVI session.  This function retrieves and clears the oldest instance in which the instrument driver coerced a value you specified to another value.

If you set the AG1000NI_ATTR_RECORD_COERCIONS attribute to VI_TRUE, the instrument driver keeps a list of all coercions it makes on ViInt32 or ViReal64 values you pass to instrument driver functions.  You use this function to retrieve information from that list.

If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Coercion Record buffer parameter.

The function returns an empty string in the Coercion Record parameter if no coercion records remain for the session.

    ,    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    The ViSession handle that you obtain from the ag1000ni_init function.  The handle identifies a particular instrument session.

Default Value:  None    �    Returns the next coercion record for the IVI session.  If there are no coercion records, the function returns an empty string.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter.  If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

This parameter returns an empty string if no coercion records remain for the session.
    �    Pass the number of bytes in the ViChar array you specify for the Coercion Record parameter.

If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Coercion Record buffer parameter.

Default Value:  None

   ��#����  �    Status or Required Size          ��-   �  �    Instrument Handle                �\ � Q � �    Coercion Record                  �b = � �  �    Buffer Size                        	               	               /    This function returns the interchangeability warnings associated with the IVI session. It retrieves and clears the oldest instance in which the class driver recorded an interchangeability warning.  Interchangeability warnings indicate that using your application with a different instrument might cause different behavior. You use this function to retrieve interchangeability warnings.

The driver performs interchangeability checking when the AG1000NI_ATTR_INTERCHANGE_CHECK attribute is set to VI_TRUE.

The function returns an empty string in the Interchange Warning parameter if no interchangeability warnings remain for the session.

In general, the instrument driver generates interchangeability warnings when an attribute that affects the behavior of the instrument is in a state that you did not specify.
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, or if the status code is not listed below, call the ag1000ni_error_message function.  To obtain additional information about the error condition, use the ag1000ni_GetError and ag1000ni_ClearError functions.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Pass the number of bytes in the ViChar array you specify for the Interchange Warning parameter.

If the next interchangeability warning string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Interchange Warning buffer parameter.

Default Value:  None
        Returns the next interchange warning for the IVI session. If there are no interchange warnings, the function returns an empty  string.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter. If the next interchangeability warning string, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

This parameter returns an empty string if no interchangeability
warnings remain for the session.

   ˂#����  �    Status or Required Size          ӗ-   �  �    Instrument Handle                �Q = � �  �    Buffer Size                      �W � Q � �    Interchange Warning                	                   	            A    This function clears the list of current interchange warnings.
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
   ۸-   �  �    Instrument Handle                �r#����  �    Status                                 	          �    When developing a complex test system that consists of multiple test modules, it is generally a good idea to design the test modules so that they can run in any order.  To do so requires ensuring that each test module completely configures the state of each instrument it uses.  If a particular test module does not completely configure the state of an instrument, the state of the instrument depends on the configuration from a previously executed test module.  If you execute the test modules in a different order, the behavior of the instrument and therefore the entire test module is likely to change.  This change in behavior is generally instrument specific and represents an interchangeability problem.

You can use this function to test for such cases.  After you call this function, the interchangeability checking algorithms in the specific driver ignore all previous configuration operations.  By calling this function at the beginning of a test module, you can determine whether the test module has dependencies on the operation of previously executed test modules.

This function does not clear the interchangeability warnings from the list of previously recorded interchangeability warnings.  If you want to guarantee that the ag1000ni_GetNextInterchangeWarning function only returns those interchangeability warnings that are generated after calling this function, you must clear the list of interchangeability warnings.  You can clear the interchangeability warnings list by repeatedly calling the ag1000ni_GetNextInterchangeWarning function until no more interchangeability warnings are returned.  If you are not interested in the content of those warnings, you can call the ag1000ni_ClearInterchangeWarnings function.
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
   �4-   �  �    Instrument Handle                ��#����  �    Status                                 	          :    This function obtains a multithread lock on the instrument session.  Before it does so, it waits until all other execution threads have released their locks on the instrument session.

Other threads might have obtained a lock on this session in the following ways:

- The user's application called ag1000ni_LockSession.

- A call to the instrument driver locked the session.

- A call to the IVI engine locked the session.

After your call to ag1000ni_LockSession returns successfully, no other threads can access the instrument session until you call ag1000ni_UnlockSession.

Use ag1000ni_LockSession and ag1000ni_UnlockSession around a sequence of calls to instrument driver functions if you require that the instrument retain its settings through the end of the sequence.

You can safely make nested calls to ag1000ni_LockSession within the same thread.  To completely unlock the session, you must balance each call to ag1000ni_LockSession with a call to ag1000ni_UnlockSession.  If, however, you use the Caller Has Lock parameter in all calls to ag1000ni_LockSession and ag1000ni_UnlockSession within a function, the IVI Library locks the session only once within the function regardless of the number of calls you make to ag1000ni_LockSession.  This allows you to call ag1000ni_UnlockSession just once at the end of the function. 
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    This parameter serves as a convenience.  If you do not want to use this parameter, pass VI_NULL. 

Use this parameter in complex functions to keep track of whether you obtain a lock and therefore need to unlock the session.  Pass the address of a local ViBoolean variable.  In the declaration of the local variable, initialize it to VI_FALSE.  Pass the address of the same local variable to any other calls you make to ag1000ni_LockSession or ag1000ni_UnlockSession in the same function.

The parameter is an input/output parameter.  ag1000ni_LockSession and ag1000ni_UnlockSession each inspect the current value and take the following actions:

- If the value is VI_TRUE, ag1000ni_LockSession does not lock the session again.  If the value is VI_FALSE, ag1000ni_LockSession obtains the lock and sets the value of the parameter to VI_TRUE.

- If the value is VI_FALSE, ag1000ni_UnlockSession does not attempt to unlock the session.  If the value is VI_TRUE, ag1000ni_UnlockSession releases the lock and sets the value of the parameter to VI_FALSE.
 
Thus, you can, call ag1000ni_UnlockSession at the end of your function without worrying about whether you actually have the lock.  

Example:

ViStatus TestFunc (ViSession vi, ViInt32 flags)
{
    ViStatus error = VI_SUCCESS;
    ViBoolean haveLock = VI_FALSE;

    if (flags & BIT_1)
        {
        viCheckErr( ag1000ni_LockSession(vi, &haveLock));
        viCheckErr( TakeAction1(vi));
        if (flags & BIT_2)
            {
            viCheckErr( ag1000ni_UnlockSession(vi, &haveLock));
            viCheckErr( TakeAction2(vi));
            viCheckErr( ag1000ni_LockSession(vi, &haveLock);
            } 
        if (flags & BIT_3)
            viCheckErr( TakeAction3(vi));
        }

Error:
    /* 
       At this point, you cannot really be sure that 
       you have the lock.  Fortunately, the haveLock 
       variable takes care of that for you.          
    */
    ag1000ni_UnlockSession(vi, &haveLock);
    return error;
}   � #����  �    Status                           ��-   �  �    Instrument Handle                �P H � �  �    Caller Has Lock                    	               	            �    This function releases a lock that you acquired on an instrument session using ag1000ni_LockSession.  Refer to ag1000ni_LockSession for additional information on session locks.
    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    This parameter serves as a convenience.  If you do not want to use this parameter, pass VI_NULL. 

Use this parameter in complex functions to keep track of whether you obtain a lock and therefore need to unlock the session. 
Pass the address of a local ViBoolean variable.  In the declaration of the local variable, initialize it to VI_FALSE.  Pass the address of the same local variable to any other calls you make to ag1000ni_LockSession or ag1000ni_UnlockSession in the same function.

The parameter is an input/output parameter.  ag1000ni_LockSession and ag1000ni_UnlockSession each inspect the current value and take the following actions:

- If the value is VI_TRUE, ag1000ni_LockSession does not lock the session again.  If the value is VI_FALSE, ag1000ni_LockSession obtains the lock and sets the value of the parameter to VI_TRUE.

- If the value is VI_FALSE, ag1000ni_UnlockSession does not attempt to unlock the session.  If the value is VI_TRUE, ag1000ni_UnlockSession releases the lock and sets the value of the parameter to VI_FALSE.
 
Thus, you can, call ag1000ni_UnlockSession at the end of your function without worrying about whether you actually have the lock.  

Example:

ViStatus TestFunc (ViSession vi, ViInt32 flags)
{
    ViStatus error = VI_SUCCESS;
    ViBoolean haveLock = VI_FALSE;

    if (flags & BIT_1)
        {
        viCheckErr( ag1000ni_LockSession(vi, &haveLock));
        viCheckErr( TakeAction1(vi));
        if (flags & BIT_2)
            {
            viCheckErr( ag1000ni_UnlockSession(vi, &haveLock));
            viCheckErr( TakeAction2(vi));
            viCheckErr( ag1000ni_LockSession(vi, &haveLock);
            } 
        if (flags & BIT_3)
            viCheckErr( TakeAction3(vi));
        }

Error:
    /* 
       At this point, you cannot really be sure that 
       you have the lock.  Fortunately, the haveLock 
       variable takes care of that for you.          
    */
    ag1000ni_UnlockSession(vi, &haveLock);
    return error;
}   �#����  �    Status                           -   �  �    Instrument Handle                � H � �  �    Caller Has Lock                    	               	            �    This function writes a user-specified string to the instrument.

Note:  This function bypasses IVI attribute state caching.  Therefore, when you call this function, the cached values for all attributes will be invalidated.     2    Pass the string to be written to the instrument.    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   9 A � �  �    Write Buffer                     s#����  �    Status                           �-   �  �    Instrument Handle                      	               /    This function reads data from the instrument.     c    After this function executes, this parameter contains the data that was read from the instrument.    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     �    Pass the maximum number of bytes to read from the instruments.  

Valid Range:  0 to the number of elements in the Read Buffer.

Default Value:  256

     ^    Returns the number of bytes actually read from the instrument and stored in the Read Buffer.    � @ �  �    Read Buffer                       �#����  �    Status                           'n-   �  �    Instrument Handle                (( @ C �  �    Number of Bytes To Read          (� �' �  �    Num Bytes Read                     	            	               256    	           �    This function performs the following operations:

- Closes the instrument I/O session.

- Destroys the instrument driver session and all of its attributes.

- Deallocates any memory resources the driver uses.

Notes:

(1) You must unlock the session before calling ag1000ni_close.

(2) After calling ag1000ni_close, you cannot use the instrument driver again until you call ag1000ni_init or ag1000ni_InitWithOptions.

    n    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the ag1000ni_error_message function.  To obtain additional information about the error condition, call the ag1000ni_GetError function.  To clear the error information from the driver, call the ag1000ni_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    The ViSession handle that you obtain from the ag1000ni_init or ag1000ni_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   ,#����  �    Status                           2�-   �  �    Instrument Handle                  	            ����         i  *f             K.        init                                                                                                                                    ����         +�  M�             K.        InitWithOptions                                                                                                                         ����         OT  \~             K.        ConfigureAcquisitionType                                                                                                                ����         ]�  m�             K.        ConfigureAcquisitionRecord                                                                                                              ����         n�  y3             K.        ConfigureNumAverages                                                                                                                    ����         y�  �O             K.        ConfigureInitiateContinuous                                                                                                             ����         �  ��             K.        ConfigureChannel                                                                                                                        ����         ��  �L             K.        ConfigureChanCharacteristics                                                                                                            ����         ��  �             K.        ConfigureChanAdjustment                                                                                                                 ����         �b  �*             K.        ConfigureTrigger                                                                                                                        ����         ��  ��             K.        ConfigureTriggerCoupling                                                                                                                ����         ��  ݰ             K.        ConfigureTriggerModifier                                                                                                                ����         ��  �9             K.        ConfigureTriggerCharacteristics                                                                                                         ����         �C  �             K.        ConfigureEdgeTriggerSource                                                                                                              ����         �� 
�             K.        ConfigureTVTriggerSource                                                                                                                ����         �             K.        ConfigureTVTriggerLineNumber                                                                                                            ����        ]  �             K.        ConfigureTVTriggerCharacteristics                                                                                                       ����        !� 3�             K.        ConfigurePatternTriggerSource                                                                                                           ����        5! D�             K.        ConfigurePulseTriggerSource                                                                                                             ����        G� YG             K.        ConfigureAlternationTrigger                                                                                                             ����        ]V j9             K.        ConfigureAlternationEdgeTrigger                                                                                                         ����        k� xg             K.        ConfigureAlternationPulseTrigger                                                                                                        ����        z� �v             K.        ConfigureAlternationTVTrigger                                                                                                           ����        �� ��             K.        ConfigureAlternationTriggerAcquisitionRecord                                                                                            ����        �� ��             K.        ConfigureRefLevels                                                                                                                      ����        �� �W             K.        ActualRecordLength                                                                                                                      ����        � �             K.        SampleMode                                                                                                                              ����        �� �9             K.        SampleRate                                                                                                                              ����        �� щ             K.        AutoSetup                                                                                                                               ����        � �p             K.        SetAttributeViInt32                                                                                                                     ����        � �x             K.        SetAttributeViReal64                                                                                                                    ����        �              K.        SetAttributeViString                                                                                                                    ����         (�             K.        SetAttributeViBoolean                                                                                                                   ����        *$ >�             K.        SetAttributeViSession                                                                                                                   ����        @. P�             K.        GetAttributeViInt32                                                                                                                     ����        Q� b             K.        GetAttributeViReal64                                                                                                                    ����        cO ~E             K.        GetAttributeViString                                                                                                                    ����        � �             K.        GetAttributeViBoolean                                                                                                                   ����        �T ��             K.        GetAttributeViSession                                                                                                                   ����        �� ��             K.        CheckAttributeViInt32                                                                                                                   ����        �� Č             K.        CheckAttributeViReal64                                                                                                                  ����        �' �,             K.        CheckAttributeViString                                                                                                                  ����        �� ��             K.        CheckAttributeViBoolean                                                                                                                 ����        �j �r             K.        CheckAttributeViSession                                                                                                                 ����        �          	    K.        ReadWaveform                                                                                                                            ����        6 $%         
    K.        ReadMinMaxWaveform                                                                                                                      ����        &� K�             K.        ReadWaveformMeasurement                                                                                                                 ����        P	 ^�             K.        ReadDelayMeasurement                                                                                                                    ����        a� p�             K.        ReadPhaseMeasurement                                                                                                                    ����        s2 }             K.        InitiateAcquisition                                                                                                                     ����        }� �M             K.        AcquisitionStatus                                                                                                                       ����        � �1             K.        FetchWaveform                                                                                                                           ����        �( �~         	    K.        FetchMinMaxWaveform                                                                                                                     ����        �� ݆             K.        FetchWaveformMeasurement                                                                                                                ����        �f �             K.        FetchDelayMeasurement                                                                                                                   ����        �� �*             K.        FetchPhaseMeasurement                                                                                                                   ����        �Y �             K.        Abort                                                                                                                                   ����        U �             K.        reset                                                                                                                                   ����        - f             K.        ResetWithDefaults                                                                                                                       ����        �  �             K.        Disable                                                                                                                                 ����        ! *�             K.        self_test                                                                                                                               ����        +� 4P             K.        revision_query                                                                                                                          ����        5L =�             K.        error_query                                                                                                                             ����        >� m             K.        error_message                                                                                                                           ����        n y�             K.        IsInvalidWfmElement                                                                                                                     ����        z� �#             K.        InvalidateAllAttributes                                                                                                                 ����        �� �             K.        GetChannelName                                                                                                                          ����        �1 �h             K.        GetError                                                                                                                                ����        �� �9             K.        ClearError                                                                                                                              ����        �� �W             K.        GetNextCoercionRecord                                                                                                                   ����        �K �{             K.        GetNextInterchangeWarning                                                                                                               ����        �o ��             K.        ClearInterchangeWarnings                                                                                                                ����        �b �d             K.        ResetInterchangeCheck                                                                                                                   ����        ��               K.        LockSession                                                                                                                             ����        � �             K.        UnlockSession                                                                                                                           ����        Q �             K.        WriteInstrData                                                                                                                          ����         V ).             K.        ReadInstrData                                                                                                                           ����        *f 3B             K.        close                                                                                                                                                                                                                              �Initialize                                                                           �Initialize With Options                                                             %Configuration                                                                       OAcquisition                                                                          �Configure Acquisition Type                                                           �Configure Acquisition Record                                                         �Configure Number of Averages                                                         �Configure Initiate Continuous                                                       �Channel                                                                              �Configure Channel                                                                    �Configure Chan Characteristics                                                       �Configure Chan Adjustment                                                           6Trigger                                                                              �Configure Trigger                                                                    �Configure Trigger Coupling                                                           �Configure Trigger Modifier                                                           �Configure Trigger Characteristics                                                    �Configure Edge Trigger Source                                                        �Configure TV Trigger Source                                                          �Configure TV Trigger Line Number                                                     �Configure TV Trigger Characteristics                                                 �Configure Pattern Trigger Source                                                     �Configure Pulse Trigger Source                                                       �Configure Alternation Trigger                                                        �Configure Alternation Edge Trigger                                                   �Configure Alternation Pulse Trigger                                                  �Configure Alternation TV Trigger                                                     �Configure Alternation Trigger Acquisition Record                                    1Measurements                                                                         �Configure Reference Levels                                                          �Configuration Information                                                            �Actual Record Length                                                                 �Actual Sample Mode                                                                   �Actual Sample Rate                                                                   �Auto Setup                                                                          	LSet/Get/Check Attribute                                                             	�Set Attribute                                                                        �Set Attribute ViInt32                                                                �Set Attribute ViReal64                                                               �Set Attribute ViString                                                               �Set Attribute ViBoolean                                                              �Set Attribute ViSession                                                             
1Get Attribute                                                                        �Get Attribute ViInt32                                                                �Get Attribute ViReal64                                                               �Get Attribute ViString                                                               �Get Attribute ViBoolean                                                              �Get Attribute ViSession                                                             
�Check Attribute                                                                      �Check Attribute ViInt32                                                              �Check Attribute ViReal64                                                             �Check Attribute ViString                                                             �Check Attribute ViBoolean                                                            �Check Attribute ViSession                                                           UWaveform Acquisition                                                                 �Read Waveform                                                                        �Read Min Max Waveform                                                                �Read Waveform Measurement                                                            �Read Delay Measurement                                                               �Read Phase Measurement                                                              �Low-level Acquisition                                                                �Initiate Acquisition                                                                 �Acquisition Status                                                                   �Fetch Waveform                                                                       �Fetch Min Max Waveform                                                               �Fetch Waveform Measurement                                                           �Fetch Delay Measurement                                                              �Fetch Phase Measurement                                                              �Abort                                                                               NUtility                                                                              �Reset                                                                                �Reset With Defaults                                                                  �Disable                                                                              �Self-Test                                                                            �Revision Query                                                                       �Error-Query                                                                          �Error Message                                                                        �Is Invalid Waveform Element                                                          �Invalidate All Attributes                                                            �Get Channel Name                                                                    �Error Info                                                                           �Get Error                                                                            �Clear Error                                                                         Coercion Info                                                                        �Get Next Coercion Record                                                            VInterchangeability Info                                                              �Get Next Interchange Warning                                                         �Clear Interchange Warnings                                                           �Reset Interchange Check                                                             �Locking                                                                              �Lock Session                                                                         �Unlock Session                                                                      Instrument I/O                                                                       �Write Instrument Data                                                                �Read Instrument Data                                                                 �Close                                                                           