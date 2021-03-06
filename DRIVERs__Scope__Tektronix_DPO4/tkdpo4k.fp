s��        	��   � 	�3  #�   �   ����                               tkdpo4k     TEK DPO4000 series oscilloscope               � � ��ViInt16  �  � ��ViInt32  � � ��ViReal64     � ��ViRsrc     	� 	��ViBoolean     	� 	��ViSession     � ��ViStatus     �  ViChar[]     � ��ViChar     � ��ViString     	�  ViInt16[]     	�  ViInt32[]     
�  	ViReal64[]     � 	 
ViBoolean[]     � ��ViConstString     � ��ViAttr  
    This instrument driver provides programming support for the TKDPO4K Digital Phosphor Oscilloscope. The driver contains all the functions that IVI and VXIplug&play require. In addition, the driver contains high-level functions that configure the oscilloscope and read waveforms. The driver also contains lower level functions that initiate an acquisition and fetch a waveform in separate operations. The driver acquires waveforms using a variety of trigger types including edge, TV, runt, glitch, and width. The driver supports the normal, average, high-resolution, envelope, and peak-detect acquisition types.  The driver also performs waveform measurements such as rise-time, peak-to-peak voltage, and frequency.  

Note:  This driver requires the VISA and IVI libraries.  

        This class contains functions and sub-classes that configure the oscilloscope. The class includes high-level functions that configure the channel, acquisition, and trigger subsystems. The class also contains the low-level functions that set, get, and check individual attribute values.     I    This class contains functions that configure the acquisition subsystem.     Y    This class contains functions that configure the channel subsystem of the oscilloscope.     �    This class contains functions that configure the trigger subsystem. To configure the trigger subsystem, first call the tkdpo4k_ConfigureTrigger function. Then call the trigger configuration function that corresonds to the trigger type you specify.     �    This class contains fundamental trigger subsystem functions. Functions in this class are not trigger-type related. When you configure the trigger subsystem, call functions in this class before the functions in specific trigger classes.     �    This class contains functions that configure the edge trigger. The edge trigger group consists of Edge Trigger and AC Line Trigger.        This class contains functions that configures edge triggering. An edge trigger occurs when the trigger signal passes through the voltage threshold that you specify with the Trigger Level parameter and has the slope that you specify with the Trigger Slope parameter.        This class contains functions that configure AC Line triggering. An AC Line trigger occurs when the oscilloscope detects a positive zero crossing, negative zero crossing or optionally either positive or negative zero crossing on the network supply voltage.     F    This class contains functions that configure delay edge triggering.      l    This class contains functions that configure ethernet triggering (Basic, Data, IPH, MAC, QTAG, and TCPH).      A    This class contains functions that configure video triggering.      �    This class contains functions that configure pulse triggering. A pulse trigger group consists of Runt Trigger, Glitch Trigger, and Transition Trigger.     �    This class contains functions that configure runt triggering. A runt trigger occurs when the trigger signal crosses one of the runt thresholds twice without crossing the other runt threshold.     �    This class contains functions that configure glitch triggering. A glitch trigger occurs when the trigger signal has a pulse with a width that meets the glitch trigger condition.     G    This class contains function that configures transition triggering. 
     �    This class contains functions that configure logic triggering. A logic trigger group consists of Pattern Trigger, State Trigger, and SetHold Trigger.     �    This class contains functions that configure pattern triggering. A pattern trigger occurs when a pattern defined by pattern function happens and holds true for the delta time.     �    This class contains functions that configure state triggering. A state trigger occurs when a state defiend by a state function happens at the transition edge of the clock source.     �    This class contains functions that configure sethold triggering. A sethold trigger occurs when a set time violation or hold time violation occurs.     �    This class contains fucntions that configure serial triggering. The serial trigger group consists of I2C Trigger, SPI Trigger, CAN Trigger, RS232 Trigger and Parallel Trigger.     >    This class contains functions that configure I2C triggering.     >    This class contains functions that configure SPI triggering.     >    This class contains functions that configure CAN triggering.     @    This class contains functions that configure RS232 triggering.     C    This class contains functions that configure Parallel triggering.     @    The class contains functions that configure the math channels.     E    The class contains functions that configure the reference channels.     h    The class contains functions that configure the oscilloscope for waveform and histogram measurements.      Z    The class contains fucntions that configure the oscilloscope for serial BUS characters.
     �    This class contains fundamental trigger subsystem fucntions. 
You must call fucntions in this class before calling specific serial BUS configuration functions.     6    This class contains function that configure I2C BUS.     7    This class contains functions that configure SPI BUS.     7    This class contains functions that configure CAN BUS.     8    This class contains function that configure RS232 BUS.     o    This class contains function that configure Parallel BUS.

Notes:
(1) This class is valid only in MSO models.     o    This class contains function that configure Parallel BUS.

Notes:
(1) This class is valid only in MSO models.     R    This class contains sub-classes for the set, get, and check attribute functions.     �    This class contains functions that set an attribute to a new value. There are typesafe functions for each attribute data type.     �    This class contains functions that retrieve the current value of an attribute. There are typesafe functions for each attribute data type.     �    This class contains functions that retrieve the current value of an attribute. There are typesafe functions for each attribute data type.    �    This class contains functions and sub-classes that initiate and retrieve waveforms and waveform measurements using the current configuration. The class contains high-level read functions that intiate an acquisition and fetch the data in one operation. The class also contains low-level functions that intiate an acquisition and fetch a waveform or wavefrom measurement in separate operations.    j    The class contains functions that give low-level control over how the oscilloscope acquires waveforms and waveform measurements. The functions perform the following operations:

- intiate an acquisition
- force a software trigger
- inquire the sample rate
- return the status of acquisition 
- fetch a waveform or waveform measurement 
- abort an acquisition

    _    This class contains functions and sub-classes that implement common instrument operations. These functions include many of functions that VXIplug&play require, such as reset, self-test, revision query, error query, and error message. This class also contains functions that access IVI error infomation, lock the session, and perform instrument I/O.
     R    This class contains functions that retrieve and clear the IVI error information.     ?    This class contains functions that retrieve coercion records.     C    This class contains functions that retrieve interchange warnings.     k    This class contains functions that lock and unlock IVI instrument driver sessions for multithread safefy.     F    This class contains functions that send and receive instrument data.    A    This function performs the following initialization actions:

- Creates a new IVI instrument driver session.

- Opens a session to the specified device using the interface and address you specify for the Resource Name parameter.

- If the ID Query parameter is set to VI_TRUE, this function queries the instrument ID and checks that it is valid for this instrument driver.

- If the Reset parameter is set to VI_TRUE, this function resets the instrument to a known state.

- Sends initialization commands to set the instrument to the state necessary for the operation of the instrument driver.

- Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Note: This function creates a new session each time you invoke it. Although you can open more than one IVI session for the same resource, it is best not to do so. You can use the same session in multiple program threads. You can use the tkdpo4k_LockSession and tkdpo4k_UnlockSession functions to protect sections of code that require exclusive access to the resource.

Content from the IVI specifications reproduced with permission from the IVI Foundation. 
 
The IVI Foundation and its member companies make no warranty of any kind with regard to this material, including, but not limited to, the implied warranties of merchantability and fitness for a particular purpose. The IVI Foundation and its member companies shall not be liable for errors contained herein or for incidental or consequential damages in connection with the furnishing, performance, or use of this material.
    Y    Passes the resource name of the device to initialize.

You also can pass the name of a virtual instrument or logical name that you configure with the IVI Configuration utility. The virtual instrument identifies a specific device and specifies the initial settings for the session. A logical name identifies a particular virtual instrument.

Refer to the following table for correct grammar to use for this parameter. Optional fields are shown in square brackets ([]).

Syntax
------------------------------------------------------
USB[board]::manufacturer ID::model code::serial number[::USB interface number][::INSTR]

If you do not specify a value for an optional field, the following values are used:

Optional Field - Value
------------------------------------------------------
board - 0
secondary address - none (31)

The following table contains example valid values for this parameter.

"Valid Value" - Description
------------------------------------------------------
"ASRL1::INSTR" - Serial on COM 1
"GPIB::22::INSTR" - GPIB board 0, primary address 22 no
                    secondary address
"GPIB::22::5::INSTR" - GPIB board 0, primary address 22
                       secondary address 5
"GPIB1::22::5::INSTR" - GPIB board 1, primary address 22
                        secondary address 5
"SampleScope" - Logical name "SampleScope"

Default Value:  ""    K    Specifies whether you want the instrument driver to perform an ID Query.

Valid Range:
VI_TRUE  (1) - Perform ID Query (Default Value)
VI_FALSE (0) - Skip ID Query

When you set this parameter to VI_TRUE, the driver verifies that the instrument you initialize is a type that this driver supports.  

Circumstances can arise where it is undesirable to send an ID Query command string to the instrument. When you set this parameter to VI_FALSE, the function initializes the instrument without performing an ID Query. The function uses default instrument type to configure the instrument.     �    Specifies whether you want to reset the instrument during the initialization process.

Valid Range:
VI_TRUE  (1) - Reset Device (Default Value)
VI_FALSE (0) - Do Not Reset    �    Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Notes:

(1) This function creates a new session each time you invoke it.  This is useful if you have multiple physical instances of the same type of instrument.  

(2) Avoid creating multiple concurrent sessions to the same physical instrument. Although you can create more than one IVI session for the same resource, it is best not to do so. A better approach is to use the same IVI session in multiple execution threads. You can use functions tkdpo4k_LockSession and tkdpo4k_UnlockSession to protect sections of code that require exclusive access to the resource.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function. To obtain additional information about the error condition, call the tkdpo4k_GetError function. To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different files that contain the defined constants for the particular status codes:
          
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
    &  > %  �  �    Resource Name                     +a >) �       ID Query                          -� =� �       Reset Device                      .i  �  �    Instrument Handle                 1 ����  �    Status                          ����  `��                                            ""   Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	           MCopyright 2005 ~ 2011 National Instruments Corporation. All Rights Reserved.   G    This function performs the following initialization actions:

- Creates a new IVI instrument driver and optionally sets the initial state of the following session attributes:

    TKDPO4K_ATTR_RANGE_CHECK         
    TKDPO4K_ATTR_QUERY_INSTRUMENT_STATUS  
    TKDPO4K_ATTR_CACHE               
    TKDPO4K_ATTR_SIMULATE            
    TKDPO4K_ATTR_RECORD_COERCIONS    

- Opens a session to the specified device using the interface and address you specify for the Resource Name parameter.

- If the ID Query parameter is set to VI_TRUE, this function queries the instrument ID and checks that it is valid for this instrument driver.

- If the Reset parameter is set to VI_TRUE, this function resets the instrument to a known state.

- Sends initialization commands to set the instrument to the state necessary for the operation of the instrument driver.

- Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Note: This function creates a new session each time you invoke it. Although you can open more than one IVI session for the same resource, it is best not to do so. You can use the same session in multiple program threads. You can use the tkdpo4k_LockSession and tkdpo4k_UnlockSession functions to protect sections of code that require exclusive access to the resource.

Content from the IVI specifications reproduced with permission from the IVI Foundation. 
 
The IVI Foundation and its member companies make no warranty of any kind with regard to this material, including, but not limited to, the implied warranties of merchantability and fitness for a particular purpose. The IVI Foundation and its member companies shall not be liable for errors contained herein or for incidental or consequential damages in connection with the furnishing, performance, or use of this material.
    a    Passes the resource name of the device to initialize.

You also can pass the name of a virtual instrument or logical name that you configure with the IVI Configuration utility. The virtual instrument identifies a specific device and specifies the initial settings for the session. A logical Name identifies a particular virtual instrument.

Refer to the following table below for the exact grammar to use for this parameter. Optional fields are shown in square brackets ([]).

Syntax
------------------------------------------------------
USB[board]::manufacturer ID::model code::serial number[::USB interface number][::INSTR]

If you do not specify a value for an optional field, the following values are used:

Optional Field - Value
------------------------------------------------------
board - 0
secondary address - none (31)

The following table contains example valid values for this parameter.

"Valid Value" - Description
------------------------------------------------------
"ASRL1::INSTR" - Serial on COM 1
"GPIB::22::INSTR" - GPIB board 0, primary address 22 no
                    secondary address
"GPIB::22::5::INSTR" - GPIB board 0, primary address 22
                       secondary address 5
"GPIB1::22::5::INSTR" - GPIB board 1, primary address 22
                        secondary address 5
"SampleScope" - Logical name "SampleScope"

Default Value:  ""    �    Specifies whether you want the instrument driver to perform an ID Query.

Valid Range:
VI_TRUE  (1) - Perform ID Query (Default Value)
VI_FALSE (0) - Skip ID Query

When you set this parameter to VI_TRUE, the driver verifies that the instrument you initialize is a type that this driver supports.  

Circumstances can arise where it is undesirable to send an ID Query command string to the instrument. When you set this parameter to VI_FALSE, the function initializes the instrument without performing an ID Query. You should specify instrument modules in option strings. The valid instrument modules are listed here.
----------------------------------------------------
Instrument Module  | Max Sample Rate | Channel  
----------------------------------------------------
DPO4104, MSO4104   | 1 GHz           | 4 channels
----------------------------------------------------
DPO4054, MSO4054   | 500 MHz         | 4 channels
----------------------------------------------------
DPO4034, MSO4034   | 350 MHz         | 4 channels
----------------------------------------------------
DPO4032, MSO4032   | 350 MHz         | 2 channels
----------------------------------------------------
DPO3012            | 100 MHz         | 2 channels
----------------------------------------------------
DPO3014            | 100 MHz         | 4 channels
----------------------------------------------------
DPO3032            | 300 MHz         | 2 channels
----------------------------------------------------
DPO3034            | 300 MHz         | 4 channels
----------------------------------------------------
DPO3052            | 500 MHz         | 2 channels
----------------------------------------------------
DPO3054            | 500 MHz         | 4 channels
----------------------------------------------------
For example, if your instrument is of type DPO4104, you should specify the option string as "Simulate=0,RangeCheck=1,QueryInstrStatus=1,Cache=1,DriverSetup=Model : DPO4054"     �    Specifies whether you want to reset the instrument during the initialization process.

Valid Range:
VI_TRUE  (1) - Reset Device (Default Value)
VI_FALSE (0) - Do Not Reset    �    Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Notes:

(1) This function creates a new session each time you invoke it.  This is useful if you have multiple physical instances of the same type of instrument.  

(2) Avoid creating multiple concurrent sessions to the same physical instrument. Although you can create more than one IVI session for the same resource, it is best not to do so. A better approach is to use the same IVI session in multiple execution threads. You can use functions tkdpo4k_LockSession and tkdpo4k_UnlockSession to protect sections of code that require exclusive access to the resource.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function. To obtain additional information about the error condition, call the tkdpo4k_GetError function. To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status codes is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different files that contain the defined constants for the particular status codes:
          
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
    �    Sets the initial value of certain attributes for the session.  The following table lists the attributes and the name you use in this parameter to identify the attribute.

Name              Attribute Defined Constant   
--------------------------------------------
RangeCheck        TKDPO4K_ATTR_RANGE_CHECK
QueryInstrStatus  TKDPO4K_ATTR_QUERY_INSTRUMENT_STATUS   
Cache             TKDPO4K_ATTR_CACHE   
Simulate          TKDPO4K_ATTR_SIMULATE  
RecordCoercions   TKDPO4K_ATTR_RECORD_COERCIONS
DriverSetup       TKDPO4K_ATTR_DRIVER_SETUP

The Driver Setup attribute is used here to specify configurations for the instrument. Firstly, when you disable ID Query by setting ID Query to No, or use simulating mode, you must specifies the model for the instrument. The following are the valid values for instrument models:
                  "DPO4104"
                  "DPO4054"
                  "DPO4034"
                  "DPO4032"
                  "MSO4104"
                  "MSO4054"
                  "MSO4034"
                  "MSO4032"
                  "DPO3012"
                  "DPO3014"
                  "DPO3032"
                  "DPO3034"
                  "DPO3052"
                  "DPO3054"
You could specify Driver Setup in the following way:
"DriverSetup=Model : DPO4054"

Besides specifying instrument models, you can configure whether to initialize the instrument in a non-invasive way. Defaultly the IVI driver applies default settings to the instrument and changes it to a pre-set state when initializing the instrument, but you might want to keep the instrument state unchanged. You can achieve this by adding "NonInvasiveInit" option Driver Setup. Specifying "NonInvasiveInit : TRUE" applies non-invasive instrument setup. Specifying "NonInvasiveInit : FALSE" or ignoring it applies default instrument setup.

Here is an example of specifying instrument model as DPO4054 and  applying non-invasive instrument setup:
"DriverSetup=Model : DPO4054 ; NonInvasiveInit : TRUE"

The format of this string is, "AttributeName=Value" where AttributeName is the name of the attribute and Value is the value to which the attribute will be set.  To set multiple attributes, separate their assignments with a comma.  

If you pass NULL or an empty string for this parameter, the session uses the default values for the attributes.   You can override the default values by assigning a value explicitly in a string you pass for this parameter.  You do not have to specify all of the attributes and may leave any of them out.  If you do not specify one of the attributes, its default value will be used.  

The default values for the attributes are shown below:

    Attribute Name     Default Value
    ----------------   -------------
    RangeCheck         VI_TRUE
    QueryInstrStatus   VI_TRUE
    Cache              VI_TRUE
    Simulate           VI_FALSE
    RecordCoercions    VI_FALSE
    DriverSetup        Model : DPO4054

The following are the valid values for ViBoolean attributes:

    True:     1, TRUE, or VI_TRUE
    False:    0, False, or VI_FALSE


Default Value:
"Simulate=0,RangeCheck=1,QueryInstrStatus=1,Cache=1,DriverSetup=Model : DPO4054"

Notes: 
(1) if you enable IDQuery, the instrument driver automatically detects instrument model.
(2) If you disable IDQuery and pass instrument model through DriverSetup, the instrument driver use the specified model. 
(3) If you enable IDQuery and don't pass instrument model through DriverSetup, the instrument driver use DPO4054 as default models.    A >   �  �    Resource Name                     F| : �       ID Query                          N= =� �       Reset Device                      N�  �  �    Instrument Handle                 Q�����  �    Status                          ����   d��                                           Xl �  � �    Option String                      ""   Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	           MCopyright 2005 ~ 2011 National Instruments Corporation. All Rights Reserved.    Q"Simulate=0,RangeCheck=1,QueryInstrStatus=1,Cache=1,DriverSetup=Model : DPO4054"   �    This function configures the number of waveforms that the oscilloscope  acquires and averages. After the oscilloscope acquires as many waveforms as you specify, it returns to the idle state.  

Note: You must set the TKDPO4K_ATTR_ACQUISITION_TYPE attribute to TKDPO4K_VAL_AVERAGE before you call this function. To set the acquisition type, call the tkdpo4k_ConfigureAcquisitionType function.      �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function. To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different files that contain the defined constants for the particular status codes:
          
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
    �    Passes the number of waveforms you want the oscilloscope to acquire and to average. The driver sets the TKDPO4K_ATTR_NUM_AVERAGES attribute to this value.  

After the oscilloscope acquires as many waveforms as you specify, it returns to the idle state.  

Valid Range: 2 to 512

Resolution: power of 2

Default Value: 16

Notes:

(1) This parameter affects instrument behavior only when the selected Acquisition Type is TKDPO4K_VAL_AVERAGE.     
    j9   �  �    Instrument Handle                 j�����  �    Status                            q� > � �  �    Number of Averages                     	           16   �    When you set the acquisition type to TKDPO4K_VAL_ENVELOPE, the oscilloscope acquires multiple waveforms. After each waveform acquisition, the oscilloscope keeps the minimum and maximum values it finds for each element in the waveform record. This function configures the number of waveforms the oscilloscope acquires and analyzes to create the minimum and maximum waveforms.

After the oscilloscope acquires as many waveforms as you specify, it returns to the idle state.

Note: Set the TKDPO4K_ATTR_ACQUISITION_TYPE attribute to TKDPO4K_VAL_ENVELOPE before you call this function. To set the acquisition type, call the tkdpo4k_ConfigureAcquisitionType function.      �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function. To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status codes is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors    �    When you set the acquisition type to TKDPO4K_VAL_ENVELOPE, the oscilloscope acquires multiple waveforms. After each waveform acquisition, the oscilloscope keeps the minimum and maximum values it finds for each point in the waveform record. This parameter specifies the number of waveforms the oscilloscope acquires and analyzes to create the minimum and maximum waveforms. The driver sets the TKDPO4K_ATTR_NUM_ENVELOPES attribute to this value.  

After the oscilloscope acquires as many waveforms as you specify, it returns to the idle state. Setting this parameter to TKDPO4K_VAL_INFINITE configures the oscilloscope to acquire waveforms and create cumulative minimum and maximum waveforms continuously. 

Valid Range: TKDPO4K_VAL_INFINITE (0)
   TKDPO4K_VAL_INFINITE specifies continuous enveloping.

Default Value: TKDPO4K_VAL_INFINITE

Notes:

(1) This parameter affects instrument behavior only when the selected Acquisition Type is TKDPO4K_VAL_ENVELOPE.    v�   �  �    Instrument Handle                 w�����  �    Status                            ~I V � �  �    Number of Envelopes                    	           TKDPO4K_VAL_INFINITE    �    This function configures the common attributes of the acquisition subsystem. These attributes are the time per record, minimum record length, and acquisition start time.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function. To obtain additional information about the error condition, call the tkdpo4k_GetError function. To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status codes is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
This instrument driver also returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviScope Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviScope Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    �    Passes the minimum number of points you require in the waveform record for each channel. The driver sets the  TKDPO4K_ATTR_HORZ_MIN_NUM_PTS attribute to this value and configures the record length that the oscilloscope uses for waveform acquisition. Call the tkdpo4k_ActualRecordLength function to obtain the actual record length.

Valid Range:
  For DPO/MSO4K models:
    1000 to 10000000 points

  For DPO3K models:
    0 to 5000000 points

Default Value: 10000

Note:
(1)  Entered value is coerced to the adjacent value that defines the requested minimum record length. Example: Acquisition Type = Peak Detect, minimum record length = 300, actual number of points sampled will be 1000.    �    Specifies the length of time from the trigger event to the first point in the waveform record. If the value is positive, the first point in the waveform record occurs after the trigger event. If the value is negative, the first point in the waveform record occurs before the trigger event. The driver sets the TKDPO4K_ATTR_ACQUISITION_START_TIME attribute to this value.


Valid Range: (-TKDPO4K_ATTR_HORZ_TIME_PER_RECORD) to 50.0

The units are seconds.

Default Value: 0.0        Passes the time duration that corresponds to the record length.  The driver sets the TKDPO4K_ATTR_HORZ_TIME_PER_RECORD attribute to this value.

Units: Seconds

Valid Range: 0.0 ns to 10000.0 s

Default Value: 4.0e-5 s

Resolution: All values are coerced in a 1-2-4 sequence.
    ��   �  �    Instrument Handle                 �B����  �    Status                            � > � �  �    Minimum Record Length             �� >j �  �    Acquisition Start Time (second)   �� >  �  �    Time Per Record (seconds)              	           10000    0.0    4.0e-5   9    This function configures how the oscilloscope acquires data and fills the waveform record.  

When you configure the acquisition type to Normal, HiRes or Average, the oscilloscope acquires only one waveform. To retrieve the waveform, you should use tkdpo4k_ReadWaveform or tkdpo4k_FetchWaveform functions.

When you configure the acquisition type to Envelope or Peak Detect, the oscilloscope acquires minimum and maximum waveforms. To retrieve the minimum and maximum waveforms, you should use the tkdpo4k_ReadMinMaxWaveform and tkdpo4k_FetchMinMaxWaveform functions.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Passes the acquisition type for each channel. It determines how the oscilloscope acquires data and fills the waveform record. The driver sets the TKDPO4K_ATTR_ACQUISITION_TYPE attribute to this value. 

If you set this control to Normal, the oscilloscope acquires one sample for each point in the waveform.

If you set this control to HiRes, the oscilloscope oversamples the input signal and calculates the average value that corresponds to each position in the waveform record.

If you set this control to Peak Detect, the oscilloscope oversamples the input signal and keeps the minimum and maximum values that correspond to each position in the waveform record.

If you set this control to Envelope, the oscilloscope acquires multiple waveforms and keeps the minimum and maximum voltages it acquires for each point in the waveform record. You can specify the number of envelopes through the tkdpo4k_ConfigureNumEnvelopes function.

If you set this control to Average, the oscilloscope acquires multiple waveforms and calculates the average value for each point in the waveform record. You can specify the number of waveforms to acquire through the tkdpo4k_ConfigureNumAverages function.    �2   �  �    Instrument Handle                 ������  �    Status                            �� > � � �    Aquisition Type                        	                      �Normal TKDPO4K_VAL_NORMAL HiRes TKDPO4K_VAL_HI_RES Peak Detect TKDPO4K_VAL_PEAK_DETECT Envelope TKDPO4K_VAL_ENVELOPE Average TKDPO4K_VAL_AVERAGE   �    This function returns the actual number of points the oscilloscope acquires for each channel. After you configure the oscilloscope for an acquisition, call this function to determine the size of the waveforms that the oscilloscope acquires. The value is equal to or greater than the minimum number of points you specify in the tkdpo4k_ConfigureAcquisitionRecord function.  

You must allocate a ViReal64 array of this size or greater to pass as the Waveform Array parameter of the tkdpo4k_ReadWaveform and tkdpo4k_FetchWaveform functions.

Note: The oscilloscope may use different size records depending on the acquisition type. You specify the acquisition type with the tkdpo4k_ConfigureAcquisitionType function.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    t    Returns the actual number of points that the oscilloscope acquires for each channel. The value is equal to or greater than the minimum number of points you specify with the tkdpo4k_ConfigureAcquisitionRecord function.  

You must allocate a ViReal64 array of this size or greater to pass as the Waveform Array parameter of the tkdpo4k_ReadWaveform and tkdpo4k_FetchWaveform functions.

Note: The oscilloscope may use records with different sizes depending on the acquisition type. You specify the acquisition type that the oscilloscope uses with the Acquisition Type parameter of the tkdpo4k_ConfigureAcquisitionType function.    ��   �  �    Instrument Handle                 �<����  �    Status                            �
 > � �  �    Actual  Record Length                  	           	            6    Returns the current sample rate of the oscilloscope.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None

    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
     ^    Returns the effective sample rate of the acquired waveform using the current configuration.     �   �  �    Instrument Handle                 �6����  �    Status                            � > � �  �    Sample Rate                            	           	           6    Returns the current sample mode of the oscilloscope.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None

    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
     �    Returns the current sample mode of the instrument.

Valid Values:
TKDPO4K_VAL_REAL_TIME        (0)
TKDPO4K_VAL_EQUIVALENT_TIME  (1)    �e   �  �    Instrument Handle                 �����  �    Status                            �� > � �  �    Sample Mode                            	           	               This function enables or disables the MagniVu feature, which provides up to 32 times signal detail for fast viewing of short events. This feature is not recommended for slow data formats such as RS232.

Notes:
(1) This function is valid only in MSO models.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None

    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
     �    Specifies whether to enable the MagniVu feature, which provides up to 32 times signal detail for fast viewing of short events. This feature is not recommended for slow data formats such as RS232.
 
Valid Values:
VI_TRUE
VI_FALSE

Default Value:
VI_TRUE    �>   �  �    Instrument Handle                 ������  �    Status                            �� > � �  �    Magnivu Enabled                        	          True VI_TRUE False VI_FALSE    �    This function configures the common attributes of the channel subsystem for a particular channel. These attributes are the vertical range, vertical offset, coupling, probe attenuation, and channel enabled.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None
    �    Passes the value of the input range that the oscilloscope uses for the channel. The driver sets the TKDPO4K_ATTR_VERTICAL_RANGE attribute to this value. For example, to acquire a sine wave that spans between 0.0 and 10.0 volts, pass 10.0 as the value of this parameter.

Units: Volts
     
Valid Range: The probe attenuation determines the valid range for this parameter. If you pass TKDPO4K_VAL_PROBE_SENSE_ON in the Probe Attenuation parameter, you obtain the actual probe attenuation with the TKDPO4K_ATTR_PROBE_SENSE_VALUE attribute. The valid range is as follows.

(80.0e-3 * ProbeAttenuation) to (80.0 * ProbeAttenuation) volts 

Resolution: The driver coerces the value you specify to a 1-2-5 step.

Default Value: 1.0    �    Passes the location of the center of the range that you specify with the Vertical Range parameter. Express the value relative to ground. The driver sets the TKDPO4K_ATTR_VERTICAL_OFFSET attribute to this value.

For example, to acquire a sine wave that spans between 0.0 and 10.0 volts, pass 5.0 as the value of this parameter.

Default Value: 0

Units: Volts

Valid Range: The probe attenuation and Vertical Range determine the valid range for this parameter. If you pass TKDPO4K_VAL_PROBE_SENSE_ON in the Probe Attenuation parameter, you obtain the actual probe attenuation with the TKDPO4K_ATTR_PROBE_SENSE_VALUE attribute. The valid range is as follows. The relation of vertical range and probe attenuation to offset range is shown below:

Range and Resolution:

Vertical_Scale = (Vertical_Range / 10.0) / Probe_Attenuation

When (1e-3 <= Vertical_Scale <= 9.95e-3): 
  Valid Range = -0.1 to 0.1
  Resolution = 1.0e-5

When (9.95e-3 <= Vertical_Scale <= 99.5e-3): 
  Valid Range = -1.0 to 1.0
  Resolution = 1.0e-4

When (99.5e-3 <= Vertical_Scale <= 995.0e-3): 
  Valid Range = -10.0 to 10.0
  Resolution = 1.0e-3

When (995.0e-3 <= Vertical_Scale <= 10.0): 
  Valid Range = -100.0 to 100.0
  Resolution = 1.0e-2

    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    ?    Specifies how you want the oscilloscope to couple the input signal for the channel. The driver sets the TKDPO4K_ATTR_VERTICAL_COUPLING attribute to this value.

Valid Values:
  TKDPO4K_VAL_AC  (0) - AC Coupling
  TKDPO4K_VAL_DC  (1) - DC Coupling
  TKDPO4K_VAL_GND (2) - Ground Coupling

Default Value: TKDPO4K_VAL_DC    @    Passes the scaling factor by which the probe you attach to the channel attenuates the input. For example, when you use a 10:1 probe, set this parameter to 10.0. The driver sets the TKDPO4K_ATTR_PROBE_ATTENUATION attribute to this value.

This driver reserves negative values to control the automatic probe sense capability of the oscilloscope. Setting this parameter to TKDPO4K_VAL_PROBE_SENSE_ON configures the oscilloscope to sense the attenuation of the probe automatically.  

Valid Values:

 0.001  - Sets the manual probe attenuation
 1.0    - Sets the manual probe attenuation                           
 10.0   _ Sets the manual probe attenuation                          
 100.0  _ Sets the manual probe attenuation 
 1000.0 _ Sets the manual probe attenuation 

 TKDPO4K_VAL_PROBE_SENSE_ON (-1) - Enables the automatic probe sense capability of the oscilloscope.

Default Value: 1.0

Notes:

(1) If the oscilloscope is set to sense the probe attenuation automatically, setting this parameter to a positive value disables the automatic probe sense and configures the oscilloscope to use the manual probe attenuation you specify.

(2) If you use a manual probe attenuation, you must set the probe attenuation to reflect the new probe attenuation each time you attach a different probe.

(3) Use the tkdpo4k_AutoProbeSenseValue function to obtain the actual probe attenuation while the automatic probe sense capability is enabled.

(4) If you set the oscilloscope to sense the probe attenuation automatically, the probe attenuation value can change at any time. When the oscilloscope detects a new probe attenuation value, other settings in the oscilloscope might also change. The driver has no way of knowing when these changes occur. Therefore, when you enable the automatic probe sense capability, this driver disables caching for attributes that depend on the probe attenuation. These attributes include TKDPO4K_ATTR_VERTICAL_RANGE, TKDPO4K_ATTR_VERTICAL_OFFSET, and all the attributes that configure trigger levels. To maximize performance, set this parameter to a manual probe attenuation setting.    e    Specifies whether you want the oscilloscope to acquire a waveform for the channel when you call the tkdpo4k_InitiateAcquisition, tkdpo4k_ReadWaveform, tkdpo4k_ReadMinMaxWaveform, or tkdpo4k_ReadWaveformMeasurement function. The driver sets the TKDPO4K_ATTR_CHANNEL_ENABLED attribute to this value. 
 
Valid Values:
VI_TRUE
VI_FALSE

Default Value:
VI_TRUE        Passes the channel name you want to configure.

Valid Channel Names: 
For four-channel models:
    TKDPO4K_VAL_CH_1 ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2 ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3 ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4 ("CH4")   - Channel 4

For two-channel models:
    TKDPO4K_VAL_CH_1 ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2 ("CH2")   - Channel 2

Default Value: TKDPO4K_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.    �p   �  �    Instrument Handle                 �& % � �  �    Vertical Range                    � %j �  �    Vertical Offset                   ������  �    Status                            ۠ j > �  �    Vertical Coupling                 �� p � �  �    Probe Attenuation                 �/ p� �  �    Channel Enabled                   � %  � �    Channel Name                           1.0    0    	                     8AC TKDPO4K_VAL_AC DC TKDPO4K_VAL_DC GND TKDPO4K_VAL_GND    1.0   True VI_TRUE False VI_FALSE               TCH1 TKDPO4K_VAL_CH_1 CH2 TKDPO4K_VAL_CH_2 CH3 TKDPO4K_VAL_CH_3 CH4 TKDPO4K_VAL_CH_4    �    This function configures the attributes that control the electrical characteristics of the channel. These attributes are the input impedance and the maximum input frequency.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    $    Passes the input impedance that you want to use for the channel.  The driver sets the TKDPO4K_ATTR_INPUT_IMPEDANCE attribute to this value.

Units: ohms.

Valid Values:
  For DPO/MSO4K models:
    50.0 ohms
    1.0e+06 ohms

  For DPO3K models:
    50.0 ohms
    75.0 ohms
    1.0e+06 ohms
    j    Passes the maximum input frequency that you want to use for the channel. Express this value as the frequency at which the input circuitry attenuates the input signal by 3 dB. The driver sets the TKDPO4K_ATTR_MAX_INPUT_FREQUENCY attribute to this value.  

Units: Hertz

Valid Values depend on instrument models:
---------------------------------------------------------------
 Model                 |    Twenty      TwoFifty      Full
---------------------------------------------------------------
 DPO 4104, MSO4104     |    20e6        250e6         1000e6
 DPO 4054, MSO4054     |    20e6        250e6         500e6
 DPO 4034, MSO4034     |    20e6        250e6         350e6
 DPO 4032, MSO4032     |    20e6        250e6         350e6
----------------------------------------------------------------

---------------------------------------------------------------
 Model                 |    Twenty      OneFifty      Full
---------------------------------------------------------------
 DPO 3032, DPO3034     |    20e6        150e6         300e6
 DPO 3052, DPO3054     |    20e6        150e6         500e6
----------------------------------------------------------------

---------------------------------------------------------------
 Model                 |    Twenty      Full
---------------------------------------------------------------
 DPO 3012, DPO3014     |    20e6        100e6
----------------------------------------------------------------

Default values depend on instrument model: 
-------------------------------
 Model     |   Default value
-------------------------------
 DPO 4104  |   1000e6
 DPO 4054  |   500e6
 DPO 4034  |   350e6
 DPO 4032  |   350e6
 DPO 3012  |   100e6
 DPO 3014  |   100e6
 DPO 3032  |   300e6
 DPO 3034  |   300e6
 DPO 3052  |   500e6
 DPO 3054  |   500e6
-------------------------------

Resolution: All values are coerced to Valid values.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
        Passes the channel name that you want to configure.

Valid Channel Names:
For four-channel models: 
    TKDPO4K_VAL_CH_1 ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2 ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3 ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4 ("CH4")   - Channel 4

For two-channel models:
    TKDPO4K_VAL_CH_1 ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2 ("CH2")   - Channel 2


Default Value: TKDPO4K_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.    ��   �  �    Instrument Handle                 � > �  �    Input Impedance (ohms)            �� >j �  �    Maximum Input Frequency (hertz)   �H����  �    Status                            � >  � �    Channel Name                                     350.0 ohms 50.0 75.0 ohms 75.0 1.0 mega ohm 1.0e+06    100e6    	                      TCH1 TKDPO4K_VAL_CH_1 CH2 TKDPO4K_VAL_CH_2 CH3 TKDPO4K_VAL_CH_3 CH4 TKDPO4K_VAL_CH_4   h    The function returns the probe attenuation value the oscilloscope senses. You enable the automatic probe sense capability by setting the Probe Attenuation parameter of the tkdpo4k_ConfigureChannel function to TKDPO4K_VAL_PROBE_SENSE_ON.  

Note: If you disable the automatic probe sense capability, this function returns the manual probe attenuation setting.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    
    Returns the probe attenuation value that the oscilloscope senses. The driver returns the value of the TKDPO4K_ATTR_PROBE_SENSE_VALUE attribute.

Note: If you disable the automatic probe sense capability, this parameter returns the manual probe attenuation setting.    "    Passes the channel name for which you want to query the probe sense value.

Valid Channel Names: 
For four-channel models:
    TKDPO4K_VAL_CH_1 ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2 ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3 ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4 ("CH4")   - Channel 4

For two-channel models:
    TKDPO4K_VAL_CH_1 ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2 ("CH2")   - Channel 2

Default Value: TKDPO4K_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.   a   �  �    Instrument Handle                ����  �    Status                           � >Q �  �    Auto Probe Sense Value           	� > > � �    Channel Name                           	           	                      TCH1 TKDPO4K_VAL_CH_1 CH2 TKDPO4K_VAL_CH_2 CH3 TKDPO4K_VAL_CH_3 CH4 TKDPO4K_VAL_CH_4        This function configures the status and threshold of digital channels.

Notes:
(1) This function is valid only in MSO models.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Passes the digital channel name.

Valid Channel Names: 
    TKDPO4K_VAL_D_0 ("D0")   - Digital Channel 0 
    TKDPO4K_VAL_D_1 ("D1")   - Digital Channel 1
    TKDPO4K_VAL_D_2 ("D2")   - Digital Channel 2
    TKDPO4K_VAL_D_3 ("D3")   - Digital Channel 3
    TKDPO4K_VAL_D_4 ("D4")   - Digital Channel 4
    TKDPO4K_VAL_D_5 ("D5")   - Digital Channel 5
    TKDPO4K_VAL_D_6 ("D6")   - Digital Channel 6
    TKDPO4K_VAL_D_7 ("D7")   - Digital Channel 7
    TKDPO4K_VAL_D_8 ("D8")   - Digital Channel 8
    TKDPO4K_VAL_D_9 ("D9")   - Digital Channel 9
    TKDPO4K_VAL_D_10("D10")  - Digital Channel 10
    TKDPO4K_VAL_D_11("D11")  - Digital Channel 11
    TKDPO4K_VAL_D_12("D12")  - Digital Channel 12
    TKDPO4K_VAL_D_13("D13")  - Digital Channel 13
    TKDPO4K_VAL_D_14("D14")  - Digital Channel 14
    TKDPO4K_VAL_D_15("D15")  - Digital Channel 15

Default Value: TKDPO4K_VAL_D_0

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.     u    Passes the threshold for the specific digital channel.

Units: Volts
     
Valid Range: -2 to 5

Default Value: 1.4     �    Specifies whether you want to turn on the display of the digital channel and resets the acquisition. The driver sets the TKDPO4K_ATTR_CHANNEL_ENABLED attribute to this value. 
 
Valid Values:
VI_TRUE
VI_FALSE

Default Value:
VI_TRUE   �   �  �    Instrument Handle                �����  �    Status                            >  � �    Channel Name                     _ > � �  �    Threshold                        � >� �  �    Channel Enabled                        	                     <D0 TKDPO4K_VAL_D_0 D1 TKDPO4K_VAL_D_1 D2 TKDPO4K_VAL_D_2 D3 TKDPO4K_VAL_D_3 D4 TKDPO4K_VAL_D_4 D5 TKDPO4K_VAL_D_5 D6 TKDPO4K_VAL_D_6 D7 TKDPO4K_VAL_D_7 D8 TKDPO4K_VAL_D_8 D9 TKDPO4K_VAL_D_9 D10 TKDPO4K_VAL_D_10 D11 TKDPO4K_VAL_D_11 D12 TKDPO4K_VAL_D_12 D13 TKDPO4K_VAL_D_13 D14 TKDPO4K_VAL_D_14 D15 TKDPO4K_VAL_D_15    1.4   True VI_TRUE False VI_FALSE    c    Configures the bus thresholds settings. 

Note:
This function only applies to DPO/MSO 4kB models.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None     (    Sets the upper threshold.
 

Units: V
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    9    Passes the channel name that you want to configure.

Valid Channel Names:

TKDPO4K_VAL_CH_1 ("CH1")   - Channel 1 
TKDPO4K_VAL_CH_2 ("CH2")   - Channel 2
TKDPO4K_VAL_CH_3 ("CH3")   - Channel 3
TKDPO4K_VAL_CH_4 ("CH4")   - Channel 4
TKDPO4K_VAL_MATH ("MATH")  - MATH
TKDPO4K_VAL_CH_1 ("REF1")  - Reference 1 
TKDPO4K_VAL_CH_2 ("REF2")  - Reference 2
TKDPO4K_VAL_CH_3 ("REF3")  - Reference 3
TKDPO4K_VAL_CH_4 ("REF4")  - Reference 4

Default Value: TKDPO4K_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.     &    Sets the lower threshold. 

Units: V   �   �  �    Instrument Handle                x > � �  �    Upper Threshold                  �����  �    Status                           %v =  � �    Channel Name                     '� >� �  �    Lower Threshold                        0    	                   	   �CH1 TKDPO4K_VAL_CH_1 CH2 TKDPO4K_VAL_CH_2 CH3 TKDPO4K_VAL_CH_3 CH4 TKDPO4K_VAL_CH_4 Math TKDPO4K_VAL_MATH REF1 TKDPO4K_VAL_REF_1 REF2 TKDPO4K_VAL_REF_2 REF3 TKDPO4K_VAL_REF_3 REF4 TKDPO4K_VAL_REF_4    0       This function configures the common attributes of the trigger subsystem. These attributes are the trigger type and holdoff.

When you call tkdpo4k_ReadWaveform, tkdpo4k_ReadWaveformMeasurement, tkdpo4k_ReadMinMaxWaveform, or tkdpo4k_InitiateAcquisition, the oscilloscope waits for a trigger. You specify the type of trigger for which the oscilloscope waits with the Trigger Type parameter.  

If the oscilloscope requires multiple waveform acquisitions to build a complete waveform, it waits for the length of time you specify with the Holdoff parameter to elapse since the previous trigger. The oscilloscope then waits for the next trigger. Once the oscilloscope acquires a complete waveform, it returns to the Idle state.

Note: After you call this function, you must call the trigger configuration function that corresponds to the Trigger Type you select to completely specify the trigger. For example, if you set the Trigger Type to TKDPO4K_VAL_EDGE_TRIGGER, you use the tkdpo4k_ConfigureEdgeTriggerSource function to completely specify the trigger.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Passes the type of trigger that you want the oscilloscope to use. The driver sets the TKDPO4K_ATTR_TRIGGER_TYPE attribute to this value.  

Defined Values:

- TKDPO4K_VAL_EDGE_TRIGGER (1) - Configures the oscilloscope
  for edge triggering. An edge trigger occurs when the trigger
  signal crosses the trigger level you specify with the slope
  you specify. You configure the trigger level and slope with
  the tkdpo4k_ConfigureEdgeTriggerSource function.

- TKDPO4K_VAL_AC_LINE_TRIGGER (7) - Configures the oscilloscope
  for AC Line triggering. You configure the AC line trigger
  slope with the tkdpo4k_ConfigureAcLineTriggerSlope function.

- TKDPO4K_VAL_TV_TRIGGER (5) - Configures the oscilloscope for
  TV triggering. You configure the TV signal type, the field
  and line on which to trigger, and the signal polarity with the
  tkdpo4k_ConfigureTVTriggerSource function.

- TKDPO4K_VAL_RUNT_TRIGGER (3) - Configures the oscilloscope 
  for runt triggering. A runt trigger occurs when the trigger
  signal crosses one of the runt thresholds twice without
  crossing the other runt threshold. You configure the runt
  thresholds and the polarity of the runt with the
  tkdpo4k_ConfigureRuntTriggerSource function.

- TKDPO4K_VAL_GLITCH_TRIGGER (4) - Configures the oscilloscope
  for glitch triggering. A glitch trigger occurs when the
  trigger signal has a pulse with a width that is less than the
  glitch width. The trigger does not actually occur until the
  edge of the pulse that corresponds to the glitch width and 
  polarity you specify crosses the trigger level. You configure
  the glitch width, the polarity of the pulse, and the trigger
  level with the tkdpo4k_ConfigureGlitchTriggerSource
  function.

- TKDPO4K_VAL_TRANSITION_TRIGGER (1001) - Configures the
  oscilloscope for transition triggering. The oscilloscope
  triggers on a pulse edge that has a slew rate faster or slower
  than the rate you specify. Transition triggering is often 
  used to check the large signal response of amplifiers. Use 
  the tkdpo4k_ConfigureTransitTriggerSource function to 
  configure these parameters.

- TKDPO4K_VAL_PATTERN_TRIGGER (1002) - Configures the
  oscilloscope for pattern triggering. When using pattern
  triggering, the oscilloscope checks that the logic conditions
  you specify on the input channels CH1, CH2, (CH3 and CH4) for
  four-channel scope) are met. You specify the logic level
  expected on each channel, the logic function, and the function
  result on which the oscilloscope triggers (True or False). Use
  the tkdpo4k_ConfigurePatternTrigger function to configure 
  these parameters.
  
- TKDPO4K_VAL_STATE_TRIGGER (1003) - Configures the
  oscilloscope for state triggering. When using state
  triggering, the oscilloscope checks that the logic conditions
  you specify on the input channels (CH1-CH3) are met at the
  time the clock edge occurs on the state clock source (CH4).
  You specify the clock slope, the threshold level, the logic
  level for each of the input channels, the logic function to
  apply to the input channels, and the function result on which
  the oscilloscope triggers (True or False). Use the
  tkdpo4k_ConfigureStateTrigger function to configure these
  parameters.

- TKDPO4K_VAL_SETHOLD_TRIGGER (1004) - Configures the 
  oscilloscope for sethold triggering. When using sethold 
  triggering, the oscilloscope checks data set time and hold 
  time violation. You specify the clock source, data source, 
  clock slope, set time, hold time to apply to the input 
  channels. Use the tkdpo4k_ConfigureSetholdTriggerSource 
  function to configure these parameters.

- TKDPO4K_VAL_CAN_TRIGGER (1005) - Configures the oscilloscope 
  for CAN triggering. The CAN trigger occurs when trigger signal 
  meets pre-set CAN bus condition. You specify CAN parameters
  through tkdpo4k_ConfigureCAN function. You specify CAN trigger
  parameters through CAN trigger class functions in the serial
  trigger group.
  
- TKDPO4K_VAL_I2C_TRIGGER (1006) - Configures the oscilloscope 
  for I2C triggering. The I2C trigger occurs when trigger signal 
  meets pre-set I2C bus condition. You specify I2C parameters 
  through the tkdpo4k_ConfigureI2C function. You specify I2C
  trigger parameters through I2C trigger class functions in the
  serial trigger group.

- TKDPO4K_VAL_SPI_TRIGGER (1007) - Configures the oscilloscope 
  for SPI triggering. The SPI trigger occurs when the trigger
  signal meets pre-set SPI bus condition. You specify SPI
  parameters through tkdpo4k_ConfigureSPI function. You specify
  SPI trigger parameters through SPI trigger class functions in
  the serial trigger group.

- TKDPO4K_VAL_RS232_TRIGGER (1011) - Configures the oscilloscope 
  for RS232 triggering.

- TKDPO4K_VAL_PARALLEL_TRIGGER (1012) - Configures the
  oscilloscope for Parallel triggering.

Note: This parameter configures the type of trigger that the oscilloscope uses. After you call this function, you must call the appropriate trigger configuration function to specify the trigger completely.

TKDPO4K_VAL_PARALLEL_TRIGGER is valid only in MSO4K models.    �    Passes the length of time that you want the oscilloscope to wait after it detects a trigger until the oscilloscope enables the trigger subsystem to detect another trigger. The driver sets the TKDPO4K_ATTR_TRIGGER_HOLDOFF attribute to this value.

This parameter affects instrument operation only when the oscilloscope requires multiple acquisitions to build a complete waveform. The oscilloscope requires multiple waveform acquisitions when it uses equivalent-time sampling or when you set the acquisition type to envelope or average.

Units: seconds

Valid Range: 20.0e-9 to 8.0 seconds. 

Resolution: Varies - Coercible Only By Instrument.

Default Value: 20.0e-9 seconds    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
   .   �  �    Instrument Handle                .� > > � �    Trigger Type                     B� >Q �  �    Trigger Holdoff (sec)            Eg����  �    Status                                           8EDGE TRIGGER TKDPO4K_VAL_EDGE_TRIGGER AC_LINE TRIGGER TKDPO4K_VAL_AC_LINE_TRIGGER TV TRIGGER TKDPO4K_VAL_TV_TRIGGER RUNT TRIGGER TKDPO4K_VAL_RUNT_TRIGGER GLITCH TRIGGER TKDPO4K_VAL_GLITCH_TRIGGER TRANSITION TRIGGER TKDPO4K_VAL_TRANSITION_TRIGGER PATTERN TRIGGER TKDPO4K_VAL_PATTERN_TRIGGER STATE TRIGGER TKDPO4K_VAL_STATE_TRIGGER SETHOLD TRIGGER TKDPO4K_VAL_SETHOLD_TRIGGER CAN TRIGGER TKDPO4K_VAL_CAN_TRIGGER I2C TRIGGER TKDPO4K_VAL_I2C_TRIGGER SPI TRIGGER TKDPO4K_VAL_SPI_TRIGGER RS232 TRIGGER TKDPO4K_VAL_RS232_TRIGGER PARALLEL TRIGGER TKDPO4K_VAL_PARALLEL_TRIGGER    20.0e-9    	           B    This function configures the trigger coupling on the instrument.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
    �    Specifies how the oscilloscope couples the trigger source. This control affects instrument behavior only when you configure trigger type to edge trigger. The driver sets the TKDPO4K_ATTR_TRIGGER_COUPLING attribute to this value.

Valid Values:
  TKDPO4K_VAL_DC (1) -           The oscilloscope DC couples the  
                                 trigger signal.
  TKDPO4K_VAL_AC (0) -           The oscilloscope AC couples the 
                                 trigger signal.
  TKDPO4K_VAL_HF_REJECT (3) -    The oscilloscope removes the 
                                 high frequency components of 
                                 the DC signal.  
  TKDPO4K_VAL_LF_REJECT (4) -    The oscilloscope removes the 
                                 low frequency components of the 
                                 AC signal. 
  TKDPO4K_VAL_NOISE_REJECT (5) - The oscilloscope selects DC low 
                                 sensitivity. It requires added 
                                 signal amplitude for more 
                                 stable, less false triggering.

Default Value: TKDPO4K_VAL_DC

Notes: 
(1) TKDPO4K_VAL_AC is valid only in DPO3K models.   O�   �  �    Instrument Handle                Pj����  �    Status                           W: > � � �    Trigger Coupling                       	                      �DC TKDPO4K_VAL_DC AC TKDPO4K_VAL_AC HIGH FREQUENCY REJECT TKDPO4K_VAL_HF_REJECT LOW FREQUENCY REJECT TKDPO4K_VAL_LF_REJECT NOISE REJECT TKDPO4K_VAL_NOISE_REJECT   �    This function configures the trigger level for a specified channel. The instrument can have different trigger levels for each channel (CH1~CH4 for four-channel modules, and CH1~CH2 for two-channel modules, and D0~D15 are also valid for MSO models). The oscilloscope uses the trigger level of the channel specified as trigger source.

For example, if you specify channel 1 as the trigger source, and the trigger level for channel 1 is 2 volts, the voltage threshold for trigger is 2 volts.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Passes the voltage threshold of a specified channel for the trigger subsystem. This control affects instrument behavior only when you set the trigger type to edge trigger or glitch trigger. The driver sets the TKDPO4K_ATTR_TRIGGER_LEVEL_BY_CH attribute to this value.

Valid Range:
  -8 divisions from signal reference to +8 divisions from signal   
  reference with maximum range of -40~40.

Resolution: 
  0.2 divisions.

Default Value:
  0.0    R    Passes the channel name that you want to configure.

Valid Channel Names: 
For four-channel models:
    TKDPO4K_VAL_CH_1 ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2 ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3 ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4 ("CH4")   - Channel 4

For two-channel models:
    TKDPO4K_VAL_CH_1 ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2 ("CH2")   - Channel 2

For MSO models:
    TKDPO4K_VAL_D_0  ("D0")    - Digital Channel 0
    TKDPO4K_VAL_D_1  ("D1")    - Digital Channel 1
    TKDPO4K_VAL_D_2  ("D2")    - Digital Channel 2
    TKDPO4K_VAL_D_3  ("D3")    - Digital Channel 3
    TKDPO4K_VAL_D_4  ("D4")    - Digital Channel 4
    TKDPO4K_VAL_D_5  ("D5")    - Digital Channel 5
    TKDPO4K_VAL_D_6  ("D6")    - Digital Channel 6
    TKDPO4K_VAL_D_7  ("D7")    - Digital Channel 7
    TKDPO4K_VAL_D_8  ("D8")    - Digital Channel 8
    TKDPO4K_VAL_D_9  ("D9")    - Digital Channel 9
    TKDPO4K_VAL_D_10 ("D10")   - Digital Channel 10
    TKDPO4K_VAL_D_11 ("D11")   - Digital Channel 11
    TKDPO4K_VAL_D_12 ("D12")   - Digital Channel 12
    TKDPO4K_VAL_D_13 ("D13")   - Digital Channel 13
    TKDPO4K_VAL_D_14 ("D14")   - Digital Channel 14
    TKDPO4K_VAL_D_15 ("D15")   - Digital Channel 15

Default Value: TKDPO4K_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.   _&   �  �    Instrument Handle                _�����  �    Status                           f� >j �  �    Level                            ho > % � �    Channel Name                           	           0              �CH1 TKDPO4K_VAL_CH_1 CH2 TKDPO4K_VAL_CH_2 CH3 TKDPO4K_VAL_CH_3 CH4 TKDPO4K_VAL_CH_4 D0 TKDPO4K_VAL_D_0 D1 TKDPO4K_VAL_D_1 D2 TKDPO4K_VAL_D_2 D3 TKDPO4K_VAL_D_3 D4 TKDPO4K_VAL_D_4 D5 TKDPO4K_VAL_D_5 D6 TKDPO4K_VAL_D_6 D7 TKDPO4K_VAL_D_7 D8 TKDPO4K_VAL_D_8 D9 TKDPO4K_VAL_D_9 D10 TKDPO4K_VAL_D_10 D11 TKDPO4K_VAL_D_11 D12 TKDPO4K_VAL_D_12 D13 TKDPO4K_VAL_D_13 D14 TKDPO4K_VAL_D_14 D15 TKDPO4K_VAL_D_15    =    This function configures the oscilloscope trigger modifier.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
    6    Specifies the method that the oscilloscope uses in the absence of trigger conditions. The driver sets the TKDPO4K_ATTR_TRIGGER_MODIFIER attribute to this value.

Valid Values:
  TKDPO4K_VAL_NO_TRIGGER_MOD (1) - No Modifier
  TKDPO4K_VAL_AUTO (2)           - Auto 

Default Value:
  TKDPO4K_VAL_NO_TRIGGER_MOD   p�   �  �    Instrument Handle                qK����  �    Status                           x > �       Trigger Modifier                       	                      =No Modifier TKDPO4K_VAL_NO_TRIGGER_MOD Auto TKDPO4K_VAL_AUTO   �    This function configures the edge trigger. An edge trigger occurs when the trigger signal passes through the voltage threshold that you specify with the Trigger Level parameter and has the slope that you specify with the Trigger Slope parameter.  

Note: This function affects instrument behavior only if the Trigger Type is TKDPO4K_VAL_EDGE_TRIGGER. Call the tkdpo4k_ConfigureTrigger function to set the Trigger Type before you call this function.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
        Passes the voltage threshold that you want the oscilloscope to use for edge triggering. The driver sets the TKDPO4K_ATTR_TRIGGER_LEVEL attribute to this value.

The oscilloscope triggers when the trigger signal passes through the threshold that you specify with this parameter and that it has the slope you specify with the Trigger Slope parameter.

Units: volts
    
Valid Range:
  -8 divisions from signal reference to +8 divisions from signal   
  reference with maximum range of -40~40.

Resolution: 
  0.2 divisions.

Default Value:
  0.0

Note: This parameter only affects instrument behavior when you select a channel or the external trigger input as the Trigger Source. You cannot configure the trigger level that the oscilloscope uses for other trigger sources.    M    Specifies whether you want a rising edge or a falling edge passing through the Trigger Level to trigger the oscilloscope.  The driver sets the TKDPO4K_ATTR_TRIGGER_SLOPE attribute to this value.

Defined Values:
  TKDPO4K_VAL_POSITIVE (1) - Rising edge
  TKDPO4K_VAL_NEGATIVE (0) - Falling edge

Default Value: TKDPO4K_VAL_POSITIVE    �    Passes the source that you want the oscilloscope to monitor for a trigger. The driver sets the TKDPO4K_ATTR_TRIGGER_SOURCE attribute to this value. 

After you call one of the tkdpo4k_ReadWaveform, tkdpo4k_ReadMinMaxWaveform, tkdpo4k_ReadWaveformMeasurement, or tkdpo4k_InitiateAcquisition functions, the oscilloscope waits for the trigger you specify in this parameter. After it receives the trigger, the oscilloscope waits the length of time you specify in the Trigger Delay parameter. 

Valid Values:
For four-channel models:
  - TKDPO4K_VAL_CH_1         ("CH1") - Channel 1 
  - TKDPO4K_VAL_CH_2         ("CH2") - Channel 2
  - TKDPO4K_VAL_CH_3         ("CH3") - Channel 3
  - TKDPO4K_VAL_CH_4         ("CH4") - Channel 4

For two-channel models:
  - TKDPO4K_VAL_CH_1         ("CH1") - Channel 1 
  - TKDPO4K_VAL_CH_2         ("CH2") - Channel 2

For MSO models:
  - TKDPO4K_VAL_D_0          ("D0")  - Digital Channel 0
  - TKDPO4K_VAL_D_1          ("D1")  - Digital Channel 1
  - TKDPO4K_VAL_D_2          ("D2")  - Digital Channel 2
  - TKDPO4K_VAL_D_3          ("D3")  - Digital Channel 3
  - TKDPO4K_VAL_D_4          ("D4")  - Digital Channel 4
  - TKDPO4K_VAL_D_5          ("D5")  - Digital Channel 5
  - TKDPO4K_VAL_D_6          ("D6")  - Digital Channel 6
  - TKDPO4K_VAL_D_7          ("D7")  - Digital Channel 7
  - TKDPO4K_VAL_D_8          ("D8")  - Digital Channel 8
  - TKDPO4K_VAL_D_9          ("D9")  - Digital Channel 9
  - TKDPO4K_VAL_D_10         ("D10") - Digital Channel 10
  - TKDPO4K_VAL_D_11         ("D11") - Digital Channel 11
  - TKDPO4K_VAL_D_12         ("D12") - Digital Channel 12
  - TKDPO4K_VAL_D_13         ("D13") - Digital Channel 13
  - TKDPO4K_VAL_D_14         ("D14") - Digital Channel 14
  - TKDPO4K_VAL_D_15         ("D15") - Digital Channel 15

  - TKDPO4K_VAL_EXTERNAL     ("VAL_EXTERNAL") - External

Note:

TKDPO4K_VAL_EXTERNAL - The oscilloscope waits for a trigger on the external trigger input.   |   �  �    Instrument Handle                |�����  �    Status                           �� >Q �  �    Trigger Level (volts)            �� � �  �    Trigger Slope                    � > > � �    Trigger Source                         	           0.0               <Positive TKDPO4K_VAL_POSITIVE Negative TKDPO4K_VAL_NEGATIVE              �CH1 TKDPO4K_VAL_CH_1 CH2 TKDPO4K_VAL_CH_2 CH3 TKDPO4K_VAL_CH_3 CH4 TKDPO4K_VAL_CH_4 D0 TKDPO4K_VAL_D_0 D1 TKDPO4K_VAL_D_1 D2 TKDPO4K_VAL_D_2 D3 TKDPO4K_VAL_D_3 D4 TKDPO4K_VAL_D_4 D5 TKDPO4K_VAL_D_5 D6 TKDPO4K_VAL_D_6 D7 TKDPO4K_VAL_D_7 D8 TKDPO4K_VAL_D_8 D9 TKDPO4K_VAL_D_9 D10 TKDPO4K_VAL_D_10 D11 TKDPO4K_VAL_D_11 D12 TKDPO4K_VAL_D_12 D13 TKDPO4K_VAL_D_13 D14 TKDPO4K_VAL_D_14 D15 TKDPO4K_VAL_D_15 EXTERNAL TKDPO4K_VAL_EXTERNAL       This function configures the oscilloscope for AC Line triggering.

Note: This function affects instrument behavior only if the Trigger Type is TKDPO4K_VAL_AC_LINE_TRIGGER. Call the tkdpo4k_ConfigureTrigger function to set the Trigger Type before you call this function.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Specifies whether a detection of a zero crossing appears on the positive, negative, or either slope of the network supply voltage. The driver sets the TKDPO4K_ATTR_AC_LINE_TRIGGER_SLOPE attribute to this value.

Valid Values:

- TKDPO4K_VAL_AC_LINE_POSITIVE - The oscilloscope triggers on a 
                                 positive slope.

- TKDPO4K_VAL_AC_LINE_NEGATIVE - The oscilloscope triggers on a 
                                 negative slope.

Default Value: TKDPO4K_VAL_AC_LINE_POSITIVE   ��   �  �    Instrument Handle                ������  �    Status                           �c E �  �    AC Line Slope                          	                      LPositive TKDPO4K_VAL_AC_LINE_POSITIVE Negative TKDPO4K_VAL_AC_LINE_NEGATIVE   !    This function configures the delay edge trigger. An delay edge trigger occurs after the main trigger event, when the trigger signal passes through the voltage threshold that you specify with the Trigger Level parameter and has the slope that you specify with the Trigger Slope parameter.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    ,    Passes the source that you want the oscilloscope to monitor for a trigger. The driver sets the TKDPO4K_ATTR_TRIGGER_SOURCE attribute to this value. 

After you call one of the tkdpo4k_ReadWaveform, tkdpo4k_ReadMinMaxWaveform, tkdpo4k_ReadWaveformMeasurement, or tkdpo4k_InitiateAcquisition functions, the oscilloscope waits for the trigger you specify in this parameter. After it receives the trigger, the oscilloscope waits for the length of time you specify in the Trigger Delay parameter. 

Valid Values:
For four-channel models:
  - TKDPO4K_VAL_CH_1         ("CH1") - Channel 1 
  - TKDPO4K_VAL_CH_2         ("CH2") - Channel 2
  - TKDPO4K_VAL_CH_3         ("CH3") - Channel 3
  - TKDPO4K_VAL_CH_4         ("CH4") - Channel 4
  - TKDPO4K_VAL_EXTERNAL     ("VAL_EXTERNAL") - External

For two-channel models:
  - TKDPO4K_VAL_CH_1         ("CH1") - Channel 1 
  - TKDPO4K_VAL_CH_2         ("CH2") - Channel 2
  - TKDPO4K_VAL_EXTERNAL     ("VAL_EXTERNAL") - External

Note:

TKDPO4K_VAL_EXTERNAL - The oscilloscope waits for a trigger on the external trigger input.        Passes the voltage threshold that you want the oscilloscope to use for delay triggering.  The driver sets the TKDPO4K_ATTR_DELAY_TRIGGER_LEVEL attribute to this value.

The oscilloscope triggers when the trigger signal passes through the threshold that you specify with this parameter and that it has the slope you specify with the Trigger Slope parameter.

Units: volts
    
Valid Range:
  -8 divisions from signal reference to +8 divisions from signal   
  reference with maximum range of -40~40.

Resolution: 
  0.2 divisions.

Default Value:
  0.0

Note: This parameter only affects instrument behavior when you select a channel or the external trigger input as the Trigger Source. You cannot configure the trigger level that the oscilloscope uses for other trigger sources.      S    Specifies whether you want a rising edge or a falling edge passing through the Trigger Level to trigger the oscilloscope.  The driver sets the TKDPO4K_ATTR_DELAY_TRIGGER_SLOPE attribute to this value.

Defined Values:
  TKDPO4K_VAL_POSITIVE (1) - Rising edge
  TKDPO4K_VAL_NEGATIVE (0) - Falling edge

Default Value: TKDPO4K_VAL_POSITIVE    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Specifies how the oscilloscope couples the trigger source. This control affects instrument behavior only when you configure the trigger type to edge trigger. The driver sets the TKDPO4K_ATTR_TRIGGER_COUPLING attribute to this value.

Valid Values:
  TKDPO4K_VAL_DC (1) -           The oscilloscope DC couples the  
                                 trigger signal.
  TKDPO4K_VAL_AC (0) -           The oscilloscope AC couples the 
                                 trigger signal.
  TKDPO4K_VAL_HF_REJECT (3) -    The oscilloscope removes the 
                                 high frequency components of 
                                 the DC signal.  
  TKDPO4K_VAL_LF_REJECT (4) -    The oscilloscope removes the 
                                 low frequency components of the 
                                 AC signal. 
  TKDPO4K_VAL_NOISE_REJECT (5) - The oscilloscope selects DC low 
                                 sensitivity. It requires added 
                                 signal amplitude for more 
                                 stable, less false triggering.

Default Value: TKDPO4K_VAL_DC

Notes:
(1) TKDPO4K_VAL_AC is valid only in DPO3K models.   ��   �  �    Instrument Handle                �I %  � �    Source                           �} %j �  �    Level                            �� p �  �    Trigger Slope                    ������  �    Status                           �� % � � �    Trigger Coupling                                  rCH1 TKDPO4K_VAL_CH_1 CH2 TKDPO4K_VAL_CH_2 CH3 TKDPO4K_VAL_CH_3 CH4 TKDPO4K_VAL_CH_4 EXTERNAL TKDPO4K_VAL_EXTERNAL    0               <Positive TKDPO4K_VAL_POSITIVE Negative TKDPO4K_VAL_NEGATIVE    	                      �DC TKDPO4K_VAL_DC AC TKDPO4K_VAL_AC HIGH FREQUENCY REJECT TKDPO4K_VAL_HF_REJECT LOW FREQUENCY REJECT TKDPO4K_VAL_LF_REJECT NOISE REJECT TKDPO4K_VAL_NOISE_REJECT   �    This function configures how the delay edge trigger waits for the trigger event.

If you specify the oscilloscope to trigger after time, after receiving the main trigger, the oscilloscope waits the length of time you specify with the TKDPO4K_ATTR_ACQUISITION_START_TIME attribute before it starts looking for a trigger from the delay trigger source. You set the TKDPO4K_ATTR_ACQUISITION_START_TIME attribute by calling the tkdpo4k_ConfigureDelayTriggerTime function.

If you specify the oscilloscope to trigger after events, after receiving the main trigger, the oscilloscope waits the number of trigger events you specify with the TKDPO4K_ATTR_DALEY_TRIGGER_EVENTS attribute before it starts acquiring data. You set the TKEPO4K_ATTR_DELAY_TRIGGER_EVENTS attribute by calling the tkdpo4k_ConfigureDelayTriggerEvents function.

You should call tkdpo4k_ConfigureDelayTriggerTime or tkdpo4k_ConfigureDelayTriggerEvents function before using this function to specify the trigger mode.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None        Passes the delay trigger mode for the instrument. The driver sets the TKDPO4K_ATTR_DELAY_TRIGGER_MODE attribute to this value.  

Valid Values:
  TKDPO4K_VAL_TRIG_AFTER_TIME (1)   - Delay trigger by time.

  TKDPO4K_VAL_TRIG_AFTER_EVENTS (2) - Delay trigger by events.
   �����  �    Status                           ��   �  �    Instrument Handle                 >@ �  �    Mode                               	                          bTrigger After Time TKDPO4K_VAL_TRIG_AFTER_TIME Trigger After Events TKDPO4K_VAL_TRIG_AFTER_EVENTS    �    This function configures the number of main trigger events that occur after the main trigger and before the oscilloscope looks for the delay trigger event when you specify the delay trigger mode to Trigger After Events.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
        Selects the number of main trigger events that occur after the main trigger and before the oscilloscope looks for the delay trigger event. The driver sets the TKDPO4K_ATTR_DELAY_TRIGGER_EVENTS attribute to this value. 

Valid Range: 1 ~ 9999999

Default Value: 1   Ŧ   �  �    Instrument Handle                �[����  �    Status                           �) > � �  �    Events                                 	           1    �    This function configures the time period delayed after the main
trigger and before the oscilloscope looks the delay trigger event when you specify the delay trigger mode to Trigger After Time.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
         Sets the time period delayed after the main trigger and before the oscilloscope looks for the delay trigger event. The driver sets the TKDPO4K_ATTR_DELAY_TRIGGER_TIME attribute to this value. 

Valid Range: 4.0e-9 ~ 8.0 seconds

Resolution: 0.8e-9 seconds

Default Value: 4.0e-9 seconds   Ϸ   �  �    Instrument Handle                �l����  �    Status                           �: > � �  �    Time                                   	           4.0e-9    �    Configures  Ethernet trigger basic settings.

This function only applies to DPO4034B, DPO4054B, DPO4104B, MSO4034B, MSO4054B, MSO4104B.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Specifies the condition to trigger on for ethernet serial bus trigger. s

Valid Values: 
TKDPO4K_VAL_ENET_BASIC_CONDITION_SFD        - SFD
TKDPO4K_VAL_ENET_BASIC_CONDITION_MACADDR    - MAC Address
TKDPO4K_VAL_ENET_BASIC_CONDITION_MACLEN     - MAC Length
TKDPO4K_VAL_ENET_BASIC_CONDITION_DAT        - Data
TKDPO4K_VAL_ENET_BASIC_CONDITION_EOP        - EOP
TKDPO4K_VAL_ENET_BASIC_CONDITION_IDL        - Idle
TKDPO4K_VAL_ENET_BASIC_CONDITION_FCSE       - FCS Error
TKDPO4K_VAL_ENET_BASIC_CONDITION_IPH        - IP Header
TKDPO4K_VAL_ENET_BASIC_CONDITION_TCPH       - TCP Header
TKDPO4K_VAL_ENET_BASIC_CONDITION_QTAG       - Q-Tag

Default Value: 
TKDPO4K_VAL_ENET_BASIC_CONDITION_SFD     J    Specifies the BUS channel for Ethernet triggering.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1

Notes:
(1) TKDPO4K_VAL_BUS3 and TKDPO4K_VAL_BUS4 are valid only in MSO4K models.
     �    Specifies the frame type to trigger on for ethernet serial bus trigger. 

Valid Values: 
TKDPO4K_VAL_ENET_BASIC_FRAME_BAS   - Basic
TKDPO4K_VAL_ENET_BASIC_FRAME_QTAG   - QTAG

Default Value: 
TKDPO4K_VAL_ENET_BASIC_FRAME_BAS    _    Specifies the ethernet trigger qualifier for MAC length/type and data. 

Valid Values: 
TKDPO4K_VAL_ENET_BASIC_QUAL_LESST             -  Less Than
TKDPO4K_VAL_ENET_BASIC_CONDITION_MORET        -  More Than
TKDPO4K_VAL_ENET_BASIC_CONDITION_EQ           -  Equal TKDPO4K_VAL_ENET_BASIC_CONDITION_UNEQ         -  Unequal
TKDPO4K_VAL_ENET_BASIC_CONDITION_LESSEQ       -  Less Equal
TKDPO4K_VAL_ENET_BASIC_CONDITION_MOREEQ       -  More Equal
TKDPO4K_VAL_ENET_BASIC_CONDITION_IN           -  In Range
TKDPO4K_VAL_ENET_BASIC_CONDITION_OUT          -  Out Range

Default Value: 
TKDPO4K_VAL_ENET_BASIC_QUAL_LESST   ٬   �  �    Instrument Handle                �a����  �    Status                           �/ >� � �    Condition                        �� >  � �    Bus Number                       �4 > � � �    Frame Type                       � }  � �    Qualifier                              	                   	  �SFD TKDPO4K_VAL_ENET_BASIC_CONDITION_SFD MAC Address TKDPO4K_VAL_ENET_BASIC_CONDITION_MACADDR MAC Length TKDPO4K_VAL_ENET_BASIC_CONDITION_MACLEN Data TKDPO4K_VAL_ENET_BASIC_CONDITION_DAT EOP TKDPO4K_VAL_ENET_BASIC_CONDITION_EOP Idle TKDPO4K_VAL_ENET_BASIC_CONDITION_IDL FCS Error TKDPO4K_VAL_ENET_BASIC_CONDITION_FCSE IP Header TKDPO4K_VAL_ENET_BASIC_CONDITION_IPH Q-Tag TKDPO4K_VAL_ENET_BASIC_CONDITION_TCPH               XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4               NBasic TKDPO4K_VAL_ENET_BASIC_FRAME_BAS QTAG TKDPO4K_VAL_ENET_BASIC_FRAME_QTAG              |Less Than TKDPO4K_VAL_ENET_BASIC_QUALIFIER_LESST More Than TKDPO4K_VAL_ENET_BASIC_QUALIFIER_MORET Equal TKDPO4K_VAL_ENET_BASIC_QUALIFIER_EQ Unequal TKDPO4K_VAL_ENET_BASIC_QUALIFIER_UNEQ Less Equal TKDPO4K_VAL_ENET_BASIC_QUALIFIER_LESSEQ More Equal TKDPO4K_VAL_ENET_BASIC_QUALIFIER_MOREEQ In Range TKDPO4K_VAL_ENET_BASIC_QUALIFIER_IN Out Range TKDPO4K_VAL_ENET_BASIC_QUALIFIER_OUT    �    Configures data trigger settings for Ethernet trigger. 

This function only applies to DPO4034B, DPO4054B, DPO4104B, MSO4034B, MSO4054B, MSO4104B.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     9    Specifies the data offset in bytes.

Range: -1 to 1499
    J    Specifies the BUS channel for Ethernet triggering.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1

Notes:
(1) TKDPO4K_VAL_BUS3 and TKDPO4K_VAL_BUS4 are valid only in MSO4K models.
     U    Specifies the number of contiguous data bytes to trigger on.

Valid Range: 1 to 16
     �    Secifies the upper limit for in range and out of range qualifiers for ethernet trigger when trigger condition is data.

You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit.

Default Value: XXXXXXXX     �    Specifies the string to be used for Ethernet trigger when trigger condition is data.

You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit.

Default Value: XXXXXXXX   �f   �  �    Instrument Handle                �����  �    Status                           �� >� � �    Offset                           �* >  � �    Bus Number                       �| > � � �    Size                             �� � x � ,    Upper Limit                      �� � y � ,    Data                                   	           -1               XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4    1    
"XXXXXXX"    
"XXXXXXX"    �    Configures IP header trigger settings for Ethernet trigger. 

This function only applies to DPO4034B, DPO4054B, DPO4104B, MSO4034B, MSO4054B, MSO4104B.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    J    Specifies the BUS channel for Ethernet triggering.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1

Notes:
(1) TKDPO4K_VAL_BUS3 and TKDPO4K_VAL_BUS4 are valid only in MSO4K models.
     �    Specifies the source address to trigger on for Ethernet trigger when trigger condition is IP header.

You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit.

Default Value: XXXXXXXX     �    Specifies the destination address to trigger on for Ethernet trigger when trigger condition is IP header.

You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit.

Default Value: XXXXXXXX     �    Specifies the protocol string to trigger on for Ethernet trigger when trigger condition is IP header. 

You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit.

Default Value: XXXXXXXX   �E   �  �    Instrument Handle                ������  �    Status                           � >  � �    Bus Number                        > � �  �    Source Address                   � >� �  �    Destination Address              � x  �  �    Protocol                               	                      XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4    
"XXXXXXX"    
"XXXXXXX"    
"XXXXXXX"    �    Configures MAC trigger settings for Ethernet trigger. 

This function only applies to DPO4034B, DPO4054B, DPO4104B, MSO4034B, MSO4054B, MSO4104B.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    J    Specifies the BUS channel for Ethernet triggering.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1

Notes:
(1) TKDPO4K_VAL_BUS3 and TKDPO4K_VAL_BUS4 are valid only in MSO4K models.
     �    Specifies the MAC source address for Ethernet trigger.


You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit.

Default Value: XXXXXXXX     �    specifies the MAC destination address for Ethernet trigger.

You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit.

Default Value: XXXXXXXX     �    Specifies the length or type upper limit value for Ethernet trigger.

You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit.

Default Value: XXXXXXXX     �    Specifies the length or type value for Ethernet trigger.

You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit.

Default Value: XXXXXXXX   
/   �  �    Instrument Handle                
�����  �    Status                           � >  � �    Bus Number                        > � �  �    Source Address                   � >� �  �    Destination Address              h x  �  �    Upper Length                     % w � �  �    Length                                 	                      XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4    
"XXXXXXX"    
"XXXXXXX"    
"XXXXXXX"    
"XXXXXXX"    �    Configures QTAG trigger settings for Ethernet trigger. 

This function only applies to DPO4034B, DPO4054B, DPO4104B, MSO4034B, MSO4054B, MSO4104B.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    J    Specifies the BUS channel for Ethernet triggering.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1

Notes:
(1) TKDPO4K_VAL_BUS3 and TKDPO4K_VAL_BUS4 are valid only in MSO4K models.
     �    Configures QTAG trigger settings for Ethernet trigger. 


You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit.

Default Value: XXXXXXXX   �   �  �    Instrument Handle                E����  �    Status                             >  � �    Bus Number                       !e > � �  �    QTAG Value                             	                      XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4    
"XXXXXXX"    �    Configures TCP header trigger settings for Ethernet trigger. 

This function only applies to DPO4034B, DPO4054B, DPO4104B, MSO4034B, MSO4054B, MSO4104B.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    J    Specifies the BUS channel for Ethernet triggering.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1

Notes:
(1) TKDPO4K_VAL_BUS3 and TKDPO4K_VAL_BUS4 are valid only in MSO4K models.
     �    Specifies the source address to trigger on for Ethernet trigger when trigger condition is TCP header.

You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit.

Default Value: XXXXXXXX     �    Specifies the destination address to trigger on for Ethernet trigger when trigger condition is TCP header.

You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit.

Default Value: XXXXXXXX     �    Specifies the sequence number to trigger on for Ethernet trigger when trigger condition is TCP header. 

You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit.

Default Value: XXXXXXXX     �    Specifies the acknowledgement number to trigger on for Ethernet trigger when trigger condition is TCP header. 

You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit.

Default Value: XXXXXXXX   $   �  �    Instrument Handle                $�����  �    Status                           +� >  � �    Bus Number                       ,� > � �  �    Source Address                   -� >� �  �    Destination Address              .� x  �  �    Sequence Number                  /� w � �  �    Acknowledge Number                     	                      XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4    
"XXXXXXX"    
"XXXXXXX"    
"XXXXXXX"    
"XXXXXXX"   ]    This function configures the TV trigger. You configure the TV trigger source, signal format, the event on which to trigger, and the signal polarity.

Note: This function affects instrument behavior only if the Trigger Type is TKDPO4K_VAL_TV_TRIGGER. Call the tkdpo4k_ConfigureTrigger function to set the Trigger Type before you call this function.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
    �    Passes the source that you want the oscilloscope to monitor for a trigger. The driver sets the TKDPO4K_ATTR_TRIGGER_SOURCE attribute to this value. 

Valid Values:
For four-channel models:
  - TKDPO4K_VAL_CH_1         ("CH1") - Channel 1 
  - TKDPO4K_VAL_CH_2         ("CH2") - Channel 2
  - TKDPO4K_VAL_CH_3         ("CH3") - Channel 3
  - TKDPO4K_VAL_CH_4         ("CH4") - Channel 4

For two-channel models:
  - TKDPO4K_VAL_CH_1         ("CH1") - Channel 1 
  - TKDPO4K_VAL_CH_2         ("CH2") - Channel 2    �    Specifies the event on which the oscilloscope triggers. The driver set the TKDPO4K_ATTR_TV_TRIGGER_EVENT attribute to this value. 

Valid Values:
  - TKDPO4K_VAL_TV_EVENT_FIELD1 (1)      - The oscilloscope 
    triggers on field 1 of the video signal.
  
  - TKDPO4K_VAL_TV_EVENT_FIELD2 (2)      - The oscilloscope 
    triggers on field 2 of the video signal.
  
  - TKDPO4K_VAL_TV_EVENT_ANY_FIELD (3)   - The oscilloscope 
    triggers on any field.

  - TKDPO4K_VAL_TV_EVENT_ANY_LINE (4)    - The oscilloscope 
    triggers on any line.
  
  - TKDPO4K_VAL_TV_EVENT_LINE_NUMBER (5) - The oscilloscope 
    triggers on a specific line number you specify with the
    TV_Trigger_Line_Number attribute.

Default Value: TKDPO4K_VAL_TV_EVENT_FIELD1
    �    Specifies the type of TV signal on which the oscilloscope triggers. The driver sets the TKDPO4K_ATTR_TV_TRIGGER_SIGNAL_FORMAT attribute to this value. 

Valid Values:
  - TKDPO4K_VAL_NTSC (1)       - Standard signal format

  - TKDPO4K_VAL_PAL (2)        - Standard signal format

  - TKDPO4K_VAL_SECAM (3)      - Standard signal format

  - TKDPO4K_VAL_CUSTOM (1001)  - Application module specific 
                                 signal format

  - TKDPO4K_VAL_HDTV (1002)    - Application module specific 
                                 signal format

  - TKDPO4K_VAL_BILEVELCUSTOM (1003) - Application module
                                 specific signal format

  - TKDPO4K_VAL_TRILEVELCUSTOM (1004) - Application module
                                 specific signal format

Default Value: TKDPO4K_VAL_NTSC

Notes:
(1) TKDPO4K_VAL_CUSTOM is valid only in DPO/MSO4K models.

(2) TKDPO4K_VAL_BILEVELCUSTOM and TKDPO4K_VAL_TRILEVELCUSTOM are valid only in DPO3K models.     �    Specifies the polarity of the TV signal. The driver sets the TKDPO4K_ATTR_TV_TRIGGER_POLARITY attribute to this value.

Valid Values:
  - TKDPO4K_VAL_TV_POSITIVE (1) - Positive video sync pulse
  - TKDPO4K_VAL_TV_NEGATIVE (2) - Negative video sync pulse   3�   �  �    Instrument Handle                4�����  �    Status                           ;u % % � �    Trigger Source                   =| %� � �    TV Event                         @p % � � �    TV Trigger Signal Format         DN i& �       Trigger Polarity                       	                      TCH1 TKDPO4K_VAL_CH_1 CH2 TKDPO4K_VAL_CH_2 CH3 TKDPO4K_VAL_CH_3 CH4 TKDPO4K_VAL_CH_4               �FIELD 1 TKDPO4K_VAL_TV_EVENT_FIELD1 FIELD 2 TKDPO4K_VAL_TV_EVENT_FIELD2 ANY FIELD TKDPO4K_VAL_TV_EVENT_ANY_FIELD ANY LINE TKDPO4K_VAL_TV_EVENT_ANY_LINE LINE NUMBER TKDPO4K_VAL_TV_EVENT_LINE_NUMBER               �NTSC TKDPO4K_VAL_NTSC PAL TKDPO4K_VAL_PAL SECAM TKDPO4K_VAL_SECAM CUSTOM TKDPO4K_VAL_CUSTOM HDTV TKDPO4K_VAL_HDTV BILEVEL CUSTOM TKDPO4K_VAL_BILEVELCUSTOM TRILEVEL CUSTOM TKDPO4K_VAL_TRILEVELCUSTOM               BPositive TKDPO4K_VAL_TV_POSITIVE Negative TKDPO4K_VAL_TV_NEGATIVE       This function configures the line on which TV trigger is set.

Note: This function affects instrument behavior only if the Trigger Type is TKDPO4K_VAL_TV_TRIGGER. Call the tkdpo4k_ConfigureTrigger function to set the Trigger Type before you call this function.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Passes the line on which you want the oscilloscope to trigger.  The line must be within the TV field you specify in the TV Field parameter.  The driver sets the TKDPO4K_ATTR_TV_TRIGGER_LINE_NUMBER attribute to this value.

Valid Range: The valid range depends upon the values you pass for the TV Trigger Signal Type as shown below. 

  ---------------------------------
  TV Signal Type     Valid Range
  ---------------------------------
  PAL                1 to 625
  SECAM              1 to 625
  HDTV               1 to 625
  EIA343             1 to 625
  CUSTOM             1 to 625
  NTSC               1 to 525
  ---------------------------------
 
Default Value: 1   J   �  �    Instrument Handle                J�����  �    Status                           Q� > � �  �    Line Number                            	           1    G    This function configures the video trigger holdoff for TV triggering.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     k    Specifies the video trigger holdoff in terms of video fields.

Valid Range: 0.0 ~ 8.5

Default Value: 0.0   U?   �  �    Instrument Handle                U�����  �    Status                           \� > � �  �    Holdoff                                	           0.0    =    This function configures the HDTV format for TV triggering.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    :    Specifies the HDTV video signal format on which to trigger.

Valid Values:
  - TKDPO4K_VAL_HDTV_1080P24 (1) - 1125 lines (1080 active),
                                   1920 * 1080 pixel,
                                   progressive, 24 fps

  - TKDPO4K_VAL_HDTV_720P60  (2) - 750 lines (720 active), 1280
                                   * 720 pixel, progressive, 60
                                   fps

  - TKDPO4K_VAL_HDTV_480P60  (3) - 525 lines (480 active), 640
                                   or 704 * 480 pixel,
                                   progressive, 60 fps

  - TKDPO4K_VAL_HDTV_1080I50 (4) - 1125 lines (1080 active),
                                   1920 * 1080 pixel,
                                   interlaced, 50 fps

  - TKDPO4K_VAL_HDTV_1080P25 (5) - 1125 lines (1080 active),
                                   1920 * 1080 pixel,
                                   progressive, 25 fps

  - TKDPO4K_VAL_HDTV_1080I60 (6) - 1125 lines (1080 active),
                                   1920 * 1080 pixel,
                                   interlaced, 60 fps

  - TKDPO4K_VAL_HDTV_1080PSF24 (7) - 1125 lines (1080 active),
                                    1920 *1080 pixel,
                                    progressive (sF), 24 fps

  - TKDPO4K_VAL_HDTV_576P50 (8)  - 576p50

  - TKDPO4K_VAL_HDTV_720P30 (9)  - 720p30

  - TKDPO4K_VAL_HDTV_720P50 (10) - 720p50

  - TKDPO4K_VAL_HDTV_875I60 (11) - 875i60

  - TKDPO4K_VAL_HDTV_1080P30 (12) - 1080p30

  - TKDPO4K_VAL_HDTV_1080P50 (13) - 1080p50

  - TKDPO4K_VAL_HDTV_1080P60 (14) - 1080p60

Default Value: TKDPO4K_VAL_HDTV_1080P24

Notes:
(1) TKDPO4K_VAL_HDTV_576P50, TKDPO4K_VAL_HDTV_720P30, TKDPO4K_VAL_HDTV_720P50, TKDPO4K_VAL_HDTV_875I60, TKDPO4K_VAL_HDTV_1080P30, TKDPO4K_VAL_HDTV_1080P50 and TKDPO4K_VAL_HDTV_1080P60 are valid only in DPO3K models.   ^0   �  �    Instrument Handle                ^�����  �    Status                           e� > � � �    Format                                 	                     �1080p24 TKDPO4K_VAL_HDTV_1080P24 720p60 TKDPO4K_VAL_HDTV_720P60 480p60 TKDPO4K_VAL_HDTV_480P60 1080i50 TKDPO4K_VAL_HDTV_1080I50 1080p25 TKDPO4K_VAL_HDTV_1080P25 1080i60 TKDPO4K_VAL_HDTV_1080I60 1080sf24 TKDPO4K_VAL_HDTV_1080PSF24 576p50 TKDPO4K_VAL_HDTV_576P50 720p30 TKDPO4K_VAL_HDTV_720P30 720p50 TKDPO4K_VAL_HDTV_720P50 875i60 TKDPO4K_VAL_HDTV_875I60 1080p30 TKDPO4K_VAL_HDTV_1080P30 1080p50 TKDPO4K_VAL_HDTV_1080P50 1080p60 TKDPO4K_VAL_HDTV_1080P60    �    This function configures custom format, scan rate, line period and sync interval for TV triggering.

Notes:
(1) This function is valid only when the video format is custom.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    H    Specifies the video triggering format.

Valid Values:
  - TKDPO4K_VAL_TV_CUSTOM_INTERLACED  (1) - Interlaced video
                                            lines

  - TKDPO4K_VAL_TV_CUSTOM_PROGRESSIVE (2) - Progressive video
                                            lines

Default Value: TKDPO4K_VAL_TV_CUSTOM_INTERLACED    D    Specifies the horizontal line scan rate of the A video trigger.

Valid Values:
  - TKDPO4K_VAL_TV_RATE15K  (1) - 15 KHz
  - TKDPO4K_VAL_TV_RATE20K  (2) - 20 KHz
  - TKDPO4K_VAL_TV_RATE25K  (3) - 25 KHz
  - TKDPO4K_VAL_TV_RATE35K  (4) - 35 KHz
  - TKDPO4K_VAL_TV_RATE50K  (5) - 50 KHz

Default Value: TKDPO4K_VAL_TV_RATE15K     g    Specifies the line period for the standard under test.

Valid Range: 0 ~ 500 us

Default Value: 0.0 s     i    Specifies the sync interval for the standard under test.

Valid Range: 0 ~ 200 us

Default Value: 0.0 s   p.   �  �    Instrument Handle                p�����  �    Status                           w� > p � �    Format                           y >) � �    Scan Rate (Hz)                   zM } p �  �    Line Period (s)                  z� }) �  �    Sync Interval (s)                      	                      ZInterlaced TKDPO4K_VAL_TV_CUSTOM_INTERLACED Progressive TKDPO4K_VAL_TV_CUSTOM_PROGRESSIVE               �15 K TKDPO4K_VAL_TV_RATE15K 20 K TKDPO4K_VAL_TV_RATE20K 25 K TKDPO4K_VAL_TV_RATE25K 35 K TKDPO4K_VAL_TV_RATE35K 50 K TKDPO4K_VAL_TV_RATE50K    0.0    0.0       This function configures trigger thresholds for a specified channel. The instrument can have different trigger thresholds for each channel (CH1~CH4 for four-channel modules, CH1~CH2 for two-channel modules). The oscilloscope uses a trigger threshold of the channel specified as the trigger source.

For example, if you specify channel 1 as the trigger source, and the upper threshold for channel 1 is 5 volts, the lower threshold for channel 1 is 0 volt, then the upper threshold and lower threshold for triggering is 5 volts and 0 volt.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Passes the upper limit for the channel selected. This control affects instrument behavior only when you set the Trigger Type  to Runt Trigger or Transition Trigger. The driver sets the TKDPO4K_ATTR_TRIGGER_UPPERTHRES_BY_CH attribute to this value.

Valid Range:
  -8 divisions from signal reference to +8 divisions from signal reference with maximum range of -40~40.

Resolution: 
  0.2 divisions.

Default Value:
  0.8    �    Passes the lower limit for the channel selected. This control affects instrument behavior only when you set the Trigger Type  to Runt Trigger or Transition Trigger. The driver sets the TKDPO4K_ATTR_TRIGGER_LOWERTHRES_BY_CH attribute to this value.

Valid Range:
  -8 divisions from signal reference to +8 divisions from signal reference with maximum range of -40~40.

Resolution: 
  0.2 divisions.

Default Value:
  0.0        Passes the channel name that you want to configure.

Valid Channel Names: 
For four-channel models:
    TKDPO4K_VAL_CH_1 ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2 ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3 ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4 ("CH4")   - Channel 4

For two-channel models:
    TKDPO4K_VAL_CH_1 ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2 ("CH2")   - Channel 2

Default Value: TKDPO4K_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.   �   �  �    Instrument Handle                �e����  �    Status                           �3 > � �  �    Upper Threshold                  �� >j �  �    Lower Threshold                  �� >  � �    Channel Name                           	           0.8    0               TCH1 TKDPO4K_VAL_CH_1 CH2 TKDPO4K_VAL_CH_2 CH3 TKDPO4K_VAL_CH_3 CH4 TKDPO4K_VAL_CH_4       This function configures the runt trigger. A runt trigger occurs when the trigger signal crosses one of the runt thresholds twice without crossing the other runt threshold. You specify the runt thresholds with the  Runt Low Threshold and Runt High Threshold parameters. You specify the polarity of the runt with the Runt Polarity parameter.

Note: This function affects instrument behavior only if the Trigger Type is TKDPO4K_VAL_RUNT_TRIGGER. Call the tkdpo4k_ConfigureTrigger function to set the Trigger Type before you call this function.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Passes the source you want the oscilloscope to monitor for a trigger. The driver sets the TKDPO4K_ATTR_TRIGGER_SOURCE attribute to this value. 

Valid Values:
For four-channel models:
  - TKDPO4K_VAL_CH_1         ("CH1") - Channel 1 
  - TKDPO4K_VAL_CH_2         ("CH2") - Channel 2
  - TKDPO4K_VAL_CH_3         ("CH3") - Channel 3
  - TKDPO4K_VAL_CH_4         ("CH4") - Channel 4

For two-channel models:
  - TKDPO4K_VAL_CH_1         ("CH1") - Channel 1 
  - TKDPO4K_VAL_CH_2         ("CH2") - Channel 2        Passes the low threshold you want the oscilloscope to use for runt triggering. The driver sets the TKDPO4K_ATTR_RUNT_LOW_THRESHOLD attribute to this value.

Units: volts.

Valid Range:
  -8 divisions from signal reference to +8 divisions from signal reference with maximum range of -40~40.

Resolution: 
  0.2 divisions.

Default Value: 0

Note: If you pass a value for Runt High Threshold that is lower than the value you pass for Runt Low Threshold, the instrument sets the Runt Low Threshold to the value you pass for Runt High Threshold.    %    Passes the high threshold you want the oscilloscope to use for runt triggering.  The driver sets the TKDPO4K_ATTR_RUNT_HIGH_THRESHOLD attribute to this value.

Units: volts.

Valid Range:
  -8 divisions from signal reference to +8 divisions from signal reference with maximum range of -40~40.

Resolution: 
  0.2 divisions.

Default Value: 0.8

Note: If you pass a value for Runt High Threshold that is lower than the value you pass for Runt Low Threshold, the instrument sets the Runt Low Threshold to the value you pass for Runt High Threshold.
        Passes the polarity of the runt that you want to trigger the oscilloscope. The driver sets the TKDPO4K_ATTR_RUNT_POLARITY attribute to this value.

Valid Values:
- TKDPO4K_VAL_RUNT_POSITIVE (1): The oscilloscope
  triggers on a positive runt. A positive runt occurs when
  a rising edge crosses the Runt Low Threshold and does not
  cross the Runt High Threshold before re-crossing the Low Runt
  Threshold.

- TKDPO4K_VAL_RUNT_NEGATIVE (2): The oscilloscope
  triggers on a negative runt. A negative runt occurs when
  a falling edge crosses the Runt High Threshold and does not
  cross the Runt Low Threshold before re-crossing the High Runt
  Threshold.

- TKDPO4K_VAL_RUNT_EITHER (3): The oscilloscope
  triggers on either a positive or negative runt.

Default Value: TKDPO4K_VAL_RUNT_POSITIVE   �O   �  �    Instrument Handle                �����  �    Status                           �� = % � �    Trigger Source                   �� = � �  �    Runt Low Threshold (volts)       �� >� �  �    Runt High Threshold (volts)      �( �) �  �    Runt Polarity                          	                      TCH1 TKDPO4K_VAL_CH_1 CH2 TKDPO4K_VAL_CH_2 CH3 TKDPO4K_VAL_CH_3 CH4 TKDPO4K_VAL_CH_4    0    0.8               ePositive TKDPO4K_VAL_RUNT_POSITIVE Negative TKDPO4K_VAL_RUNT_NEGATIVE Either TKDPO4K_VAL_RUNT_EITHER   �    This function configures the runt trigger condition. A runt trigger occurs when the trigger signal crosses one of the runt thresholds twice without crossing the other runt threshold. You specify the runt with the Runt Width parameter. You specify the runt condition with the Runt Condition parameter.

Note: This function affects instrument behavior only if the Trigger Type is TKDPO4K_VAL_RUNT_TRIGGER. Call the tkdpo4k_ConfigureTrigger function to set the Trigger Type before you call this function.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    Passes the runt width you want the oscilloscope to use for runt triggering. The driver sets the TKDPO4K_ATTR_RUNT_WIDTH attribute to this value.

Valid Range: 4.0e-9 ~ 8.0 seconds

Resolution: 0.8e-9 seconds

Default Value: 4.0e-9 seconds    �    Passes the triggering condition you want the oscilloscope to use for runt triggering.

Valid Values:

  - TKDPO4K_VAL_RUNT_WHEN_OCCURS (1) - The oscilloscope triggers 
    when a runt occurs.
  
  - TKDPO4K_VAL_RUNT_WHEN_WIDER_THAN (2) - The oscilloscope 
    triggers when a runt with a width wider than the width
    specified by the TKDPO4K_ATTR_RUNT_WIDTH attribute.

  - TKDPO4K_VAL_RUNT_WHEN_LESS_THAN (3) - The oscilloscope 
    triggers when a runt with a width narrower than the width 
    specified by the TKDPO4K_ATTR_RUNT_WIDTH attribute.

  - TKDPO4K_VAL_RUNT_WHEN_EQUAL (4) - The oscilloscope triggers 
    when a runt with a width equal to the width specified by the
    TKDPO4K_ATTR_RUNT_WIDTH attribute.

  - TKDPO4K_VAL_RUNT_WHEN_NOTEQUAL (5) - The oscilloscope 
    triggers when a runt with a width unequal to the width
    specified by the TKDPO4K_ATTR_RUNT_WIDTH attribute.   �   �  �    Instrument Handle                �4����  �    Status                           � > > �  �    Runt Width                       �� >Q � �    Runt Condition                         	           4.0e-9               �OCCURS TKDPO4K_VAL_RUNT_WHEN_OCCURS WIDER THAN TKDPO4K_VAL_RUNT_WHEN_WIDER_THAN LESS THAN TKDPO4K_VAL_RUNT_WHEN_LESS_THAN EQUAL TKDPO4K_VAL_RUNT_WHEN_EQUAL UNEQUAL TKDPO4K_VAL_RUNT_WHEN_NOTEQUAL   �    This function configures the glitch trigger. A glitch trigger occurs when the trigger signal has a pulse with a width that is less than the glitch width. You specify the glitch width in the Glitch Width parameter. You specify the polarity of the pulse with the Glitch Polarity parameter. The trigger does not actually occur until the edge of a pulse that corresponds to the Glitch Width and Glitch Polarity crosses the threshold you specify in the Trigger Level parameter. 

Note: This function affects instrument behavior only if the Trigger Type is TKDPO4K_VAL_GLITCH_TRIGGER. Call the tkdpo4k_ConfigureTrigger function to set the Trigger Type before you call this function.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    A    Passes the glitch condition under which you want the oscilloscope to trigger. The driver sets the TKDPO4K_ATTR_GLITCH_CONDITION attribute to this value. 

The glitch condition determines whether the glitch trigger happens when the oscilloscope detects a pulse with a width less than or greater than the width value.

Valid Values:  
TKDPO4K_VAL_GLITCH_LESS_THAN (1) - The oscilloscope triggers when the pulse width is less than the specified width.

TKDPO4K_VAL_GLITCH_GREATER_THAN (2) - The oscilloscope triggers when the pulse width is greater than the specified width.

TKDPO4K_VAL_GLITCH_WITHIN_5_PERCENT (101) - The oscilloscope triggers when the pulse width is within 5% of the specified width.

TKDPO4K_VAL_GLITCH_OUTSIDE_5_PERCENT (102) - The oscilloscope triggers when the pulse width is outside 5% of the specified width.    v    Passes the source you want the oscilloscope to monitor for a trigger. The driver sets the TKDPO4K_ATTR_TRIGGER_SOURCE attribute to this value. 

Valid Values:
For four-channel models:
  - TKDPO4K_VAL_CH_1         ("CH1") - Channel 1 
  - TKDPO4K_VAL_CH_2         ("CH2") - Channel 2
  - TKDPO4K_VAL_CH_3         ("CH3") - Channel 3
  - TKDPO4K_VAL_CH_4         ("CH4") - Channel 4

For two-channel models:
  - TKDPO4K_VAL_CH_1         ("CH1") - Channel 1 
  - TKDPO4K_VAL_CH_2         ("CH2") - Channel 2

For MSO models:
  - TKDPO4K_VAL_D_0          ("D0")  - Digital Channel 0
  - TKDPO4K_VAL_D_1          ("D1")  - Digital Channel 1
  - TKDPO4K_VAL_D_2          ("D2")  - Digital Channel 2
  - TKDPO4K_VAL_D_3          ("D3")  - Digital Channel 3
  - TKDPO4K_VAL_D_4          ("D4")  - Digital Channel 4
  - TKDPO4K_VAL_D_5          ("D5")  - Digital Channel 5
  - TKDPO4K_VAL_D_6          ("D6")  - Digital Channel 6
  - TKDPO4K_VAL_D_7          ("D7")  - Digital Channel 7
  - TKDPO4K_VAL_D_8          ("D8")  - Digital Channel 8
  - TKDPO4K_VAL_D_9          ("D9")  - Digital Channel 9
  - TKDPO4K_VAL_D_10         ("D10") - Digital Channel 10
  - TKDPO4K_VAL_D_11         ("D11") - Digital Channel 11
  - TKDPO4K_VAL_D_12         ("D12") - Digital Channel 12
  - TKDPO4K_VAL_D_13         ("D13") - Digital Channel 13
  - TKDPO4K_VAL_D_14         ("D14") - Digital Channel 14
  - TKDPO4K_VAL_D_15         ("D15") - Digital Channel 15

  - TKDPO4K_VAL_EXTERNAL     ("VAL_EXTERNAL") - External
  - TKDPO4K_VAL_AC_LINE      ("VAL_AC_LINE")  - AC Line

Note:

TKDPO4K_VAL_EXTERNAL - The oscilloscope waits for a trigger on the external trigger input.    �    Passes the voltage threshold you want the oscilloscope to use for glitch triggering. The driver sets the TKDPO4K_ATTR_TRIGGER_LEVEL attribute to this value.

The oscilloscope triggers when a glitch crosses the trigger threshold you specify with this parameter.

Units: volts

Valid Range:
  -8 divisions from signal reference to +8 divisions from signal   
  reference with maximum range of -40~40.

Resolution: 
  0.2 divisions.

Default Value: 0.0

Note: This parameter only affects instrument behavior when you select a channel or the external trigger input as the Trigger Source. You cannot configure the trigger level that the oscilloscope uses for other trigger sources.      �    Passes the length of time you want the oscilloscope to use for the glitch width. The driver sets the TKDPO4K_ATTR_GLITCH_WIDTH attribute to this value.

The oscilloscope triggers when it detects a pulse with a width that meets the condition specified by the Glitch Condition parameter.

Units: seconds

Valid Range: 4.0e-9 ~ 8.0 seconds

Resolution: 0.8e-9 seconds

Default Value: 4.0e-9 seconds    �    Passes the polarity of the glitch that you want to trigger the oscilloscope. The driver sets the TKDPO4K_ATTR_GLITCH_POLARITY attribute to this value.

Valid Values:

- TKDPO4K_VAL_GLITCH_POSITIVE (1) - The oscilloscope
  triggers on a positive glitch.

- TKDPO4K_VAL_GLITCH_NEGATIVE (2) - The oscilloscope
  triggers on a negative glitch.

Default Value: TKDPO4K_VAL_GLITCH_POSITIVE   ��   �  �    Instrument Handle                ������  �    Status                           �u WQ � �    Glitch Condition                 �� % > � �    Trigger Source                   �< %Q �  �    Trigger Level (volts)            �� W > �  �    Glitch Width (sec)               ˁ � �  �    Glitch Polarity                        	                      �LESS THAN TKDPO4K_VAL_GLITCH_LESS_THAN GREATER THAN TKDPO4K_VAL_GLITCH_GREATER_THAN EQUAL TKDPO4K_VAL_GLITCH_WITHIN_5_PERCENT UNEQUAL TKDPO4K_VAL_GLITCH_OUTSIDE_5_PERCENT              �CH1 TKDPO4K_VAL_CH_1 CH2 TKDPO4K_VAL_CH_2 CH3 TKDPO4K_VAL_CH_3 CH4 TKDPO4K_VAL_CH_4 D0 TKDPO4K_VAL_D_0 D1 TKDPO4K_VAL_D_1 D2 TKDPO4K_VAL_D_2 D3 TKDPO4K_VAL_D_3 D4 TKDPO4K_VAL_D_4 D5 TKDPO4K_VAL_D_5 D6 TKDPO4K_VAL_D_6 D7 TKDPO4K_VAL_D_7 D8 TKDPO4K_VAL_D_8 D9 TKDPO4K_VAL_D_9 D10 TKDPO4K_VAL_D_10 D11 TKDPO4K_VAL_D_11 D12 TKDPO4K_VAL_D_12 D13 TKDPO4K_VAL_D_13 D14 TKDPO4K_VAL_D_14 D15 TKDPO4K_VAL_D_15 EXTERNAL TKDPO4K_VAL_EXTERNAL AC LINE TKDPO4K_VAL_AC_LINE    0.0    4.0e-9               JPositive TKDPO4K_VAL_GLITCH_POSITIVE Negative TKDPO4K_VAL_GLITCH_NEGATIVE   ?    This function configures the transition trigger. You specify the polarity of the transition with the Polarity parameter. You specify the condition of the transition with the Condition parameter. You specify the delta time with the Delta Time parameter. You specify the transition thresholds with the Transition Low Threshold and Transition High Threshold parameters.

Note: This function affects instrument behavior only if the Trigger Type is TKDPO4K_VAL_TRANSITION_TRIGGER. Call the tkdpo4k_ConfigureTrigger function to set the Trigger Type before you call this function.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Passes the source you want the oscilloscope to monitor for a trigger. The driver sets the TKDPO4K_ATTR_TRIGGER_SOURCE attribute to this value. 

Valid Values:
For four-channel models:
  - TKDPO4K_VAL_CH_1         ("CH1") - Channel 1 
  - TKDPO4K_VAL_CH_2         ("CH2") - Channel 2
  - TKDPO4K_VAL_CH_3         ("CH3") - Channel 3
  - TKDPO4K_VAL_CH_4         ("CH4") - Channel 4

For two-channel models:
  - TKDPO4K_VAL_CH_1         ("CH1") - Channel 1 
  - TKDPO4K_VAL_CH_2         ("CH2") - Channel 2        Passes the polarity of the transition that you want to trigger the oscilloscope. The driver sets the TKDPO4K_ATTR_TRANSITION_POLARITY attribute to this value.

Valid Values:

- TKDPO4K_VAL_TRANSITION_POSITIVE (1) - The oscilloscope 
  triggers when a pulse edge traverses from the low threshold 
  (most negative) to the high threshold (most positive).

- TKDPO4K_VAL_TRANSITION_NEGATIVE (2) - The oscilloscope 
  triggers when a pulse edge traverses from the high threshold 
  (most positive) to the low threshold (most negative).

- TKDPO4K_VAL_TRANSITION_EITHER (3) - The oscilloscope 
  triggers when a pulse edge traverses either from the low 
  threshold to the high threshold or from the high threshold to 
  the low threshold. 

Default Value: TKDPO4K_VAL_TRANSITION_POSITIVE    �    Passes the transition condition under which you want the oscilloscope to trigger. The driver sets the TKDPO4K_ATTR_TRANSITION_CONDITION attribute to this value.

The transition condition determines whether the transition trigger happens when the oscilloscope detects a delta time that meets the specified condition.

Valid Values:

  - TKDPO4K_VAL_TRANSITION_FASTER_THAN (1) - The oscilloscope 
    triggers with a pulse that has a slew rate faster than the   
    value you specify with the delta time parameter to trigger 
    the oscilloscope.

  - TKDPO4K_VAL_TRANSITION_SLOWER_THAN (2) - The oscilloscope 
    triggers with a pulse that has a slew rate slower than the 
    value you specify with the delta time parameter to trigger 
    the oscilloscope.

  - TKDPO4K_VAL_TRANSITION_EQUAL (3) - The oscilloscope 
    triggers with a pulse that has a slew rate equal the value 
    you specify with the delta time parameter to trigger the 
    oscilloscope.

  - TKDPO4K_VAL_TRANSITION_UNEQUAL (4) - The oscilloscope   
    triggers with a  pulse that has a slew rate not equal to the 
    value you specify with the delta time parameter to trigger 
    the oscilloscope.

Default Value: TKDPO4K_VAL_TRANSITION_SLOWER_THAN        �    Passes the length of time you want the oscilloscope to use for the transition delta time. The driver sets the TKDPO4K_ATTR_TRANSITION_DELTA_TIME attribute to this value.

The oscilloscope triggers when it detects a transition slope with the delta time meets the condition specified by the Transition Condition parameter.

Units: seconds

Valid Range: 4.0e-9 ~ 8.0 seconds

Resolution: 0.8e-9 seconds

Default Value: 4.0e-9 seconds    C    Passes the low threshold you want the oscilloscope to use for transition triggering. The driver sets the TKDPO4K_ATTR_TRANSITION_LOW_THRESHOLD attribute to this value.

Units: volts.

Valid Range:
  -8 divisions from signal reference to +8 divisions from signal reference with maximum range of -40~40.

Resolution: 
  0.2 divisions.

Default Value: 0

Note: If you pass a value for Transition High Threshold that is lower than the value you pass for Transition Low Threshold, the instrument sets the Transition Low Threshold to the value you pass for Transition High Threshold.    G    Passes the low threshold you want the oscilloscope to use for transition triggering. The driver sets the TKDPO4K_ATTR_TRANSITION_HIGH_THRESHOLD attribute to this value.

Units: volts.

Valid Range:
  -8 divisions from signal reference to +8 divisions from signal reference with maximum range of -40~40.

Resolution: 
  0.2 divisions.

Default Value: 0.8

Note: If you pass a value for Transition High Threshold that is lower than the value you pass for Transition Low Threshold, the instrument sets the Transition Low Threshold to the value you pass for Transition High Threshold.    ��   �  �    Instrument Handle                Ԇ����  �    Status                           �T % % � �    Trigger Source                   �V %/ �       Polarity                         �o %� � �    Condition                        �H p % �  �    Delta Time                       �  p � �  �    Lower Thresthold                 �K p� �  �    Upper Threshold                        	                      TCH1 TKDPO4K_VAL_CH_1 CH2 TKDPO4K_VAL_CH_2 CH3 TKDPO4K_VAL_CH_3 CH4 TKDPO4K_VAL_CH_4               wPositive TKDPO4K_VAL_TRANSITION_POSITIVE Negative TKDPO4K_VAL_TRANSITION_NEGATIVE Either TKDPO4K_VAL_TRANSITION_EITHER              �FASTER THAN TKDPO4K_VAL_TRANSITION_FASTER_THAN SLOWER THAN TKDPO4K_VAL_TRANSITION_SLOWER_THAN EQUAL TKDPO4K_VAL_TRANSITION_EQUAL UNEQUAL TKDPO4K_VAL_TRANSITION_UNEQUAL    4.0e-9    0    0.8   �    This function configures trigger thresholds for a specified channel. The instrument can have different trigger thresholds for each channel (CH1~CH4 for four-channel modules, CH1~CH2 for two-channel modules). The oscilloscope uses trigger thresholds of the channel specified as the trigger source.

For example, if you specify channel 1 as the trigger source, and the logic threshold for channel 1 is 1 volt, then the logic threshold for triggering is 1 volt.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None        Passes the channel name you want to configure.

Valid Channel Names: 
For four-channel models:
    TKDPO4K_VAL_CH_1 ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2 ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3 ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4 ("CH4")   - Channel 4

For two-channel models:
    TKDPO4K_VAL_CH_1 ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2 ("CH2")   - Channel 2

Default Value: TKDPO4K_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Passes the logic threshold of a specified channel for the trigger subsystem. This control affects instrument behavior only when you set the trigger type to logic trigger. The driver sets the TKDPO4K_ATTR_LOGIC_THRES_BY_CH attribute to this value.

Valid Range:
  -8 divisions from signal reference to +8 divisions from signal   
  reference with maximum range of -40~40.

Resolution: 
  0.2 divisions.

Default Value: 0 volts   ��   �  �    Instrument Handle                � > > � �    Channel Name                     �����  �    Status                           �m >Q �  �    Logic Threshold                                   TCH1 TKDPO4K_VAL_CH_1 CH2 TKDPO4K_VAL_CH_2 CH3 TKDPO4K_VAL_CH_3 CH4 TKDPO4K_VAL_CH_4    	           0    �    This function configures the scope to trigger according to a pattern as defined by the function and holds true for the delta time.

Note: Before reading waveform, set input channels using tkds30xx_ConfigureLogicTriggerInputs.
     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
        Passes the logic combination of the input channels for the pattern triggers. 

Valid Values: 
 
  - TKDPO4K_VAL_LOGIC_AND (1) - The oscilloscope triggers when 
    all the conditions are true.

  - TKDPO4K_VAL_LOGIC_OR (2) - The oscilloscope triggers when 
    any of the conditions is true.

  - TKDPO4K_VAL_LOGIC_NAND (3) - The oscilloscope triggers when 
    any of the conditions is false.

  - TKDPO4K_VAL_LOGIC_NOR (4) - The oscilloscope triggers when 
    all the conditions are false.

Default Value:  TKDPO4K_VAL_LOGIC_AND     �    Passes the pattern trigger time value. The driver sets the TKDPO4K_ATTR_PATTERN_DELTATIME attribute to this value.

Valid Range: 4.0e-9 ~ 8.0 seconds

Resolution: 0.8e-9 seconds

Default Value: 4.0e-9 seconds    �    Passes the trigger condition you want the oscilloscope to use for pattern triggering.

Valid Values: 

  - TKDPO4K_VAL_LOGIC_TRUE (1) - The oscilloscope triggers when 
    the pattern becomes true.

  - TKDPO4K_VAL_LOGIC_FALSE (2) - The oscilloscope triggers when 
    the pattern becomes false.

  - TKDPO4K_VAL_LOGIC_LESSTHAN (3) - The oscilloscope triggers 
    when the pattern is less than the delta time specified 
    by the Delta Time parameter.

  - TKDPO4K_VAL_LOGIC_MORETHAN (4) - The oscilloscope triggers 
    when the pattern is more than the delta time specified 
    by the Delta Time parameter.

  - TKDPO4K_VAL_LOGIC_EQUAL (5) - The oscilloscope triggers when 
    the pattern is equal to the delta time specified by the 
    Delta Time parameter.

  - TKDPO4K_VAL_LOGIC_UNEQUAL (6) - The oscilloscope triggers 
    when the pattern is not equal to the delta time 
    specified by the Delta Time parameter.

Default Value: TKDPO4K_VAL_LOGIC_TRUE   �X   �  �    Instrument Handle                �����  �    Status                           � > % � �    Function                         � > � �  �    Delta Time                       � >� � �    Condition                              	                      hAND TKDPO4K_VAL_LOGIC_AND OR TKDPO4K_VAL_LOGIC_OR NAND TKDPO4K_VAL_LOGIC_NAND NOR TKDPO4K_VAL_LOGIC_NOR    4.0e-9               �TRUE TKDPO4K_VAL_LOGIC_TRUE FALSE TKDPO4K_VAL_LOGIC_FALSE LESSTHAN TKDPO4K_VAL_LOGIC_LESSTHAN MORETHAN TKDPO4K_VAL_LOGIC_MORETHAN EQUAL TKDPO4K_VAL_LOGIC_EQUAL UNEQUAL TKDPO4K_VAL_LOGIC_UNEQUAL    M    This function configures the pattern trigger input for a specified channel.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    M    Passes the logic input for the specified logic trigger channel. The driver sets the TKDPO4K_ATTR_LOGIC_INPUT_BY_CH attribute to this value.

Valid Values:

  - TKDPO4K_VAL_LOGIC_HIGH (1) - Logic High

  - TKDPO4K_VAL_LOGIC_LOW (2)  - Logic Low

  - TKDPO4K_VAL_LOGIC_X (3)    - Do not care state

Default Value: TKDPO4K_VAL_LOGIC_X    M    Passes the channel name you want to configure.

Valid Channel Names: 
For four-channel models:
    TKDPO4K_VAL_CH_1 ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2 ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3 ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4 ("CH4")   - Channel 4

For two-channel models:
    TKDPO4K_VAL_CH_1 ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2 ("CH2")   - Channel 2

For MSO models:
  - TKDPO4K_VAL_D_0  ("D0")    - Digital Channel 0
  - TKDPO4K_VAL_D_1  ("D1")    - Digital Channel 1
  - TKDPO4K_VAL_D_2  ("D2")    - Digital Channel 2
  - TKDPO4K_VAL_D_3  ("D3")    - Digital Channel 3
  - TKDPO4K_VAL_D_4  ("D4")    - Digital Channel 4
  - TKDPO4K_VAL_D_5  ("D5")    - Digital Channel 5
  - TKDPO4K_VAL_D_6  ("D6")    - Digital Channel 6
  - TKDPO4K_VAL_D_7  ("D7")    - Digital Channel 7
  - TKDPO4K_VAL_D_8  ("D8")    - Digital Channel 8
  - TKDPO4K_VAL_D_9  ("D9")    - Digital Channel 9
  - TKDPO4K_VAL_D_10 ("D10")   - Digital Channel 10
  - TKDPO4K_VAL_D_11 ("D11")   - Digital Channel 11
  - TKDPO4K_VAL_D_12 ("D12")   - Digital Channel 12
  - TKDPO4K_VAL_D_13 ("D13")   - Digital Channel 13
  - TKDPO4K_VAL_D_14 ("D14")   - Digital Channel 14
  - TKDPO4K_VAL_D_15 ("D15")   - Digital Channel 15

Default Value: TKDPO4K_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.   `   �  �    Instrument Handle                ����  �    Status                           � >Q � �    Logic Input                      8 > > � �    Channel Name                           	                     LHIGH TKDPO4K_VAL_LOGIC_HIGH LOW TKDPO4K_VAL_LOGIC_LOW X TKDPO4K_VAL_LOGIC_X              �CH1 TKDPO4K_VAL_CH_1 CH2 TKDPO4K_VAL_CH_2 CH3 TKDPO4K_VAL_CH_3 CH4 TKDPO4K_VAL_CH_4 D0 TKDPO4K_VAL_D_0 D1 TKDPO4K_VAL_D_1 D2 TKDPO4K_VAL_D_2 D3 TKDPO4K_VAL_D_3 D4 TKDPO4K_VAL_D_4 D5 TKDPO4K_VAL_D_5 D6 TKDPO4K_VAL_D_6 D7 TKDPO4K_VAL_D_7 D8 TKDPO4K_VAL_D_8 D9 TKDPO4K_VAL_D_9 D10 TKDPO4K_VAL_D_10 D11 TKDPO4K_VAL_D_11 D12 TKDPO4K_VAL_D_12 D13 TKDPO4K_VAL_D_13 D14 TKDPO4K_VAL_D_14 D15 TKDPO4K_VAL_D_15    �    This function configures the scope to trigger according to a pattern as defined by the function and holds true for the delta time with a proper clock edge.

Note: Before reading waveform, set input channels using tkds30xx_ConfigureLogicTriggerInputs.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
        Passes the logic combination of the input channels for the state triggers. 

Valid Values: 
 
  - TKDPO4K_VAL_LOGIC_AND (1) - The oscilloscope triggers when 
    all the conditions are true.

  - TKDPO4K_VAL_LOGIC_OR (2) - The oscilloscope triggers when 
    any of the conditions is true.

  - TKDPO4K_VAL_LOGIC_NAND (3) - The oscilloscope triggers when 
    any of the conditions is false.

  - TKDPO4K_VAL_LOGIC_NOR (4) - The oscilloscope triggers when 
    all the conditions are false.

Default Value: TKDPO4K_VAL_LOGIC_AND   !o   �  �    Instrument Handle                "$����  �    Status                           (� > � � �    Function                               	                      hAND TKDPO4K_VAL_LOGIC_AND OR TKDPO4K_VAL_LOGIC_OR NAND TKDPO4K_VAL_LOGIC_NAND NOR TKDPO4K_VAL_LOGIC_NOR   >    This function configures the state trigger data input for a specified channel. 

Notes:

(1) You must call the tkdpo4k_ConfigureStateTriggerClockInput function before this function to allocate a channel for the clock source.

(2) Do not specify a channel that has been allocated as the clock source in this function.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    M    Passes the logic input for the specified logic trigger channel.
The driver sets the TKDPO4K_ATTR_LOGIC_INPUT_BY_CH attribute to this value.

Valid Values:

  - TKDPO4K_VAL_LOGIC_HIGH (1) - Logic High

  - TKDPO4K_VAL_LOGIC_LOW (2)  - Logic Low

  - TKDPO4K_VAL_LOGIC_X (3)    - Do not care state

Default Value: TKDPO4K_VAL_LOGIC_X    M    Passes the channel name you want to configure.

Valid Channel Names: 
For four-channel models:
    TKDPO4K_VAL_CH_1 ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2 ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3 ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4 ("CH4")   - Channel 4

For two-channel models:
    TKDPO4K_VAL_CH_1 ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2 ("CH2")   - Channel 2

For MSO models:
  - TKDPO4K_VAL_D_0  ("D0")    - Digital Channel 0
  - TKDPO4K_VAL_D_1  ("D1")    - Digital Channel 1
  - TKDPO4K_VAL_D_2  ("D2")    - Digital Channel 2
  - TKDPO4K_VAL_D_3  ("D3")    - Digital Channel 3
  - TKDPO4K_VAL_D_4  ("D4")    - Digital Channel 4
  - TKDPO4K_VAL_D_5  ("D5")    - Digital Channel 5
  - TKDPO4K_VAL_D_6  ("D6")    - Digital Channel 6
  - TKDPO4K_VAL_D_7  ("D7")    - Digital Channel 7
  - TKDPO4K_VAL_D_8  ("D8")    - Digital Channel 8
  - TKDPO4K_VAL_D_9  ("D9")    - Digital Channel 9
  - TKDPO4K_VAL_D_10 ("D10")   - Digital Channel 10
  - TKDPO4K_VAL_D_11 ("D11")   - Digital Channel 11
  - TKDPO4K_VAL_D_12 ("D12")   - Digital Channel 12
  - TKDPO4K_VAL_D_13 ("D13")   - Digital Channel 13
  - TKDPO4K_VAL_D_14 ("D14")   - Digital Channel 14
  - TKDPO4K_VAL_D_15 ("D15")   - Digital Channel 15

Default Value: TKDPO4K_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.   -x   �  �    Instrument Handle                .-����  �    Status                           4� >Q � �    Logic Input                      6P > > � �    Channel Name                           	                     LHIGH TKDPO4K_VAL_LOGIC_HIGH LOW TKDPO4K_VAL_LOGIC_LOW X TKDPO4K_VAL_LOGIC_X              �CH1 TKDPO4K_VAL_CH_1 CH2 TKDPO4K_VAL_CH_2 CH3 TKDPO4K_VAL_CH_3 CH4 TKDPO4K_VAL_CH_4 D0 TKDPO4K_VAL_D_0 D1 TKDPO4K_VAL_D_1 D2 TKDPO4K_VAL_D_2 D3 TKDPO4K_VAL_D_3 D4 TKDPO4K_VAL_D_4 D5 TKDPO4K_VAL_D_5 D6 TKDPO4K_VAL_D_6 D7 TKDPO4K_VAL_D_7 D8 TKDPO4K_VAL_D_8 D9 TKDPO4K_VAL_D_9 D10 TKDPO4K_VAL_D_10 D11 TKDPO4K_VAL_D_11 D12 TKDPO4K_VAL_D_12 D13 TKDPO4K_VAL_D_13 D14 TKDPO4K_VAL_D_14 D15 TKDPO4K_VAL_D_15       This function configures clock input attributes for the state trigger of a specified channel. These attributes are the clock source and clock edge. 

Note: You should call this function before tkdpo4k_ConfigureStateTriggerDataInput to allocate a channel for  the clock source.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    _    Passes the clock source you want to configure.

Valid clock sources: 
For four-channel models:
    TKDPO4K_VAL_SOUR_CH1 (1)  - Channel 1
    TKDPO4K_VAL_SOUR_CH2 (2)  - Channel 2
    TKDPO4K_VAL_SOUR_CH3 (3)  - Channel 3
    TKDPO4K_VAL_SOUR_CH4 (4)  - Channel 4

For two-channel models:
    TKDPO4K_VAL_SOUR_CH1 (1)  - Channel 1
    TKDPO4K_VAL_SOUR_CH2 (2)  - Channel 2

For MSO models:
    TKDPO4K_VAL_SOUR_D0 (50)  - Digital Channel 0
    TKDPO4K_VAL_SOUR_D1 (51)  - Digital Channel 1
    TKDPO4K_VAL_SOUR_D2 (52)  - Digital Channel 2
    TKDPO4K_VAL_SOUR_D3 (53)  - Digital Channel 3
    TKDPO4K_VAL_SOUR_D4 (54)  - Digital Channel 4
    TKDPO4K_VAL_SOUR_D5 (55)  - Digital Channel 5
    TKDPO4K_VAL_SOUR_D6 (56)  - Digital Channel 6
    TKDPO4K_VAL_SOUR_D7 (57)  - Digital Channel 7
    TKDPO4K_VAL_SOUR_D8 (58)  - Digital Channel 8
    TKDPO4K_VAL_SOUR_D9 (59)  - Digital Channel 9
    TKDPO4K_VAL_SOUR_D10(60)  - Digital Channel 10
    TKDPO4K_VAL_SOUR_D11(61)  - Digital Channel 11
    TKDPO4K_VAL_SOUR_D12(62)  - Digital Channel 12
    TKDPO4K_VAL_SOUR_D13(63)  - Digital Channel 13
    TKDPO4K_VAL_SOUR_D14(64)  - Digital Channel 14
    TKDPO4K_VAL_SOUR_D15(65)  - Digital Channel 15

    TKDPO4K_VAL_SOUR_NONE(30) - None

Default Value: TKDPO4K_VAL_SOUR_CH1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.    �    Specifies the clock edge polarity for state triggering. 

Valid Values:

  - TKDPO4K_VAL_CLOCK_RISE (1) - The oscilloscope generates a 
    state trigger on the rising clock edge when meets specified   
    state function.

  - TKDPO4K_VAL_CLOCK_FALL (2) - The oscilloscope generates a 
    state trigger on the falling clock edge when meets specified 
    state function.

Default Value: TKDPO4K_VAL_CLOCK_RISE   ?�   �  �    Instrument Handle                @W����  �    Status                           G% > > � �    Clock Source                     L� >� �       Clock Edge                             	                     �CH1 TKDPO4K_VAL_SOUR_CH1 CH2 TKDPO4K_VAL_SOUR_CH2 CH3 TKDPO4K_VAL_SOUR_CH3 CH4 TKDPO4K_VAL_SOUR_CH4 D0 TKDPO4K_VAL_SOUR_D0 D1 TKDPO4K_VAL_SOUR_D1 D2 TKDPO4K_VAL_SOUR_D2 D3 TKDPO4K_VAL_SOUR_D3 D4 TKDPO4K_VAL_SOUR_D4 D5 TKDPO4K_VAL_SOUR_D5 D6 TKDPO4K_VAL_SOUR_D6 D7 TKDPO4K_VAL_SOUR_D7 D8 TKDPO4K_VAL_SOUR_D8 D9 TKDPO4K_VAL_SOUR_D9 D10 TKDPO4K_VAL_SOUR_D10 D11 TKDPO4K_VAL_SOUR_D11 D12 TKDPO4K_VAL_SOUR_D12 D13 TKDPO4K_VAL_SOUR_D13 D14 TKDPO4K_VAL_SOUR_D14 D15 TKDPO4K_VAL_SOUR_D15 None TKDPO4K_VAL_SOUR_NONE               8Rise TKDPO4K_VAL_CLOCK_RISE Fall TKDPO4K_VAL_CLOCK_FALL    �    This function configures the common attributes for sethold triggering. A sethold trigger occurs when a setup and hold violation happens. The sethold attributes include Data Source, Clock Source, Clock Edge, Set Time, and Hold Time.
     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
        Passes the clock source you want to configure.

Valid clock sources: 
For four-channel models:
    TKDPO4K_VAL_SOUR_CH1 (1)  - Channel 1
    TKDPO4K_VAL_SOUR_CH2 (2)  - Channel 2
    TKDPO4K_VAL_SOUR_CH3 (3)  - Channel 3
    TKDPO4K_VAL_SOUR_CH4 (4)  - Channel 4

For two-channel models:
    TKDPO4K_VAL_SOUR_CH1 (1)  - Channel 1
    TKDPO4K_VAL_SOUR_CH2 (2)  - Channel 2

For MSO models:
    TKDPO4K_VAL_SOUR_D0 (50)  - Digital Channel 0
    TKDPO4K_VAL_SOUR_D1 (51)  - Digital Channel 1
    TKDPO4K_VAL_SOUR_D2 (52)  - Digital Channel 2
    TKDPO4K_VAL_SOUR_D3 (53)  - Digital Channel 3
    TKDPO4K_VAL_SOUR_D4 (54)  - Digital Channel 4
    TKDPO4K_VAL_SOUR_D5 (55)  - Digital Channel 5
    TKDPO4K_VAL_SOUR_D6 (56)  - Digital Channel 6
    TKDPO4K_VAL_SOUR_D7 (57)  - Digital Channel 7
    TKDPO4K_VAL_SOUR_D8 (58)  - Digital Channel 8
    TKDPO4K_VAL_SOUR_D9 (59)  - Digital Channel 9
    TKDPO4K_VAL_SOUR_D10(60)  - Digital Channel 10
    TKDPO4K_VAL_SOUR_D11(61)  - Digital Channel 11
    TKDPO4K_VAL_SOUR_D12(62)  - Digital Channel 12
    TKDPO4K_VAL_SOUR_D13(63)  - Digital Channel 13
    TKDPO4K_VAL_SOUR_D14(64)  - Digital Channel 14
    TKDPO4K_VAL_SOUR_D15(65)  - Digital Channel 15

    TKDPO4K_VAL_SOUR_EXT(21)  - External Channel

Default Value: TKDPO4K_VAL_SOUR_CH1    #    Specifies the clock edge polarity for state triggering. 

Valid Values:

  - TKDPO4K_VAL_CLOCK_RISE (1) - This specifies polarity as the 
    clock rising edge.

  - TKDPO4K_VAL_CLOCK_FALL (2) - This specifies polarity as the 
    clock falling edge.

Default Value: TKDPO4K_VAL_CLOCK_RISE    @    Passes the data source you want to configure.

Valid clock sources: 
For four-channel models:
    TKDPO4K_VAL_SOUR_CH1 (1)  - Channel 1
    TKDPO4K_VAL_SOUR_CH2 (2)  - Channel 2
    TKDPO4K_VAL_SOUR_CH3 (3)  - Channel 3
    TKDPO4K_VAL_SOUR_CH4 (4)  - Channel 4

For two-channel models:
    TKDPO4K_VAL_SOUR_CH1 (1)  - Channel 1
    TKDPO4K_VAL_SOUR_CH2 (2)  - Channel 2

For MSO models:
    TKDPO4K_VAL_SOUR_D0 (50)  - Digital Channel 0
    TKDPO4K_VAL_SOUR_D1 (51)  - Digital Channel 1
    TKDPO4K_VAL_SOUR_D2 (52)  - Digital Channel 2
    TKDPO4K_VAL_SOUR_D3 (53)  - Digital Channel 3
    TKDPO4K_VAL_SOUR_D4 (54)  - Digital Channel 4
    TKDPO4K_VAL_SOUR_D5 (55)  - Digital Channel 5
    TKDPO4K_VAL_SOUR_D6 (56)  - Digital Channel 6
    TKDPO4K_VAL_SOUR_D7 (57)  - Digital Channel 7
    TKDPO4K_VAL_SOUR_D8 (58)  - Digital Channel 8
    TKDPO4K_VAL_SOUR_D9 (59)  - Digital Channel 9
    TKDPO4K_VAL_SOUR_D10(60)  - Digital Channel 10
    TKDPO4K_VAL_SOUR_D11(61)  - Digital Channel 11
    TKDPO4K_VAL_SOUR_D12(62)  - Digital Channel 12
    TKDPO4K_VAL_SOUR_D13(63)  - Digital Channel 13
    TKDPO4K_VAL_SOUR_D14(64)  - Digital Channel 14
    TKDPO4K_VAL_SOUR_D15(65)  - Digital Channel 15

    TKDPO4K_VAL_SOUR_EXT(21)  - External Channel

Default Value: TKDPO4K_VAL_SOUR_CH2

Notes:
(1) TKDPO4K_VAL_SOUR_EXT is valid only in DPO models.    w    Passes the setup time for setup and hold violation triggering. The oscilloscope sets the TKDPO4K_ATTR_SETHOLD_SETTIME attribute to this value.

Valid Range:
  For DPO4K models:
    0.0e-9 ~ 8.0 seconds
  For MSO4K models:
    -0.5e-9 ~ 1.0e-3 seconds

Resolution:
  For DPO4K models:
    0.8e-9 seconds
  For MSO4K models:
    0.5e-9 seconds

Default Value: 4.0e-9 seconds     v    Passes the hold time for setup and hold violation triggering. The oscilloscope sets the TKDPO4K_ATTR_SETHOLD_HOLDTIME attribute to this value.

Valid Range:
  For DPO4K models:
    4.0e-9 ~ 8.0 seconds
  For MSO4K models:
    1.0e-9 ~ 1.0e-3 seconds

Resolution:
  For DPO4K models:
    0.8e-9 seconds
  For MSO4K models:
    0.5e-9 seconds

Default Value: 4.0e-9 seconds    RX   �  �    Instrument Handle                S����  �    Status                           Y� > � � �    Clock Source                     ^� >� �       Clock Edge                       ` > % � �    Data Source                      eY � > �  �    Set Time                         f� �Q �  �    Hold Time                              	                     �CH1 TKDPO4K_VAL_SOUR_CH1 CH2 TKDPO4K_VAL_SOUR_CH2 CH3 TKDPO4K_VAL_SOUR_CH3 CH4 TKDPO4K_VAL_SOUR_CH4 D0 TKDPO4K_VAL_SOUR_D0 D1 TKDPO4K_VAL_SOUR_D1 D2 TKDPO4K_VAL_SOUR_D2 D3 TKDPO4K_VAL_SOUR_D3 D4 TKDPO4K_VAL_SOUR_D4 D5 TKDPO4K_VAL_SOUR_D5 D6 TKDPO4K_VAL_SOUR_D6 D7 TKDPO4K_VAL_SOUR_D7 D8 TKDPO4K_VAL_SOUR_D8 D9 TKDPO4K_VAL_SOUR_D9 D10 TKDPO4K_VAL_SOUR_D10 D11 TKDPO4K_VAL_SOUR_D11 D12 TKDPO4K_VAL_SOUR_D12 D13 TKDPO4K_VAL_SOUR_D13 D14 TKDPO4K_VAL_SOUR_D14 D15 TKDPO4K_VAL_SOUR_D15 External TKDPO4K_VAL_SOUR_EXT               8RISE TKDPO4K_VAL_CLOCK_RISE FALL TKDPO4K_VAL_CLOCK_FALL             �CH1 TKDPO4K_VAL_SOUR_CH1 CH2 TKDPO4K_VAL_SOUR_CH2 CH3 TKDPO4K_VAL_SOUR_CH3 CH4 TKDPO4K_VAL_SOUR_CH4 D0 TKDPO4K_VAL_SOUR_D0 D1 TKDPO4K_VAL_SOUR_D1 D2 TKDPO4K_VAL_SOUR_D2 D3 TKDPO4K_VAL_SOUR_D3 D4 TKDPO4K_VAL_SOUR_D4 D5 TKDPO4K_VAL_SOUR_D5 D6 TKDPO4K_VAL_SOUR_D6 D7 TKDPO4K_VAL_SOUR_D7 D8 TKDPO4K_VAL_SOUR_D8 D9 TKDPO4K_VAL_SOUR_D9 D10 TKDPO4K_VAL_SOUR_D10 D11 TKDPO4K_VAL_SOUR_D11 D12 TKDPO4K_VAL_SOUR_D12 D13 TKDPO4K_VAL_SOUR_D13 D14 TKDPO4K_VAL_SOUR_D14 D15 TKDPO4K_VAL_SOUR_D15 External TKDPO4K_VAL_SOUR_EXT    4.0E-9    4.0E-9    A    This function configures the bus source for serial triggering.      �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    C    Specifies BUS source for serial triggering.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1

Notes:
(1) TKDPO4K_VAL_BUS3 and TKDPO4K_VAL_BUS4 are valid only in MSO4K models.
   n�   �  �    Instrument Handle                oL����  �    Status                           v Q � � �    Bus Source                             	                      XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4    �    This function configures the common attributes for I2C triggering. The attributes include BUS Number, Trigger Condition, and Data Direction.      �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Specifies the condition for I2C BUS triggering. The driver sets the TKDPO4K_ATTR_I2C_CONDITION attribute to this value.

Valid Value:
  - TKDPO4K_VAL_I2C_COND_START       - The oscilloscope triggers 
                                       on the start of a packet.

  - TKDPO4K_VAL_I2C_COND_STOP        - The oscilloscope triggers  
                                       on the stop of a packet.

  - TKDPO4K_VAL_I2C_COND_REPEATSTART - The oscilloscope triggers 
                                       on a repeated start of a 
                                       packet.

  - TKDPO4K_VAL_I2C_COND_ACKMISS     - The oscilloscope triggers 
                                       on a missing 
                                       acknowledgement.

  - TKDPO4K_VAL_I2C_COND_ADDRESS     - The oscilloscope triggers 
                                       on the specified address.

  - TKDPO4K_VAL_I2C_COND_DATA        - The oscilloscope triggers 
                                       on the specified data.

  - TKDPO4K_VAL_I2C_COND_ADDRANDDATA - The oscilloscope triggers 
                                       on the specified data and 
                                       address.

Default Value: TKDPO4K_VAL_I2C_COND_ADDRESS    �    Specifies the I2C trigger condition to be valid on a read, write or either packet.

Valid Values:

  - TKDPO4K_VAL_I2C_READ - The oscilloscope triggers on a read 
                            packet.

  - TKDPO4K_VAL_I2C_WRITE - The oscilloscope triggers on a write  
                            packet.

  - TKDPO4K_VAL_I2C_NOCARE - The oscilloscope triggers either on 
                            a read packet or a write packet.

Default Value: TKDPO4K_VAL_I2C_NOCARE    E    Specifies the BUS channel for I2C triggering.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1

Notes:
(1) TKDPO4K_VAL_BUS3 and TKDPO4K_VAL_BUS4 are valid only in MSO4K models.
   y   �  �    Instrument Handle                y�����  �    Status                           �� > � � �    Condition                        �u >u � �    Data Direction                   �T > % � �    Bus Number                             	                    START TKDPO4K_VAL_I2C_COND_START STOP TKDPO4K_VAL_I2C_COND_STOP REPEAT START TKDPO4K_VAL_I2C_COND_REPEATSTART ACK MISS TKDPO4K_VAL_I2C_COND_ACKMISS ADDRESS TKDPO4K_VAL_I2C_COND_ADDRESS DATA TKDPO4K_VAL_I2C_COND_DATA ADDR AND DATA TKDPO4K_VAL_I2C_COND_ADDRANDDATA              TREAD TKDPO4K_VAL_I2C_READ WRITE TKDPO4K_VAL_I2C_WRITE NOCARE TKDPO4K_VAL_I2C_NOCARE               XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4    �    This function configures the I2C address mode and address value for the specified BUS. 

Note: You must call this function when you specify the I2C trigger condition to ADDRESS or ADD AND DATA.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
        Passes the I2C address mode. The driver sets the TKDPO4K_ATTR_I2C_ADDR_MODE attribute to this value.

Valid Values:

  - TKDPO4K_VAL_I2C_ADDR7 -  Seven-bit address mode.
  - TKDPO4K_VAL_I2C_ADDR10 - Ten-bit address mode.

Default Value: TKDPO4K_VAL_I2C_ADDR7    D    Passes the address value to the oscilloscope. The driver sets the TKDPO4K_ATTR_I2C_ADDR_VALUE attribute to this value. 

If you configure the I2C trigger condition to ADDRESS, the oscilloscope triggers when detecting a matching address value. 

If you configure the I2C trigger condition to ADDR AND DATA, the oscilloscope triggers when detecting a matching address and a data value.

Valid Format: You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit with a total length of no more than 64 bits (8 bytes).

For example, if you specify the value as XX1100, the oscilloscope triggers when detecting data equal to 0 in the first two bits and equal to 1 in the next two bits. Higher bits are ignored. So the oscilloscope triggers on both CAN frames with values of 001100 and 111100.

Default Value: XXXXXXX    E    Specifies the BUS channel for I2C triggering.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1

Notes:
(1) TKDPO4K_VAL_BUS3 and TKDPO4K_VAL_BUS4 are valid only in MSO4K models.
   �e   �  �    Instrument Handle                �����  �    Status                           �� >� �       Address Mode                     �� � � �  �    Address Value                    �@ > > � �    Bus Number                             	                      :ADDR7 TKDPO4K_VAL_I2C_ADDR7 ADDR10 TKDPO4K_VAL_I2C_ADDR10    
"XXXXXXX"               XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4    �    This function configures data size and data value for the specified BUS.

Note: You must call this function when you specify the I2C trigger condition to DATA or ADD AND DATA.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    Passes the length of the data string in  bytes to the oscilloscope. The driver sets the TKDPO4K_ATTR_I2C_DATA_SIZE attribute to this value.

Valid Range: 1 ~ 12 bytes.

Default Value: 1    ?    Passes I2C bus data value to the oscilloscope. The driver sets the TKDPO4K_ATTR_I2C_DATA_VALUE attribute to this value. 

If you configure the I2C trigger condition to DATA, the oscilloscope triggers when detecting a matching data value.

If you configure the I2C trigger condition to ADDR AND DATA, the oscilloscope triggers when detecting a matching address and a data value.

Valid Format: You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit with a total length of no more than 64 bits (8 bytes).

For example, if you specify the value as XX1100, the oscilloscope triggers when detecting data equal to 0 in the first two bits and equal to 1 in the next two bits. Higher bits are ignored. So the oscilloscope triggers on both CAN frames with values of 001100 and 111100.

Default Value: XXXXXXXX    E    Specifies the BUS channel for I2C triggering.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1

Notes:
(1) TKDPO4K_VAL_BUS3 and TKDPO4K_VAL_BUS4 are valid only in MSO4K models.
   �   �  �    Instrument Handle                ������  �    Status                           �� >Q �  �    Data Size                        �b � p � ,    Data Value                       �� > > � �    Bus Number                             	           1    "XXXXXXXX"               XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4    �    This function configures the common attributes for SPI triggering. The attributes include BUS Number, Trigger Condition, Data Size, MISO Value, and MOSI Value.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Passes the SPI trigger condition for the specified BUS. The driver sets the TKDPO4K_ATTR_SPI_CONDITION attribute to this value.

Valid Values:

  - TKDPO4K_VAL_SPI_SS (1)       - Specifies SS line as SPI 
                                   trigger source.

  - TKDPO4K_VAL_SPI_MOSI (2)     - Specifies MOSI line as SPI 
                                   trigger source.

  - TKDPO4K_VAL_SPI_MISO (3)     - Specifies MISO line as SPI 
                                   trigger source.

  - TKDPO4K_VAL_SPI_MISOMOSI (4) - Specifies MISOMOSI line as 
                                   SPI trigger source.

Default Value: TKDPO4K_VAL_SPI_MOSI     �    Passes the length of the data string in bytes to the oscilloscope. The driver sets the TKDPO4K_ATTR_SPI_DATA_SIZE attribute to this value.

Valid Range: 1 ~ 16 bytes.

Default Value: 1 byte.    R    Passes the MISO data value to the oscilloscope. The driver sets the TKDPO4K_ATTR_SPI_MISO_VALUE attribute to this value.

If you configure the I2C trigger condition to MISO, the oscilloscope triggers when detecting a matching MISO data value.

If you configure the I2C trigger condition to MISO AND MOSI, the oscilloscope triggers when detecting a matching MISO data value and an MOSI data value.

Valid Format: You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit with a total length of no more than 64 bits (8 bytes).

For example, if you specify the value as XX1100, the oscilloscope triggers when detecting data equal to 0 in the first two bits and equal to 1 in the next two bits. Higher bits are ignored. So the oscilloscope triggers on both CAN frames with values of 001100 and 111100.

Default Value: XXXXXXXX    R    Passes the MOSI data value to the oscilloscope. The driver sets the TKDPO4K_ATTR_SPI_MOSI_VALUE attribute to this value.

If you configure the I2C trigger condition to MOSI, the oscilloscope triggers when detecting a matching MOSI data value.

If you configure the I2C trigger condition to MISO AND MOSI, the oscilloscope triggers when detecting a matching MISO data value and an MOSI data value.

Valid Format: You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit with a total length of no more than 64 bits (8 bytes).

For example, if you specify the value as XX1100, the oscilloscope triggers when detecting data equal to 0 in the first two bits and equal to 1 in the next two bits. Higher bits are ignored. So the oscilloscope triggers on both CAN frames with values of 001100 and 111100.

Default Value: XXXXXXXX    E    Specifies the BUS channel for SPI triggering.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1

Notes:
(1) TKDPO4K_VAL_BUS3 and TKDPO4K_VAL_BUS4 are valid only in MSO4K models.
   �2   �  �    Instrument Handle                ������  �    Status                           �� > � � �    Condition                        �@ >u �  �    Data Size                        � p p � ,    MISO Value                       �b � p � ,    MOSI Value                       �� > % � �    Bus Number                             	                     qSS TKDPO4K_VAL_SPI_SS MOSI TKDPO4K_VAL_SPI_MOSI MISO TKDPO4K_VAL_SPI_MISO MISO AND MOSI TKDPO4K_VAL_SPI_MISOMOSI    1    "XXXXXXXX"    "XXXXXXXX"               XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4    }    This function configures the common attributes for CAN triggering. The attributes include BUS Number and Trigger Condition.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    @    Passes the CAN bus trigger condition to the oscilloscope for the specified BUS. The driver sets the TKDPO4K_ATTR_CAN_CONDITION attribute to this value.

Valid Values:

  - TKDPO4K_VAL_CAN_COND_SOF  - The oscilloscope triggers on the 
                                start of frame.

  - TKDPO4K_VAL_CAN_COND_FRAMETYPE - The oscilloscope triggers 
                                on the type of frame.

  - TKDPO4K_VAL_CAN_COND_IDENTIFIER - The oscilloscope triggers 
                                on a matching identifier.

  - TKDPO4K_VAL_CAN_COND_DATA - The oscilloscope triggers on 
                                matching data.

  - TKDPO4K_VAL_CAN_COND_IDANDDATA - The oscilloscope triggers 
                                on a matching identifier and 
                                matching data.

  - TKDPO4K_VAL_CAN_COND_EOF - The oscilloscope triggers on the 
                                end of frame.

  - TKDPO4K_VAL_CAN_COND_ACKMISS - The oscilloscope triggers on 
                                a missing acknowledgement.

Default Value: TKDPO4K_VAL_CAN_COND_SOF    E    Specifies the BUS channel for CAN triggering.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1

Notes:
(1) TKDPO4K_VAL_BUS3 and TKDPO4K_VAL_BUS4 are valid only in MSO4K models.
   �   �  �    Instrument Handle                ������  �    Status                           Ȝ >Q � �    Condition                        �� > > � �    Bus Number                             	                     �SOF TKDPO4K_VAL_CAN_COND_SOF FRAME TYPE TKDPO4K_VAL_CAN_COND_FRAMETYPE IDENTIFIER TKDPO4K_VAL_CAN_COND_IDENTIFIER DATA TKDPO4K_VAL_CAN_COND_DATA ID AND DATA TKDPO4K_VAL_CAN_COND_IDANDDATA EOF TKDPO4K_VAL_CAN_COND_EOF ACK MISS TKDPO4K_VAL_CAN_COND_ACKMISS               XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4    �    This function configures the CAN identifier mode and identifier value for the specified BUS. 

Note: You must call this function when you specify the CAN trigger condition to IDENTIFIER or ID AND DATA.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Passes the CAN address mode to the oscilloscope for the specified BUS. The driver sets the TKDPO4K_ATTR_CAN_ID_MODE attribute to this value.

Valid Values:

  - TKDPO4K_VAL_CAN_ID_STANDARD - Specifies the identifier to 
                                  the standard mode (11 bits).

  - TKDPO4K_VAL_CAN_ID_EXTENDED - Specifies the identifier to 
                                  the extended mode (29 bits).

Default Value: TKDPO4K_VAL_CAN_ID_STANDARD    T    Passes the Identifier Value to the oscilloscope. The driver sets the TKDPO4K_ATTR_CAN_ID_VALUE attribute to this value.

If you configure the CAN trigger condition to IDENTIFIER, the oscilloscope triggers when detecting a matching identifier value.

If you configure the CAN trigger condition to ID AND DATA, the oscilloscope triggers when detecting a matching identifier value and a data value.

Valid Format: You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit with a total length of no more than 64 bits (8 bytes).

For example, if you specify the value as XX1100, the oscilloscope triggers when detecting data equal to 0 in the first two bits and equal to 1 in the next two bits. Higher bits are ignored. So the oscilloscope triggers on both CAN frames with values of 001100 and 111100.

Default Value: XXXXXXXXXXX    E    Specifies the BUS channel for CAN triggering.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1

Notes:
(1) TKDPO4K_VAL_BUS3 and TKDPO4K_VAL_BUS4 are valid only in MSO4K models.
   �]   �  �    Instrument Handle                �����  �    Status                           �� >� �       ID Mode                          گ � � � ,    ID Value                         � > > � �    Bus Number                             	                      JSTANDARD TKDPO4K_VAL_CAN_ID_STANDARD EXTENDED TKDPO4K_VAL_CAN_ID_EXTENDED    "XXXXXXXXXXX"               XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4    �    This function configures the CAN data size and data value for the specified BUS. 

Note: You must call this function when you specify the CAN trigger condition to DATA or ID AND DATA.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    Passes the length of the data string in bytes to the oscilloscope for the specified BUS.

Valid Range: 1 ~ 8 bytes.

Default Value: 1 byte.         Passes the binary data string to the oscilloscope for the specified BUS.

If you configure the CAN trigger condition to DATA, the oscilloscope triggers when detecting a matching data value.

If you configure the CAN trigger condition to ID AND DATA, the oscilloscope triggers when detecting a matching identifier and a data value.

Valid Format: You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit with a total length of no more than 64 bits (8 bytes).

For example, if you specify the value as XX1100, the oscilloscope triggers when detecting data equal to 0 in the first two bits and equal to 1 in the next two bits. Higher bits are ignored. So the oscilloscope triggers on both CAN frames with values of 001100 and 111100. 

Default Value: XXXXXXXX                   E    Specifies the BUS channel for CAN triggering.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1

Notes:
(1) TKDPO4K_VAL_BUS3 and TKDPO4K_VAL_BUS4 are valid only in MSO4K models.
   �   �  �    Instrument Handle                �����  �    Status                           � >Q �  �    Data Size                        � � p � ,    Data Value                       �C > > � �    Bus Number                             	           1    "XXXXXXXX"               XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4    �    This function configures the frame type for the specified BUS.

Note: You should call this function when you specify the CAN trigger condition to FRAME TYPE.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Passes the CAN frame type to the oscilloscope for the specified BUS. The driver sets the TKDPO4K_ATTR_CAN_FRAMETYPE attribute to this value.

Valid Values: 

  - TKDPO4K_VAL_CAN_FRAME_DATA     - Data Frame
  - TKDPO4K_VAL_CAN_FRAME_REMOTE   - Remote Frame
  - TKDPO4K_VAL_CAN_FRAME_ERROR    - Error Frame
  - TKDPO4K_VAL_CAN_FRAME_OVERLOAD - Overload Frame

Default Value: TKDPO4K_VAL_CAN_FRAME_DATA    E    Specifies the BUS channel for CAN triggering.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1

Notes:
(1) TKDPO4K_VAL_BUS3 and TKDPO4K_VAL_BUS4 are valid only in MSO4K models.
   ��   �  �    Instrument Handle                �����  �    Status                           �M >Q � �    Frame Type                       �� > > � �    Bus Number                             	                      �DATA FRAME TKDPO4K_VAL_CAN_FRAME_DATA REMOTE FRAME TKDPO4K_VAL_CAN_FRAME_REMOTE ERROR FRAME TKDPO4K_VAL_CAN_FRAME_ERROR OVERLOAD FRAME TKDPO4K_VAL_CAN_FRAME_OVERLOAD               XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4    :    This function configures scope for serial RS232 trigger.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Specifies the condition for a RS232C trigger.

Valid Values: 

  - TKDPO4K_VAL_RS232_RX_START     - RX Start Bit
  - TKDPO4K_VAL_RS232_RX_DATA      - RX Data
  - TKDPO4K_VAL_RS232_RX_END_PACKET- RX End of Packet
  - TKDPO4K_VAL_RS232_TX_START     - TX Start Bit
  - TKDPO4K_VAL_RS232_TX_DATA      - TX Data
  - TKDPO4K_VAL_RS232_TX_END_PACKET- TX End of Packet

Default Value: TKDPO4K_VAL_RS232_RX_START     �    Specifies the length of the data string in bytes for a RS232 trigger if the trigger condition is RXDATA.

Valid Range: 1 ~ 128

Default Value: 1    #    Specifies the binary data string for a RS232 trigger if the trigger condition involves RX.

You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit with a total length of no more than 80 bits (10 bytes). For example, if you specify the value as XX1100, the oscilloscope triggers when detecting data equal to 0 in the first two bits and equal to 1 in the next two bits. The oscilloscope ignores higher bits and triggers on both RS232 frames with values of 001100, 011100, 101100, and 111100.

Default Value: "XXXXXXXX"     �    Specifies the length of the data string in bytes for a RS232 trigger if the trigger condition is TXDATA.

Valid Range: 1 ~ 128

Default Value: 1    #    Specifies the binary data string for a RS232 trigger if the trigger condition involves TX.

You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit with a total length of no more than 80 bits (10 bytes). For example, if you specify the value as XX1100, the oscilloscope triggers when detecting data equal to 0 in the first two bits and equal to 1 in the next two bits. The oscilloscope ignores higher bits and triggers on both RS232 frames with values of 001100, 011100, 101100, and 111100.

Default Value: "XXXXXXXX"    G    Specifies the BUS channel for RS232 triggering.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1

Notes:
(1) TKDPO4K_VAL_BUS3 and TKDPO4K_VAL_BUS4 are valid only in MSO4K models.
   �u   �  �    Instrument Handle                �*����  �    Status                           � > � � �    Condition                        � >� �  �    RX Size                          / �  �  �    RX Value                         	Z � � �  �    TX Size                          	� �� �  �    TX Value                          >  � �    Bus Number                             	                      �RX Start Bit TKDPO4K_VAL_RS232_RX_START RX Data TKDPO4K_VAL_RS232_RX_DATA RX End of Packet TKDPO4K_VAL_RS232_RX_END_PACKET TX Start Bit TKDPO4K_VAL_RS232_TX_START TX Data TKDPO4K_VAL_RS232_TX_DATA TX End of Packet TKDPO4K_VAL_RS232_TX_END_PACKET    1    "XXXXXXXX"    1    "XXXXXXXX"               XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4    m    This function configures scope for parallel trigger.

Notes:
(1) This function is valid only in MSO models.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
        Specifies the binary data string for a parallel trigger.

You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit with a total length of no more than 80 bits (10 bytes). For example, if you specify the value as XX1100, the oscilloscope triggers when detecting data equal to 0 in the first two bits and equal to 1 in the next two bits. The oscilloscope ignores higher bits and triggers on both RS232 frames with values of 001100, 011100, 101100, and 111100.

Default Value: "XXXXXXXX"     �    Specifies the BUS channel for parallel triggering.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1   -   �  �    Instrument Handle                �����  �    Status                           � >) �  �    Value                            � > > � �    Bus Number                             	           "XXXXXXXX"               XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4    �    Configures USB trigger settings for an oscilloscope. 

Note:
This function only applies to DPO4034B, DPO4054B, DPO4104B, MSO4034B, MSO4054B, MSO4104B.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Specifies the split transaction field to trigger on.

Valid Values: 
TKDPO4K_VAL_USB_START_END_NOCARE    - No Care   
TKDPO4K_VAL_USB_START_END_FULLSP    - Full Speed
TKDPO4K_VAL_USB_START_END_LOWSP     - Low Speed
TKDPO4K_VAL_USB_START_END_ISOSTART  - ISO Start
TKDPO4K_VAL_USB_START_END_ISOMID    - ISO Middle
TKDPO4K_VAL_USB_START_END_ISOEND    - ISO End
TKDPO4K_VAL_USB_START_END_ISOALL    - ISO All 

Default Value: 
TKDPO4K_VAL_USB_START_END_NOCARE     �    Specifies binary data string to be used for USB trigger when triggering on a split transaction hub address.

You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit.

Default Value: "XXXXXXX"    E    Specifies the BUS channel for USB triggering.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1

Notes:
(1) TKDPO4K_VAL_BUS3 and TKDPO4K_VAL_BUS4 are valid only in MSO4K models.
     �    Specifies binary data string to be used for USB trigger when triggering on a split transaction port address.

You can specify 0 (dominant bit), 1 (recessive bit), or X (do not care) to each bit.

Default Value: "XXXXXXX"     �    Specifies the split transaction field to trigger on.

Valid Values: 
TKDPO4K_VAL_USB_NOCARE    - No Care   
TKDPO4K_VAL_USB_SSPLIT    - S Split
TKDPO4K_VAL_USB_CSPLIT    - C Split

Default Value: 
TKDPO4K_VAL_USB_NOCARE    3    Specifies the split transaction field to trigger on.

Valid Values: 
TKDPO4K_VAL_USB_END_NOCARE   - No Care   
TKDPO4K_VAL_USB_END_CONTR    - Control
TKDPO4K_VAL_USB_END_ISO      - ISO
TKDPO4K_VAL_USB_END_BULK     - Bulk
TKDPO4K_VAL_USB_END_INTERRUPT- Interrupt

Default Value: 
TKDPO4K_VAL_USB_END_NOCARE   �   �  �    Instrument Handle                f����  �    Status                           %4 {  � �    Split Transaction Start/End      ' > � �  �    Split Transaction Hub Address    '� >  � �    Bus Number                       )6 >� �  �    Split Transaction Port Address   * { � � �    Split Transaction Field          + {� � �    Split Transaction Endoiubt             	                     *No Care TKDPO4K_VAL_USB_START_END_NOCARE Full Speed TKDPO4K_VAL_USB_START_END_FULLSP Low Speed TKDPO4K_VAL_USB_START_END_LOWSP ISO Start TKDPO4K_VAL_USB_START_END_ISOSTART ISO Middle TKDPO4K_VAL_USB_START_END_ISOMID ISO End TKDPO4K_VAL_USB_START_END_ISOEND ISO All TKDPO4K_VAL_USB_START_END_ISOALL    
"XXXXXXX"               XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4    
"XXXXXXX"               gNo Care TKDPO4K_VAL_USB_START_END_NOCARE S Split TKDPO4K_VAL_USB_SSPLIT C Split TKDPO4K_VAL_USB_CSPLIT               �No Care TKDPO4K_VAL_USB_END_NOCARE Control TKDPO4K_VAL_USB_END_CONTR ISO TKDPO4K_VAL_USB_END_ISO Bulk TKDPO4K_VAL_USB_END_BULK Interrupt TKDPO4K_VAL_USB_END_INTERRUPT   ,    This function configures a math channel for standard waveform math operations. These operations are inverting, adding, subtracting, multiplying, dividing, integrating, and taking a derivative.

Note: To configure a math channel to calculate an FFT, use the tkdpo4k_ConfigureMathChannelFFT function.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    s    Passes the name of the channel to use for the first math source.

Valid Channel Names: 
For four-channel models:
 - TKDS30XX_VAL_CH_1 ("CH1") - Channel 1
 - TKDS30XX_VAL_CH_2 ("CH2") - Channel 2
 - TKDS30XX_VAL_CH_3 ("CH3") - Channel 3
 - TKDS30XX_VAL_CH_4 ("CH4") - Channel 4
 - TKDS30XX_VAL_REF_1 ("REF1") - Reference 1
 - TKDS30XX_VAL_REF_2 ("REF2") - Reference 2
 - TKDS30XX_VAL_REF_3 ("REF3") - Reference 3
 - TKDS30XX_VAL_REF_4 ("REF4") - Reference 4

For two-channel models:
 - TKDS30XX_VAL_CH_1 ("CH1") - Channel 1
 - TKDS30XX_VAL_CH_2 ("CH2") - Channel 2
 - TKDS30XX_VAL_REF_1 ("REF1") - Reference 1
 - TKDS30XX_VAL_REF_2 ("REF2") - Reference 2
 - TKDS30XX_VAL_REF_3 ("REF3") - Reference 3
 - TKDS30XX_VAL_REF_4 ("REF4") - Reference 4

Default Value: TKDS30XX_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.    ~    Passes the name of the channel to use for the second math source. The oscilloscope uses this channel if you pass one of the dual waveform math functions for the Math Function parameter. The dual waveform math functions are TKDS30XX_VAL_MATH_ADD, TKDS30XX_VAL_MATH_SUBTRACT, TKDS30XX_VAL_MATH_MULTIPLY, and TKDS30XX_VAL_MATH_DIVIDE.

Valid Channel Names: 
For four-channel models:
 - TKDS30XX_VAL_CH_1 ("CH1") - Channel 1
 - TKDS30XX_VAL_CH_2 ("CH2") - Channel 2
 - TKDS30XX_VAL_CH_3 ("CH3") - Channel 3
 - TKDS30XX_VAL_CH_4 ("CH4") - Channel 4
 - TKDS30XX_VAL_REF_1 ("REF1") - Reference 1
 - TKDS30XX_VAL_REF_2 ("REF2") - Reference 2
 - TKDS30XX_VAL_REF_3 ("REF3") - Reference 3
 - TKDS30XX_VAL_REF_4 ("REF4") - Reference 4

For two-channel models:
 - TKDS30XX_VAL_CH_1 ("CH1") - Channel 1
 - TKDS30XX_VAL_CH_2 ("CH2") - Channel 2
 - TKDS30XX_VAL_REF_1 ("REF1") - Reference 1
 - TKDS30XX_VAL_REF_2 ("REF2") - Reference 2
 - TKDS30XX_VAL_REF_3 ("REF3") - Reference 3
 - TKDS30XX_VAL_REF_4 ("REF4") - Reference 4

Default Value: TKDS30XX_VAL_CH_2

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.    �    Passes the math function you want the oscilloscope to perform.

Valid Values:

- TKDPO4K_VAL_MATH_ADD (1)      - Specifies ADD operation for 
                                  dual waveform path.

- TKDPO4K_VAL_MATH_SUBTRACT (2) - Specifies SUBTRACT operation 
                                  for dual waveform path.

- TKDPO4K_VAL_MATH_MULTIPLY (3) - Specifies MULTIPLY operation 
                                  for dual waveform path.

- TKDPO4K_VAL_MATH_DIVIDE (4)   - Specifies DIVIDE operation for 
                                  dual waveform path.

- TKDPO4K_VAL_MATH_FFT (5)      - Specifies FFT operation for 
                                  FFT waveform path.

Default Value: TKDPO4K_VAL_MATH_ADD   2   �  �    Instrument Handle                2�����  �    Status                           9� > % � �    Math Source1                     = >j � �    Math Source2                     A� 3 �       Math Function                          	                      �CH1 TKDPO4K_VAL_SOUR_CH1 CH2 TKDPO4K_VAL_SOUR_CH2 CH3 TKDPO4K_VAL_SOUR_CH3 CH4 TKDPO4K_VAL_SOUR_CH4 REF1 TKDPO4K_VAL_SOUR_REF1 REF2 TKDPO4K_VAL_SOUR_REF2 REF3 TKDPO4K_VAL_SOUR_REF3 REF4 TKDPO4K_VAL_SOUR_REF4              �CH1 TKDPO4K_VAL_SOUR_CH1 CH2 TKDPO4K_VAL_SOUR_CH2 CH3 TKDPO4K_VAL_SOUR_CH3 CH4 TKDPO4K_VAL_SOUR_CH4 REF1 TKDPO4K_VAL_SOUR_REF1 REF2 TKDPO4K_VAL_SOUR_REF2 REF3 TKDPO4K_VAL_SOUR_REF3 REF4 TKDPO4K_VAL_SOUR_REF4               rADD TKDPO4K_VAL_MATH_ADD SUB TKDPO4K_VAL_MATH_SUBTRACT MULT TKDPO4K_VAL_MATH_MULTIPLY DIV TKDPO4K_VAL_MATH_DIVIDE    >    This function configures a math channel to calculate an FFT.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Passes the name of the channel for which you want the oscilloscope to calculate an FFT.

Valid Channel Names: 
For four-channel models:
 - TKDS30XX_VAL_CH_1 ("CH1") - Channel 1
 - TKDS30XX_VAL_CH_2 ("CH2") - Channel 2
 - TKDS30XX_VAL_CH_3 ("CH3") - Channel 3
 - TKDS30XX_VAL_CH_4 ("CH4") - Channel 4
 - TKDS30XX_VAL_REF_1 ("REF1") - Reference 1
 - TKDS30XX_VAL_REF_2 ("REF2") - Reference 2
 - TKDS30XX_VAL_REF_3 ("REF3") - Reference 3
 - TKDS30XX_VAL_REF_4 ("REF4") - Reference 4

For two-channel models:
 - TKDS30XX_VAL_CH_1 ("CH1") - Channel 1
 - TKDS30XX_VAL_CH_2 ("CH2") - Channel 2
 - TKDS30XX_VAL_REF_1 ("REF1") - Reference 1
 - TKDS30XX_VAL_REF_2 ("REF2") - Reference 2
 - TKDS30XX_VAL_REF_3 ("REF3") - Reference 3
 - TKDS30XX_VAL_REF_4 ("REF4") - Reference 4

Default Value: TKDS30XX_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.    P    Passes the window type you want the oscilloscope to use for the FFT.

Valid Values: 

- TKDPO4K_VAL_MATH_HANNING (1)       -   Rectangular
- TKDPO4K_VAL_MATH_RECTANGULAR (2)   -   Blackman-Harris
- TKDPO4K_VAL_MATH_HAMMING (3)       -   Hanning
- TKDPO4K_VAL_MATH_BLACK_HARRIS (4)  -   Hamming

Default Value: TKDPO4K_VAL_MATH_HANNING    �    Passes the vertical scale you want the oscilloscope to use for the FFT.

Valid Values:
 
- TKDPO4K_VAL_MATH_DBV_RMS (1)    -  The oscilloscope displays 
  the magnitude using a log scale, expressed in dB relative to 1
  VRMS where 0 dB = 1 VRMS.

- TKDPO4K_VAL_MATH_LINEAR_RMS (2) -  The oscilloscope displays
  the magnitude using voltage as the scale.

Default Value: TKDPO4K_VAL_MATH_DBV_RMS   H   �  �    Instrument Handle                H�����  �    Status                           O� > > � �    Math Source1                     S >Q � �    FFT Window                       Ts � �       Vert Scale                             	                      �CH1 TKDPO4K_VAL_SOUR_CH1 CH2 TKDPO4K_VAL_SOUR_CH2 CH3 TKDPO4K_VAL_SOUR_CH3 CH4 TKDPO4K_VAL_SOUR_CH4 REF1 TKDPO4K_VAL_SOUR_REF1 REF2 TKDPO4K_VAL_SOUR_REF2 REF3 TKDPO4K_VAL_SOUR_REF3 REF4 TKDPO4K_VAL_SOUR_REF4               �HANNING TKDPO4K_VAL_MATH_HANNING RECTANGULAR TKDPO4K_VAL_MATH_RECTANGULAR HAMMING TKDPO4K_VAL_MATH_HAMMING BLACK HARRIS TKDPO4K_VAL_MATH_BLACK_HARRIS               @DBV TKDPO4K_VAL_MATH_DBV_RMS LINEAR TKDPO4K_VAL_MATH_LINEAR_RMS    �    This function configures a math channel in the advanced mode. You can define function expression and add variables to the expression in the advanced mode.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Specifies the value of a user-defined math variable that can be used as part of an advanced math waveform expression. The driver sets the TKDPO4K_ATTR_ADV_VAR1 attribute to this value.

For example, if you specify an advanced math expression as CH1*VAR1, and you specify advanced VAR1 as 2, the math channel outputs a waveform calculated by CH1*2.

Valid Ranges: -9.9E15 ~ 9.9E15

Default Value: 0    �    Specifies the value of a user-defined math variable that can be used as part of an advanced math waveform expression. The driver sets the TKDPO4K_ATTR_ADV_VAR2 attribute to this value.

For example, if you specify an advanced math expression as CH1*VAR2, and you specify advanced VAR2 as 2, the math channel outputs a waveform calculated by CH1*2.

Valid Ranges: -9.9E15 ~ 9.9E15

Default Value: 0    �    Specifies the advanced math function as a text string. You can specify a math expression from waveforms, measurements and scalar sources, functions, operands, and numerical constants. Math expressions can be very complex. As an example, you can enter the expression Log(Ch1+Ch2), which specifies that the signals from channels 1 and 2 are to be algebraically added, and the base 10 log of the sum is to be shown as the final math waveform.   Y�   �  �    Instrument Handle                ZL����  �    Status                           a > > �  �    VAR1                             b� >Q �  �    VAR2                             dH � � �  �    Function Definition                    	           0    0    
"CH1+CH2"    P    This function configures whether display the math channel on the oscilloscope.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    Specify whether you want the oscilloscope to display the math channel. The driver sets the TKDPO4K_ATTR_CHANNEL_ENABLED attribute to this value. 
 
Valid Values:
VI_TRUE
VI_FALSE

Default Value:
VI_TRUE   g�   �  �    Instrument Handle                hF����  �    Status                           o W � �       Enable                                 	          ON VI_TRUE OFF VI_FALSE    9    This function stores a waveform in a reference channel.    �    Passes the name of the channel that you want the oscilloscope to store in the reference channel.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH") - Math

Default Value: TKDPO4K_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.    �    Passes the name of the reference channel into which you want the oscilloscope to store the waveform that you specify with the Waveform Source parameter.

Valid Channel Names: 
    TKDPO4K_VAL_REF_1 ("REF1") - Reference 1
    TKDPO4K_VAL_REF_2 ("REF2") - Reference 2
    TKDPO4K_VAL_REF_3 ("REF3") - Reference 3
    TKDPO4K_VAL_REF_4 ("REF4") - Reference 4

Default Value: TKDPO4K_VAL_REF_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
   p� G V � �    Waveform Source                  s� G2 � �    Reference Channel                u�   �  �    Instrument Handle                vB����  �    Status                                     	   �CH1 TKDPO4K_VAL_CH_1 CH2 TKDPO4K_VAL_CH_2 CH3 TKDPO4K_VAL_CH_3 CH4 TKDPO4K_VAL_CH_4 REF1 TKDPO4K_VAL_REF_1 REF2 TKDPO4K_VAL_REF_2 REF3 TKDPO4K_VAL_REF_3 REF4 TKDPO4K_VAL_REF_4 MATH TKDPO4K_VAL_MATH               \REF1 TKDPO4K_VAL_REF_1 REF2 TKDPO4K_VAL_REF_2 REF3 TKDPO4K_VAL_REF_3 REF4 TKDPO4K_VAL_REF_4        	          h    This function enables or disables a reference channel.

Notes:

(1) You can enable a reference channel only after you store a waveform to the reference channel. Use the  tkdpo4k_StoreWfmToRefChannel functions to store a waveform to a reference channel.

(2) Disabling a reference channel does not clear the waveform that you stored in that reference channel.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
    �    Passes the name of the channel that you want the oscilloscope to store in the reference channel.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH") - Math

Default Value: TKDPO4K_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.     �    Specifies whether you want to enable the reference channel. The driver sets the TTKDPO4K_ATTR_CHANNEL_ENABLED attribute to this value. 
 
Valid Values:
VI_TRUE
VI_FALSE

Default Value:
VI_TRUE   ��   �  �    Instrument Handle                �[����  �    Status                           �+ > W � �    Channel Name                     �� >� �       Enable                                 	                      \REF1 TKDPO4K_VAL_REF_1 REF2 TKDPO4K_VAL_REF_2 REF3 TKDPO4K_VAL_REF_3 REF4 TKDPO4K_VAL_REF_4   ON VI_TRUE OFF VI_FALSE   J    This function configures the reference levels for waveform measurements.  

Note: You must call this function before you call the tkdpo4k_ReadWaveformMeasurement or tkdpo4k_FetchWaveformMeasurement functions to take a rise time, fall time, width negative, width positive, duty cycle negative, or duty cycle positive measurement.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
        Passes the low reference you want the oscilloscope to use for waveform measurements. The driver sets the TKDPO4K_ATTR_MEAS_LOW_REF attribute to this value.

Units: A percentage of the difference between the Voltage High and Voltage Low.

Valid Range: 0.0 to 100.0

Resolution: 1.0

Default Value: 10.0

Notes:

(1) The oscilloscope calculates the Voltage High and the Voltage Low using either the min/max or histogram method. The min/max method uses the maximum and minimum values found. The histogram method uses the most common values found above and below the middle of the waveform.

(2) Use the tkdpo4k_ConfigureMeasurement function to configure whether the oscilloscope uses the min/max or histogram method to calculate the voltage that corresponds the Voltage High and Voltage Low levels.        Passes the mid reference you want the oscilloscope to use for waveform measurements. The driver sets the TKDPO4K_ATTR_MEAS_MID_REF attribute to this value.

Units: A percentage of the difference between the Voltage High and Voltage Low.

Valid Range: 0.0 to 100.0

Resolution: 1.0

Default Value: 50.0

Notes:

(1) The oscilloscope calculates the Voltage High and the Voltage Low using either the min/max or histogram method. The min/max method uses the maximum and minimum values found. The histogram method uses the most common values found above and below the middle of the waveform.

(2) Use the tkdpo4k_ConfigureMeasurement function to configure whether the oscilloscope uses the min/max or histogram method to calculate the voltage that corresponds the Voltage High and Voltage Low levels.        Passes the high reference you want the oscilloscope to use for waveform measurements. The driver sets the TKDPO4K_ATTR_MEAS_HIGH_REF attribute to this value.

Units: A percentage of the difference between the Voltage High and Voltage Low.

Valid Range: 0.0 to 100.0

Resolution: 1.0

Default Value: 90.0

Notes:

(1) The oscilloscope calculates the Voltage High and the Voltage Low using either the min/max or histogram method. The min/max method uses the maximum and minimum values found. The histogram method uses the most common values found above and below the middle of the waveform.

(2) Use the tkdpo4k_ConfigureMeasurement function to configure whether the oscilloscope uses the min/max or histogram method to calculate the voltage that corresponds the Voltage High and Voltage Low levels.   �T   �  �    Instrument Handle                �	����  �    Status                           �� = % �  �    Low Ref (percentage)             �� = � �  �    Mid Ref (percentage)             �# =u �  �    High Ref (percentage)                  	           10.0    50.0    90.0    =    This function configures an immediate delay measurement.


     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
        Passes the mid reference you want the oscilloscope to use for waveform measurements. The driver sets the TKDPO4K_ATTR_MEAS_MID2_REF attribute to this value.

Units: A percentage of the difference between the Voltage High and Voltage Low.

Valid Range: 0.0 to 100.0

Resolution: 1.0

Default Value: 50.0

Notes:

(1) The oscilloscope calculates the Voltage High and the Voltage Low using either the min/max or histogram method. The min/max method uses the maximum and minimum values found. The histogram method uses the most common values found above and below the middle of the waveform.

(2) Use the tkdpo4k_ConfigureMeasurement function to configure whether the oscilloscope uses the min/max or histogram method to calculate the voltage corresponding to the Voltage High and Voltage Low levels.   ��   �  �    Instrument Handle                �v����  �    Status                           �F > � �  �    Mid Ref (percentage)                   	           50.0    �    This function configures the method the oscilloscope uses to calculate the measurement reference levels and controls the gating method for measurements.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    X    Specifies the method the oscilloscope uses to calculate the voltages corresponding to the 0.0% and 100.0% reference levels.  The driver sets the TKDPO4K_ATTR_MEAS_REF_CALC_METH attribute to this value.

Valid Values:

- TKDPO4K_VAL_MEAS_HISTOGRAM (1):  Sets the 100.0% and 0.0% 
  waveform levels statistically using a histogram algorithm.

- TKDPO4K_VAL_MEAS_MIN_MAX   (2):  Sets the 100.0% and 0.0%
  waveform levels to MAX and MIN respectively.

- TKDPO4K_VAL_MEAS_AUTO      (3): Auto chooses the best method 
  (HISTOGRAM or MINMAX) for each dataset.

Default Value: TKDPO4K_VAL_MEAS_HISTOGRAM
        Specifies whether and how the oscilloscope uses gating for the measurement. The driver sets the TKDPO4K_ATTR_MEAS_GATING attribute to this value.

Valid Values: 

  - TKDPO4K_VAL_MEAS_GATING_OFF - Turns off measurement gating.

  - TKDPO4K_VAL_MEAS_GATING_SCREEN - Limits measurements to the 
    portion of the waveform displayed on the screen.

  - TKDPO4K_VAL_MEAS_GATING_CURSOR - Limits measurements to the
    portion of the waveform between the vertical bar cursors.

Default Value: TKDPO4K_VAL_MEAS_GATING_OFF   ������  �    Status                           ��   �  �    Instrument Handle                �J T � �  �    Reference Level Calc Method      �� Q� �       Gating                             	                         hHistogram TKDPO4K_VAL_MEAS_HISTOGRAM Min/Max TKDPO4K_VAL_MEAS_MIN_MAX Auto Select TKDPO4K_VAL_MEAS_AUTO               �Gating Off TKDPO4K_VAL_MEAS_GATING_OFF Gating Screen TKDPO4K_VAL_MEAS_GATING_SCREEN Gating Cursor TKDPO4K_VAL_MEAS_GATING_CURSOR    Q    This function configures the oscilloscope to perform a continuous acquisition.      �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
     |    Turns the instrument acquisition continuous setting on or off.

Valid Values:  VI_TRUE or VI_FALSE

Default Value: VI_TRUE   ��   �  �    Instrument Handle                ������  �    Status                            Z �       Continuous Acquisition                 	          ON VI_TRUE OFF VI_FALSE    �    This function configures the BUS type that the oscilloscope uses to apply to the specified BUS.

Note: Call this function before using serial triggering.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
    �    Passes the BUS type .

Valid Values:

  - TKDPO4K_VAL_BUS_I2C - The oscilloscope applies I2C BUS.

  - TKDPO4K_VAL_BUS_SPI - The oscilloscope applies SPI BUS.

  - TKDPO4K_VAL_BUS_CAN - The oscilloscope applies CAN BUS.

  - TKDPO4K_VAL_BUS_RS232 - The oscilloscope applies RS232 BUS.

  - TKDPO4K_VAL_BUS_PARALLEL - The oscilloscope applies Parallel
                               BUS.

Default Value: TKDPO4K_VAL_BUS_I2C

Notes:
(1) Parallel BUS is valid only in MSO models.    2    Specifies the BUS channel.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1

Notes:
(1) TKDPO4K_VAL_BUS3 and TKDPO4K_VAL_BUS4 are valid only in MSO4K models.
   �r   �  �    Instrument Handle                �'����  �    Status                           �� >� �       BUS Type                         �� > > � �    Bus Number                             	                      �I2C TKDPO4K_VAL_BUS_I2C SPI TKDPO4K_VAL_BUS_SPI CAN TKDPO4K_VAL_BUS_CAN RS232 TKDPO4K_VAL_BUS_RS232 Parallel TKDPO4K_VAL_BUS_PARALLEL               XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4    *    This function configures the BUS state.      �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
    2    Specifies the BUS channel.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1

Notes:
(1) TKDPO4K_VAL_BUS3 and TKDPO4K_VAL_BUS4 are valid only in MSO4K models.
     �    Specify whether you want to enable the BUS channel. The driver sets the TKDPO4K_ATTR_BUS_STATE attribute to this value.
 
Valid Values:
VI_TRUE
VI_FALSE

Default Value:
VI_TRUE   �)   �  �    Instrument Handle                ������  �    Status                           خ > > � �    Bus Number                       �� >� �       BUS State                              	                      XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4   ON VI_TRUE OFF VI_FALSE    �    This function configures common I2C attributes for the specified BUS. The attributes include I2C Clock Source, I2C Clock Polarity, and I2C Data Source.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
    �    Passes the clock source you want to configure.

Valid clock sources: 
For four-channel models:
    TKDPO4K_VAL_SOUR_CH1 (1)  - Channel 1
    TKDPO4K_VAL_SOUR_CH2 (2)  - Channel 2
    TKDPO4K_VAL_SOUR_CH3 (3)  - Channel 3
    TKDPO4K_VAL_SOUR_CH4 (4)  - Channel 4

For two-channel models:
    TKDPO4K_VAL_SOUR_CH1 (1)  - Channel 1
    TKDPO4K_VAL_SOUR_CH2 (2)  - Channel 2

For MSO models:
    TKDPO4K_VAL_SOUR_D0 (50)  - Digital Channel 0
    TKDPO4K_VAL_SOUR_D1 (51)  - Digital Channel 1
    TKDPO4K_VAL_SOUR_D2 (52)  - Digital Channel 2
    TKDPO4K_VAL_SOUR_D3 (53)  - Digital Channel 3
    TKDPO4K_VAL_SOUR_D4 (54)  - Digital Channel 4
    TKDPO4K_VAL_SOUR_D5 (55)  - Digital Channel 5
    TKDPO4K_VAL_SOUR_D6 (56)  - Digital Channel 6
    TKDPO4K_VAL_SOUR_D7 (57)  - Digital Channel 7
    TKDPO4K_VAL_SOUR_D8 (58)  - Digital Channel 8
    TKDPO4K_VAL_SOUR_D9 (59)  - Digital Channel 9
    TKDPO4K_VAL_SOUR_D10(60)  - Digital Channel 10
    TKDPO4K_VAL_SOUR_D11(61)  - Digital Channel 11
    TKDPO4K_VAL_SOUR_D12(62)  - Digital Channel 12
    TKDPO4K_VAL_SOUR_D13(63)  - Digital Channel 13
    TKDPO4K_VAL_SOUR_D14(64)  - Digital Channel 14
    TKDPO4K_VAL_SOUR_D15(65)  - Digital Channel 15

Default Value: TKDPO4K_VAL_SOUR_CH1    �    Passes the data source you want to configure.

Valid clock sources: 
For four-channel models:
    TKDPO4K_VAL_SOUR_CH1 (1)  - Channel 1
    TKDPO4K_VAL_SOUR_CH2 (2)  - Channel 2
    TKDPO4K_VAL_SOUR_CH3 (3)  - Channel 3
    TKDPO4K_VAL_SOUR_CH4 (4)  - Channel 4

For two-channel models:
    TKDPO4K_VAL_SOUR_CH1 (1)  - Channel 1
    TKDPO4K_VAL_SOUR_CH2 (2)  - Channel 2

For MSO models:
    TKDPO4K_VAL_SOUR_D0 (50)  - Digital Channel 0
    TKDPO4K_VAL_SOUR_D1 (51)  - Digital Channel 1
    TKDPO4K_VAL_SOUR_D2 (52)  - Digital Channel 2
    TKDPO4K_VAL_SOUR_D3 (53)  - Digital Channel 3
    TKDPO4K_VAL_SOUR_D4 (54)  - Digital Channel 4
    TKDPO4K_VAL_SOUR_D5 (55)  - Digital Channel 5
    TKDPO4K_VAL_SOUR_D6 (56)  - Digital Channel 6
    TKDPO4K_VAL_SOUR_D7 (57)  - Digital Channel 7
    TKDPO4K_VAL_SOUR_D8 (58)  - Digital Channel 8
    TKDPO4K_VAL_SOUR_D9 (59)  - Digital Channel 9
    TKDPO4K_VAL_SOUR_D10(60)  - Digital Channel 10
    TKDPO4K_VAL_SOUR_D11(61)  - Digital Channel 11
    TKDPO4K_VAL_SOUR_D12(62)  - Digital Channel 12
    TKDPO4K_VAL_SOUR_D13(63)  - Digital Channel 13
    TKDPO4K_VAL_SOUR_D14(64)  - Digital Channel 14
    TKDPO4K_VAL_SOUR_D15(65)  - Digital Channel 15

Default Value: TKDPO4K_VAL_SOUR_CH2    H    Specifies the BUS channel for I2C configuration.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1

Notes:
(1) TKDPO4K_VAL_BUS3 and TKDPO4K_VAL_BUS4 are valid only in MSO4K models.
   ܩ   �  �    Instrument Handle                �_����  �    Status                           �/ > � � �    Clock Source                     � � � � �    Data Source                      �� >  � �    Bus Number                             	                     �CH1 TKDPO4K_VAL_SOUR_CH1 CH2 TKDPO4K_VAL_SOUR_CH2 CH3 TKDPO4K_VAL_SOUR_CH3 CH4 TKDPO4K_VAL_SOUR_CH4 D0 TKDPO4K_VAL_SOUR_D0 D1 TKDPO4K_VAL_SOUR_D1 D2 TKDPO4K_VAL_SOUR_D2 D3 TKDPO4K_VAL_SOUR_D3 D4 TKDPO4K_VAL_SOUR_D4 D5 TKDPO4K_VAL_SOUR_D5 D6 TKDPO4K_VAL_SOUR_D6 D7 TKDPO4K_VAL_SOUR_D7 D8 TKDPO4K_VAL_SOUR_D8 D9 TKDPO4K_VAL_SOUR_D9 D10 TKDPO4K_VAL_SOUR_D10 D11 TKDPO4K_VAL_SOUR_D11 D12 TKDPO4K_VAL_SOUR_D12 D13 TKDPO4K_VAL_SOUR_D13 D14 TKDPO4K_VAL_SOUR_D14 D15 TKDPO4K_VAL_SOUR_D15             �CH1 TKDPO4K_VAL_SOUR_CH1 CH2 TKDPO4K_VAL_SOUR_CH2 CH3 TKDPO4K_VAL_SOUR_CH3 CH4 TKDPO4K_VAL_SOUR_CH4 D0 TKDPO4K_VAL_SOUR_D0 D1 TKDPO4K_VAL_SOUR_D1 D2 TKDPO4K_VAL_SOUR_D2 D3 TKDPO4K_VAL_SOUR_D3 D4 TKDPO4K_VAL_SOUR_D4 D5 TKDPO4K_VAL_SOUR_D5 D6 TKDPO4K_VAL_SOUR_D6 D7 TKDPO4K_VAL_SOUR_D7 D8 TKDPO4K_VAL_SOUR_D8 D9 TKDPO4K_VAL_SOUR_D9 D10 TKDPO4K_VAL_SOUR_D10 D11 TKDPO4K_VAL_SOUR_D11 D12 TKDPO4K_VAL_SOUR_D12 D13 TKDPO4K_VAL_SOUR_D13 D14 TKDPO4K_VAL_SOUR_D14 D15 TKDPO4K_VAL_SOUR_D15               XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4    �    This function configures common SPI attributes for the specified BUS. The attributes include SCLK Source, SCLK Polarity, SS Source, SS Polarity, MOSI Source, MOSI Polarity, MISO Source, and MISO Polarity.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
    �    Pass the SCLK source you want to configure.

Valid SCLK sources: 
For four-channel models:
    TKDPO4K_VAL_SOUR_CH1 (1)  - Channel 1
    TKDPO4K_VAL_SOUR_CH2 (2)  - Channel 2
    TKDPO4K_VAL_SOUR_CH3 (3)  - Channel 3
    TKDPO4K_VAL_SOUR_CH4 (4)  - Channel 4

For two-channel models:
    TKDPO4K_VAL_SOUR_CH1 (1)  - Channel 1
    TKDPO4K_VAL_SOUR_CH2 (2)  - Channel 2

For MSO models:
    TKDPO4K_VAL_SOUR_D0 (50)  - Digital Channel 0
    TKDPO4K_VAL_SOUR_D1 (51)  - Digital Channel 1
    TKDPO4K_VAL_SOUR_D2 (52)  - Digital Channel 2
    TKDPO4K_VAL_SOUR_D3 (53)  - Digital Channel 3
    TKDPO4K_VAL_SOUR_D4 (54)  - Digital Channel 4
    TKDPO4K_VAL_SOUR_D5 (55)  - Digital Channel 5
    TKDPO4K_VAL_SOUR_D6 (56)  - Digital Channel 6
    TKDPO4K_VAL_SOUR_D7 (57)  - Digital Channel 7
    TKDPO4K_VAL_SOUR_D8 (58)  - Digital Channel 8
    TKDPO4K_VAL_SOUR_D9 (59)  - Digital Channel 9
    TKDPO4K_VAL_SOUR_D10(60)  - Digital Channel 10
    TKDPO4K_VAL_SOUR_D11(61)  - Digital Channel 11
    TKDPO4K_VAL_SOUR_D12(62)  - Digital Channel 12
    TKDPO4K_VAL_SOUR_D13(63)  - Digital Channel 13
    TKDPO4K_VAL_SOUR_D14(64)  - Digital Channel 14
    TKDPO4K_VAL_SOUR_D15(65)  - Digital Channel 15

Default Value: TKDPO4K_VAL_SOUR_CH1        Specifies the SPI SCLK polarity.

Valid Values:

- TKDPO4K_VAL_CLOCK_RISE  - Specifies the SPI line polarity to 
                            RISE.

- TKDPO4K_VAL_CLOCK_FALL  - Specifies the SPI line polarity to 
                            FALL.

Default Value: TKDPO4K_VAL_CLOCK_RISE    �    Passes the SS source you want to configure.

Valid SS sources: 
For four-channel models:
    TKDPO4K_VAL_SOUR_CH1 (1)  - Channel 1
    TKDPO4K_VAL_SOUR_CH2 (2)  - Channel 2
    TKDPO4K_VAL_SOUR_CH3 (3)  - Channel 3
    TKDPO4K_VAL_SOUR_CH4 (4)  - Channel 4

For two-channel models:
    TKDPO4K_VAL_SOUR_CH1 (1)  - Channel 1
    TKDPO4K_VAL_SOUR_CH2 (2)  - Channel 2

For MSO models:
    TKDPO4K_VAL_SOUR_D0 (50)  - Digital Channel 0
    TKDPO4K_VAL_SOUR_D1 (51)  - Digital Channel 1
    TKDPO4K_VAL_SOUR_D2 (52)  - Digital Channel 2
    TKDPO4K_VAL_SOUR_D3 (53)  - Digital Channel 3
    TKDPO4K_VAL_SOUR_D4 (54)  - Digital Channel 4
    TKDPO4K_VAL_SOUR_D5 (55)  - Digital Channel 5
    TKDPO4K_VAL_SOUR_D6 (56)  - Digital Channel 6
    TKDPO4K_VAL_SOUR_D7 (57)  - Digital Channel 7
    TKDPO4K_VAL_SOUR_D8 (58)  - Digital Channel 8
    TKDPO4K_VAL_SOUR_D9 (59)  - Digital Channel 9
    TKDPO4K_VAL_SOUR_D10(60)  - Digital Channel 10
    TKDPO4K_VAL_SOUR_D11(61)  - Digital Channel 11
    TKDPO4K_VAL_SOUR_D12(62)  - Digital Channel 12
    TKDPO4K_VAL_SOUR_D13(63)  - Digital Channel 13
    TKDPO4K_VAL_SOUR_D14(64)  - Digital Channel 14
    TKDPO4K_VAL_SOUR_D15(65)  - Digital Channel 15

Default Value: TKDPO4K_VAL_SOUR_CH2    9    Specifies the SPI SS polarity.

Valid Values:

- TKDPO4K_VAL_SPI_POLARITY_LOW  - Specifies the SPI line 
                                  polarity to LOW.

- TKDPO4K_VAL_SPI_POLARITY_HIGH - Specifies the SPI line 
                                  polarity to HIGH

Default Value: TKDPO4K_VAL_SPI_POLARITY_HIGH    �    Passes the MOSI source you want to configure.

Valid MOSI sources: 
For four-channel models:
    TKDPO4K_VAL_SOUR_CH1 (1)  - Channel 1
    TKDPO4K_VAL_SOUR_CH2 (2)  - Channel 2
    TKDPO4K_VAL_SOUR_CH3 (3)  - Channel 3
    TKDPO4K_VAL_SOUR_CH4 (4)  - Channel 4

For two-channel models:
    TKDPO4K_VAL_SOUR_CH1 (1)  - Channel 1
    TKDPO4K_VAL_SOUR_CH2 (2)  - Channel 2

For MSO models:
    TKDPO4K_VAL_SOUR_D0 (50)  - Digital Channel 0
    TKDPO4K_VAL_SOUR_D1 (51)  - Digital Channel 1
    TKDPO4K_VAL_SOUR_D2 (52)  - Digital Channel 2
    TKDPO4K_VAL_SOUR_D3 (53)  - Digital Channel 3
    TKDPO4K_VAL_SOUR_D4 (54)  - Digital Channel 4
    TKDPO4K_VAL_SOUR_D5 (55)  - Digital Channel 5
    TKDPO4K_VAL_SOUR_D6 (56)  - Digital Channel 6
    TKDPO4K_VAL_SOUR_D7 (57)  - Digital Channel 7
    TKDPO4K_VAL_SOUR_D8 (58)  - Digital Channel 8
    TKDPO4K_VAL_SOUR_D9 (59)  - Digital Channel 9
    TKDPO4K_VAL_SOUR_D10(60)  - Digital Channel 10
    TKDPO4K_VAL_SOUR_D11(61)  - Digital Channel 11
    TKDPO4K_VAL_SOUR_D12(62)  - Digital Channel 12
    TKDPO4K_VAL_SOUR_D13(63)  - Digital Channel 13
    TKDPO4K_VAL_SOUR_D14(64)  - Digital Channel 14
    TKDPO4K_VAL_SOUR_D15(65)  - Digital Channel 15

Default Value: TKDPO4K_VAL_SOUR_CH3    �    Passes the MISO source you want to configure.

Valid MISO sources: 
For four-channel models:
    TKDPO4K_VAL_SOUR_CH1 (1)  - Channel 1
    TKDPO4K_VAL_SOUR_CH2 (2)  - Channel 2
    TKDPO4K_VAL_SOUR_CH3 (3)  - Channel 3
    TKDPO4K_VAL_SOUR_CH4 (4)  - Channel 4

For two-channel models:
    TKDPO4K_VAL_SOUR_CH1 (1)  - Channel 1
    TKDPO4K_VAL_SOUR_CH2 (2)  - Channel 2

For MSO models:
    TKDPO4K_VAL_SOUR_D0 (50)  - Digital Channel 0
    TKDPO4K_VAL_SOUR_D1 (51)  - Digital Channel 1
    TKDPO4K_VAL_SOUR_D2 (52)  - Digital Channel 2
    TKDPO4K_VAL_SOUR_D3 (53)  - Digital Channel 3
    TKDPO4K_VAL_SOUR_D4 (54)  - Digital Channel 4
    TKDPO4K_VAL_SOUR_D5 (55)  - Digital Channel 5
    TKDPO4K_VAL_SOUR_D6 (56)  - Digital Channel 6
    TKDPO4K_VAL_SOUR_D7 (57)  - Digital Channel 7
    TKDPO4K_VAL_SOUR_D8 (58)  - Digital Channel 8
    TKDPO4K_VAL_SOUR_D9 (59)  - Digital Channel 9
    TKDPO4K_VAL_SOUR_D10(60)  - Digital Channel 10
    TKDPO4K_VAL_SOUR_D11(61)  - Digital Channel 11
    TKDPO4K_VAL_SOUR_D12(62)  - Digital Channel 12
    TKDPO4K_VAL_SOUR_D13(63)  - Digital Channel 13
    TKDPO4K_VAL_SOUR_D14(64)  - Digital Channel 14
    TKDPO4K_VAL_SOUR_D15(65)  - Digital Channel 15

Default Value: TKDPO4K_VAL_SOUR_CH4    ;    Specifies the SPI MOSI polarity.

Valid Values:

- TKDPO4K_VAL_SPI_POLARITY_LOW  - Specifies the SPI line 
                                  polarity to LOW.

- TKDPO4K_VAL_SPI_POLARITY_HIGH - Specifies the SPI line 
                                  polarity to HIGH

Default Value: TKDPO4K_VAL_SPI_POLARITY_HIGH    ;    Specifies the SPI MISO polarity.

Valid Values:

- TKDPO4K_VAL_SPI_POLARITY_LOW  - Specifies the SPI line 
                                  polarity to LOW.

- TKDPO4K_VAL_SPI_POLARITY_HIGH - Specifies the SPI line 
                                  polarity to HIGH

Default Value: TKDPO4K_VAL_SPI_POLARITY_HIGH    H    Specifies the BUS channel for SPI configuration.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1

Notes:
(1) TKDPO4K_VAL_BUS3 and TKDPO4K_VAL_BUS4 are valid only in MSO4K models.
   �d   �  �    Instrument Handle                �����  �    Status                           �� % � � �    SCLK Source                      � j �       SCLK Polarity                    � W � � �    SS Source                        � N� �       SS Polarity                      � � � � �    MOSI Source                      � � � � �    MISO Source                      � �� �       MOSI Polarity                    � �  	�       MISO Polarity                    , % 
 � �    Bus Number                             	                     �CH1 TKDPO4K_VAL_SOUR_CH1 CH2 TKDPO4K_VAL_SOUR_CH2 CH3 TKDPO4K_VAL_SOUR_CH3 CH4 TKDPO4K_VAL_SOUR_CH4 D0 TKDPO4K_VAL_SOUR_D0 D1 TKDPO4K_VAL_SOUR_D1 D2 TKDPO4K_VAL_SOUR_D2 D3 TKDPO4K_VAL_SOUR_D3 D4 TKDPO4K_VAL_SOUR_D4 D5 TKDPO4K_VAL_SOUR_D5 D6 TKDPO4K_VAL_SOUR_D6 D7 TKDPO4K_VAL_SOUR_D7 D8 TKDPO4K_VAL_SOUR_D8 D9 TKDPO4K_VAL_SOUR_D9 D10 TKDPO4K_VAL_SOUR_D10 D11 TKDPO4K_VAL_SOUR_D11 D12 TKDPO4K_VAL_SOUR_D12 D13 TKDPO4K_VAL_SOUR_D13 D14 TKDPO4K_VAL_SOUR_D14 D15 TKDPO4K_VAL_SOUR_D15               8RISE TKDPO4K_VAL_CLOCK_RISE FALL TKDPO4K_VAL_CLOCK_FALL             �CH1 TKDPO4K_VAL_SOUR_CH1 CH2 TKDPO4K_VAL_SOUR_CH2 CH3 TKDPO4K_VAL_SOUR_CH3 CH4 TKDPO4K_VAL_SOUR_CH4 D0 TKDPO4K_VAL_SOUR_D0 D1 TKDPO4K_VAL_SOUR_D1 D2 TKDPO4K_VAL_SOUR_D2 D3 TKDPO4K_VAL_SOUR_D3 D4 TKDPO4K_VAL_SOUR_D4 D5 TKDPO4K_VAL_SOUR_D5 D6 TKDPO4K_VAL_SOUR_D6 D7 TKDPO4K_VAL_SOUR_D7 D8 TKDPO4K_VAL_SOUR_D8 D9 TKDPO4K_VAL_SOUR_D9 D10 TKDPO4K_VAL_SOUR_D10 D11 TKDPO4K_VAL_SOUR_D11 D12 TKDPO4K_VAL_SOUR_D12 D13 TKDPO4K_VAL_SOUR_D13 D14 TKDPO4K_VAL_SOUR_D14 D15 TKDPO4K_VAL_SOUR_D15               DHIGH TKDPO4K_VAL_SPI_POLARITY_HIGH LOW TKDPO4K_VAL_SPI_POLARITY_LOW             �CH1 TKDPO4K_VAL_SOUR_CH1 CH2 TKDPO4K_VAL_SOUR_CH2 CH3 TKDPO4K_VAL_SOUR_CH3 CH4 TKDPO4K_VAL_SOUR_CH4 D0 TKDPO4K_VAL_SOUR_D0 D1 TKDPO4K_VAL_SOUR_D1 D2 TKDPO4K_VAL_SOUR_D2 D3 TKDPO4K_VAL_SOUR_D3 D4 TKDPO4K_VAL_SOUR_D4 D5 TKDPO4K_VAL_SOUR_D5 D6 TKDPO4K_VAL_SOUR_D6 D7 TKDPO4K_VAL_SOUR_D7 D8 TKDPO4K_VAL_SOUR_D8 D9 TKDPO4K_VAL_SOUR_D9 D10 TKDPO4K_VAL_SOUR_D10 D11 TKDPO4K_VAL_SOUR_D11 D12 TKDPO4K_VAL_SOUR_D12 D13 TKDPO4K_VAL_SOUR_D13 D14 TKDPO4K_VAL_SOUR_D14 D15 TKDPO4K_VAL_SOUR_D15             �CH1 TKDPO4K_VAL_SOUR_CH1 CH2 TKDPO4K_VAL_SOUR_CH2 CH3 TKDPO4K_VAL_SOUR_CH3 CH4 TKDPO4K_VAL_SOUR_CH4 D0 TKDPO4K_VAL_SOUR_D0 D1 TKDPO4K_VAL_SOUR_D1 D2 TKDPO4K_VAL_SOUR_D2 D3 TKDPO4K_VAL_SOUR_D3 D4 TKDPO4K_VAL_SOUR_D4 D5 TKDPO4K_VAL_SOUR_D5 D6 TKDPO4K_VAL_SOUR_D6 D7 TKDPO4K_VAL_SOUR_D7 D8 TKDPO4K_VAL_SOUR_D8 D9 TKDPO4K_VAL_SOUR_D9 D10 TKDPO4K_VAL_SOUR_D10 D11 TKDPO4K_VAL_SOUR_D11 D12 TKDPO4K_VAL_SOUR_D12 D13 TKDPO4K_VAL_SOUR_D13 D14 TKDPO4K_VAL_SOUR_D14 D15 TKDPO4K_VAL_SOUR_D15               DHIGH TKDPO4K_VAL_SPI_POLARITY_HIGH LOW TKDPO4K_VAL_SPI_POLARITY_LOW               DHIGH TKDPO4K_VAL_SPI_POLARITY_HIGH LOW TKDPO4K_VAL_SPI_POLARITY_LOW               XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4    �    This function configures common CAN attributes for the specified BUS. The attributes include Bit Rate, Probe Type, and Source.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
    B    Passes the bit rate for CAN.

Valid Values:

  - TKDPO4K_VAL_CAN_RATE10K (1)   - Bit rate of 10K.
  - TKDPO4K_VAL_CAN_RATE20K (2)   - Bit rate of 20K.
  - TKDPO4K_VAL_CAN_RATE33K (3)   - Bit rate of 33K.
  - TKDPO4K_VAL_CAN_RATE37K (13)  - Bit rate of 37K.
  - TKDPO4K_VAL_CAN_RATE50K (4)   - Bit rate of 50K.
  - TKDPO4K_VAL_CAN_RATE62K (5)   - Bit rate of 62K.
  - TKDPO4K_VAL_CAN_RATE83K (6)   - Bit rate of 83K.
  - TKDPO4K_VAL_CAN_RATE92K (14)  - Bit rate of 92K.
  - TKDPO4K_VAL_CAN_RATE100K (7)  - Bit rate of 100K.
  - TKDPO4K_VAL_CAN_RATE125K (8)  - Bit rate of 125K.
  - TKDPO4K_VAL_CAN_RATE250K (9)  - Bit rate of 250K.
  - TKDPO4K_VAL_CAN_RATE500K (10) - Bit rate of 500K. 
  - TKDPO4K_VAL_CAN_RATE800K (11) - Bit rate of 800K.
  - TKDPO4K_VAL_CAN_RATE1M (12)   - Bit rate of 1M.

Default Value: TKDPO4K_VAL_CAN_RATE500K    �    Passes the probing method used to probe the CAN signal.

Valid Values:

  - TKDPO4K_VAL_CAN_CANH - The oscilloscope probes CANH signal.

  - TKDPO4K_VAL_CAN_CANL - The oscilloscope probes CANL signal.

  - TKDPO4K_VAL_CAN_RX   - The oscilloscope probes RX signal.

  - TKDPO4K_VAL_CAN_TX   - The oscilloscope probes TX signal.

  - TKDPO4K_VAL_CAN_DIFF - The oscilloscope probes DIFFERENTIAL 
                           signal.

Default Value: TKDPO4K_VAL_CAN_CANH    �    Passes the CAN signal source you want to configure.

Valid CAN signal sources: 
For four-channel models:
    TKDPO4K_VAL_SOUR_CH1 (1)  - Channel 1
    TKDPO4K_VAL_SOUR_CH2 (2)  - Channel 2
    TKDPO4K_VAL_SOUR_CH3 (3)  - Channel 3
    TKDPO4K_VAL_SOUR_CH4 (4)  - Channel 4

For two-channel models:
    TKDPO4K_VAL_SOUR_CH1 (1)  - Channel 1
    TKDPO4K_VAL_SOUR_CH2 (2)  - Channel 2

For MSO models:
    TKDPO4K_VAL_SOUR_D0 (50)  - Digital Channel 0
    TKDPO4K_VAL_SOUR_D1 (51)  - Digital Channel 1
    TKDPO4K_VAL_SOUR_D2 (52)  - Digital Channel 2
    TKDPO4K_VAL_SOUR_D3 (53)  - Digital Channel 3
    TKDPO4K_VAL_SOUR_D4 (54)  - Digital Channel 4
    TKDPO4K_VAL_SOUR_D5 (55)  - Digital Channel 5
    TKDPO4K_VAL_SOUR_D6 (56)  - Digital Channel 6
    TKDPO4K_VAL_SOUR_D7 (57)  - Digital Channel 7
    TKDPO4K_VAL_SOUR_D8 (58)  - Digital Channel 8
    TKDPO4K_VAL_SOUR_D9 (59)  - Digital Channel 9
    TKDPO4K_VAL_SOUR_D10(60)  - Digital Channel 10
    TKDPO4K_VAL_SOUR_D11(61)  - Digital Channel 11
    TKDPO4K_VAL_SOUR_D12(62)  - Digital Channel 12
    TKDPO4K_VAL_SOUR_D13(63)  - Digital Channel 13
    TKDPO4K_VAL_SOUR_D14(64)  - Digital Channel 14
    TKDPO4K_VAL_SOUR_D15(65)  - Digital Channel 15

Default Value: TKDPO4K_VAL_SOUR_CH1    H    Specifies the BUS channel for CAN configuration.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1

Notes:
(1) TKDPO4K_VAL_BUS3 and TKDPO4K_VAL_BUS4 are valid only in MSO4K models.
   "�   �  �    Instrument Handle                #s����  �    Status                           *C % � � �    Bit Rate                         -� W � � �    Probe Type                       /g � � � �    Source                           4J %  � �    Bus Number                             	                    �10K TKDPO4K_VAL_CAN_RATE10K 20K TKDPO4K_VAL_CAN_RATE20K 33K TKDPO4K_VAL_CAN_RATE33K 37K TKDPO4K_VAL_CAN_RATE37K 50K TKDPO4K_VAL_CAN_RATE50K 62K TKDPO4K_VAL_CAN_RATE62K 83K TKDPO4K_VAL_CAN_RATE83K 92K TKDPO4K_VAL_CAN_RATE92K 100K TKDPO4K_VAL_CAN_RATE100K 125K TKDPO4K_VAL_CAN_RATE125K 250K TKDPO4K_VAL_CAN_RATE250K 500K TKDPO4K_VAL_CAN_RATE500K 800K TKDPO4K_VAL_CAN_RATE800K 1M TKDPO4K_VAL_CAN_RATE1M               �CAN HIGH TKDPO4K_VAL_CAN_CANH CAN LOW TKDPO4K_VAL_CAN_CANL RX TKDPO4K_VAL_CAN_RX TX TKDPO4K_VAL_CAN_TX DIFFERENTIAL TKDPO4K_VAL_CAN_DIFF              �CH1 TKDPO4K_VAL_SOUR_CH1 CH2 TKDPO4K_VAL_SOUR_CH2 CH3 TKDPO4K_VAL_SOUR_CH3 CH4 TKDPO4K_VAL_SOUR_CH4 D0 TKDPO4K_VAL_SOUR_D0 D1 TKDPO4K_VAL_SOUR_D1 D2 TKDPO4K_VAL_SOUR_D2 D3 TKDPO4K_VAL_SOUR_D3 D4 TKDPO4K_VAL_SOUR_D4 D5 TKDPO4K_VAL_SOUR_D5 D6 TKDPO4K_VAL_SOUR_D6 D7 TKDPO4K_VAL_SOUR_D7 D8 TKDPO4K_VAL_SOUR_D8 D9 TKDPO4K_VAL_SOUR_D9 D10 TKDPO4K_VAL_SOUR_D10 D11 TKDPO4K_VAL_SOUR_D11 D12 TKDPO4K_VAL_SOUR_D12 D13 TKDPO4K_VAL_SOUR_D13 D14 TKDPO4K_VAL_SOUR_D14 D15 TKDPO4K_VAL_SOUR_D15               XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4    3    This function configures scope for RS232 Trigger.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
    �    Specifies the RS232 bit rate.

Units: bits per second

Valid Values:

  - 50    - Bit rate of 50.
  - 75    - Bit rate of 75.
  - 110   - Bit rate of 110.
  - 134   - Bit rate of 134.
  - 150   - Bit rate of 150.
  - 300   - Bit rate of 300.
  - 600   - Bit rate of 600.
  - 1200  - Bit rate of 1200.
  - 1800  - Bit rate of 1800.
  - 2000  - Bit rate of 2000.
  - 2400  - Bit rate of 2400.
  - 3600  - Bit rate of 3600.
  - 4800  - Bit rate of 4800.
  - 7200  - Bit rate of 7200.
  - 9600  - Bit rate of 9600.
  - 14400 - Bit rate of 14400.
  - 15200 - Bit rate of 15200.
  - 19200 - Bit rate of 19200.
  - 28800 - Bit rate of 28800.
  - 38400 - Bit rate of 38400.
  - 56000 - Bit rate of 56000.
  - 57600 - Bit rate of 57600.
  - 115200- Bit rate of 115200.
  - 128000- Bit rate of 128000.
  - 230400- Bit rate of 230400.
  - 460800- Bit rate of 460800.
  - 921600- Bit rate of 921600.
  - 1382400-Bit rate of 1382400.
  - 1843200-Bit rate of 1348200.
  - 2764800-Bit rate of 2764800.

Default Value: 9600     |    Specifies the number of RS232 data bits.

Valid Values:

  - 7    - 7 data bits.
  - 8    - 8 data bits.

Default Value: 7    l    Specifies the RS232 delimiting value for a packet on the bus.

Valid Values:

  - TKDPO4K_VAL_RS232_DELIMITER_NULL    - NULL.
  - TKDPO4K_VAL_RS232_DELIMITER_LF      - LF.
  - TKDPO4K_VAL_RS232_DELIMITER_CR      - CR.
  - TKDPO4K_VAL_RS232_DELIMITER_SPACE   - Space.
  - TKDPO4K_VAL_RS232_DELIMITER_XFF     - XFF.

Default Value: TKDPO4K_VAL_RS232_DELIMITER_NULL     �    Specifies the RS232C parity.

Valid Values:

  - TKDPO4K_VAL_RS232_PARITY_NONE    - No parity.
  - TKDPO4K_VAL_RS232_PARITY_EVEN    - Even parity.
  - TKDPO4K_VAL_RS232_PARITY_ODD     - Odd parity.

Default Value: TKDPO4K_VAL_RS232_PARITY_NONE    �    Specifies the RS232 RX source.

Valid Channels: 
TKDPO4K_VAL_SOUR_CH1 - Channel 1
TKDPO4K_VAL_SOUR_CH2 - Channel 2
TKDPO4K_VAL_SOUR_CH3 - Channel 3
TKDPO4K_VAL_SOUR_CH4 - Channel 4
TKDPO4K_VAL_SOUR_D0  - Digital Channel 0
TKDPO4K_VAL_SOUR_D1  - Digital Channel 1
TKDPO4K_VAL_SOUR_D2  - Digital Channel 2
TKDPO4K_VAL_SOUR_D3  - Digital Channel 3
TKDPO4K_VAL_SOUR_D4  - Digital Channel 4
TKDPO4K_VAL_SOUR_D5  - Digital Channel 5
TKDPO4K_VAL_SOUR_D6  - Digital Channel 6
TKDPO4K_VAL_SOUR_D7  - Digital Channel 7
TKDPO4K_VAL_SOUR_D8  - Digital Channel 8
TKDPO4K_VAL_SOUR_D9  - Digital Channel 9
TKDPO4K_VAL_SOUR_D10 - Digital Channel 10
TKDPO4K_VAL_SOUR_D11 - Digital Channel 11
TKDPO4K_VAL_SOUR_D12 - Digital Channel 12
TKDPO4K_VAL_SOUR_D13 - Digital Channel 13
TKDPO4K_VAL_SOUR_D14 - Digital Channel 14
TKDPO4K_VAL_SOUR_D15 - Digital Channel 15

Default Value: TKDPO4K_VAL_SOUR_CH1

Notes:
(1) Digital channels are valid only in MSO models.    �    Specifies the RS232 TX source.

Valid Channels: 
TKDPO4K_VAL_SOUR_CH1 - Channel 1
TKDPO4K_VAL_SOUR_CH2 - Channel 2
TKDPO4K_VAL_SOUR_CH3 - Channel 3
TKDPO4K_VAL_SOUR_CH4 - Channel 4
TKDPO4K_VAL_SOUR_D0  - Digital Channel 0
TKDPO4K_VAL_SOUR_D1  - Digital Channel 1
TKDPO4K_VAL_SOUR_D2  - Digital Channel 2
TKDPO4K_VAL_SOUR_D3  - Digital Channel 3
TKDPO4K_VAL_SOUR_D4  - Digital Channel 4
TKDPO4K_VAL_SOUR_D5  - Digital Channel 5
TKDPO4K_VAL_SOUR_D6  - Digital Channel 6
TKDPO4K_VAL_SOUR_D7  - Digital Channel 7
TKDPO4K_VAL_SOUR_D8  - Digital Channel 8
TKDPO4K_VAL_SOUR_D9  - Digital Channel 9
TKDPO4K_VAL_SOUR_D10 - Digital Channel 10
TKDPO4K_VAL_SOUR_D11 - Digital Channel 11
TKDPO4K_VAL_SOUR_D12 - Digital Channel 12
TKDPO4K_VAL_SOUR_D13 - Digital Channel 13
TKDPO4K_VAL_SOUR_D14 - Digital Channel 14
TKDPO4K_VAL_SOUR_D15 - Digital Channel 15

Default Value: TKDPO4K_VAL_SOUR_CH2

Notes:
(1) Digital channels are valid only in MSO models.    J    Specifies the BUS channel for RS232 configuration.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1

Notes:
(1) TKDPO4K_VAL_BUS3 and TKDPO4K_VAL_BUS4 are valid only in MSO4K models.
   ;�   �  �    Instrument Handle                <e����  �    Status                           C5 > � � �    Bit Rate (bps)                   G. >� � �    Data Bits                        G� �  � �    Delimiter                        I& � � � �    Parity                           J# �� � �    RX Source                        M� �  � �    TX Source                        Q� >  � �    Bus Number                             	                    N50 50 75 75 110 110 134 134 150 150 300 300 600 600 1200 1200 1800 1800 2000 2000 2400 2400 3600 3600 4800 4800 7200 7200 9600 9600 14400 14400 15200 15200 19200 19200 28800 28800 38400 38400 56000 56000 57600 57600 115200 115200 128000 128000 230400 230400 460800 460800 921600 921600 1382400 1382400 1843200 1843200 2764800 2764800               7 7 8 8               �NULL TKDPO4K_VAL_RS232_DELIMITER_NULL LF TKDPO4K_VAL_RS232_DELIMITER_LF CR TKDPO4K_VAL_RS232_DELIMITER_CR Space TKDPO4K_VAL_RS232_DELIMITER_SPACE XFF TKDPO4K_VAL_RS232_DELIMITER_XFF               gNONE TKDPO4K_VAL_RS232_PARITY_NONE Even TKDPO4K_VAL_RS232_PARITY_EVEN Odd TKDPO4K_VAL_RS232_PARITY_ODD              �CH1 TKDPO4K_VAL_SOUR_CH1 CH2 TKDPO4K_VAL_SOUR_CH2 CH3 TKDPO4K_VAL_SOUR_CH3 CH4 TKDPO4K_VAL_SOUR_CH4 D0 TKDPO4K_VAL_SOUR_D0 D1 TKDPO4K_VAL_SOUR_D1 D2 TKDPO4K_VAL_SOUR_D2 D3 TKDPO4K_VAL_SOUR_D3 D4 TKDPO4K_VAL_SOUR_D4 D5 TKDPO4K_VAL_SOUR_D5 D6 TKDPO4K_VAL_SOUR_D6 D7 TKDPO4K_VAL_SOUR_D7 D8 TKDPO4K_VAL_SOUR_D8 D9 TKDPO4K_VAL_SOUR_D9 D10 TKDPO4K_VAL_SOUR_D10 D11 TKDPO4K_VAL_SOUR_D11 D12 TKDPO4K_VAL_SOUR_D12 D13 TKDPO4K_VAL_SOUR_D13 D14 TKDPO4K_VAL_SOUR_D14 D15 TKDPO4K_VAL_SOUR_D15             �CH1 TKDPO4K_VAL_SOUR_CH1 CH2 TKDPO4K_VAL_SOUR_CH2 CH3 TKDPO4K_VAL_SOUR_CH3 CH4 TKDPO4K_VAL_SOUR_CH4 D0 TKDPO4K_VAL_SOUR_D0 D1 TKDPO4K_VAL_SOUR_D1 D2 TKDPO4K_VAL_SOUR_D2 D3 TKDPO4K_VAL_SOUR_D3 D4 TKDPO4K_VAL_SOUR_D4 D5 TKDPO4K_VAL_SOUR_D5 D6 TKDPO4K_VAL_SOUR_D6 D7 TKDPO4K_VAL_SOUR_D7 D8 TKDPO4K_VAL_SOUR_D8 D9 TKDPO4K_VAL_SOUR_D9 D10 TKDPO4K_VAL_SOUR_D10 D11 TKDPO4K_VAL_SOUR_D11 D12 TKDPO4K_VAL_SOUR_D12 D13 TKDPO4K_VAL_SOUR_D13 D14 TKDPO4K_VAL_SOUR_D14 D15 TKDPO4K_VAL_SOUR_D15               XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4    m    This function configures scope for Parallel Trigger.

Notes:
(1) This function is valid only in MSO models.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
    /    Specifies the sources for all 16 bits. Different channels are seperated by commas.

For example, if source of bit 0 is D0, source of bit 1 is D1, ... , and source of bit 15 is D15, the Bits Source is:
"D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15".

Valid Channels: 
TKDPO4K_VAL_SOUR_CH1 - Channel 1
TKDPO4K_VAL_SOUR_CH2 - Channel 2
TKDPO4K_VAL_SOUR_CH3 - Channel 3
TKDPO4K_VAL_SOUR_CH4 - Channel 4
TKDPO4K_VAL_SOUR_D0  - Digital Channel 0
TKDPO4K_VAL_SOUR_D1  - Digital Channel 1
TKDPO4K_VAL_SOUR_D2  - Digital Channel 2
TKDPO4K_VAL_SOUR_D3  - Digital Channel 3
TKDPO4K_VAL_SOUR_D4  - Digital Channel 4
TKDPO4K_VAL_SOUR_D5  - Digital Channel 5
TKDPO4K_VAL_SOUR_D6  - Digital Channel 6
TKDPO4K_VAL_SOUR_D7  - Digital Channel 7
TKDPO4K_VAL_SOUR_D8  - Digital Channel 8
TKDPO4K_VAL_SOUR_D9  - Digital Channel 9
TKDPO4K_VAL_SOUR_D10 - Digital Channel 10
TKDPO4K_VAL_SOUR_D11 - Digital Channel 11
TKDPO4K_VAL_SOUR_D12 - Digital Channel 12
TKDPO4K_VAL_SOUR_D13 - Digital Channel 13
TKDPO4K_VAL_SOUR_D14 - Digital Channel 14
TKDPO4K_VAL_SOUR_D15 - Digital Channel 15    u    Specifies the parallel bus source.

Valid Channels: 
TKDPO4K_VAL_SOUR_CH1 - Channel 1
TKDPO4K_VAL_SOUR_CH2 - Channel 2
TKDPO4K_VAL_SOUR_CH3 - Channel 3
TKDPO4K_VAL_SOUR_CH4 - Channel 4
TKDPO4K_VAL_SOUR_D0  - Digital Channel 0
TKDPO4K_VAL_SOUR_D1  - Digital Channel 1
TKDPO4K_VAL_SOUR_D2  - Digital Channel 2
TKDPO4K_VAL_SOUR_D3  - Digital Channel 3
TKDPO4K_VAL_SOUR_D4  - Digital Channel 4
TKDPO4K_VAL_SOUR_D5  - Digital Channel 5
TKDPO4K_VAL_SOUR_D6  - Digital Channel 6
TKDPO4K_VAL_SOUR_D7  - Digital Channel 7
TKDPO4K_VAL_SOUR_D8  - Digital Channel 8
TKDPO4K_VAL_SOUR_D9  - Digital Channel 9
TKDPO4K_VAL_SOUR_D10 - Digital Channel 10
TKDPO4K_VAL_SOUR_D11 - Digital Channel 11
TKDPO4K_VAL_SOUR_D12 - Digital Channel 12
TKDPO4K_VAL_SOUR_D13 - Digital Channel 13
TKDPO4K_VAL_SOUR_D14 - Digital Channel 14
TKDPO4K_VAL_SOUR_D15 - Digital Channel 15

Default Value: TKDPO4K_VAL_SOUR_CH1     �    Specifies the parallel clock edge.

Valid Values: 
TKDPO4K_VAL_PARALLEL_CLOCK_RISE   - Rising
TKDPO4K_VAL_PARALLEL_CLOCK_FALL   - Falling
TKDPO4K_VAL_PARALLEL_CLOCK_EITHER - Either

Default Value: TKDPO4K_VAL_PARALLEL_CLOCK_RISE     h    Specifies the parallel bus clock function.

Valid Values:  VI_TRUE or VI_FALSE

Default Value: VI_TRUE     `    Specifies the number of bits for the width of the parallel bus.

Units: bits

Default Value: 1     �    Specifies the BUS channel for parallel triggering.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1   \3   �  �    Instrument Handle                \�����  �    Status                           c� > � � ^    Bits Source                      g� �  � �    Clock Source                     kl � � � �    Clock Edge                       lZ �� �       Clock Locked                     l� �  �  �    Width                            m2 >  � �    Bus Number                             	           8"D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15"              �CH1 TKDPO4K_VAL_SOUR_CH1 CH2 TKDPO4K_VAL_SOUR_CH2 CH3 TKDPO4K_VAL_SOUR_CH3 CH4 TKDPO4K_VAL_SOUR_CH4 D0 TKDPO4K_VAL_SOUR_D0 D1 TKDPO4K_VAL_SOUR_D1 D2 TKDPO4K_VAL_SOUR_D2 D3 TKDPO4K_VAL_SOUR_D3 D4 TKDPO4K_VAL_SOUR_D4 D5 TKDPO4K_VAL_SOUR_D5 D6 TKDPO4K_VAL_SOUR_D6 D7 TKDPO4K_VAL_SOUR_D7 D8 TKDPO4K_VAL_SOUR_D8 D9 TKDPO4K_VAL_SOUR_D9 D10 TKDPO4K_VAL_SOUR_D10 D11 TKDPO4K_VAL_SOUR_D11 D12 TKDPO4K_VAL_SOUR_D12 D13 TKDPO4K_VAL_SOUR_D13 D14 TKDPO4K_VAL_SOUR_D14 D15 TKDPO4K_VAL_SOUR_D15               xRising TKDPO4K_VAL_PARALLEL_CLOCK_RISE Falling TKDPO4K_VAL_PARALLEL_CLOCK_FALL Either TKDPO4K_VAL_PARALLEL_CLOCK_EITHER   Yes VI_TRUE No VI_FALSE    1               XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4    �    Configures ethernet settings for an oscilloscope. 

This function only applies to DPO4034B, DPO4054B, DPO4104B, MSO4034B, MSO4054B, MSO4104B.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
     �    Specifies the ethernet standard type.

Valid Values: 
TKDPO4K_VAL_ENET_ENET10BASET - ENET10BASET
TKDPO4K_VAL_ENET_ENET100BASETX  - ENET100BASETX

Default Value: TKDPO4K_VAL_ENET_ENET10BASET     �    Specifies the BUS channel for parallel triggering.

Valid Values:

  - TKDPO4K_VAL_BUS1 -  Choose BUS1.
  - TKDPO4K_VAL_BUS2 -  Choose BUS2.
  - TKDPO4K_VAL_BUS3 -  Choose BUS3.
  - TKDPO4K_VAL_BUS4 -  Choose BUS4.

Valid Value: TKDPO4K_VAL_BUS1     �    Specifies the parallel clock edge.

Valid Values: 
TKDPO4K_VAL_ENET_PROBE_DIFFERENTIAL   - Differential
TKDPO4K_VAL_ENET_PROBE_SINGLEENDED    -  Single Ended


Default Value: 
TKDPO4K_VAL_ENET_PROBE_DIFFERENTIAL    �    Specifies the ethernet data source for D+ input. 

Valid Channel Names:

TKDPO4K_VAL_ENET_PLUS_DATA_CH1   - Channel 1 
TKDPO4K_VAL_ENET_PLUS_DATA_CH2   - Channel 2
TKDPO4K_VAL_ENET_PLUS_DATA_CH3   - Channel 3
TKDPO4K_VAL_ENET_PLUS_DATA_CH4   - Channel 4

Default Value: TKDPO4K_VAL_ENET_PLUS_DATA_CH1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.    �    Specifies the dDifferential input data source.

Valid Channel Names:

TKDPO4K_VAL_ENET_DIFF_INPUT_DATA_SRC_CH1   - Channel 1 
TKDPO4K_VAL_ENET_DIFF_INPUT_DATA_SRC_CH2   - Channel 2
TKDPO4K_VAL_ENET_DIFF_INPUT_DATA_SRC_CH3   - Channel 3
TKDPO4K_VAL_ENET_DIFF_INPUT_DATA_SRC_CH4   - Channel 4

Default Value: TKDPO4K_VAL_ENET_DIFF_INPUT_DATA_SRC_CH1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.     �    Specifies the ethernet protocol for decode.

Valid Values: 
TKDPO4K_VAL_ENET_PROT_IPV4   - IPV4
TKDPO4K_VAL_ENET_PROT_OTHER  - Other

Default Value: 
TKDPO4K_VAL_ENET_PROT_IPV4    �    Specifies the ethernet data source for D- input. 

Valid Channel Names:

TKDPO4K_VAL_ENET_MINUS_DATA_SRC_CH1  - Channel 1 
TKDPO4K_VAL_ENET_MINUS_DATA_SRC_CH2  - Channel 2
TKDPO4K_VAL_ENET_MINUS_DATA_SRC_CH3  - Channel 3
TKDPO4K_VAL_ENET_MINUS_DATA_SRC_CH4  - Channel 4

Default Value:
TKDPO4K_VAL_ENET_MINUS_DATA_SRC_CH1  - Channel 1 

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.   s�   �  �    Instrument Handle                tm����  �    Status                           {= 3 � � �    Ethernet Type                    | 3  � �    Bus Number                       } 3� � �    Probe Type                       }� y � � �    Ethernent D+ Data Source         ~ y  � �    Differential Input Data Source   �K �  � �    Ethernet Protocol                � y� � �    Ethernent D- Data Source               	                      UENET10BASE TKDPO4K_VAL_ENET_ENET10BASET ENET100BASETX TKDPO4K_VAL_ENET_ENET100BASETX               XBUS1 TKDPO4K_VAL_BUS1 BUS2 TKDPO4K_VAL_BUS2 BUS3 TKDPO4K_VAL_BUS3 BUS4 TKDPO4K_VAL_BUS4               aDifferential TKDPO4K_VAL_ENET_PROBE_DIFFERENTIAL Single Ended TKDPO4K_VAL_ENET_PROBE_SINGLEENDED               �CH1 TKDPO4K_VAL_ENET_PLUS_DATA_CH1 CH2 TKDPO4K_VAL_ENET_PLUS_DATA_CH2 CH3 TKDPO4K_VAL_ENET_PLUS_DATA_CH3 CH4 TKDPO4K_VAL_ENET_PLUS_DATA_CH4               �CH1 TKDPO4K_VAL_ENET_DIFF_INPUT_DATA_SRC_CH1 CH2 TKDPO4K_VAL_ENET_DIFF_INPUT_DATA_SRC_CH2 CH3 TKDPO4K_VAL_ENET_DIFF_INPUT_DATA_SRC_CH3 CH4 TKDPO4K_VAL_ENET_DIFF_INPUT_DATA_SRC_CH4               BIPV4 TKDPO4K_VAL_ENET_PROT_IPV4 Other TKDPO4K_VAL_ENET_PROT_OTHER               �CH1 TKDPO4K_VAL_ENET_MINUS_DATA_SRC_CH1 CH2 TKDPO4K_VAL_ENET_MINUS_DATA_SRC_CH2 CH3 TKDPO4K_VAL_ENET_MINUS_DATA_SRC_CH3 CH4 TKDPO4K_VAL_ENET_MINUS_DATA_SRC_CH4   T    This function automatically configures the instrument.

Note: When you call this function, the oscilloscope senses the input signal and automatically configures many of the instrument settings. The settings no longer match the cache values for the corresponding attributes. Therefore, this function invalidates all attribute cache values.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
   ��   �  �    Instrument Handle                �]����  �    Status                                 	          �    This function sets the value of a ViInt32 attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes. It is best to use the high-level driver functions as much as possible. They handle order dependencies and multithread locking for you. In addition, they perform status checking only after setting all of the attributes. In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change. Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
        Passes the value to which you want to set the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  

  Note: Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    p    Passes the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Attributes 
  whose value cannot be set are dim. Help text is shown for 
  each attribute. Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box. If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes that have data types 
  consistent with this function. If you choose to see all IVI 
  attributes, the data types appear to the right of the 
  attribute names in the list box. The data types that are not 
  consistent with this function are dim. If you select an 
  attribute data type that is dim, LabWindows/CVI transfers you 
  to the function panel for the corresponding function that is 
  consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, this parameter passes VI_NULL or an empty string.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH")  - Math 

Default Value:  ""
   �q   �  �    Instrument Handle                �'����  �    Status                           �� � � �  �    Attribute Value                 ���� � ���                                          � > � �    Attribute ID                     �� > > �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViReal64 attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes. It is best to use the high-level driver functions as much as possible. They handle order dependencies and multithread locking for you. In addition, they perform status checking only after setting all of the attributes. In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change. Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
        Passes the value to which you want to set the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control. 
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  

  Note: Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    o    Passes the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Attributes 
  whose value cannot be set are dim. Help text is shown for 
  each attribute. Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box. If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes that have data types 
  consistent with this function. If you choose to see all IVI 
  attributes, the data types appear to the right of the 
  attribute names in the list box. The data types that are not 
  consistent with this function are dim. If you select an 
  attribute data type that is dim, LabWindows/CVI transfers you 
  to the function panel for the corresponding function that is 
  consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, this parameter passes VI_NULL or an empty string.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH")  - Math 

Default Value:  ""
   ��   �  �    Instrument Handle                �W����  �    Status                           �' � � �  �    Attribute Value                 ���� � ���                                          �J > � �    Attribute ID                     �� > > �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViString attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes. It is best to use the high-level driver functions as much as possible. They handle order dependencies and multithread locking for you. In addition, they perform status checking only after setting all of the attributes. In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change. Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
        Passes the value to which you want to set the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control. 
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  

  Note: Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    o    Passes the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Attributes 
  whose value cannot be set are dim. Help text is shown for 
  each attribute. Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box. If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes that have data types 
  consistent with this function. If you choose to see all IVI 
  attributes, the data types appear to the right of the 
  attribute names in the list box. The data types that are not 
  consistent with this function are dim. If you select an 
  attribute data type that is dim, LabWindows/CVI transfers you 
  to the function panel for the corresponding function that is 
  consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, this parameter passes VI_NULL or an empty string.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH")  - Math 

Default Value: ""
   ��   �  �    Instrument Handle                ȅ����  �    Status                           �U � � �  �    Attribute Value                 ���� � ���                                          �x > � �    Attribute ID                     �� > > �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViBoolean attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes. It is best to use the high-level driver functions as much as possible. They handle order dependencies and multithread locking for you. In addition, they perform status checking only after setting all of the attributes. In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change. Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
        Passes the value to which you want to set the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control. 
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  

  Note: Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    o    Passes the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Attributes 
  whose value cannot be set are dim. Help text is shown for 
  each attribute. Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box. If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes that have data types 
  consistent with this function. If you choose to see all IVI 
  attributes, the data types appear to the right of the 
  attribute names in the list box. The data types that are not 
  consistent with this function are dim. If you select an 
  attribute data type that is dim, LabWindows/CVI transfers you 
  to the function panel for the corresponding function that is 
  consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, this parameter passes VI_NULL or an empty string.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH")  - Math 

Default Value: ""
   ��   �  �    Instrument Handle                �����  �    Status                           � � � �  �    Attribute Value                 ���� � ���                                          � > � �    Attribute ID                     � > > �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViSession attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes. It is best to use the high-level driver functions as much as possible. They handle order dependencies and multithread locking for you. In addition, they perform status checking only after setting all of the attributes. In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change. Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
        Passes the value to which you want to set the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control. 
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  

  Note: Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, this parameter passes VI_NULL or an empty string.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH")  - Math 

Default Value: ""    o    Passes the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Attributes 
  whose value cannot be set are dim. Help text is shown for 
  each attribute. Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box. If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes that have data types 
  consistent with this function. If you choose to see all IVI 
  attributes, the data types appear to the right of the 
  attribute names in the list box. The data types that are not 
  consistent with this function are dim. If you select an 
  attribute data type that is dim, LabWindows/CVI transfers you 
  to the function panel for the corresponding function that is 
  consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.   �,   �  �    Instrument Handle                ������  �    Status                           �� � � �  �    Attribute Value                  � > > �  �    Channel Name                     { > � �    Attribute ID                    ���� � ���                                                	               ""                0    .Press <ENTER> for a list of 
value constants.   �    This function queries the value of a ViInt32 attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
    �    Returns the current value of the attribute. Passes the address of a ViInt32 variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control. 
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, this parameter passes VI_NULL or an empty string.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH")  - Math 

Default Value: ""
    �    Passes the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Help text is
  shown for each attribute. Select an attribute by 
  double-clicking on it or by selecting it and then pressing
  <ENTER>.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes that have data types 
  consistent with this function. If you choose to see all IVI 
  attributes, the data types appear to the right of the 
  attribute names in the list box. The data types that are not 
  consistent with this function are dim. If you select an 
  attribute data type that is dim, LabWindows/CVI transfers you 
  to the function panel for the corresponding function that is 
  consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.   F   �  �    Instrument Handle                �����  �    Status                           � � � �  �    Attribute Value                  � > > �  �    Channel Name                     . > � �    Attribute ID                           	           	            ""                0   �    This function queries the value of a ViReal64 attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
    �    Returns the current value of the attribute. Passes the address of a ViReal64 variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control. 
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, this parameter passes VI_NULL or an empty string.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH")  - Math 

Default Value: ""
    �    Passes the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Help text is
  shown for each attribute.  Select an attribute by 
  double-clicking on it or by selecting it and then pressing
  <ENTER>.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes that have data types 
  consistent with this function. If you choose to see all IVI 
  attributes, the data types appear to the right of the 
  attribute names in the list box. The data types that are not 
  consistent with this function are dim. If you select an 
  attribute data type that is dim, LabWindows/CVI transfers you 
  to the function panel for the corresponding function that is 
  consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.    �   �  �    Instrument Handle                !�����  �    Status                           (z � � �  �    Attribute Value                  *6 > > �  �    Channel Name                     ,� > � �    Attribute ID                           	           	           ""                0   !    This function queries the value of a ViString attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

You must provide a ViChar array to serve as a buffer for the value. You pass the number of bytes in the buffer as the Array Size parameter. If the current value of the attribute, including the terminating NUL byte, is larger than the size you indicate in the Array Size parameter, the function copies Array Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is 123456 and the Array Size is 4, the function places 123 into the buffer and returns 7.

If you want to call this function just to get the required buffer size, you can pass 0 for the Array Size and VI_NULL for the Attribute Value buffer.  

If you want the function to fill in the buffer regardless of the   number of bytes in the value, pass a negative number for the Array Size parameter.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
        The buffer in which the function returns the current value of the attribute. The buffer must be of type ViChar and have at least as many bytes as indicated in the Array Size parameter.

If the current value of the attribute, including the terminating NUL byte, contains more bytes that you indicate in this parameter, the function copies Array Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is 123456 and the Array Size is 4, the function places 123 into the buffer and returns 7.

If you specify 0 for the Array Size parameter, you can pass VI_NULL for this parameter.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control. 
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, this parameter passes VI_NULL or an empty string.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH")  - Math 

Default Value: ""
    �    Passes the number of bytes in the ViChar array you specify for the Attribute Value parameter.  

If the current value of the attribute, including the terminating NUL byte, contains more bytes that you indicate in this parameter, the function copies Array Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is 123456 and the Array Size is 4, the function places 123 into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Attribute Value buffer parameter.

Default Value: 512    �    Passes the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Help text is
  shown for each attribute. Select an attribute by 
  double-clicking on it or by selecting it and then pressing
  <ENTER>.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes that have data types 
  consistent with this function. If you choose to see all IVI 
  attributes, the data types appear to the right of the 
  attribute names in the list box. The data types that are not 
  consistent with this function are dim. If you select an 
  attribute data type that is dim, LabWindows/CVI transfers you 
  to the function panel for the corresponding function that is 
  consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.   8   �  �    Instrument Handle                8�����  �    Status or Required Size          AX � W � �    Attribute Value                  Ex >  �  �    Channel Name                     H  >� �  �    Array Size                       K > � � �    Attribute ID                           	           	            ""    512                0   �    This function queries the value of a ViBoolean attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid.      �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
    �    Returns the current value of the attribute. Passes the address of a ViBoolean variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control. 
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, this parameter passes VI_NULL or an empty string.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH")  - Math 

Default Value: ""
    �    Passes the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Help text is
  shown for each attribute. Select an attribute by 
  double-clicking on it or by selecting it and then pressing
  <ENTER>.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes that have data types 
  consistent with this function. If you choose to see all IVI 
  attributes, the data types appear to the right of the 
  attribute names in the list box. The data types that are not 
  consistent with this function are dim. If you select an 
  attribute data type that is dim, LabWindows/CVI transfers you 
  to the function panel for the corresponding function that is 
  consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.   S   �  �    Instrument Handle                S�����  �    Status                           Z� � � �  �    Attribute Value                  \X > > �  �    Channel Name                     _  > � �    Attribute ID                           	           	            ""                0   �    This function queries the value of a ViSession attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
    �    Returns the current value of the attribute. Passes the address of a ViSession variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control. 
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, this parameter passes VI_NULL or an empty string.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH")  - Math 

Default Value: ""
    �    Passes the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Help text is
  shown for each attribute. Select an attribute by 
  double-clicking on it or by selecting it and then pressing
  <ENTER>.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes that have data types 
  consistent with this function. If you choose to see all IVI 
  attributes, the data types appear to the right of the 
  attribute names in the list box. The data types that are not 
  consistent with this function are dim. If you select an 
  attribute data type that is dim, LabWindows/CVI transfers you 
  to the function panel for the corresponding function that is 
  consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.   f�   �  �    Instrument Handle                g}����  �    Status                           nM � � �  �    Attribute Value                  p
 > > �  �    Channel Name                     r� > � �    Attribute ID                           	           	            ""                0    S    This function checks the validity of a value you specify for a ViInt32 attribute.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
    0    Passes the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control. 
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  

  Note: Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, this parameter passes VI_NULL or an empty string.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH")  - Math 

Default Value: ""    o    Passes the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Attributes 
  whose value cannot be set are dim. Help text is shown for 
  each attribute. Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box. If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes that have data types 
  consistent with this function. If you choose to see all IVI 
  attributes, the data types appear to the right of the 
  attribute names in the list box. The data types that are not 
  consistent with this function are dim. If you select an 
  attribute data type that is dim, LabWindows/CVI transfers you 
  to the function panel for the corresponding function that is 
  consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.   y   �  �    Instrument Handle                y�����  �    Status                           �� � � �  �    Attribute Value                  �� > > �  �    Channel Name                    ���� � ���                                          �~ > � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    T    This function checks the validity of a value you specify for a ViReal64 attribute.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
    0    Passes the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control. 
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  

  Note: Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, this parameter passes VI_NULL or an empty string.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH")  - Math 

Default Value: ""    o    Passes the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Attributes 
  whose value cannot be set are dim. Help text is shown for 
  each attribute. Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box. If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes that have data types 
  consistent with this function. If you choose to see all IVI 
  attributes, the data types appear to the right of the 
  attribute names in the list box. The data types that are not 
  consistent with this function are dim. If you select an 
  attribute data type that is dim, LabWindows/CVI transfers you 
  to the function panel for the corresponding function that is 
  consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.   ��   �  �    Instrument Handle                ������  �    Status                           �q � � �  �    Attribute Value                  �� > > �  �    Channel Name                    ���� � ���                                          �P > � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    T    This function checks the validity of a value you specify for a ViString attribute.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
    0    Passes the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control. 
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  

  Note: Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, this parameter passes VI_NULL or an empty string.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH")  - Math 

Default Value: ""    o    Passes the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Attributes 
  whose value cannot be set are dim. Help text is shown for 
  each attribute. Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box. If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes that have data types 
  consistent with this function. If you choose to see all IVI 
  attributes, the data types appear to the right of the 
  attribute names in the list box. The data types that are not 
  consistent with this function are dim. If you select an 
  attribute data type that is dim, LabWindows/CVI transfers you 
  to the function panel for the corresponding function that is 
  consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.   ��   �  �    Instrument Handle                �s����  �    Status                           �C � � �  �    Attribute Value                  �{ > > �  �    Channel Name                    ���� � ���                                          �" > � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    U    This function checks the validity of a value you specify for a ViBoolean attribute.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
    0    Passes the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control. 
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  

  Note: Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, this parameter passes VI_NULL or an empty string.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH")  - Math 

Default Value: ""    o    Passes the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Attributes 
  whose value cannot be set are dim. Help text is shown for 
  each attribute. Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box. If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes that have data types 
  consistent with this function. If you choose to see all IVI 
  attributes, the data types appear to the right of the 
  attribute names in the list box. The data types that are not 
  consistent with this function are dim. If you select an 
  attribute data type that is dim, LabWindows/CVI transfers you 
  to the function panel for the corresponding function that is 
  consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.   ��   �  �    Instrument Handle                �F����  �    Status                           � � � �  �    Attribute Value                  �N > > �  �    Channel Name                    ���� � ���                                          �� > � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    U    This function checks the validity of a value you specify for a ViSession attribute.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
    0    Passes the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control. 
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  

  Note: Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, this parameter passes VI_NULL or an empty string.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH")  - Math 

Default Value: ""    o    Passes the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Attributes 
  whose value cannot be set are dim. Help text is shown for 
  each attribute. Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box. If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes that have data types 
  consistent with this function. If you choose to see all IVI 
  attributes, the data types appear to the right of the 
  attribute names in the list box. The data types that are not 
  consistent with this function are dim. If you select an 
  attribute data type that is dim, LabWindows/CVI transfers you 
  to the function panel for the corresponding function that is 
  consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.   �d   �  �    Instrument Handle                �����  �    Status                           �� � � �  �    Attribute Value                  �" > > �  �    Channel Name                    ���� � ���                                          �� > � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0   �    This function sets the buffer size used in reading waveforms. The tkdpo4k_ReadWaveform, tkdpo4k_FetchWaveform, tkdpo4k_ReadMinMaxWaveform, tkdpo4k_FetchMinMaxWaveform functions use this attribute to set the buffer size used to fetch waveforms. 

Notes: 

(1) Enlarging the buffer size is helpful to enhance the eaveform-fetching speed. Call this function and adjust the buffer size before calling the tkdpo4k_ReadWaveform, tkdpo4k_FetchWaveform, tkdpo4k_ReadMinMaxWaveform, and tkdpo4k_FetchMinMaxWaveform functions.

(2) Adjust the buffer size according to the waveform size. If you have a large waveform size and have a small buffer size, enlarging the buffer size is useful for increasing the speed. But if the buffer size is equal to or even bigger than the waveform size, you cannot increase the speed by enlarging the buffer size.

(3) If you are not critical about the waveform-fetching speed, use the default value.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    Passes the buffer size used in reading waveform. 

Valid Ranges:   
MIN_FETCH_BUFFER_SIZE (1000) ~ MAX_FETCH_BUFFER_SIZE (1000000)

Default Value: 10000   ߀   �  �    Instrument Handle                �5����  �    Status                           � W � �  �    Buffer Size                            	           10000   �    This function initiates an acquisition on the channels that you enable with the tkdpo4k_ConfigureChannel function. It then waits for the acquisition to complete, and returns the waveform for the channel you specify. You call the tkdpo4k_FetchWaveform function to obtain the waveforms for each of the remaining enabled channels without initiating another acquisition.

Note: After this function executes, each element in the Waveform Array parameter is a voltage.     U    Passes the number of elements in the Waveform Array parameter.

Default Value: None    %    Passes the maximum length of time in which to allow the read waveform operation to complete.    

If the operation does not complete within this time interval, the function returns the TKDPO4K_ERROR_MAX_TIME_EXCEEDED (0xBFFA2003) error code. When this occurs, you can call tkdpo4k_Abort to cancel the read waveform operation and return the oscilloscope to the Idle state.

Units: milliseconds.  

Default Value: 5000 (ms)

Note: The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    F    Returns the waveform that the oscilloscope acquires.  

Units: volts

Notes:

(1) The tkdpo4k_ActualRecordLength function returns the number of points the oscilloscope acquires for each channel. Pass a ViReal64 array with at least this many elements.

(2) If the oscilloscope cannot sample a value for a point in the waveform, the driver sets the corresponding element in the Waveform Array to an IEEE defined NaN (Not a Number) value.  

(3) You can test each element in the Waveform Array parameter for an invalid waveform element with the tkdpo4k_IsInvalidWfmElement function.
     V    Indicates the number of points the function places in the Waveform Array parameter.
    �    Indicates the time of the first point in the Waveform Array. The time is relative to the trigger event.  

For example, if the oscilloscope acquires the first point in the Waveform Array 1 second before the trigger, this parameter returns the value -1.0. If the acquisition of the first point occurs at the same time as the trigger, this parameter returns the value 0.0.

Units: seconds     V    Indicates the length of time between points in the Waveform Array.  

Units: seconds    �    Passes the name of the channel from which you want to read a waveform.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH")  - Math

Default Value: TKDPO4K_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.   �5 % � �  �    Waveform Size                    � %� �  �    Maximum Time (ms)                �   �  �    Instrument Handle                �t����  �    Status                           �B W W �  �    Waveform Array                   �� W- �  �    Actual Points                    �� � W �  �    Initial X                        �z �- �  �    X Increment                      �� % % � �    Channel Name                           5000        	           	            	            	           	                   	   �CH1 TKDPO4K_VAL_CH_1 CH2 TKDPO4K_VAL_CH_2 CH3 TKDPO4K_VAL_CH_3 CH4 TKDPO4K_VAL_CH_4 REF1 TKDPO4K_VAL_REF_1 REF2 TKDPO4K_VAL_REF_2 REF3 TKDPO4K_VAL_REF_3 REF4 TKDPO4K_VAL_REF_4 MATH TKDPO4K_VAL_MATH   _    This function initiates an acquisition on the channels that you enable with the tkdpo4k_ConfigureChannel function. It then waits for the acquisition to complete, and returns the min/max waveforms for the channel you specify. You call the tkdpo4k_FetchMinMaxWaveform function to obtain the min/max waveforms for each of the remaining enabled channels without initiating another acquisition.

Use this function to read waveforms when you set the acquisition type to TKDPO4K_VAL_PEAK_DETECT or TKDPO4K_VAL_ENVELOPE.

Notes:

(1) After this function executes, each element in the Min Waveform Array and Max Waveform Array parameters is either a voltage or a value indicating that the oscilloscope cannot sample a voltage.

(2) If the oscilloscope cannot sample a value for a point in the waveform, the driver sets the corresponding element in the Min Waveform Array or the Max Waveform Array to an IEEE-defined NaN (Not a Number) value.  

(3) You can test each element in the Min Waveform Array parameter and the Max Waveform Array parameter for an invalid waveform element with the tkdpo4k_IsInvalidWfmElement function.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
     q    Passes the number of elements in the Min Waveform Array and Max Waveform Array parameters.

Default Value: None        Passes the maximum length of time in which to allow the read waveform operation to complete.  

If the operation does not complete within this time interval, the function returns the TKDPO4K_ERROR_MAX_TIME_EXCEEDED error code. When this occurs, you can call tkdpo4k_Abort to cancel the read waveform operation and return the oscilloscope to the Idle state.

Units: milliseconds  

Default Value: 5000 (ms)

Note: The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.     �    Returns the minimum waveform that the oscilloscope acquires.

Units: volts

Note: The tkdpo4k_ActualRecordLength function returns the number of points the oscilloscope acquires for each channel. Pass a ViReal64 array with at least this many elements.     �    Returns the maximum waveform that the oscilloscope acquires.  

Units: volts

Note: The tkdpo4k_ActualRecordLength function returns the number of points the oscilloscope acquires for each channel. Pass a ViReal64 array with at least this many elements.     r    Indicates the number of points the function places in the Min Waveform Array and Max Waveform Array parameters.
    �    Indicates the time of the first point in the Min Waveform Array and Max Waveform Array. The time is relative to the trigger event.  

Units: seconds  

For example, if the oscilloscope acquires the first point in the waveforms 1 second before the trigger, this parameter returns the value -1.0. If the acquisition of the first point occurs at the same time as the trigger, this parameter returns the value 0.0.     o    Indicates the length of time between points in the Min Waveform Array and Max Waveform Array.

Units: seconds    �    Passes the name of the channel from which you want to read a waveform.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH")  - Math

Default Value: TKDPO4K_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.   �   �  �    Instrument Handle                |����  �    Status                           
L % � �  �    Waveform Size                    
� %� �  �    Maximum Time (ms)                � W % �  �    Min Waveform Array               � W � �  �    Max Waveform Array               � W� �  �    Actual Points                    f � W �  �    Initial X                        
 �8 �  �    X Increment                      � % % � �    Channel Name                           	               5000    	            	            	            	           	                   	   �CH1 TKDPO4K_VAL_CH_1 CH2 TKDPO4K_VAL_CH_2 CH3 TKDPO4K_VAL_CH_3 CH4 TKDPO4K_VAL_CH_4 REF1 TKDPO4K_VAL_REF_1 REF2 TKDPO4K_VAL_REF_2 REF3 TKDPO4K_VAL_REF_3 REF4 TKDPO4K_VAL_REF_4 MATH TKDPO4K_VAL_MATH   �    This function initiates an acquisition on the channels that you enable with the tkdpo4k_ConfigureChannel function. It then waits for the acquisition to complete, obtains a waveform measurement on the channel you specify, and returns the measurement value.  You specify a particular measurement type, such as rise time, frequency, and voltage peak-to-peak. You can call the tkdpo4k_FetchWaveformMeasurement function separately for any other waveform measurement that you want to obtain on a specific channel without initiating another acquisition.

Notes:

(1) You must configure the appropriate reference levels before you call this function to take a rise time, fall time, width negative, width positive, duty cycle negative, or duty cycle positive measurement.

(2) You configure the low, mid, and high references either by calling the tkdpo4k_ConfigureRefLevels function or by setting the following attributes.

  TKDPO4K_ATTR_MEAS_HIGH_REF
  TKDPO4K_ATTR_MEAS_LOW_REF
  TKDPO4K_ATTR_MEAS_MID_REF
     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    0    Passes the maximum length of time in which to allow the read waveform measurement operation to complete.    

If the operation does not complete within this time interval, the function returns the TKDPO4K_ERROR_MAX_TIME_EXCEEDED (0xBFFA2003) error code. When this occurs, you can call tkdpo4k_Abort to cancel the read waveform operation and return the oscilloscope to the Idle state.

Units: milliseconds  

Default Value: 5000 (ms)

Note: The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.    y    Returns the measured value.  

Units: The units depend on the Measurement Function you select as shown below.

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
    Area                 - volt-seconds
    Cycle Area           - volt-seconds
    Negative Cross       - seconds
    Positive Cross       - seconds
                      �    Passes the waveform measurement you want the oscilloscope to perform.

Defined Values:

- TKDPO4K_VAL_RISE_TIME   (0):  The time it takes the rising
  edge of the first pulse to rise from the value of
  TKDPO4K_ATTR_MEAS_LOW_REF to the value of 
  TKDPO4K_ATTR_MEAS_HIGH_REF.

- TKDPO4K_VAL_FALL_TIME   (1):  The time it takes the falling
  edge of the first pulse to fall from the value of
  TKDPO4K_ATTR_MEAS_HIGH_REF to the value of 
  TKDPO4K_ATTR_MEAS_LOW_REF.

- TKDPO4K_VAL_FREQUENCY   (2):  The number of cycles that occur
  in one second.

- TKDPO4K_VAL_PERIOD      (3):  The time it takes for the first
  complete signal cycle to occur.

- TKDPO4K_VAL_VOLTAGE_RMS (4):  View the true Root Mean Square
  voltage.

- TKDPO4K_VAL_VOLTAGE_PEAK_TO_PEAK (5):  The absolute
  difference between the maximum and minimum amplitudes.

- TKDPO4K_VAL_VOLTAGE_MAX (6):  Obtains the most positive peak
  voltage in the waveform.

- TKDPO4K_VAL_VOLTAGE_MIN (7):  Obtains the most negative peak
  voltage in the waveform.

- TKDPO4K_VAL_VOLTAGE_HIGH (8):  Obtains the highest voltage
  value calculated. If you use the min-max setup method, the
  value calculated is the same as the maximum value. If you use
  the histogram method, it is the value that occurs most
  frequently above the mid point.

- TKDPO4K_VAL_VOLTAGE_LOW (9):  Obtains the lowest voltage
  value calculated. If you use the min-max setup method, its the
  same as the minimum value. If you use the histogram method, it
  is the value that occurs most frequently below the mid point."

- TKDPO4K_VAL_VOLTAGE_AVERAGE (10):  Calculate the Arithmetic
  mean over the entire waveform.

- TKDPO4K_VAL_WIDTH_NEG (11):  Obtains the time between the
  crossings by the first negative pulse of the value of the
  TKDPO4K_ATTR_MEAS_HIGH_REF attribute.

- TKDPO4K_VAL_WIDTH_POS (12):  Obtains the time between the
  crossings by the first positive pulse of the value of the
  TKDPO4K_ATTR_MEAS_HIGH_REF attribute.

- TKDPO4K_VAL_DUTY_CYCLE_NEG (13):  Obtains as a percentage the
  ratio of the first negative pulse width to the signal period.

- TKDPO4K_VAL_DUTY_CYCLE_POS (14):  Obtains as a percentage the
  ratio of the first positive pulse width to the signal period."

- TKDPO4K_VAL_AMPLITUDE (15):  Obtains the difference of the
  high voltage value and the low voltage value.

- TKDPO4K_VAL_VOLTAGE_CYCLE_RMS (16):  Obtains the true Root
  Mean Square voltage for one cycle of a periodic signal.  The
  oscilloscope defines a cycle as the part of the waveform that
  goes from the first to the third crossing of the value of
  TKDPO4K_ATTR_MEAS_MID_REF.  For more complex or non-periodic
  waveforms, use TKDPO4K_VAL_VOLTAGE_RMS.

- TKDPO4K_VAL_VOLTAGE_CYCLE_AVERAGE (17):  Calculates the
  Arithmetic mean over one cycle of a periodic signal.  The
  oscilloscope defines a cycle as the part of the waveform that
  goes from the first to the third crossing of the value of
  TKDPO4K_ATTR_MEAS_MID_REF.  For more complex or non-periodic
  waveforms, use TKDPO4K_VAL_VOLTAGE_AVERAGE.

- TKDPO4K_VAL_POSITIVE_OVERSHOOT (18):  Obtains as a
  percentage the ratio of the difference of the maximum and high
  voltage values to the amplitude.

- TKDPO4K_VAL_NEGATIVE_OVERSHOOT (1001):  Obtains as a
  percentage the ratio of the difference of the low and minimum
  voltage values to the amplitude.

- TKDPO4K_VAL_TIMING_BURST_WIDTH (1002):  Obtains the time from
  the first crossing to the last crossing of the middle
  reference value by the waveform specified by
  TKDPO4K_ATTR_MEAS_SOURCE.

- TKDPO4K_VAL_AREA (1005):  The voltage over time, The area over 
  the entire waveform or gated region. The area measured above 
  the ground is positive, while the area below ground is 
  negative. The units are volt-seconds. 
                                           
- TKDPO4K_VAL_CYCLE_AREA (1006):  The voltage over time, The 
  area over the first cycle in the waveform or the first cycle 
  in the gated region. The area measured above the common 
  reference point is positive, while the area below the common 
  reference point is negative. The units are volt-seconds.                     

- TKDPO4K_VAL_CROSS_NEG (1007):  The time from the trigger point 
  to the first falling edge of the waveform or gated region. The 
  time is measured at the middle reference amplitude point of 
  the signal. The units are seconds.                     

- TKDPO4K_VAL_CROSS_POS (1008):  The time from the trigger 
  point to the first positive edge of the waveform or gated 
  region. The time is measured at the middle reference amplitude 
  point of the signal. The units are seconds.

- TKDPO4K_VAL_EDGE_POS (1009): The positive edge count.

- TKDPO4K_VAL_EDGE_NEG (1010): The negative edge count.

- TKDPO4K_VAL_PULSE_POS (1011): The positive pulse count.

- TKDPO4K_VAL_PULSE_NEG (1012): The negative pulse count.                     

Default Value: TKDPO4K_VAL_RISE_TIME  

Notes:

(1) Timing measurements on eye diagrams produce unreliable results; use edge triggering to obtain a single-valued waveform.

(2) You must configure the appropriate reference levels before you call this function to take a rise time, fall time, width negative, width positive, duty cycle negative, or duty cycle positive measurement.

(3) You configure the low, mid, and high references either by calling the tkdpo4k_ConfigureRefLevels function or by setting the following attributes.

  TKDPO4K_ATTR_MEAS_HIGH_REF
  TKDPO4K_ATTR_MEAS_LOW_REF
  TKDPO4K_ATTR_MEAS_MID_REF
    �    Passes the name of the channel from which you want to read a waveform.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH")  - Math

Default Value: TKDPO4K_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.   <   �  �    Instrument Handle                �����  �    Status                           "� %� �  �    Maximum Time (ms)                $� W � �  �    Measurement                      (x % � � �    Measurement Function             > % % � �    Channel Name                           	           5000    	                     }Rise Time TKDPO4K_VAL_RISE_TIME Fall Time TKDPO4K_VAL_FALL_TIME Frequency TKDPO4K_VAL_FREQUENCY Period TKDPO4K_VAL_PERIOD Voltage RMS TKDPO4K_VAL_VOLTAGE_RMS Voltage Vpp TKDPO4K_VAL_VOLTAGE_PEAK_TO_PEAK Voltage Max TKDPO4K_VAL_VOLTAGE_MAX Voltage Min TKDPO4K_VAL_VOLTAGE_MIN Voltage High TKDPO4K_VAL_VOLTAGE_HIGH Voltage Low TKDPO4K_VAL_VOLTAGE_LOW Voltage Average TKDPO4K_VAL_VOLTAGE_AVERAGE Width Negative TKDPO4K_VAL_WIDTH_NEG Width Positive TKDPO4K_VAL_WIDTH_POS Duty Cycle Negative TKDPO4K_VAL_DUTY_CYCLE_NEG Duty Cycle Positive TKDPO4K_VAL_DUTY_CYCLE_POS Amplitude TKDPO4K_VAL_AMPLITUDE Voltage RMS (cycle) TKDPO4K_VAL_VOLTAGE_CYCLE_RMS Voltage Average (cycle) TKDPO4K_VAL_VOLTAGE_CYCLE_AVERAGE Positive Overshoot TKDPO4K_VAL_POSITIVE_OVERSHOOT Negative Overshoot TKDPO4K_VAL_NEGATIVE_OVERSHOOT Timing Burst Width TKDPO4K_VAL_TIMING_BURST_WIDTH Area TKDPO4K_VAL_AREA Cycle Area TKDPO4K_VAL_CYCLE_AREA Negative Cross TKDPO4K_VAL_CROSS_NEG Positive Cross TKDPO4K_VAL_CROSS_POS Positive Edge Count TKDPO4K_VAL_EDGE_POS Negative Edge Count TKDPO4K_VAL_EDGE_NEG Positive Pulse Count TKDPO4K_VAL_PULSE_POS Negative Pulse Count TKDPO4K_VAL_PULSE_NEG            	   �CH1 TKDPO4K_VAL_CH_1 CH2 TKDPO4K_VAL_CH_2 CH3 TKDPO4K_VAL_CH_3 CH4 TKDPO4K_VAL_CH_4 REF1 TKDPO4K_VAL_REF_1 REF2 TKDPO4K_VAL_REF_2 REF3 TKDPO4K_VAL_REF_3 REF4 TKDPO4K_VAL_REF_4 MATH TKDPO4K_VAL_MATH    U    This function initiates a new waveform acquisition and returns a phase measurement.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
           
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Passes the channel name for which to read a waveform measurement.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1      ("CH1")       - Channel 1 
    TKDPO4K_VAL_CH_2      ("CH2")       - Channel 2
    TKDPO4K_VAL_CH_3      ("CH3")       - Channel 3
    TKDPO4K_VAL_CH_4      ("CH4")       - Channel 4
    TKDPO4K_VAL_REF_1     ("REF1")      - Reference 1
    TKDPO4K_VAL_REF_2     ("REF2")      - Reference 2
    TKDPO4K_VAL_REF_3     ("REF3")      - Reference 3
    TKDPO4K_VAL_REF_4     ("REF4")      - Reference 4
    TKDPO4K_VAL_MATH      ("MATH")      - Math

Default Value: TKDPO4K_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.     #    Returns the phase measured value.    �    Passes the channel name to measure "to" for phase immediate measurement.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1      ("CH1")       - Channel 1 
    TKDPO4K_VAL_CH_2      ("CH2")       - Channel 2
    TKDPO4K_VAL_CH_3      ("CH3")       - Channel 3
    TKDPO4K_VAL_CH_4      ("CH4")       - Channel 4
    TKDPO4K_VAL_REF_1     ("REF1")      - Reference 1
    TKDPO4K_VAL_REF_2     ("REF2")      - Reference 2
    TKDPO4K_VAL_REF_3     ("REF3")      - Reference 3
    TKDPO4K_VAL_REF_4     ("REF4")      - Reference 4
    TKDPO4K_VAL_MATH      ("MATH")      - Math

Default Value: TKDPO4K_VAL_CH_2

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.    0    Passes the maximum length of time in which to allow the read waveform measurement operation to complete.    

If the operation does not complete within this time interval, the function returns the TKDPO4K_ERROR_MAX_TIME_EXCEEDED (0xBFFA2003) error code. When this occurs, you can call tkdpo4k_Abort to cancel the read waveform operation and return the oscilloscope to the Idle state.

Units: milliseconds  

Default Value: 5000 (ms)

Note: The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.   G�   �  �    Instrument Handle                Hg����  �    Status                           O6 % % � �    Measure Source 1                 Q� W � �  �    Measurement                      R% % � � �    Measure Source 2                 T� %� �  �    Maximum Time (ms)                      	                   	   �Channel 1 TKDPO4K_VAL_CH_1 Channel 2 TKDPO4K_VAL_CH_2 Channel 3 TKDPO4K_VAL_CH_3 Channel 4 TKDPO4K_VAL_CH_4 Reference 1 TKDPO4K_VAL_REF_1 Reference 2 TKDPO4K_VAL_REF_2 Reference 3 TKDPO4K_VAL_REF_3 Reference 4 TKDPO4K_VAL_REF_4 Math TKDPO4K_VAL_MATH    	                  	   �Channel 1 TKDPO4K_VAL_CH_1 Channel 2 TKDPO4K_VAL_CH_2 Channel 3 TKDPO4K_VAL_CH_3 Channel 4 TKDPO4K_VAL_CH_4 Reference 1 TKDPO4K_VAL_REF_1 Reference 2 TKDPO4K_VAL_REF_2 Reference 3 TKDPO4K_VAL_REF_3 Reference 4 TKDPO4K_VAL_REF_4 Math TKDPO4K_VAL_MATH    5000    U    This function initiates a new waveform acquisition and returns a delay measurement.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
           
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Passes the channel name for which to read a waveform measurement.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1      ("CH1")       - Channel 1 
    TKDPO4K_VAL_CH_2      ("CH2")       - Channel 2
    TKDPO4K_VAL_CH_3      ("CH3")       - Channel 3
    TKDPO4K_VAL_CH_4      ("CH4")       - Channel 4
    TKDPO4K_VAL_REF_1     ("REF1")      - Reference 1
    TKDPO4K_VAL_REF_2     ("REF2")      - Reference 2
    TKDPO4K_VAL_REF_3     ("REF3")      - Reference 3
    TKDPO4K_VAL_REF_4     ("REF4")      - Reference 4
    TKDPO4K_VAL_MATH      ("MATH")      - Math

Default Value: TKDPO4K_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.     #    Returns the delay measured value.    �    Passes the channel name to measure "to" for delay immediate measurement.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1      ("CH1")       - Channel 1 
    TKDPO4K_VAL_CH_2      ("CH2")       - Channel 2
    TKDPO4K_VAL_CH_3      ("CH3")       - Channel 3
    TKDPO4K_VAL_CH_4      ("CH4")       - Channel 4
    TKDPO4K_VAL_REF_1     ("REF1")      - Reference 1
    TKDPO4K_VAL_REF_2     ("REF2")      - Reference 2
    TKDPO4K_VAL_REF_3     ("REF3")      - Reference 3
    TKDPO4K_VAL_REF_4     ("REF4")      - Reference 4
    TKDPO4K_VAL_MATH      ("MATH")      - Math

Default Value: TKDPO4K_VAL_CH_2

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.     �    Specifies the starting point and direction that determines the delay "to" edge when taking an immediate delay measurement.

Valid Values:

- TKDPO4K_VAL_DEL_DIR_BACKWARD (1)
- TKDPO4K_VAL_DEL_DIR_FORWARD  (2)

Default Value: TKDPO4K_VAL_DEL_DIR_BACKWARD     �    Specifies the slope of the edge the oscilloscope uses for the delay "from" waveform when taking an immediate delay measurement.

Valid Values:

- TKDPO4K_VAL_DEL_EDGE_RISE (1)
- TKDPO4K_VAL_DEL_EDGE_FALL (2)

Default Value: TKDPO4K_VAL_DEL_EDGE_RISE     �    Specifies the slope of the edge the oscilloscope uses for the delay "to" waveform when taking an immediate delay measurement.

Valid Values:

- TKDPO4K_VAL_DEL_EDGE_RISE (1)
- TKDPO4K_VAL_DEL_EDGE_FALL (2)

Default Value: TKDPO4K_VAL_DEL_EDGE_RISE    0    Passes the maximum length of time in which to allow the read waveform measurement operation to complete.    

If the operation does not complete within this time interval, the function returns the TKDPO4K_ERROR_MAX_TIME_EXCEEDED (0xBFFA2003) error code. When this occurs, you can call tkdpo4k_Abort to cancel the read waveform operation and return the oscilloscope to the Idle state.

Units: milliseconds  

Default Value: 5000 (ms)

Note: The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.   Z�   �  �    Instrument Handle                [�����  �    Status                           b~ % % � �    Measure Source 1                 eB � � �  �    Measurement                      em % � � �    Measure Source 2                 h8 p � � �    Delay Direction                  i? %� � �    Delay Edge 1                     jB p % � �    Delay Edge 2                     kC p� �  �    Maximum Time (ms)                      	                   	   �Channel 1 TKDPO4K_VAL_CH_1 Channel 2 TKDPO4K_VAL_CH_2 Channel 3 TKDPO4K_VAL_CH_3 Channel 4 TKDPO4K_VAL_CH_4 Reference 1 TKDPO4K_VAL_REF_1 Reference 2 TKDPO4K_VAL_REF_2 Reference 3 TKDPO4K_VAL_REF_3 Reference 4 TKDPO4K_VAL_REF_4 Math TKDPO4K_VAL_MATH    	                  	   �Channel 1 TKDPO4K_VAL_CH_1 Channel 2 TKDPO4K_VAL_CH_2 Channel 3 TKDPO4K_VAL_CH_3 Channel 4 TKDPO4K_VAL_CH_4 Reference 1 TKDPO4K_VAL_REF_1 Reference 2 TKDPO4K_VAL_REF_2 Reference 3 TKDPO4K_VAL_REF_3 Reference 4 TKDPO4K_VAL_REF_4 Math TKDPO4K_VAL_MATH               LBackwards TKDPO4K_VAL_DEL_DIR_BACKWARD Forwards TKDPO4K_VAL_DEL_DIR_FORWARD               >Rise TKDPO4K_VAL_DEL_EDGE_RISE Fall TKDPO4K_VAL_DEL_EDGE_FALL               >Rise TKDPO4K_VAL_DEL_EDGE_RISE Fall TKDPO4K_VAL_DEL_EDGE_FALL    5000   P    This function initiates a waveform acquisition. After you call this function, the oscilloscope leaves the Idle state and waits for a trigger. The oscilloscope acquires a waveform for each channel you have enabled with the tkdpo4k_ConfigureChannel function.

Notes:

(1) This function does not check the instrument status. Typically, you call this function only in a sequence of calls to other low-level driver functions. The sequence performs one operation. You use the low-level functions to optimize one or more aspects of interaction with the instrument. If you want to check the instrument status, call the tkdpo4k_error_query function at the conclusion of the sequence.

(2)  When the MATH channel is enabled, any waveform acquisition contains a one-second delay counter to allow for the instrument to settle its calculations on the channel.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
   u�   �  �    Instrument Handle                v�����  �    Status                                 	              This function returns whether an acquisition is in progress, complete, or if the status is unknown.

Note: This function does not check the instrument status. Typically, you call this function only in a sequence of calls to other low-level driver functions. The sequence performs one operation. You use the low-level functions to optimize one or more aspects of interaction with the instrument. If you want to check the instrument status, call the tkdpo4k_error_query function at the conclusion of the sequence.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
        Returns the acquisition status of the oscilloscope. Possible values that this parameter returns are:

- TKDPO4K_VAL_ACQ_IN_PROGRESS (0) - The oscilloscope 
  is currently acquiring a waveform.

- TKDPO4K_VAL_ACQ_COMPLETE (1) - The acquisition
  is complete.   �   �  �    Instrument Handle                ������  �    Status                           �f = � �  �    Acquisition Status                     	           	           �    This function sends a command to trigger the oscilloscope.  

Note: This function does not check the instrument status. Typically, you call this function only in a sequence of calls to other low-level driver functions. The sequence performs one operation. You use the low-level functions to optimize one or more aspects of interaction with the instrument. If you want to check the instrument status, call the tkdpo4k_error_query function at the conclusion of the sequence.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None   �����  �    Status                           ��   �  �    Instrument Handle                  	              	�    This function returns the waveform the oscilloscope acquires for the channel you specify. The waveform is from a previously initiated acquisition.  

The tkdpo4k_InitiateAcquisition starts an acquisition on the channels that you enable with the tkdpo4k_ConfigureChannel function. The oscilloscope acquires waveforms for the enabled channels concurrently. You use the tkdpo4k_AcquisitionStatus function to determine when the acquisition is complete. You must call this function separately for each enabled channel to obtain the waveforms.

You can call the tkdpo4k_ReadWaveform function instead of the tkdpo4k_InitiateAcquisition function. The tkdpo4k_ReadWaveform function starts an acquisition on all enabled channels, waits for the acquisition to complete, and returns the waveform for the channel you specify. You call this function to obtain the waveforms for each of the remaining channels.

Notes:

(1) After this function executes, each element in the Waveform Array parameter is either a voltage or a value indicating that the oscilloscope could not sample a voltage.

(2) If the oscilloscope cannot sample a value for a point in the waveform, the driver sets the corresponding element in the Waveform Array to an IEEE-defined NaN (Not a Number) value.  

(3) You can test each element in the Waveform Array parameter for an invalid waveform element with the tkdpo4k_IsInvalidWfmElement function.

(4) This function does not check the instrument status.   Typically, you call this function only in a sequence of calls to other low-level driver functions. The sequence performs one operation. You use the low-level functions to optimize one or more aspects of interaction with the instrument. If you want to check the instrument status, call the tkdpo4k_error_query function at the conclusion of the sequence.

(5) In the single sequence mode, you use this function according to the IVI specification statement. In the continuous mode, after the first time you call the tkdpo4k_InitiateAcquisition function, you can call this function continuously without initiating acquisition each time for enhancing the waveform-fetching speed. But there is no guarantee that each waveform you fetched is always a new acquired one. Also you cannot modify other configuration during the period of waveform fetching. Otherwise, you need to call the tkdpo4k_InitiateAcquisition function again to make the new configuration valid in this function.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
     W    Passes the number of elements in the Waveform Array parameter.

Default Value: None

    J    Returns the waveform that the oscilloscope acquires.  

Units: volts

Notes:

(1) The tkdpo4k_ActualRecordLength function returns the number of points the oscilloscope acquires for each channel and passes a ViReal64 array with at least this many elements.

(2) If the oscilloscope cannot sample a value for a point in the waveform, the driver sets the corresponding element in the Waveform Array to an IEEE defined NaN (Not a Number) value.  

(3) You can test each element in the Waveform Array parameter for an invalid waveform element with the tkdpo4k_IsInvalidWfmElement function.     U    Indicates the number of points the function places in the Waveform Array parameter.    �    Indicates the time of the first point in the Waveform Array. The time is relative to the trigger event.  

For example, if the oscilloscope acquires the first point in the Waveform Array one second before the trigger, this parameter returns the value -1.0. If the acquisition of the first point occurs at the same time as the trigger, this parameter returns the value 0.0.

Units: seconds     V    Indicates the length of time between points in the Waveform Array.  

Units: seconds    �    Passes the name of the channel from which you want to read a waveform.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH")  - Math

Default Value: TKDPO4K_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.   ��   �  �    Instrument Handle                �Q����  �    Status                           �! % � �  �    Waveform Size                    �� %� �  �    Waveform Array                   �� p % �  �    Actual Points                    �/ p � �  �    Initial X                        �� p� �  �    X Increment                      � % % � �    Channel Name                           	               	            	            	           	                   	   �Channel 1 TKDPO4K_VAL_CH_1 Channel 2 TKDPO4K_VAL_CH_2 Channel 3 TKDPO4K_VAL_CH_3 Channel 4 TKDPO4K_VAL_CH_4 Reference 1 TKDPO4K_VAL_REF_1 Reference 2 TKDPO4K_VAL_REF_2 Reference 3 TKDPO4K_VAL_REF_3 Reference 4 TKDPO4K_VAL_REF_4 Math TKDPO4K_VAL_MATH   �    This function returns the minimum and maximum waveforms that the oscilloscope acquires for the channel you specify. The waveforms are from a previously initiated acquisition. Use this function to fetch waveforms when you set the acquisition type to TKDPO4K_VAL_PEAK_DETECT or TKDPO4K_VAL_ENVELOPE.

The tkdpo4k_InitiateAcquisition function starts an acquisition on the channels that you enable with the tkdpo4k_ConfigureChannel function. The oscilloscope acquires the min/max waveforms for the enabled channels concurrently. You use the tkdpo4k_AcquisitionStatus function to determine when the acquisition is complete. You must call this function separately for each enabled channel to obtain the min/max waveforms.

You can call the tkdpo4k_ReadMinMaxWaveform function instead of the tkdpo4k_InitiateAcquisition function. The tkdpo4k_ReadMinMaxWaveform function starts an acquisition on all enabled channels, waits for the acquisition to complete, and returns the min/max waveforms for the channel you specify. You call this function to obtain the min/max waveforms for each of the remaining channels.

Notes:

(1) After this function executes, each element in the Min Waveform Array and Max Waveform Array parameters is a voltage.

(2) This function does not check the instrument status. Typically, you call this function only in a sequence of calls to other low-level driver functions. The sequence performs one operation. You use the low-level functions to optimize one or more aspects of interaction with the instrument. If you want to check the instrument status, call the tkdpo4k_error_query function at the conclusion of the sequence.

(3) In the single sequence mode, you use this function according to the IVI specification statement. In the continuous mode, after the first time you call the tkdpo4k_InitiateAcquisition function, you can call this function continuously without initiating acquisition each time for enhancing the waveform-fetching speed. But there is no guarantee that each waveform you fetched is always a new acquired one. Also you cannot modify other configuration during the period of waveform fetching. Otherwise, you need to call the tkdpo4k_InitiateAcquisition function again to make the new configuration valid in this function.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
     q    Passes the number of elements in the Min Waveform Array and Max Waveform Array parameters.

Default Value: None    W    Returns the minimum waveform that the oscilloscope acquires.

Units: volts

Notes:

(1) The tkdpo4k_ActualRecordLength function returns the number of points the oscilloscope acquires for each channel and passes a ViReal64 array with at least this many elements.

2) If the oscilloscope cannot sample a value for a point in the waveform, the driver sets the corresponding element in the Min Waveform Array to an IEEE defined NaN (Not a Number) value.  

(3) You can test each element in the Min Waveform Array parameter for an invalid waveform element with the tkdpo4k_IsInvalidWfmElement function.    Z    Returns the maximum waveform that the oscilloscope acquires.  

Units: volts

Notes:

(1) The tkdpo4k_ActualRecordLength function returns the number of points the oscilloscope acquires for each channel and passes a ViReal64 array with at least this many elements.

(2) If the oscilloscope cannot sample a value for a point in the waveform, the driver sets the corresponding element in the Max Waveform Array to an IEEE defined NaN (Not a Number) value.  

(3) You can test each element in the Max Waveform Array parameter for an invalid waveform element with the tkdpo4k_IsInvalidWfmElement function.     q    Indicates the number of points the function places in the Min Waveform Array and Max Waveform Array parameters.    �    Indicates the time of the first point in the Min Waveform Array and Max Waveform Array. The time is relative to the trigger event.  

For example, if the oscilloscope acquires the first point in the waveforms one second before the trigger, this parameter returns the value -1.0. If the acquisition of the first point occurs at the same time as the trigger, this parameter returns the value 0.0.

Units: seconds     q    Indicates the length of time between points in the Min Waveform Array and Max Waveform Array.  

Units: seconds    �    Passes the channel name for which to read the minimum and maximum waveforms.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH") - Math

Default Value: TKDPO4K_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.   �{   �  �    Instrument Handle                �0����  �    Status                           �  W  �  �    Waveform Size                    �y W � �  �    Min Waveform Array               �� Wx �  �    Max Waveform Array               �: �  �  �    Actual Points                    ĳ � � �  �    Initial X                        �W �w �  �    X Increment                      �� % � � �    Channel Name                           	               	            	            	            	           	                   	   �Channel 1 TKDPO4K_VAL_CH_1 Channel 2 TKDPO4K_VAL_CH_2 Channel 3 TKDPO4K_VAL_CH_3 Channel 4 TKDPO4K_VAL_CH_4 Reference 1 TKDPO4K_VAL_REF_1 Reference 2 TKDPO4K_VAL_REF_2 Reference 3 TKDPO4K_VAL_REF_3 Reference 4 TKDPO4K_VAL_REF_4 Math TKDPO4K_VAL_MATH       This function obtains a waveform measurement and returns the measurement value. You specify a particular measurement type, such as rise time, frequency, and voltage peak-to-peak. The waveform on which the oscilloscope calculates the waveform measurement is from an acquisition that you previously initiated.

Use the tkdpo4k_InitiateAcquisition function to start an acquisition on the channels that you enable with the tkdpo4k_ConfigureChannel function. The oscilloscope acquires waveforms for the enabled channels concurrently. You use the tkdpo4k_AcquisitionStatus function to determine when the acquisition is complete. You call this function separately for each waveform measurement you want to obtain on a specific channel.

You can call the tkdpo4k_ReadWaveformMeasurement function instead of the tkdpo4k_InitiateAcquisition function. The tkdpo4k_ReadWaveformMeasurement function starts an acquisition on all enabled channels. It then waits for the acquisition to complete, obtains a waveform measurement on the channel you specify, and returns the measurement value. You call this function separately for any other waveform measurement that you want to obtain on a specific channel.

Notes:

(1) You must configure the appropriate reference levels before you call this function to take a rise time, fall time, width negative, width positive, duty cycle negative, or duty cycle positive measurement.

(2) You configure the low, mid, and high references either by calling the tkdpo4k_ConfigureRefLevels function or by setting the following attributes.

  TKDPO4K_ATTR_MEAS_HIGH_REF
  TKDPO4K_ATTR_MEAS_LOW_REF
  TKDPO4K_ATTR_MEAS_MID_REF

(3) This function does not check the instrument status. Typically, you call this function only in a sequence of calls to other low-level driver functions. The sequence performs one operation. You use the low-level functions to optimize one or more aspects of interaction with the instrument. If you want to check the instrument status, call the tkdpo4k_error_query function at the conclusion of the sequence.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
           
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Passes the channel name for which to read a waveform measurement.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1      ("CH1")       - Channel 1 
    TKDPO4K_VAL_CH_2      ("CH2")       - Channel 2
    TKDPO4K_VAL_CH_3      ("CH3")       - Channel 3
    TKDPO4K_VAL_CH_4      ("CH4")       - Channel 4
    TKDPO4K_VAL_REF_1     ("REF1")      - Reference 1
    TKDPO4K_VAL_REF_2     ("REF2")      - Reference 2
    TKDPO4K_VAL_REF_3     ("REF3")      - Reference 3
    TKDPO4K_VAL_REF_4     ("REF4")      - Reference 4
    TKDPO4K_VAL_MATH      ("MATH")      - Math

Default Value: TKDPO4K_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.    �    Returns the measured value.  

Units: The units depend on the Measurement Function you select as shown below.

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
    Voltage Cycle RMS    - volts
    Voltage Max          - volts
    Voltage Min          - volts
    Voltage High         - volts
    Voltage Low          - volts
    Positive Overshoot   - volts
    Negative Overshoot   - volts
    Burst Width          - seconds
    X    Passes the waveform measurement you want the oscilloscope to perform.

Defined Values:

- TKDPO4K_VAL_RISE_TIME (0): The time it takes the rising
  edge of the first pulse to rise from the value of
  TKDPO4K_ATTR_MEAS_LOW_REF to the value of 
  TKDPO4K_ATTR_MEAS_HIGH_REF.

- TKDPO4K_VAL_FALL_TIME (1): The time it takes the falling
  edge of the first pulse to fall from the value of
  TKDPO4K_ATTR_MEAS_HIGH_REF to the value of 
  TKDPO4K_ATTR_MEAS_LOW_REF.

- TKDPO4K_VAL_FREQUENCY (2): The number of cycles that occur
  in one second.

- TKDPO4K_VAL_PERIOD (3): The time it takes for the first
  complete signal cycle to occur.

- TKDPO4K_VAL_VOLTAGE_RMS (4): Views the true Root Mean Square
  voltage.

- TKDPO4K_VAL_VOLTAGE_PEAK_TO_PEAK (5): The absolute
  difference between the maximum and minimum amplitudes.

- TKDPO4K_VAL_VOLTAGE_MAX (6): Obtains the most positive peak
  voltage in the waveform.

- TKDPO4K_VAL_VOLTAGE_MIN (7): Obtains the most negative peak
  voltage in the waveform.

- TKDPO4K_VAL_VOLTAGE_HIGH (8): Obtains the highest voltage
  value calculated. If you use the min-max setup method, the
  value calculated is the same as the maximum value. If you use
  the histogram method, it is the value that occurs most
  frequently above the mid point.

- TKDPO4K_VAL_VOLTAGE_LOW (9): Obtains the lowest voltage
  value calculated. If you use the min-max setup method, its the
  same as the minimum value. If you use the histogram method, it
  is the value that occurs most frequently below the mid point."

- TKDPO4K_VAL_VOLTAGE_AVERAGE (10): Calculates the Arithmetic
  mean over the entire waveform.

- TKDPO4K_VAL_WIDTH_NEG (11): Obtains the time between the
  crossings by the first negative pulse of the value of the
  TKDPO4K_ATTR_MEAS_HIGH_REF attribute.

- TKDPO4K_VAL_WIDTH_POS (12): Obtains the time between the
  crossings by the first positive pulse of the value of the
  TKDPO4K_ATTR_MEAS_HIGH_REF attribute.

- TKDPO4K_VAL_DUTY_CYCLE_NEG (13): Obtains as a percentage the
  ratio of the first negative pulse width to the signal period.

- TKDPO4K_VAL_DUTY_CYCLE_POS (14): Obtains as a percentage the
  ratio of the first positive pulse width to the signal period."

- TKDPO4K_VAL_AMPLITUDE (15): Obtains the difference of the
  high voltage value and the low voltage value.

- TKDPO4K_VAL_VOLTAGE_CYCLE_RMS (16): Obtains the true Root
  Mean Square voltage for one cycle of a periodic signal.  The
  oscilloscope defines a cycle as the part of the waveform that
  goes from the first to the third crossing of the value of
  TKDPO4K_ATTR_MEAS_MID_REF.  For more complex or non-periodic
  waveforms, use TKDPO4K_VAL_VOLTAGE_RMS.

- TKDPO4K_VAL_VOLTAGE_CYCLE_AVERAGE (17): Calculates the
  Arithmetic mean over one cycle of a periodic signal.  The
  oscilloscope defines a cycle as the part of the waveform that
  goes from the first to the third crossing of the value of
  TKDPO4K_ATTR_MEAS_MID_REF.  For more complex or non-periodic
  waveforms, use TKDPO4K_VAL_VOLTAGE_AVERAGE.

- TKDPO4K_VAL_POSITIVE_OVERSHOOT (18): Obtains as a
  percentage the ratio of the difference of the maximum and high
  voltage values to the amplitude.

- TKDPO4K_VAL_NEGATIVE_OVERSHOOT (1001): Obtains as a
  percentage the ratio of the difference of the low and minimum
  voltage values to the amplitude.

- TKDPO4K_VAL_TIMING_BURST_WIDTH (1002): Obtains the time from
  the first crossing to the last crossing of the middle
  reference value by the waveform specified by
  TKDPO4K_ATTR_MEAS_SOURCE.

- TKDPO4K_VAL_AREA (1005): Calculates the area over the entire
  waveform or gated region. The area measured above the ground
  is positive, while the area below ground is negative. The
  units are volt-seconds. 
                                           
- TKDPO4K_VAL_CYCLE_AREA (1006): Calculates the area over the 
  first cycle in the waveform or the first cycle in the gated 
  region. The area measured above the common reference point is 
  positive, while the area below the common reference point is 
  negative. The units are volt-seconds.                     

- TKDPO4K_VAL_CROSS_NEG (1007): Obtains the time from the 
  trigger point to the first falling edge of the waveform or
  gated region. The time is measured at the middle reference
  amplitude point of the signal. The units are seconds.                     

- TKDPO4K_VAL_CROSS_POS (1008): Obtains the time from the 
  trigger point to the first positive edge of the waveform or 
  gated region. The time is measured at the middle reference 
  amplitude point of the signal. The units are seconds.       

- TKDPO4K_VAL_EDGE_POS (1009): The positive edge count.

- TKDPO4K_VAL_EDGE_NEG (1010): The negative edge count.

- TKDPO4K_VAL_PULSE_POS (1011): The positive pulse count.

- TKDPO4K_VAL_PULSE_NEG (1012): The negative pulse count.              

Default Value: TKDPO4K_VAL_RISE_TIME  

Notes:

(1) Timing measurements on eye diagrams produce unreliable results; use edge triggering to obtain a single-valued waveform.

(2) You must configure the appropriate reference levels before you call this function to take a rise time, fall time, width negative, width positive, duty cycle negative, or duty cycle positive measurement.

(3) You configure the low, mid, and high references either by calling the tkdpo4k_ConfigureRefLevels function or by setting the following attributes.

  TKDPO4K_ATTR_MEAS_HIGH_REF
  TKDPO4K_ATTR_MEAS_LOW_REF
  TKDPO4K_ATTR_MEAS_MID_REF
   ԣ   �  �    Instrument Handle                �Y����  �    Status                           �( % > � �    Channel Name                     �� p � �  �    Measurement                      �� %Q � �    Measurement Function                   	                   	   �Channel 1 TKDPO4K_VAL_CH_1 Channel 2 TKDPO4K_VAL_CH_2 Channel 3 TKDPO4K_VAL_CH_3 Channel 4 TKDPO4K_VAL_CH_4 Reference 1 TKDPO4K_VAL_REF_1 Reference 2 TKDPO4K_VAL_REF_2 Reference 3 TKDPO4K_VAL_REF_3 Reference 4 TKDPO4K_VAL_REF_4 Math TKDPO4K_VAL_MATH    	                     }Rise Time TKDPO4K_VAL_RISE_TIME Fall Time TKDPO4K_VAL_FALL_TIME Frequency TKDPO4K_VAL_FREQUENCY Period TKDPO4K_VAL_PERIOD Voltage RMS TKDPO4K_VAL_VOLTAGE_RMS Voltage Vpp TKDPO4K_VAL_VOLTAGE_PEAK_TO_PEAK Voltage Max TKDPO4K_VAL_VOLTAGE_MAX Voltage Min TKDPO4K_VAL_VOLTAGE_MIN Voltage High TKDPO4K_VAL_VOLTAGE_HIGH Voltage Low TKDPO4K_VAL_VOLTAGE_LOW Voltage Average TKDPO4K_VAL_VOLTAGE_AVERAGE Width Negative TKDPO4K_VAL_WIDTH_NEG Width Positive TKDPO4K_VAL_WIDTH_POS Duty Cycle Negative TKDPO4K_VAL_DUTY_CYCLE_NEG Duty Cycle Positive TKDPO4K_VAL_DUTY_CYCLE_POS Amplitude TKDPO4K_VAL_AMPLITUDE Voltage RMS (cycle) TKDPO4K_VAL_VOLTAGE_CYCLE_RMS Voltage Average (cycle) TKDPO4K_VAL_VOLTAGE_CYCLE_AVERAGE Positive Overshoot TKDPO4K_VAL_POSITIVE_OVERSHOOT Negative Overshoot TKDPO4K_VAL_NEGATIVE_OVERSHOOT Timing Burst Width TKDPO4K_VAL_TIMING_BURST_WIDTH Area TKDPO4K_VAL_AREA Cycle Area TKDPO4K_VAL_CYCLE_AREA Negative Cross TKDPO4K_VAL_CROSS_NEG Positive Cross TKDPO4K_VAL_CROSS_POS Positive Edge Count TKDPO4K_VAL_EDGE_POS Negative Edge Count TKDPO4K_VAL_EDGE_NEG Positive Pulse Count TKDPO4K_VAL_PULSE_POS Negative Pulse Count TKDPO4K_VAL_PULSE_NEG    .    This function fetches the phase measurement.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
           
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Passes the channel name for which to read a waveform measurement.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1      ("CH1")       - Channel 1 
    TKDPO4K_VAL_CH_2      ("CH2")       - Channel 2
    TKDPO4K_VAL_CH_3      ("CH3")       - Channel 3
    TKDPO4K_VAL_CH_4      ("CH4")       - Channel 4
    TKDPO4K_VAL_REF_1     ("REF1")      - Reference 1
    TKDPO4K_VAL_REF_2     ("REF2")      - Reference 2
    TKDPO4K_VAL_REF_3     ("REF3")      - Reference 3
    TKDPO4K_VAL_REF_4     ("REF4")      - Reference 4
    TKDPO4K_VAL_MATH      ("MATH")      - Math

Default Value: TKDPO4K_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.     #    Returns the phase measured value.    �    Passes the channel name to measure "to" for phase immediate measurement.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1      ("CH1")       - Channel 1 
    TKDPO4K_VAL_CH_2      ("CH2")       - Channel 2
    TKDPO4K_VAL_CH_3      ("CH3")       - Channel 3
    TKDPO4K_VAL_CH_4      ("CH4")       - Channel 4
    TKDPO4K_VAL_REF_1     ("REF1")      - Reference 1
    TKDPO4K_VAL_REF_2     ("REF2")      - Reference 2
    TKDPO4K_VAL_REF_3     ("REF3")      - Reference 3
    TKDPO4K_VAL_REF_4     ("REF4")      - Reference 4
    TKDPO4K_VAL_MATH      ("MATH")      - Math

Default Value: TKDPO4K_VAL_CH_2

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.   �   �  �    Instrument Handle                ������  �    Status                           � % > � �    Measure Source 1                 	h p � �  �    Measurement                      	� %Q � �    Measure Source 2                       	                   	   �Channel 1 TKDPO4K_VAL_CH_1 Channel 2 TKDPO4K_VAL_CH_2 Channel 3 TKDPO4K_VAL_CH_3 Channel 4 TKDPO4K_VAL_CH_4 Reference 1 TKDPO4K_VAL_REF_1 Reference 2 TKDPO4K_VAL_REF_2 Reference 3 TKDPO4K_VAL_REF_3 Reference 4 TKDPO4K_VAL_REF_4 Math TKDPO4K_VAL_MATH    	                  	   �Channel 1 TKDPO4K_VAL_CH_1 Channel 2 TKDPO4K_VAL_CH_2 Channel 3 TKDPO4K_VAL_CH_3 Channel 4 TKDPO4K_VAL_CH_4 Reference 1 TKDPO4K_VAL_REF_1 Reference 2 TKDPO4K_VAL_REF_2 Reference 3 TKDPO4K_VAL_REF_3 Reference 4 TKDPO4K_VAL_REF_4 Math TKDPO4K_VAL_MATH    .    This function fetches the delay measurement.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
           
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Passes the channel name for which to read a waveform measurement.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1      ("CH1")       - Channel 1 
    TKDPO4K_VAL_CH_2      ("CH2")       - Channel 2
    TKDPO4K_VAL_CH_3      ("CH3")       - Channel 3
    TKDPO4K_VAL_CH_4      ("CH4")       - Channel 4
    TKDPO4K_VAL_REF_1     ("REF1")      - Reference 1
    TKDPO4K_VAL_REF_2     ("REF2")      - Reference 2
    TKDPO4K_VAL_REF_3     ("REF3")      - Reference 3
    TKDPO4K_VAL_REF_4     ("REF4")      - Reference 4
    TKDPO4K_VAL_MATH      ("MATH")      - Math

Default Value: TKDPO4K_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.     #    Returns the delay measured value.    �    Passes the channel name to measure "to" for delay immediate measurement.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1      ("CH1")       - Channel 1 
    TKDPO4K_VAL_CH_2      ("CH2")       - Channel 2
    TKDPO4K_VAL_CH_3      ("CH3")       - Channel 3
    TKDPO4K_VAL_CH_4      ("CH4")       - Channel 4
    TKDPO4K_VAL_REF_1     ("REF1")      - Reference 1
    TKDPO4K_VAL_REF_2     ("REF2")      - Reference 2
    TKDPO4K_VAL_REF_3     ("REF3")      - Reference 3
    TKDPO4K_VAL_REF_4     ("REF4")      - Reference 4
    TKDPO4K_VAL_MATH      ("MATH")      - Math

Default Value: TKDPO4K_VAL_CH_2

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.     �    Specifies the starting point and direction that determines the delay "to" edge when taking an immediate delay measurement.

Valid Values:

- TKDPO4K_VAL_DEL_DIR_BACKWARD (1)
- TKDPO4K_VAL_DEL_DIR_FORWARD  (2)

Default Value: TKDPO4K_VAL_DEL_DIR_BACKWARD     �    Specifies the slope of the edge the oscilloscope uses for the delay "from" waveform when taking an immediate delay measurement.

Valid Values:

- TKDPO4K_VAL_DEL_EDGE_RISE (1)
- TKDPO4K_VAL_DEL_EDGE_FALL (2)

Default Value: TKDPO4K_VAL_DEL_EDGE_RISE     �    Specifies the slope of the edge the oscilloscope uses for the delay "to" waveform when taking an immediate delay measurement.

Valid Values:

- TKDPO4K_VAL_DEL_EDGE_RISE (1)
- TKDPO4K_VAL_DEL_EDGE_FALL (2)

Default Value: TKDPO4K_VAL_DEL_EDGE_RISE   �   �  �    Instrument Handle                �����  �    Status                           P % % � �    Measure Source 1                  � � �  �    Measurement                      ? % � � �    Measure Source 2                 
 WY � �    Delay Direction                   %� � �    Delay Edge 1                      W > � �    Delay Edge 2                           	                   	   �Channel 1 TKDPO4K_VAL_CH_1 Channel 2 TKDPO4K_VAL_CH_2 Channel 3 TKDPO4K_VAL_CH_3 Channel 4 TKDPO4K_VAL_CH_4 Reference 1 TKDPO4K_VAL_REF_1 Reference 2 TKDPO4K_VAL_REF_2 Reference 3 TKDPO4K_VAL_REF_3 Reference 4 TKDPO4K_VAL_REF_4 Math TKDPO4K_VAL_MATH    	                  	   �Channel 1 TKDPO4K_VAL_CH_1 Channel 2 TKDPO4K_VAL_CH_2 Channel 3 TKDPO4K_VAL_CH_3 Channel 4 TKDPO4K_VAL_CH_4 Reference 1 TKDPO4K_VAL_REF_1 Reference 2 TKDPO4K_VAL_REF_2 Reference 3 TKDPO4K_VAL_REF_3 Reference 4 TKDPO4K_VAL_REF_4 Math TKDPO4K_VAL_MATH               LBackwards TKDPO4K_VAL_DEL_DIR_BACKWARD Forwards TKDPO4K_VAL_DEL_DIR_FORWARD               >Rise TKDPO4K_VAL_DEL_EDGE_RISE Fall TKDPO4K_VAL_DEL_EDGE_FALL               >Rise TKDPO4K_VAL_DEL_EDGE_RISE Fall TKDPO4K_VAL_DEL_EDGE_FALL    �    This function initiates waveform acquisition in continuous acquisition mode. Set the waveform size element to the desired amount.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
     2    Specify the waveform size.

Default Value:
10000   %k   �  �    Instrument Handle                & ����  �    Status                           ,� > � �  �    Waveform Size                          	           10000       This function fetches a waveform from a specified channel and optinally return ActualPoints(Number of points actually acquired in waveform), InitialX(The time in relation to the Trigger Event of the first point in the waveform in seconds), XIncrement(The time between points in the acquired waveform in seconds). The function is used only when the instrument runs in continuous mode and is in running state.

Note:
There is no guarantee that the waveform fetched by this function is the latest one acquired by instrument. While using in loops to repeatedly acquiring waveform, it is possible that several fetched waveform is from the same acquisition.

Call this function only when TKDPO4K_ATTR_ACQUISITION_TYPE is TKDPO4K_VAL_NORMAL, TKDPO4K_VAL_HI_RES or TKDPO4K_VAL_AVERAGE.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
    E    Returns the waveform that the oscilloscope acquires.  

Units: volts

Notes:

(1) The tkdpo4k_ActualRecordLength function returns the number of points the oscilloscope acquires for each channel. Pass a ViReal64 array with at least this many elements.

(2) If the oscilloscope cannot sample a value for a point in the waveform, the driver sets the corresponding element in the Waveform Array to an IEEE defined NaN (Not a Number) value.  

(3) You can test each element in the Waveform Array parameter for an invalid waveform element with the tkdpo4k_IsInvalidWfmElement function.     U    Indicates the number of points the function places in the Waveform Array parameter.    �    Indicates the time of the first point in the Waveform Array.  The time is relative to the trigger event.

For example, if the oscilloscope acquires the first point in the Waveform Array one second before the trigger, this parameter returns the value -1.0. If the acquisition of the first point occurs at the same time as the trigger, this parameter returns the value 0.0.

Units: seconds     V    Indicates the length of time between points in the Waveform Array.  

Units: seconds    �    Passes the name of the channel from which you want to read a waveform.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH")  - Math

Default Value: TKDPO4K_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.   0�   �  �    Instrument Handle                1�����  �    Status                           8z %Q �  �    Waveform Array                   :� p % �  �    Actual Points                    ;$ p � �  �    Initial X                        <� p� �  �    X Increment                      = % > � �    Channel Name                           	           	            	            	           	                   	   �Channel 1 TKDPO4K_VAL_CH_1 Channel 2 TKDPO4K_VAL_CH_2 Channel 3 TKDPO4K_VAL_CH_3 Channel 4 TKDPO4K_VAL_CH_4 Reference 1 TKDPO4K_VAL_REF_1 Reference 2 TKDPO4K_VAL_REF_2 Reference 3 TKDPO4K_VAL_REF_3 Reference 4 TKDPO4K_VAL_REF_4 Math TKDPO4K_VAL_MATH       This function fetches a min and max waveform from a waveform acquisition that the user or driver previously initiated on a specific channel.                     

Note:
Call this function only when TKDPO4K_ATTR_ACQUISITION_TYPE is TKDPO4K_VAL_PEAK_DETECT or TKDPO4K_VAL_ENVELOPE.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
    W    Returns the minimum waveform that the oscilloscope acquires.

Units: volts

Notes:

(1) The tkdpo4k_ActualRecordLength function returns the number of points the oscilloscope acquires for each channel and passes a ViReal64 array with at least this many elements.

2) If the oscilloscope cannot sample a value for a point in the waveform, the driver sets the corresponding element in the Min Waveform Array to an IEEE defined NaN (Not a Number) value.  

(3) You can test each element in the Min Waveform Array parameter for an invalid waveform element with the tkdpo4k_IsInvalidWfmElement function.    [    Returns the maximum waveform that the oscilloscope acquires.  

Units: volts

Notes:

(1) The tkdpo4k_ActualRecordLength function returns the number of points the oscilloscope acquires for each channel and passes a ViReal64 array with at least this many elements.

(2) If the oscilloscope cannot sample a value for a point in the waveform, the driver sets the corresponding element in the Max Waveform Array to an IEEE defined NaN (Not a Number) value.  

(3) You can test each element in the Max Waveform Array parameter for an invalid waveform element with the tkdpo4k_IsInvalidWfmElement function.
     V    Indicates the number of points the function places in the Waveform Array parameter.
    �    Indicates the time of the first point in the Waveform Array. The time is relative to the trigger event.  

For example, if the oscilloscope acquires the first point in the Waveform Array one second before the trigger, this parameter returns the value -1.0. If the acquisition of the first point occurs at the same time as the trigger, this parameter returns the value 0.0.

Units: seconds     V    Indicates the length of time between points in the Waveform Array.  

Units: seconds    �    Passes the name of the channel from which you want to read a waveform.

Valid Channel Names:  
    TKDPO4K_VAL_CH_1   ("CH1")   - Channel 1 
    TKDPO4K_VAL_CH_2   ("CH2")   - Channel 2
    TKDPO4K_VAL_CH_3   ("CH3")   - Channel 3
    TKDPO4K_VAL_CH_4   ("CH4")   - Channel 4
    TKDPO4K_VAL_REF_1  ("REF1")  - Reference 1
    TKDPO4K_VAL_REF_2  ("REF2")  - Reference 2
    TKDPO4K_VAL_REF_3  ("REF3")  - Reference 3
    TKDPO4K_VAL_REF_4  ("REF4")  - Reference 4
    TKDPO4K_VAL_MATH   ("MATH")  - Math

Default Value: TKDPO4K_VAL_CH_1

Note: You can specify the channel name as a string variable or as a literal enclosed in double quotes.   Cv   �  �    Instrument Handle                D+����  �    Status                           J� % � �  �    Min Waveform Array               MZ %v �  �    Max Waveform Array               O� p  �  �    Actual Points                    P p � �  �    Initial X                        Q� pv �  �    X Increment                      R %  � �    Channel Name                           	           	            	            	            	           	                   	   �Channel 1 TKDPO4K_VAL_CH_1 Channel 2 TKDPO4K_VAL_CH_2 Channel 3 TKDPO4K_VAL_CH_3 Channel 4 TKDPO4K_VAL_CH_4 Reference 1 TKDPO4K_VAL_REF_1 Reference 2 TKDPO4K_VAL_REF_2 Reference 3 TKDPO4K_VAL_REF_3 Reference 4 TKDPO4K_VAL_REF_4 Math TKDPO4K_VAL_MATH    J    This function stops waveform acquisition in continuous acquisition mode.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
   W�   �  �    Instrument Handle                X�����  �    Status                                 	          �    This function aborts an acquisition and returns the oscilloscope to the Idle state. You initiate an acquisition with the tkdpo4k_ReadWaveform, tkdpo4k_ReadMinMaxWaveform, tkdpo4k_ReadWaveformMeasurement, and tkdpo4k_InitiateAcquisition functions.

Note: This function does not check the instrument status. Typically, you call this function only in a sequence of calls to other low-level driver functions. The sequence performs one operation. You use the low-level functions to optimize one or more aspects of interaction with the instrument. If you want to check the instrument status, call the tkdpo4k_error_query function at the conclusion of the sequence.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
   b{   �  �    Instrument Handle                c0����  �    Status                                 	           _    This function runs the self-test routine of the instrument and returns the test result(s). 

     �    This parameter contains the value that the instrument returns from self-tests.

Self-Test Code    Description
---------------------------------------
   0              Passed self-test
   1              Self-test failed     �    Returns the self-test response string from the instrument. See the operation manual of the device for explanation of the strings.

You must pass a ViChar array with at least 256 bytes.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None   j� > % �  �    Self Test Result                 k� > � � ,    Self-Test Message                l�����  �    Status                           sX   �  �    Instrument Handle                  	           	            	              %    This function resets the instrument to a known state and sends initialization commands to the instrument. The initialization commands set instrument settings such as Headers Off, Short Command form, and Data Transfer Binary to the state necessary for the operation of the instrument driver.
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None   v6����  �    Status                           }   �  �    Instrument Handle                  	               �    This function resets the instrument and applies initial user specified settings from the Logical Name that was used to initialize the session. If the session was created without a Logical Name, this function is equivalent to the tkdpo4k_reset function.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviFgen  Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviFgen  Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None   ;����  �    Status                           �
   �  �    Instrument Handle                  	               �    This function places the instrument in a quiescent state where it has minimal or no impact on the system to which it is connected.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviFgen  Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviFgen  Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None   ������  �    Status                           ��   �  �    Instrument Handle                  	               ^    This function returns the revision numbers of the instrument driver and instrument firmware.     �    Returns the instrument driver software revision numbers in the form of a string.

You must pass a ViChar array with at least 256 bytes.     �    Returns the instrument firmware revision numbers in the form of a string.

You must pass a ViChar array with at least 256 bytes.
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None   �* > % �  �    Instrument Driver Revision       �� >8 �  �    Firmware Revision                �F����  �    Status                           �   �  �    Instrument Handle                  	            	            	               Y    This function reads an error code and a message from the error queue of the instrument.     F    Returns the error code read from the error queue of the intrument.

     �    Returns the error message string read from the error message queue of the instrument.

You must pass a ViChar array with at least 256 bytes.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None   �( > % �  �    Error Code                       �v > � � ,    Error Message                    �����  �    Status                           ��   �  �    Instrument Handle                  	            	            	               n    This function converts a status code returned by an instrument driver function into a user-readable string.     &    Passes the Status parameter that is returned from any of the instrument driver functions.
          
Default Value: 0 (VI_SUCCESS)
          
tkdpo4k Status Codes:
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed

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
BFFA0001  Instrument error. Call tkdpo4k_error_query.
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
BFFA0055  Bad tkdpo4k name in default configuration file.
         
VISA Status Codes:
Status    Description
-------------------------------------------------
WARNINGS:
3FFF0002 Event enabled for one or more specified mechanisms.
3FFF0003 Event disabled for one or more specified mechanisms.
3FFF0004 Successful, but queue already empty.
3FFF0005 Specified termination character was read.
3FFF0006 Number of bytes transferred equals input count.
3FFF0077 Configuration non-existent or could not be loaded.
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

You must pass a ViChar array with at least 256 bytes.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
        The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function.  The handle identifies a particular instrument session.

You can pass VI_NULL for this parameter.  This is useful when one of the initialize functions fail.

Default Value:  VI_NULL
   � >  �  h    Error Code                       � = � � �    Error Message                    ʦ����  �    Status                           �v   �  �    Instrument Handle                  0    	            	           VI_NULL   �    After the read and fetch waveform functions execute, each element in the waveform array contains either a voltage or a value indicating that the oscilloscope failed to sample a voltage. The driver uses an IEEE-defined NaN (Not a Number) value to mark as invalid each element in the waveform array for which the oscilloscope failed to sample a voltage. This function determines whether a value you pass from the waveform array is invalid.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    1    Returns whether the Element Value is a valid voltage or a value indicating that the oscilloscope cannot sample a voltage.

Valid Return Values:
VI_TRUE  (1) - The Element Value indicates that the oscilloscope
               cannot sample the voltage.
VI_FALSE (0) - The Element Value is a valid voltage.    Z    Passes one of the values from the waveform array returned by the read and fetch waveform functions. The driver uses an IEEE defined NaN (Not a Number) value to mark as invalid each element in the waveform array for which the oscilloscope cannot sample a voltage. The driver determines whether the value you pass is invalid.

Default Value: None   �Q����  �    Status                           �!   �  �    Instrument Handle                �� >Q �  �    Is Invalid                       � > > �  �    Element Value                      	               	               P    This function invalidates the cached values of all attributes for the session.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviFgen  Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviFgen  Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None   �����  �    Status                           �   �  �    Instrument Handle                  	              `    This function returns the highest-level channel name that corresponds to the specific driver channel string that is in the channel table at an index you specify. By passing 0 for the buffer size, the caller can ascertain the buffer size required to get the entire channel name string and then call the function again with a sufficiently large buffer.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function. The handle identifies a particular instrument session.

Default Value: None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviDCPwr Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviDCPwr Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

     F    Specifies a 1-based index into the channel table.

Default Value: 1
    �    Returns the highest-level channel name that corresponds to the specific driver channel string that is in the channel table at an index you specify.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter. If the error description, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is 123456 and the Buffer Size is 4, the function places 123 into the buffer and returns 7.

If you pass 0 for the Buffer Size, you can pass VI_NULL for this parameter.    �    Passes the number of bytes in the ViChar array you specify for the Channel Name parameter.

If the channel name, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies BufferSize - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is 123456 and the Buffer Size is 4, the function places 123 into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Description buffer parameter.

Default Value: None   �#   �  �    Instrument Handle                ������  �    Status                           �e % > �  �    Index                            � W > � �    Channel String                   �� %8 �  �    BufferSize                             	           1    	               �    This function retrieves and then clears the IVI error information for the session or the current execution thread. One exception exists: If the BufferSize parameter is 0, the function does not clear the error information. By passing 0 for the buffer size, the caller can ascertain the buffer size required to get the entire error description string and then call the function again with a sufficiently large buffer.

If the user specifies a valid IVI session for the InstrumentHandle parameter, Get Error retrieves and then clears the error information for the session. If the user passes VI_NULL for the InstrumentHandle parameter, this function retrieves and then clears the error information for the current execution thread. If the InstrumentHandle parameter is an invalid session, the function does nothing and returns an error. Normally, the error information describes the first error that occurred since the user last called tkdpo4k_GetError or tkdpo4k_ClearError.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviFgen  Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviFgen  Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Passes the number of bytes in the ViChar array you specify for the Description parameter.

If the error description, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies BufferSize - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is 123456 and the Buffer Size is 4, the function places 123 into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Description buffer parameter.

Default Value:  None     �    Returns the error code for the session or execution thread.

If you pass 0 for the Buffer Size, you can pass VI_NULL for this parameter.
    �    Returns the error description for the IVI session or execution thread. If there is no description, the function returns an empty string.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter. If the error description, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is 123456 and the Buffer Size is 4, the function places 123 into the buffer and returns 7.

If you pass 0 for the Buffer Size, you can pass VI_NULL for this parameter.   ������  �    Status                           	   �  �    Instrument Handle                	� %8 �  �    BufferSize                       	
� % > �  �    Code                             	D p > � �    Description                        	                   	           	           c    This function clears the error code and error description for the IVI session. If the user specifies a valid IVI session for the instrument_handle parameter, this function clears the error information for the session. If the user passes VI_NULL for the Vi parameter, this function clears the error information for the current execution thread. If the Vi parameter is an invalid session, the function does nothing and returns an error.

The function clears the error code by setting it to VI_SUCCESS.  If the error description string is non-NULL, the function de-allocates the error description string and sets the address to VI_NULL.

Maintaining the error information separately for each thread is useful if the user does not have a session handle to pass to the tkdpo4k_GetError function, which occurs when a call to tkdpo4k_init or tkdpo4k_InitWithOptions fails.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviFgen  Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviFgen  Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   	�����  �    Status                           	�   �  �    Instrument Handle                  	              �    This function returns the coercion information associated with the IVI session. This function retrieves and clears the oldest instance in which the instrument driver coerced a value you specified to another value.

If you set the TKDPO4K_ATTR_RECORD_COERCIONS attribute to VI_TRUE, the instrument driver keeps a list of all coercions it makes on ViInt32 or ViReal64 values you pass to instrument driver functions. You use this function to retrieve information from that list.

If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is 123456 and the Buffer Size is 4, the function places 123 into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Coercion Record buffer parameter.

The function returns an empty string in the Coercion Record parameter if no coercion records remain for the session.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
     �    The ViSession handle that you obtain from the tkdpo4k_init function.  The handle identifies a particular instrument session.

Default Value:  None    �    Returns the next coercion record for the IVI session. If there are no coercion records, the function returns an empty string.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter. If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is 123456 and the Buffer Size is 4, the function places 123 into the buffer and returns 7.

This parameter returns an empty string if no coercion records remain for the session.    �    Passes the number of bytes in the ViChar array you specify for the Coercion Record parameter.

If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is 123456 and the Buffer Size is 4, the function places 123 into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Coercion Record buffer parameter.

Default Value: None   	�����  �    Status or Required Size          	(6   �  �    Instrument Handle                	(� � W � �    Coercion Record                  	+� > � �  �    Buffer Size                        	               	                   This function returns the interchange warnings associated with the IVI session. It retrieves and clears the oldest instance in which the class driver recorded an interchange warning. Interchange warnings indicate that using your application with a different instrument might cause different behavior. You use this function to retrieve interchange warnings.

The driver performs interchangeability checking when the TKDPO4K_ATTR_INTERCHANGE_CHECK attribute is set to VI_TRUE.

The function returns an empty string in the Interchange Warning parameter if no interchange warnings remain for the session.

In general, the instrument driver generates interchange warnings when an attribute that affects the behavior of the instrument is in a state that you did not specify.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviFgen  Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviFgen  Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Passes the number of bytes in the ViChar array you specify for the Interchange Warning parameter.

If the next interchange warning string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is 123456 and the Buffer Size is 4, the function places 123 into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Interchange Warning buffer parameter.

Default Value: None        Returns the next interchange warning for the IVI session. If there are no interchange warnings, the function returns an empty  string.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter. If the next interchange warning string, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is 123456 and the Buffer Size is 4, the function places 123 into the buffer and returns 7.

This parameter returns an empty string if no interchange
warnings remain for the session.   	2�#����  �    Status or Required Size          	9�-   �  �    Instrument Handle                	:E = � �  �    Buffer Size                      	=@ � Q � �    Interchange Warning                	                   	            A    This function clears the list of current interchange warnings.
     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviFgen  Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviFgen  Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors   	A�   �  �    Instrument Handle                	BD����  �    Status                                 	          �    When developing a complex test system that consists of multiple test modules, it is generally a good idea to design the test modules so that they can run in any order. To do so requires ensuring that each test module completely configures the state of each instrument it uses. If a particular test module does not completely configure the state of an instrument, the state of the instrument depends on the configuration from a previously executed test module. If you execute the test modules in a different order, the behavior of the instrument and therefore the entire test module is likely to change. This change in behavior is generally instrument specific and represents an interchangeability problem.

You can use this function to test for such cases. After you call this function, the interchangeability checking algorithms in the specific driver ignore all previous configuration operations. By calling this function at the beginning of a test module, you can determine whether the test module has dependencies on the operation of previously executed test modules.

This function does not clear the interchange warnings from the list of previously recorded interchange warnings. If you want to guarantee that the tkdpo4k_GetNextInterchangeWarning function only returns those interchange warnings that are generated after calling this function, you must clear the list of interchange warnings. You can clear the interchange warnings list by repeatedly calling the tkdpo4k_GetNextInterchangeWarning function until no more interchange warnings are returned. If you are not interested in the content of those warnings, you can call the tkdpo4k_ClearInterchangeWarnings function.     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviFgen  Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviFgen  Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors   	P(   �  �    Instrument Handle                	P�����  �    Status                                 	          "    This function obtains a multithread lock on the instrument session. Before it does so, it waits until all other execution threads have released their locks on the instrument session.

Other threads might have obtained a lock on this session in the following ways:

- Your application called tkdpo4k_LockSession.

- A call to the instrument driver locked the session.

- A call to the IVI engine locked the session.

After your call to tkdpo4k_LockSession returns successfully, no other threads can access the instrument session until you call tkdpo4k_UnlockSession.

Use tkdpo4k_LockSession and tkdpo4k_UnlockSession around a sequence of calls to instrument driver functions if you require that the instrument retain its settings through the end of the sequence.

You can safely make nested calls to tkdpo4k_LockSession within the same thread. To completely unlock the session, you must balance each call to tkdpo4k_LockSession with a call to tkdpo4k_UnlockSession. If, however, you use the Caller Has Lock parameter in all calls to tkdpo4k_LockSession and tkdpo4k_UnlockSession within a function, the IVI Library locks the session only once within the function regardless of the number of calls you make to tkdpo4k_LockSession. This allows you to call tkdpo4k_UnlockSession just once at the end of the function.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    This parameter serves as a convenience. If you do not want to use this parameter, pass VI_NULL. 

Use this parameter in complex functions to keep track of whether you obtain a lock and therefore need to unlock the session. Pass the address of a local ViBoolean variable. In the declaration of the local variable, initialize it to VI_FALSE. Pass the address of the same local variable to any other calls you make to tkdpo4k_LockSession or tkdpo4k_UnlockSession in the same function.

The parameter is an input/output parameter. tkdpo4k_LockSession and tkdpo4k_UnlockSession each inspect the current value and take the following actions:

- If the value is VI_TRUE, tkdpo4k_LockSession does not lock the session again. If the value is VI_FALSE, tkdpo4k_LockSession obtains the lock and sets the value of the parameter to VI_TRUE.

- If the value is VI_FALSE, tkdpo4k_UnlockSession does not attempt to unlock the session. If the value is VI_TRUE, tkdpo4k_UnlockSession releases the lock and sets the value of the parameter to VI_FALSE.
 
Thus, you can, call tkdpo4k_UnlockSession at the end of your function without worrying about whether you actually have the lock.  

Example:

ViStatus TestFunc (ViSession vi, ViInt32 flags)
{
    ViStatus error = VI_SUCCESS;
    ViBoolean haveLock = VI_FALSE;

    if (flags & BIT_1)
        {
        viCheckErr( tkdpo4k_LockSession(vi, &haveLock));
        viCheckErr( TakeAction1(vi));
        if (flags & BIT_2)
            {
            viCheckErr( tkdpo4k_UnlockSession(vi, &haveLock));
            viCheckErr( TakeAction2(vi));
            viCheckErr( tkdpo4k_LockSession(vi, &haveLock);
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
    tkdpo4k_UnlockSession(vi, &haveLock);
    return error;
}   	]S����  �    Status                           	d#   �  �    Instrument Handle                	d� > � �  �    Caller Has Lock                    	               	            �    This function releases a lock that you acquired on an instrument session using tkdpo4k_LockSession. Refer to tkdpo4k_LockSession for additional information on session locks.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    This parameter serves as a convenience. If you do not want to use this parameter, pass VI_NULL. 

Use this parameter in complex functions to keep track of whether you obtain a lock and therefore need to unlock the session. 
Pass the address of a local ViBoolean variable. In the declaration of the local variable, initialize it to VI_FALSE. Pass the address of the same local variable to any other calls you make to tkdpo4k_LockSession or tkdpo4k_UnlockSession in the same function.

The parameter is an input/output parameter. tkdpo4k_LockSession and tkdpo4k_UnlockSession each inspect the current value and take the following actions:

- If the value is VI_TRUE, tkdpo4k_LockSession does not lock the session again.  If the value is VI_FALSE, tkdpo4k_LockSession obtains the lock and sets the value of the parameter to VI_TRUE.

- If the value is VI_FALSE, tkdpo4k_UnlockSession does not attempt to unlock the session.  If the value is VI_TRUE, tkdpo4k_UnlockSession releases the lock and sets the value of the parameter to VI_FALSE.
 
Thus, you can, call tkdpo4k_UnlockSession at the end of your function without worrying about whether you actually have the lock.  

Example:

ViStatus TestFunc (ViSession vi, ViInt32 flags)
{
    ViStatus error = VI_SUCCESS;
    ViBoolean haveLock = VI_FALSE;

    if (flags & BIT_1)
        {
        viCheckErr( tkdpo4k_LockSession(vi, &haveLock));
        viCheckErr( TakeAction1(vi));
        if (flags & BIT_2)
            {
            viCheckErr( tkdpo4k_UnlockSession(vi, &haveLock));
            viCheckErr( TakeAction2(vi));
            viCheckErr( tkdpo4k_LockSession(vi, &haveLock);
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
    tkdpo4k_UnlockSession(vi, &haveLock);
    return error;
}   	n	����  �    Status                           	t�   �  �    Instrument Handle                	u� > � �  �    Caller Has Lock                    	               	            �    This function writes a user-specified string to the instrument.

Note: This function bypasses IVI attribute state caching. Therefore, when you call this function, the cached values for all attributes is invalidated.     /    Passes the string to write to the instrument.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   	~� > � �  �    Write Buffer                     	#����  �    Status                           	��   �  �    Instrument Handle                      	               /    This function reads data from the instrument.     1    Returns data that was read from the instrument.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     �    Passes the maximum number of bytes to read from the instruments.  

Valid Range: 0 to the number of elements in the Read Buffer.

Default Value: 256     ^    Returns the number of bytes actually read from the instrument and stored in the Read Buffer.   	�� > �  �    Read Buffer                      	������  �    Status                           	��   �  �    Instrument Handle                	�V > > �  �    Number of Bytes To Read          	�� � � �  �    Num Bytes Read                     	            	               256    	           �    This function performs the following operations:

- Closes the instrument I/O session.

- Destroys the instrument driver session and all of its attributes.

- Deallocates any memory resources the driver uses.

Notes:

(1) You must unlock the session before calling tkdpo4k_close.

(2) After calling tkdpo4k_close, you cannot use the instrument again until you call tkdpo4k_init or tkdpo4k_InitWithOptions.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the tkdpo4k_error_message function.  To obtain additional information about the error condition, call the tkdpo4k_GetError function.  To clear the error information from the driver, call the tkdpo4k_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
ERRORS:
BFFA4001  Operation or attribute not valid for model
BFFA4002  Option not installed
          
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
     �    The ViSession handle that you obtain from the tkdpo4k_init or tkdpo4k_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   	�1����  �    Status                           	�   �  �    Instrument Handle                  	            ����         �  7�     K.    init                            ����         9�  f<     K.    InitWithOptions                 ����         h�  s{     K.    ConfigureNumAverages            ����         t0  �     K.    ConfigureNumEnvelopes           ����         ��  ��     K.    ConfigureAcquisitionRecord      ����         ��  �d     K.    ConfigureAcquisitionType        ����         ��  ��     K.    ActualRecordLength              ����         �A  �l     K.    SampleRate                      ����         �'  �y     K.    SampleMode                      ����         �4  ��     K.    ConfigureMagnivuEnabled         ����         ˙  �     K.    ConfigureChannel                ����         �>  �*     K.    ConfigureChanCharacteristics    ����         �� !     K.    AutoProbeSenseValue             ����        t �     K.    ConfigureDigitalChannel         ����        X '�     K.    ConfigureBusThreshold           ����        )� L5     K.    ConfigureTrigger                ����        Ok [�     K.    ConfigureTriggerCoupling        ����        ]4 m�     K.    ConfigureTriggerLevel           ����        pQ yY     K.    ConfigureTriggerModifier        ����        zT ��     K.    ConfigureEdgeTriggerSource      ����        �� �a     K.    ConfigureAcLineTriggerSlope     ����        �k �Z     K.    ConfigureDelayTriggerSource     ����        �) á     K.    ConfigureDelayTriggerMode       ����        �� �9     K.    ConfigureDelayTriggerEvents     ����        �� �b     K.    ConfigureDelayTriggerTime       ����        � �     K.    ConfigureEthernetTriggerBasic   ����        �� ��     K.    ConfigureEthernetTriggerData    ����        �� �     K.    ConfigureEthernetTriggerIPH     ����        	� �     K.    ConfigureEthernetTriggerMAC     ����        � "     K.    ConfigureEthernetTriggerQTAG    ����        #n 0m     K.    ConfigureEthernetTriggerTCPH    ����        2� EU     K.    ConfigureTVTriggerSource        ����        I  T<     K.    ConfigureTVTriggerLineNumber    ����        T� ]5     K.    ConfigureTVTriggerFieldHoldoff  ����        ]� l�     K.    ConfigureTVTriggerHDTV          ����        ox {-     K.    ConfigureTVTriggerCustom        ����        }� ��     K.    ConfigureTriggerThreshold       ����        �( �O     K.    ConfigureRuntTriggerSource      ����        �� ��     K.    ConfigureRuntTriggerCondition   ����        �C �
     K.    ConfigureGlitchTriggerSource    ����        ъ �     K.    ConfigureTransitTriggerSource   ����        � �      K.    ConfigureLogicTriggerThreshold  ����        �l �     K.    ConfigurePatternTrigger         ����         �     K.    ConfigurePatternTriggerInput    ����         k +     K.    ConfigureStateTrigger           ����        ,2 ;�     K.    ConfigureStateTriggerDataInput  ����        >� N1     K.    ConfigureStateTriggerClockInput ����        Qf hV     K.    ConfigureSetholdTriggerSource   ����        nN we     K.    ConfigureSerialTriggerSource    ����        x{ ��     K.    ConfigureI2CTrigger             ����        �� ��     K.    ConfigureI2CTriggerAddress      ����        �c ��     K.    ConfigureI2CTriggerData         ����        �� �	     K.    ConfigureSPITrigger             ����        �� �1     K.    ConfigureCANTrigger             ����        Њ �X     K.    ConfigureCANTriggerID           ����        �B �     K.    ConfigureCANTriggerData         ����        �# �3     K.    ConfigureCANTriggerFrameType    ����        �3 n     K.    ConfigureRS232Trigger           ����        � �     K.    ConfigureParallelTrigger        ����         ,<     K.    ConfigureUSBTrigger             ����        0� Dh     K.    ConfigureMathChannel            ����        G� V     K.    ConfigureMathChannelFFT         ����        X� f	     K.    ConfigureMathChannelAdvanced    ����        g9 o�     K.    EnableMathChannel               ����        p� }     K.    StoreWfmToRefChannel            ����        6 ��     K.    EnableReferenceChannel          ����        � �J     K.    ConfigureRefLevels              ����        �{ �l     K.    ConfigureMidRef                 ����        �# ��     K.    ConfigureMeasurement            ����        �� �     K.    ConfigureInitiateContinuous     ����        �� �     K.    ConfigureBUSType                ����        �� ڢ     K.    ConfigureBUSState               ����        � �0     K.    ConfigureI2C                    ����        � |     K.    ConfigureSPI                    ����        "6 5�     K.    ConfigureCAN                    ����        ;u R� 	    K.    ConfigureRS232                  ����        [� n1     K.    ConfigureParallel               ����        s! �� 	    K.    ConfigureEthernet               ����        �L �-     K.    AutoSetup                       ����        �� �<     K.    SetAttributeViInt32             ����        �� �j     K.    SetAttributeViReal64            ����        � ٗ     K.    SetAttributeViString            ����        �2 ��     K.    SetAttributeViBoolean           ����        �` 	�     K.    SetAttributeViSession           ����        � �     K.    GetAttributeViInt32             ����        ; 1�     K.    GetAttributeViReal64            ����        2� O�     K.    GetAttributeViString            ����        QZ c�     K.    GetAttributeViBoolean           ����        e w�     K.    GetAttributeViSession           ����        x� ��     K.    CheckAttributeViInt32           ����        �� ��     K.    CheckAttributeViReal64          ����        �b ��     K.    CheckAttributeViString          ����        �4 �l     K.    CheckAttributeViBoolean         ����        � �@     K.    CheckAttributeViSession         ����        �� �     K.    ConfigureWfmBufferSize          ����        �] �b 	    K.    ReadWaveform                    ����        �`  
    K.    ReadMinMaxWaveform              ����        J @�     K.    ReadWaveformMeasurement         ����        GT W(     K.    ReadPhaseMeasurement            ����        Z� m{ 	    K.    ReadDelayMeasurement            ����        r� }`     K.    InitiateAcquisition             ����        }� �q     K.    AcquisitionStatus               ����        �, ��     K.    ForceTrigger                    ����        � ��     K.    FetchWaveform                   ����        �� �_ 	    K.    FetchMinMaxWaveform             ����        ̕ �/     K.    FetchWaveformMeasurement        ����        �� ^     K.    FetchPhaseMeasurement           ����        �       K.    FetchDelayMeasurement           ����        $� -*     K.    InitiateContinuousAcquisition   ����        -� ?�     K.    FetchContinuousWaveform         ����        BU T�     K.    FetchContinuousMinMaxWaveform   ����        W� _e     K.    StopContinuousAcquisition       ����        _� j      K.    Abort                           ����        jz t     K.    self_test                       ����        u	 }�     K.    reset                           ����        ~5 ��     K.    ResetWithDefaults               ����        �9 �J     K.    Disable                         ����        �� ��     K.    revision_query                  ����        �� ��     K.    error_query                     ����        �� Җ     K.    error_message                   ����        Ӓ �q     K.    IsInvalidWfmElement             ����        �e �A     K.    InvalidateAllAttributes         ����        � ��     K.    GetChannelName                  ����        �� 	9     K.    GetError                        ����        	n 	`     K.    ClearError                      ����        	� 	.�     K.    GetNextCoercionRecord           ����        	/� 	@O     K.    GetNextInterchangeWarning       ����        	AC 	I     K.    ClearInterchangeWarnings        ����        	I� 	W�     K.    ResetInterchangeCheck           ����        	X) 	l�     K.    LockSession                     ����        	mR 	}P     K.    UnlockSession                   ����        	~ 	��     K.    WriteInstrData                  ����        	�^ 	�Z     K.    ReadInstrData                   ����        	�� 	��     K.    close                                 �                                     DInitialize                           DInitialize With Options             �Configuration                       �Acquisition                          DConfigure Number of Averages         DConfigure Number of Envelopes        DConfigure Acquisition Record         DConfigure Acquisition Type           DActual Record Length                 DGet Sample Rate                      DGet Sample Mode                      DConfigure Magnivu Enabled           PChannel                              DConfigure Channel                    DConfigure Chan Characteristics       DAuto Probe Sense Value               DConfigure Digital Channel            DConfigure Bus Threshold             �Trigger                             �Basic Trigger Functions              DConfigure Trigger                    DConfigure Trigger Coupling           DConfigure Trigger Level              DConfigure Trigger Modifier          �Edge Trigger Group                  	4Edge Trigger                         DConfigure Edge Trigger Source       
GAC Line Trigger                      DConfigure AC Line Trigger Slope     QDelay Trigger                        DConfigure Delay Trigger Source       DConfigure Delay Trigger Mode         DConfigure Delay Trigger Events       DConfigure Delay Trigger Time        �Ethernet Trigger                     DConfgiure Enet Triggger Basic        DConfgiure Enet Triggger Data         DConfgiure Enet Triggger IPH          DConfgiure Enet Triggger MAC          DConfgiure Enet Triggger QTAG         DConfgiure Enet Triggger TCPH        TV Trigger                           DConfigure TV Trigger Source          DConfigure TV Trig Line Number        DConfigure TV Trig Field Holdoff      DConfigure TV Trigger HDTV            DConfigure TV Trigger Custom         \Pulse Trigger Group                  DConfigure Trigger Threshold         �Runt Trigger                         DConfigure Runt Trigger Source        DConfigure Runt Condition            �Glitch Trigger                       DConfigure Glitch Trigger Source     �Transition Trigger                   DConfigure Transition Trigger SR     �Logic Trigger Group                  DConfigure Logic Trigger Thres       nPattern Trigger                      DConfigure Pattern Trigger            DConfigure Pattern Trigger Input     'State Trigger                        DConfigure State Trigger              DConfigure State Data Input           DConfigure State Clock Input         �SetHold Trigger                      DConfigure Sethold Trigger SR        Serial Trigger Group                 DConfigure Serial Trigger Source     8I2C Trigger                          DConfigure I2C Trigger                DConfigure I2C Trigger Address        DConfigure I2C Trigger Data          ~SPI Trigger                          DConfigure SPI Trigger               �CAN Trigger                          DConfigure CAN Trigger                DConfigure CAN Trigger ID             DConfigure CAN Trigger Data           DConfigure CAN Trigger Frame         
RS232 Trigger                        DConfigure RS232 Trigger             RParallel Trigger                     DConfigure Parallel Trigger        ����USB                                  DConfigure USB Trigger               �Math Channels                        DConfigure Math Channel               DConfigure Math Channel FFT           DConfigure Math Channel ADV           DEnable Math Channel                 �Reference Channels                   DStore Wfm To Reference Channel       DEnable Reference Channel            2Measurement                          DConfigure Reference Levels           DConfigure Middle Reference           DConfigure Measurement                DConfigure Initiate Continuous       �BUS                                 Basic BUS Functions                  DConfigure BUS Type                   DConfigure BUS State                 �I2C BUS                              DConfigure I2C                       �SPI BUS                              DConfigure SPI                       *CAN BUS                              DConfigure CAN                       iRS232 BUS                            DConfigure RS232                     �Parallel Bus                         DConfigure Parallel                   Ethernet Bus                         DConfigure Ethernet                   DAuto Setup                          �Set/Get/Check Attribute             �Set Attribute                        DSet Attribute ViInt32                DSet Attribute ViReal64               DSet Attribute ViString               DSet Attribute ViBoolean              DSet Attribute ViSession             yGet Attribute                        DGet Attribute ViInt32                DGet Attribute ViReal64               DGet Attribute ViString               DGet Attribute ViBoolean              DGet Attribute ViSession             Check Attribute                      DCheck Attribute ViInt32              DCheck Attribute ViReal64             DCheck Attribute ViString             DCheck Attribute ViBoolean            DCheck Attribute ViSession           �Waveform Acquisition                 DConfigure WFM Buffer Size            DRead Waveform                        DRead Min Max Waveform                DRead Waveform Measurement            DRead Phase Measurement               DRead Delay Measurement              1Low-level Acquisition                DInitiate Acquisition                 DAcquisition Status                   DForce Trigger                        DFetch Waveform                       DFetch Min Max Waveform               DFetch Waveform Measurement           DFetch Phase Measurement              DFetch Delay Measurement              DInitiate Continuous Acquisition      DFetch Continuous Waveform            DFetch Continuous MinMaxWaveform      DStop Continuous Acquisition          DAbort                               �Utility                              DSelf-Test                            DReset                                DReset With Defaults                  DDisable                              DRevision Query                       DError-Query                          DError Message                        DIs Invalid Waveform Element          DInvalidate All Attributes            DGet Channel Name                    
Error                                DGet Error                            DClear Error                         dCoercion Info                        DGet Next Coercion Record            �Interchangeability Info              DGet Next Interchange Warning         DClear Interchange Warnings           DReset Interchange Check             �Locking                              DLock Session                         DUnlock Session                      iInstrument I/O                       DWrite Instrument Data                DRead Instrument Data                 DClose                           