s��        �   � {�  u�   �   C����                               auml24xx                        Anritsu ML248x/249x Power Meter             _VI_FUNC                                                     
�  	ViAttr *[]     
� 
��ViAttr ***     	� 	��ViAttr **     � ��ViAttr *     	�  ViAttr []     � ��ViAttr     �  ViConstString *[]     � ��ViConstString ***     � ��ViConstString **     � ��ViConstString *     �  ViConstString []     � ��ViConstString     
�  	ViByte *[]     
� 
��ViByte ***     	� 	��ViByte **     � ��ViByte *     	�  ViByte []     � ��ViByte     
�  	ViChar *[]     
� 
��ViChar ***     	� 	��ViChar **     � ��ViChar *     	�  ViChar []     � ��ViChar     � 
 ViReal64 *[]     � ��ViReal64 ***     � ��ViReal64 **     
� 
��ViReal64 *     � 	 
ViReal64 []     � ��ViReal64     � 	 
ViInt16 *[]      ��ViInt16 ***     
~ 
��ViInt16 **     	} 	��ViInt16 *     
|  	ViInt16 []     { ��ViInt16     z 	 
ViInt32 *[]     y ��ViInt32 ***     
x 
��ViInt32 **     	w 	��ViInt32 *     
v  	ViInt32 []     u ��ViInt32     t  ViSession *[]     s ��ViSession ***     r ��ViSession **     q ��ViSession *     p 
 ViSession []     	o 	��ViSession     n  ViBoolean *[]     m ��ViBoolean ***     l ��ViBoolean **     k ��ViBoolean *     j 
 ViBoolean []     	i 	��ViBoolean     
h  	ViRsrc *[]     
g 
��ViRsrc ***     	f 	��ViRsrc **     e ��ViRsrc *     	d  ViRsrc []     c ��ViRsrc     b 
 ViStatus *[]     a ��ViStatus ***     ` ��ViStatus **     
_ 
��ViStatus *     ^ 	 
ViStatus []     ] ��ViStatus     �  ViChar[]   "    Anritsu ML248xA/249xA IVI Driver     �    This class contains high-level test and measurement functions.  
These functions call other instrument driver functions to configure and perform complete instrument operations.
        The IviPwrMeterTriggerSource extension capability group supports power meters that can specify a trigger source and a trigger event on which to trigger a measurement. The IviPwrMeterTriggerSource extension capability also includes functions for configuring the trigger source.    j    The IviPwrMeterInternalTrigger extension capability group supports power meters that can trigger internally
on the measurement signal. It specifies attributes to configure the internal trigger event source, trigger level,
and the trigger slope. The IviPwrMeterInternalTrigger extension capability group also includes functions for
configuring these attributes.        The IviPwrMeterAveragingCount extension capability group supports power meters that can filter a signal by
averaging it a specified number of times in manual averaging mode. The IviPwrMeterAveragingCount group
defines an attribute and function to specify the averaging count.        The IviPwrMeterDutyCycleCorrection extension capability group supports power meters that perform a duty
cycle correction. The IviPwrMeterDutyCycleCorrection extension capability also includes functions for
enabling and configuring the duty cycle correction.     "    Configures the channel settings.         Configure the gate settings.         Configure the limit settings.          Configure the marker settings.     $    Configure the processing settings.          Configure the sensor settings.     '    Configure the sensor offset settings.     3    Configure the sensor calibration factor settings.          Configure the system settings.     )    Configure the rear panel(BNC) settings.         The IviPwrMeterReferenceOscillator extension capability group supports power meters that can enable an internal reference oscillator. The IviPwrMeterResolution capability group defines attributes that configure the reference oscillator. It also defines function to set these attributes.     T    This class contains sub-classes for the set, get, and check attribute functions.       �    This class contains functions that set an attribute to a new value.  There are typesafe functions for each attribute data type.     �    This class contains functions that obtain the current value of an attribute.  There are typesafe functions for each attribute data type.     �    This class contains functions that obtain the current value of an attribute.  There are typesafe functions for each attribute data type.     �    The IviPwrMeterZeroCorrection extension capability group supports power meters that can perform a zero correction on an input channel. The IviPwrMeterZeroCorrection capability group defines functions to perform the zero correction.         Range Calibrator functions          Calibration on the powermeter.    �    This class contains functions and sub-classes that initiate and retrieve measurements using the current configuration.  The class contains high-level read functions that initiate a measurement and fetch the data in one operation.  The class also contains low-level functions that initiate the measurement process, send a software trigger, and fetch measurement values in separate operations.
    O    he class contains functions that give low-level control over how the PwrMeter takes measurements.  The functions perform the following operations:

- initiate the measurement process,
- send a software trigger, 
- fetch measurement values, and 
- abort the measurement process.  
- determine if an over-range condition has occurred.
    _    This class contains functions and sub-classes that control common instrument operations.  These functions include many of functions that VXIplug&play require, such as reset, self-test, revision query, error query, and error message.  This class also contains functions that access IVI error infomation, lock the session, and perform instrument I/O.
     R    This class contains functions that retrieve and clear the IVI error information.     J    This class contains functions that retrieve interchangeability warnings.     k    This class contains functions that lock and unlock IVI instrument driver sessions for multithread safefy.     F    This class contains functions that send and receive instrument data.    C    This function performs the following initialization actions:

- Creates a new IVI instrument driver session.

- Opens a session to the specified device using the interface and address you specify for the Resource Name parameter.

- If the ID Query parameter is set to VI_TRUE, this function queries the instrument ID and checks that it is valid for this instrument driver.

- If the Reset parameter is set to VI_TRUE, this function resets the instrument to a known state.

- Sends initialization commands to set the instrument to the state necessary for the operation of the instrument driver.

- Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Note:  This function creates a new session each time you invoke it. Although you can open more than one IVI session for the same resource, it is best not to do so.  You can use the same session in multiple program threads.  You can use the auml24XX_LockSession and auml24XX_UnlockSession functions to protect sections of code that require exclusive access to the resource.

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
"xyz432" - Logical Name or Driver Session "xyz432"


Default Value:  "GPIB::14::INSTR"
        Specify whether you want the instrument driver to perform an ID Query.

Valid Range:
VI_TRUE  (1) - Perform ID Query (Default Value)
VI_FALSE (0) - Skip ID Query

When you set this parameter to VI_TRUE, the driver verifies that the instrument you initialize is a type that this driver supports.  

Circumstances can arise where it is undesirable to send an ID Query command string to the instrument.  When you set this parameter to VI_FALSE, the function initializes the instrument without performing an ID Query.     �    Specify whether you want to reset the instrument during the initialization procedure.

Valid Range:
VI_TRUE  (1) - Reset Device (Default Value)
VI_FALSE (0) - Don't Reset

    �    Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Notes:

(1) This function creates a new session each time you invoke it.  This is useful if you have multiple physical instances of the same type of instrument.  

(2) Avoid creating multiple concurrent sessions to the same physical instrument.  Although you can create more than one IVI session for the same resource, it is best not to do so.  A better approach is to use the same IVI session in multiple execution threads.  You can use functions auml24XX_LockSession and auml24XX_UnlockSession to protect sections of code that require exclusive access to the resource.

        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
    o =   c  �    Resource Name                     %\ = i       ID Query                          'g =� i       Reset Device                      ( �C o  �    Instrument Handle                 *�#���]  �    Status                             "GPIB::14::INSTR"   Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	          N    This function performs the following initialization actions:

- Creates a new IVI instrument driver and optionally sets the initial state of the following session attributes:

    AUML24XX_ATTR_RANGE_CHECK         
    AUML24XX_ATTR_QUERY_INSTRUMENT_STATUS  
    AUML24XX_ATTR_CACHE               
    AUML24XX_ATTR_SIMULATE            
    AUML24XX_ATTR_RECORD_COERCIONS    

- Opens a session to the specified device using the interface and address you specify for the Resource Name parameter.

- If the ID Query parameter is set to VI_TRUE, this function queries the instrument ID and checks that it is valid for this instrument driver.

- If the Reset parameter is set to VI_TRUE, this function resets the instrument to a known state.

- Sends initialization commands to set the instrument to the state necessary for the operation of the instrument driver.

- Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Note:  This function creates a new session each time you invoke it. Although you can open more than one IVI session for the same resource, it is best not to do so.  You can use the same session in multiple program threads.  You can use the auml24XX_LockSession and auml24XX_UnlockSession functions to protect sections of code that require exclusive access to the resource.

Content from the IVI specifications reproduced with permission from the IVI Foundation.

The IVI Foundation and its member companies make no warranty of any kind with regard to this material, including, but not limited to, the implied warranties of merchantability and fitness for a particular purpose. The IVI Foundation and its member companies shall not be liable for errors contained herein or for incidental or consequential damages in connection with the furnishing, performance, or use of this material.    �    Pass the resource name of the device to initialize.

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
"xyz432" - Logical Name or Driver Session "xyz432"

 
Default Value:  "GPIB::14::INSTR"

Note: You specify the resource name with the "VInstr->" if you have the logical name that is the same as the virtual instrument name and you want to explicitly use the virtual instrument name. Otherwise, the driver uses the logical name.        Specify whether you want the instrument driver to perform an ID Query.

Valid Range:
VI_TRUE  (1) - Perform ID Query (Default Value)
VI_FALSE (0) - Skip ID Query

When you set this parameter to VI_TRUE, the driver verifies that the instrument you initialize is a type that this driver supports.  

Circumstances can arise where it is undesirable to send an ID Query command string to the instrument.  When you set this parameter to VI_FALSE, the function initializes the instrument without performing an ID Query.     �    Specify whether you wantw to reset the instrument during the initialization procedure.

Valid Range:
VI_TRUE  (1) - Reset Device (Default Value)
VI_FALSE (0) - Don't Reset

    �    Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Notes:

(1) This function creates a new session each time you invoke it.  This is useful if you have multiple physical instances of the same type of instrument.  

(2) Avoid creating multiple concurrent sessions to the same physical instrument.  Although you can create more than one IVI session for the same resource, it is best not to do so.  A better approach is to use the same IVI session in multiple execution threads.  You can use functions auml24xx_LockSession and auml24xx_UnlockSession to protect sections of code that require exclusive access to the resource.

    	�    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      SuccessReturns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
    s    You can use this control to set the initial value of certain attributes for the session.  The following table lists the attributes and the name you use in this parameter to identify the attribute.

Name              Attribute Defined Constant   
--------------------------------------------
RangeCheck        AUML24XX_ATTR_RANGE_CHECK
QueryInstrStatus  AUML24XX_ATTR_QUERY_INSTRUMENT_STATUS   
Cache             AUML24XX_ATTR_CACHE   
Simulate          AUML24XX_ATTR_SIMULATE  
RecordCoercions   AUML24XX_ATTR_RECORD_COERCIONS

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

    True:     1, True, or VI_TRUE
    False:    0, False, or VI_FALSE


Default Value:
       "Simulate=0,RangeCheck=1,QueryInstrStatus=0,Cache=1"
    :� =   c  �    Resource Name                     B� = i       ID Query                          D� =� i       Reset Device                      E\ �Y o  �    Instrument Handle                 H#���]  �    Status                            Q� �  � �    Option String                      "GPIB::14::INSTR"   Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	           5"Simulate=0,RangeCheck=1,QueryInstrStatus=0,Cache=1"    �    This funciton configures the active channel for Units,Trigger Source, Internal Trigger, channel measurement type configuration.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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

     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""    Z� ���]  �    Status                            a�    o  �    Instrument Handle                 b� )  �  �    Channel Name                       	                ""    �    This function configures the unit to which the RF power is converted after measurement on the current active channel. Before calling this function, active channel must be configured first.        Specifies the unit to which the RF power is converted after measurement.  The driver sets the AUML24XX_ATTR_UNITS attribute to this value.

The actual RF power of the signal on a channel is always measured in Watts. The value of this attribute is used to determine the units in which the Range Upper and Range Lower attributes are specified. The unit of the measurement result returned by the Read and Fetch functions also depends on the value of this attribute.

Valid Values:
AUML24XX_VAL_DBM - Sets the units to dBm.

AUML24XX_VAL_DBMV - Sets the units to dBmV.

AUML24XX_VAL_DBUV - Sets the units to dBuV.
           
AUML24XX_VAL_WATTS - Sets the units to Watts.

AUML24XX_VAL_DBW - Sets the units to dBW.

AUML24XX_VAL_VOLTS - Sets the units to Volts.



Default value: 
AUML24XX_VAL_DBM        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None

    d| = � u �    Units                             g�#���]  �    Status                            n�-   o  �    Instrument Handle                             �dBm AUML24XX_VAL_DBM dBmV AUML24XX_VAL_DBMV dBuV AUML24XX_VAL_DBUV Watts AUML24XX_VAL_WATTS dBW AUML24XX_VAL_DBW V AUML24XX_VAL_VOLTS    	              ]    This function configures the instrument to take single or dual sensor measurements on active channel. Use ConfigureActiveChannel function to set active channel before this configuration.

To configure the power meter to take single sensor measurements, pass No Operator as the value of the Operator parameter. To configure the power meter to take simultaneous dual sensor measurements, pass one of the defined math operators as the value of the Operator parameter.

If you pass No Operator as the value of the Operator parameter, this function enables the sensor specified by the Sensor Name 1 parameter and disables all other sensors. The value of the Sensor Name 2 parameter is ignored. 

If you do not pass No Operator as the value of the Operator parameter, this function enables the sensors specified by the Sensor Name 1 and Sensor Name 2 parameters. 

        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None

     c    Pass the channel name of the first channel.

Valid Channel Names:  chan1,chan2

Default Value: ""    $    This determines what type of operation to perform on the two channels.

Valid Values:
Difference     AUML24XX_VAL_DIFFERENCE
Quotient       AUML24XX_VAL_QUOTIENT
None           AUML24XX_VAL_NONE
ExternalVolts  AUML24XX_VAL_CHAN_CONFIG_V

Default value: 
Difference  AUML24XX_VAL_DIFFERENCE
     d    Pass the channel name of the second channel.

Valid Channel Names:  chan1,chan2

Default Value: ""    t##���]  �    Status                            {C-   o  �    Instrument Handle                 {� = � �  �    Sensor Name 1                     |i =  u �    Operator                          }� =� �  �    Sensor Name 2                      	               ""               �Difference AUML24XX_VAL_DIFFERENCE Quotient AUML24XX_VAL_QUOTIENT None AUML24XX_VAL_NONE External Volts AUML24XX_VAL_CHAN_CONFIG_V    ""    <    This function is not supported by the auml24xx instrument.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     �    Auto range mode. Pass VI_TRUE to turn auto ranging on. Pass VI_FALSE to turn auto ranging off. The driver sets the AUML24XX_ATTR_RANGE_AUTO_ENABLED attribute to this value.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)    �#���]  �    Status                            �-   o  �    Instrument Handle                 �� =  �  �    Channel Name                      �> =� i       Range Auto Enabled                 	               ""    On VI_TRUE Off VI_FALSE    �    This function is not supported by the auml24xx instrument. Use auml24xx_ConfigureSensorCorrectionFrequency to configure correction frequency on sensor.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""    �    Specifies the frequency of the input signal in Hertz.  The instrument uses this value to determine the appropriate correction factor for the sensor.
In order to obtain the most accurate measurement, you must specify the correction frequency as close as possible to the actual frequency of the input signal.  The driver sets the AUML24XX_ATTR_CORRECTION_FREQUENCY attribute to this value. 


Default Value: 50.0e6    ��#���]  �    Status                            ��-   o  �    Instrument Handle                 �� =  �  �    Channel Name                      �  =� �  �    Correction Frequency               	               ""    50.0e6    ~    This function is not supported by the auml24xx instrument. Use auml24xx_ConfigureSensorOffset to configure offset on sensor.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     |    The offset for the measured value.  The driver sets the AUML24XX_ATTR_OFFSET attribute to this value.


Default Value: 0.0    �@#���]  �    Status                            �`-   o  �    Instrument Handle                 � =  �  �    Channel Name                      �� =� �  �    Offset                             	               ""    0.0    Q    This function configures the measurment mode(CW/PMOD) on the specified
channel.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""        Specifies the measurement mode:

Valid Values:

AUML24XX_VAL_MEAS_MODE_CW - Continuous Wave Measurements                                 
AUML24XX_VAL_MEAS_MODE_PMOD - Pulsed / Modulated Measurements                                 

Default Value:
AUML24XX_VAL_MEAS_MODE_PMOD



    �P ���]  �    Status                            �p+   o  �    Instrument Handle                 �* - 
 �  �    Channel Name                      �� -� u �    Measurement Mode                   	                ""              sContinuous Wave Measurements AUML24XX_VAL_MEAS_MODE_CW Pulsed / Modulated Measurements AUML24XX_VAL_MEAS_MODE_PMOD    C    This function configures the settle percentage of the instrument.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     m    Specifies the value of settle percentage.

Default Value: 0.1

Valid Range: 0.01 to 10.00

Units: Percent

    �k ���]  �    Status                            ��)   o  �    Instrument Handle                 �D -  �  �    Channel Name                      �� -� �  �    Settle Percentage                  	                ""    0.1    @    This function configures the settings of the PMOD measurement.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""    =    Specifies the measurement type of PMOD measurement.

Valid Values:

AUML24XX_VAL_PMOD_MEAS_TYPE_1 - Average Power                
AUML24XX_VAL_PMOD_MEAS_TYPE_2 - Average Power, Peak Power                
AUML24XX_VAL_PMOD_MEAS_TYPE_3 - Average Power, Peak Power, Crest                             Factor                
AUML24XX_VAL_PMOD_MEAS_TYPE_4 -Average Power, Min Power and Time , Max Power and Time          
AUML24XX_VAL_PMOD_MEAS_TYPE_5 - Average Power, Held Min Power and Time, Held MaxPower and Time            

Default Values:
AUML24XX_VAL_PMOD_MEAS_TYPE_1

     �    Specifies the display type of PMOD measurement.

Valid Values:
AUML24XX_VAL_PMOD_PRF - Profile
AUML24XX_VAL_PMOD_RDO - Readout

Default Values:
AUML24XX_VAL_PMOD_PRF        Specifies the sample rate.

Valid Values:
AUML24XX_VAL_AUTO - Instrument determines sample rate                                 AUML24XX_VAL_31K25 - 31.25 ksamples/sec                                         
AUML24XX_VAL_62K5 - 62.5 ksamples/sec                                         
AUML24XX_VAL_125K - 125 ksamples/sec
AUML24XX_VAL_250K - 250 ksamples/sec                                          
AUML24XX_VAL_500K - 500 ksamples/sec                                          
AUML24XX_VAL_1M - 1 Msamples/sec                                             
AUML24XX_VAL_2M - 2 Msamples/sec                                            
AUML24XX_VAL_4M - 4 Msamples/sec                                            
AUML24XX_VAL_8M - 8 Msamples/sec                                            
AUML24XX_VAL_16M - 16 Msamples/sec                                           
AUML24XX_VAL_32M - 32 Msamples/sec (ML248xA only)                                           
AUML24XX_VAL_64M - 64 Msamples/sec (ML248xA only)                                           
AUML24XX_VAL_31M25 - 31.25 Msamples/sec (ML249xA only)                                          
AUML24XX_VAL_62M5 - 64 Msamples/sec (ML249xA only)                                           

Default Values:
AUML24XX_VAL_AUTO
    �Z ���]  �    Status                            �z'   o  �    Instrument Handle                 �4 ,  �  �    Channel Name                      �� * � u �    Measurement Type                  �� *� u �    Display Type                      �� _  u �    Sample Rate                        	                ""              ]Average Power AUML24XX_VAL_PMOD_MEAS_TYPE_1 Average Power, Peak Power AUML24XX_VAL_PMOD_MEAS_TYPE_2 Average Power, Peak Power, Crest Factor AUML24XX_VAL_PMOD_MEAS_TYPE_3 Average Power, Min Power and Time , Max Power and Time AUML24XX_VAL_PMOD_MEAS_TYPE_4 Average Power, Held Min Power and Time, Held Max Power and Time AUML24XX_VAL_PMOD_MEAS_TYPE_5               <Profile AUML24XX_VAL_PMOD_PRF Readout AUML24XX_VAL_PMOD_RDO              GAuto AUML24XX_VAL_AUTO 31K25 AUML24XX_VAL_31K25 62K5 AUML24XX_VAL_62K5 125K AUML24XX_VAL_125K 250K AUML24XX_VAL_250K 500K AUML24XX_VAL_500K 1M AUML24XX_VAL_1M 2M AUML24XX_VAL_2M 4M AUML24XX_VAL_4M 8M AUML24XX_VAL_8M 16M AUML24XX_VAL_16M 32M AUML24XX_VAL_32M 64M AUML24XX_VAL_64M 31M25 AUML24XX_VAL_31M25 62M5 AUML24XX_VAL_62M5    A    This function configures the relative mode for CW measurements.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None

     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""    b    Specifies the relative mode of the CW measurement.

Valid Values:

AUML24XX_VAL_RELATIVE_MODE_OFF - Turn Off                           
AUML24XX_VAL_RELATIVE_MODE_REF - Turn On and Reference                             
AUML24XX_VAL_RELATIVE_MODE_OLD_REF - Turn On, Use Old References If Not First Time. 

Default Values:
AUML24XX_VAL_RELATIVE_MODE_OFF    �F ���]  �    Status                            �f    o  �    Instrument Handle                 �! -  �  �    Channel Name                      ҉ -� u �    Relative Mode Control              	                ""               �Turn Off AUML24XX_VAL_RELATIVE_MODE_OFF Turn ON and Reference AUML24XX_VAL_RELATIVE_MODE_REF Turn ON, Use Old References If Not First Time AUML24XX_VAL_RELATIVE_MODE_OLD_REF    �    This function enables or disables the averaging under CW or PMOD measurement mode. Before calling this function, measurement mode must be configured first.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     x    Turns the averaging on or off.

Default Value: Off

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)    �?#���]  �    Status                            �^#   o  �    Instrument Handle                 � =  �  �    Channel Name                      ހ =� i       Averaging Enabled                  	               ""    On VI_TRUE Off VI_FALSE    <    This function enables or disables the auto-averaging mode.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""    O    Specifies the auto-averaging mode used by the instrument for the specified input channel.  The driver sets the AUML24XX_ATTR_AVERAGING_AUTO_ENABLED attribute to this value.
If auto averaging is enabled, the instrument determines the best value for the averaging count automatically. The averaging count specifies the number of samples that the instrument takes before the measurement is complete.
If auto averaging is disabled, the user must specify the averaging count explicitly by setting the averaging count attribute

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)    �I#���]  �    Status                            �h-   o  �    Instrument Handle                 �" =  �  �    Channel Name                      � =� i       Averaging Auto Enabled             	               ""    On VI_TRUE Off VI_FALSE    :    This function configures the Group Execute Trigger type.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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

     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Specifies the group execute trigger type.

Valid Values:

AUML24XX_VAL_GET_0 - When this command is issued the ML248xA / ML249xA will ignore the group execute trigger (GET) or the *TRG
commands.
AUML24XX_VAL_GET_1 - When the power meter receives a GET or *TRG command, the system will perform a TR1-type trigger command.
AUML24XX_VAL_GET_2 - When the power meter receives a GET or *TRG command, the system will perform a TR2-type trigger command.

Default Value:
AUML24XX_VAL_GET_0    �( ���]  �    Status                            �I    o  �    Instrument Handle                 � - � u �    GET Type                           	                           HGET0 AUML24XX_VAL_GET_0 GET1 AUML24XX_VAL_GET_1 GET2 AUML24XX_VAL_GET_2    �    This function configures the trigger arming mode, capture time and trigger delay time under CW or PMOD measurement mode. Before calling this function, measurment mode must be configured first.
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""        Specifies the trigger arming mode.

Valid Values:
AUML24XX_VAL_TRIGGER_ARMING_MODE_AUTO - Automatically arms the trigger after a trigger event has occurred.
AUML24XX_VAL_TRIGGER_ARMING_MODE_SINGLE - Arms the trigger for a new trigger event following a user key press.
AUML24XX_VAL_TRIGGER_ARMING_MODE_FRAME - Pulsed/Modulated only - Frame-based trigger arming mode.

Default Values:
AUML24XX_VAL_TRIGGER_ARMING_MODE_AUTO

Notes:
Listed below are restrictions on the selection of trigger arming
modes:
Measurement mode: CW 
Trigger source: INTA | INTB | EXTTL
Selectable arming modes: AUTO | SINGLE 

Measurement mode: PMOD 
Trigger source: INTA | INTB | EXTTL 
Selectable arming modes: AUTO | SINGLE | FRAME

Trigger source: CONT
Selectable arming modes: arming disallowed    L    Specifies the capture time.

Units: s

Valid Range: 
Pulsed/Modulated mode - ML248xA model:
3.125 us to 7.000 s ( 200 measurement display points )
6.250 us to 7.000 s ( 400 measurement display points )
Pulsed/Modulated mode - ML249xA model:
Trigger source: Continuous (RRS mode not Allowed):
3.200 us to 7.000 s (200 measurement display points )
6.400 us to 7.000 s (400 measurement display points )
Trigger source - Internal or External (RRS mode allowed):
50.000 ns to 7.000 s (200 and 400 measurement display points )
CW mode all models:
50.000 us to 7.000 s

Default Value:
4.6e-3 s    �    Specifies the trigger delay time.

Units: s

Valid Range: 
Measurement mode: Pulsed / Modulated 
Trigger source: All
Range: Pre-trig delay to Post-trig delay 
Where:
Pre-trig delay = (-1) x (0.95 x Capture Time)
Post-trig delay = (2^24-1) / (Sample Rate)

Pre-trig delay is defined as a negative trigger delay. The maximum selectable pre-trigger delay allowed is 0.95 the selected capture time for that channel.
The maximum selectable post-trig delay is dependent on the Sample Rate. The selectable sample rates will also change between the ML248xA and ML249xA instrument models. 

Measurement mode: CW - Trigger Source: Continuous
0.00 s (default)
Measurement mode: CW - Trigger Source: Internal | External
Range: 0.00 to 999.00 ms

Default Value:
0.0    �� ���]  �    Status                            ��    o  �    Instrument Handle                 �� -  �  �    Channel Name                       - � u �    Trigger Arming Mode               -� �  �    Capture Time                     c   �  �    Trigger Delay Time                 	                ""               �Auto AUML24XX_VAL_TRIGGER_ARMING_MODE_AUTO Single AUML24XX_VAL_TRIGGER_ARMING_MODE_SINGLE Frame AUML24XX_VAL_TRIGGER_ARMING_MODE_FRAME    4.6e-3    0.0    �    This function sets the trigger source of the power meter on current active channel  under CW or PMOD measurement mode. Before calling this function, active channel and measurment mode must be configured first.         Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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

     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None

    �    Specifies the trigger source.  The driver sets the AUML24XX_ATTR_TRIGGER_SOURCE attribute to this value.


Valid Values:
AUML24XX_VAL_IMMEDIATE - The instrument does not support this trigger source type.
AUML24XX_VAL_EXTERNAL - The power meter exits the Wait-For-Trigger state when a trigger occurs on the external trigger input;
AUML24XX_VAL_INTERNAL -The instrument does not support this trigger source type.
AUML24XX_VAL_SOFTWARE_TRIG -The instrument does not support this trigger source type.
AUML24XX_VAL_INTA - Internally monitoring the RF level at sensor A.
AUML24XX_VAL_INTB - Internally monitoring the RF level at sensor B.
AUML24XX_VAL_CONT - Continuous.

Default Value: AUML24XX_VAL_CONT
   4#���]  �    Status                           U-   o  �    Instrument Handle                 = � u �    Trigger Source                     	                         �Immediate AUML24XX_VAL_IMMEDIATE External AUML24XX_VAL_EXTERNAL Internal AUML24XX_VAL_INTERNAL Software AUML24XX_VAL_SOFTWARE_TRIG InternalA AUML24XX_VAL_INTA InternalB AUML24XX_VAL_INTB Continous AUML24XX_VAL_CONT    D    This function configures the trigger frame arming characteristics.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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

     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     f    Specifies the arming level.

Units: dBm

Valid Range: -230.00 dBm to +220.00 dBm

Default Value: 0.0    m    Specifies the arming time duration.

Units: s

Valid Range: 0.00 to (2^24 -1) x Sample Period 
Where Sample Period is the reciprocal of Sample Rate ( 1 /
Sample Rate ) selected (see TRSAMPL). The range of Sample Periods is different depending on the instrument type as follows: 
16.0 ns to 32.768 us (ML24x9A)
15.625 ns to 32.0 us (ML24x8A)

Default Value: 4.6e-3   � ���]  �    Status                           �    o  �    Instrument Handle                � -  �  �    Channel Name                     � - � �  �    Arming Level                      g -� �  �    Arming Time Duration               	                ""    0.0    4.6e-3       Turns the trigger linking on of off.

Remarks: This option allows both measurement channels to share the same measurement triggering set up.

Note: Both channels must be set to the same measurement mode. If
failing to meet this condition the instrument will produce an
execution error.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     �    Enables of disables the trigger linking of the measurement.

Default Value: Off

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)   $3 ���]  �    Status                           +S    o  �    Instrument Handle                , - i       Trigger Linking State              	                On VI_TRUE Off VI_FALSE    4    This function configures the PMOD trigger holdoff.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     �    Enables of Disables the trigger holdoff.

Default Value: Off

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)     f    Specifies the trigger holdoff time.

Units: s

Valid Range: 0.00 to 7.00 seconds

Default Value: 0.0   -� ���]  �    Status                           4�    o  �    Instrument Handle                5� (  �  �    Channel Name                     5� % i       Trigger Holdoff Enabled          6| (� �  �    Trigger Holdoff Time               	                ""    On VI_TRUE Off VI_FALSE    0.0    E    This function configures the auto triggering and trigger bandwidth.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""    �    Specifies the trigger bandwidth.

Valid Values:
AUML24XX_VAL_TRIGGER_BANDWIDTH_20MHZ - Select 20 MHz trigger filter bandwidth.                        
AUML24XX_VAL_TRIGGER_BANDWIDTH_2MHZ - Select 2 MHz trigger filter bandwidth.                      
AUML24XX_VAL_TRIGGER_BANDWIDTH_200KHZ - Select 200 kHz trigger filter bandwidth.                       
AUML24XX_VAL_TRIGGER_BANDWIDTH_20KHZ - Select 20 kHz trigger filter bandwidth.

Default Value: 
AUML24XX_VAL_TRIGGER_BANDWIDTH_20MHZ     �    Enables or disbales auto triggering of the measurement.

Default Value: Off

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)   8x ���]  �    Status                           ?�    o  �    Instrument Handle                @R +  �  �    Channel Name                     @� +y u �    Trigger Bandwidth                B� + � i       Auto Triggering Enabled            	                ""               �20MHz AUML24XX_VAL_TRIGGER_BANDWIDTH_20MHZ 2MHz AUML24XX_VAL_TRIGGER_BANDWIDTH_2MHZ 200KHz AUML24XX_VAL_TRIGGER_BANDWIDTH_200KHZ 20KHz AUML24XX_VAL_TRIGGER_BANDWIDTH_20KHZ    On VI_TRUE Off VI_FALSE    5    This function configures the external trigger edge.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     �    Specifies the external trigger edge.

Valid Values:
AUML24XX_VAL_EXT_EDGE_RISE - Rising
AUML24XX_VAL_EXT_EDGE_FALL - Falling

Default Value:
AUML24XX_VAL_EXT_EDGE_RISE   Eu ���]  �    Status                           L�    o  �    Instrument Handle                MO - � u �    Externa Trigger Edge               	                           ERising AUML24XX_VAL_EXT_EDGE_RISE Falling AUML24XX_VAL_EXT_EDGE_FALL    =    This function places the instrument into trigger hold mode.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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

     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   OH ���]  �    Status                           Vi    o  �    Instrument Handle                  	                ;    This functions queries the state off the RRS trace state.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     (    Indicates the state of the RRS trace.
   W� ���]  �    Status                           _     o  �    Instrument Handle                _� -  �  �    ChannelName                      `" -� u  �    RRS Trace State                    	                ""    	           
    This function configures the internal trigger event source and the internal trigger slope of the power meter on the current active channel under CW or PMOD measurement mode. Before calling this function, active channel and measurment mode must be configured first.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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

     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     �    The name of the sensor("A","B") to use as the internal trigger event source. The driver sets the AUML24XX_ATTR_INTERNAL_TRIGGER_EVENT_SOURCE attribute to this value.

Default Value: ""    �    The internal trigger slope.  The driver sets the AUML24XX_ATTR_INTERNAL_TRIGGER_SLOPE attribute to this value.

Valid Values:

AUML24XX_VAL_POSITIVE - Sets the trigger event to occur on the rising edge of the trigger pulse.                                                               

AUML24XX_VAL_NEGATIVE - Sets the trigger event to occur on the falling edge of the trigger pulse.

Default Value: AUML24XX_VAL_POSITIVE
   bZ#���]  �    Status                           i{-   o  �    Instrument Handle                j5 =  �  �    Event Source                     j� =� u �    Slope                              	               ""               >Positive AUML24XX_VAL_POSITIVE Negative AUML24XX_VAL_NEGATIVE    �    This function configures the internal trigger level of the power meter on the current active channel under CW or PMOD measurement mode. Before calling this function, active channel and measurment mode must be configured first.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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

     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     g    Sets the signal trigger level.

Units: dBm

Valid Range: -230.0 dBm to +220.0 dBm

Default Value: 0.0   n����]  �    Status                           u�-   o  �    Instrument Handle                v� = � �  �    Trigger Level                      	               0.0   >    This function sets the manual average count that the instrument uses in manual averaging mode under CW or PMOD measurement mode.  The averaging count specifies the number of samples that the instrument takes before the measurement is complete. Before calling this function, neasurment mode must be configured first.
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     �    The averaging count. The driver sets the AUML24XX_ATTR_AVERAGING_COUNT attribute to this value.


Valid Range: 1 to 512

Default Value: 1

    y#���]  �    Status                           �2-   o  �    Instrument Handle                �� =  �  �    Channel Name                     �T =� u  �    Count                              	               ""    1    @    This function configures the averaging mode for CW measurment.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""    x    Specifies the CW averaging mode.

Valid Values:
AUML24XX_VAL_AVERAGING_MOV - Moving Averaging                                
AUML24XX_VAL_AVERAGING_RPT - Repeat Averaging                                  
AUML24XX_VAL_AVERAGING_AUTO - Automatic Averaging                                
AUML24XX_VAL_AVERAGING_OFF - Averaging OFF

Default Value:
AUML24XX_VAL_AVERAGING_AUTO   �! ���]  �    Status                           �A    o  �    Instrument Handle                �� -  �  �    Channel Name                     �c -� u �    Averaging Mode                     	                ""              �Moving Averaging AUML24XX_VAL_AVERAGING_MOV Repeat Averaging AUML24XX_VAL_AVERAGING_RPT Automatic Averaging AUML24XX_VAL_AVERAGING_AUTO Averaging Off AUML24XX_VAL_AVERAGING_OFF    >    This function resets the Pulsed/Modulated Profile Averaging.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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

     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""   �� ���]  �    Status                           ��    o  �    Instrument Handle                �� -  �  �    Channel Name                       	                ""        This function enables or disables the duty cycle correction and sets the duty cycle correction for pulse power measurements.
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     �    Enables or disables the duty cycle correction.  The driver sets the AUML24XX_ATTR_DUTY_CYCLE_CORRECTION_ENABLED attribute to this value.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)
     �    Specifies the expected value of the duty cycle correction.  The driver sets the AUML24XX_ATTR_DUTY_CYCLE_CORRECTION attribute to this value.

Valid Range: 0.10 to 100.00

Default Value: 100.0
   �R#���]  �    Status                           �r-   o  �    Instrument Handle                �, =  �  �    Channel Name                     �� = i       Correction Enabled               �k =� �  �    Correction                         	               ""    On VI_TRUE Off VI_FALSE    100.0   b    This function returns the highest-level channel name that corresponds to the specific driver channel string that is in the channel table at an index you specify.  By passing 0 for the buffer size, the caller can ascertain the buffer size required to get the entire channel name string and then call the function again with a sufficiently large buffer.
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     <    A 1-based index into the channel table.

Default Value: 1
        Returns the highest-level channel name that corresponds to the specific driver channel string that is in the channel table at an index you specify..

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter.  If the channel name description, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass 0 for the Buffer Size, you can pass VI_NULL for this parameter.    �    Pass the number of bytes in the ViChar array you specify for the Channel Name parameter.

If the channel name, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies BufferSize - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Channel Name buffer parameter.

Default Value:  None   ��-   o  �    Instrument Handle                ��#���]  �    Status or Required Size          �� =  u  �    Index                            �  �  �  �    Channel Name                     � = u  �    Buffer Size                            	           1    	                6    This function turns the dual channel mode on or off.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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

     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     l    Turns the dual channel mode on of off.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)   �W#���]  �    Status                           �x-   o  �    Instrument Handle                �2 1 � i       Dual Channel Enabled               	               On VI_TRUE Off VI_FALSE    B    This function turns min and max values tracking state on or off.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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

     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     x    Turns min and max values tracking state on or off.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)   �� ���]  �    Status                           ��    o  �    Instrument Handle                ŕ -  �  �    Channel Name                     �� -� i       Tracking Enabled                   	                ""    On VI_TRUE Off VI_FALSE    k    This function resets the min/max values for the CW
measurement mode if min/max tracking state is enabled.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""   �� ���]  �    Status                           �    o  �    Instrument Handle                �� -  �  �    Channel Name                       	                ""    �    This function configures the active gating pattern number. Fence and gating settings will be configured on the active gating pattern.
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     U    Specifies the active gating pattern number.

Valid Ranges: 1 to 4

Default Value: 1   �| ���]  �    Status                           ؜    o  �    Instrument Handle                �V -  �  �    Channel Name                     پ -� u  �    Active Gating Pattern              	                ""    1    ,    This function configures the repeat gates.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     T    Specifies the gate pattern 1 repeat number.

Valid Range:2 to 8

Default Value: 2
     r    Turns gate pattern 1 repeat state on or off.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)     k    Specifies the gate pattern 1 repeat offset.

Unit: s

Valid Range:0.00 to 7.00 s

Default Value: 5.77e-4
   �> ���]  �    Status                           �^    o  �    Instrument Handle                � /  �  �    Channel Name                     � / � u  �    Gate Pattern 1 Repeat Number     �� /� i       Gate Pattern 1 Repeat Enabled    �V �  �  �    Gate Pattern 1 Repeat Offset       	                ""    2    On VI_TRUE Off VI_FALSE    5.77e-4    �    This function configures the fence setting on the current active gating pattern. Before calling this function, active gating pattern number must be configured first.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     `    Turns the fence on or off.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)     ]    Specifies the fence stop time.

Units: s

Valid Range: 0.00 to 7.00

Default Value: 3.21e-4     ^    Specifies the fence start time.

Units: s

Valid Range: 0.00 to 7.00

Default Value: 2.25e-4   �� r��]  �    Status                           �    o  �    Instrument Handle                �� -  �  �    Channel Name                     �9 - i       Fence Enabled                    � -r �  �    Fence Stop Time                  � �  �  �    Fence Start Time                   	                ""    On VI_TRUE Off VI_FALSE    3.21e-4    2.25e-4    �    This function configures the gate setting on the current active gating pattern. Before calling this function, active gating pattern number must be configured first.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     _    Turns the gate on or off.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)     \    Specifies the gate stop time.

Units: s

Valid Range: 0.00 to 7.00

Default Value: 3.21e-4     ]    Specifies the gate start time.

Units: s

Valid Range: 0.00 to 7.00

Default Value: 2.25e-4   � ���]  �    Status                           ��    o  �    Instrument Handle                �y 1  �  �    Channel Name                     �� , � i       Gate Enabled                     �H 1j �  �    Gate Stop Time                   �� �  �  �    Gate Start Time                    	                ""    On VI_TRUE Off VI_FALSE    	 3.21e-4    2.25e-4    �    This function turns off all enabled gating patterns including the active gating pattern. This action will end internal processing of measurements associated to gating patterns. The gating patterns definitions however remain unchanged.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""   �� ���]  �    Status                           �    o  �    Instrument Handle                e -  �  �    Channel Name                       	                ""    5    This function configures the limit characteristics.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     o    Turns the limit checking state on or off.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)     t    Turns the fail indicator hold state on or off.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)     �    Specifies the limit line test type.

Valid Values:
AUML24XX_VAL_LIMIT_LINE_TEST_BOTH - Both
AUML24XX_VAL_LIMIT_LINE_TEST_LOWER - Lower
AUML24XX_VAL_LIMIT_LINE_TEST_UPPER - Upper

Default Value:
AUML24XX_VAL_LIMIT_LINE_TEST_BOTH     �    Specifies the limit checking type.

Valid Values:
AUML24XX_VAL_LIMIT_CHECKING_COMPLEX - Complex
AUML24XX_VAL_LIMIT_CHECKING_SIMPLE - Simple

Default Value:
AUML24XX_VAL_LIMIT_CHECKING_COMPLEX   � ���]  �    Status                           �    o  �    Instrument Handle                � 2  �  �    Channel Name                      - i       Limit Checking Enabled           x -� i       Fail Indicator Hold Enabled      � �  u �    Limit Line Test Type             � � � u �    Limit Checking Type                	                ""    On VI_TRUE Off VI_FALSE    On VI_TRUE Off VI_FALSE               yBoth AUML24XX_VAL_LIMIT_LINE_TEST_BOTH Lower AUML24XX_VAL_LIMIT_LINE_TEST_LOWER Upper AUML24XX_VAL_LIMIT_LINE_TEST_UPPER               VComplex AUML24XX_VAL_LIMIT_CHECKING_COMPLEX Simple AUML24XX_VAL_LIMIT_CHECKING_SIMPLE    ,    This function configures the simple limit.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""    �    Specifies the value of lower limit line.

Valid Range: -999.99 to +999.99 E+06

Default Value: -0.001

Remarks: Set the lower limit value for simple limit checking. The value is regarded as unit-less number; hence the limit
magnitude will be checked against the current measurements
regardless of the instrument's currently selected units. The
user must ensure that limit value is consistent with the
selected measurement units.    �    Specifies the value of upper limit line.

Valid Range: -999.99 to +999.99 E+06

Default Value: 9.99e8

Remarks: Set the upper limit value for simple limit checking. The value is regarded as unit-less number; hence the limit
magnitude will be checked against the current measurements
regardless of the instrument's currently selected units. The
user must ensure that limit value is consistent with the
selected measurement units.   ����]  �    Status                           �   o  �    Instrument Handle                d -  �  �    Channel Name                     � - � �  �    Lower Limit Line                 � -� �  �    Upper Limit Line                   	                ""    -0.001    9.99e8    7    This function configures the complext limit settings.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""    �    Specifies the complex limit power offset.

Valid Range: -999.99 to +999.99 E+06

Default Value: 0.0

Note: The value of offset is unit-less. The user must ensure that the value of offset agrees with the intended measurement units. The magnitude of offset will be accepted (providing it is within the specified offset range), regardless of the permitted range for the measurement units currently selected on channel.     W    Specifies the complex limits repeat count.

Valid Range:   2 to 8

Default Value: 2

     v    Turns the complex limits repeat state on or off.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)    �    Specifies the complex limit power replication offset.

Valid Range: -999.99 to +999.99 E+06

Default Value: 0.0

Remarks: Sets the limits replication amplitude offset. If the value exceeds the offset range an execution error is returned.  
The value of offset is unit-less and will be accepted (providing it is within offset range), regardless of the permitted range for the channel units currently selected.
     x    Specifies the complex limit time replication offset.

Units: s

Valid Range:  -7.00 s to +7.00 s

Default Value: 0.0

     l    Specifies the complex limit time offset.

Units: s

Valid Range:  -7.00 s to +7.00 s

Default Value: 0.0

   "� ���]  �    Status                           )�    o  �    Instrument Handle                *� -  �  �    Channel Name                     *� - � �  �    Power Offset                     ,� -� u  �    Repeat Count                     ,� � S i       Enable Repeat                    -r � � �  �    Power Replicaiton Offset         / �� �  �    Time Replicaiton  Offset         /� �  �  �    Time Offset                        	                ""    0.0    2    On VI_TRUE Off VI_FALSE    0.0    0.0    0.0    �    This function configures the complex limit spec type. The active   specification number will be configures based on this setting.
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     �    Specifies the complex limit spec type.

Valid Values:
AUML24XX_VAL_LIMIT_SPEC_USER - User defined stores
AUML24XX_VAL_LIMIT_SPEC_PDEF - Pre-defined stores

Default Value:
AUML24XX_VAL_LIMIT_SPEC_USER     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""   2� ���]  �    Status                           9�    o  �    Instrument Handle                :� +� u �    Complex Limits Type              ;o +  �  �    Channel Name                       	                           aUser Defined Stores AUML24XX_VAL_LIMIT_SPEC_USER Pre-defined Stores AUML24XX_VAL_LIMIT_SPEC_PDEF    ""    �    This function configures the complex active limits specification number. Before calling this function, the complex limit spec type must be confiugred first.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None

     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     y    Specifies the applied complex limit specification.

Valid Ranges:
User: 1 to 30
Pre-defined: 1 to 20

Default Value: 1
   =� ���]  �    Status                           D�    o  �    Instrument Handle                E� -  �  �    Channel Name                     F -� u  �    Active Number                      	                ""    1    K    This function queries the status of a selected user complex limits store.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     F    Specifies the store number.

Valid Range: 1 to 30

Default Value: 1
     +    Indicates the status of the memory store.   G� ���]  �    Status                           N�    o  �    Instrument Handle                O� -  u  �    Store Number                     P - � i  �    Status Free                        	                1    	           ?    Specifies the name string of the limit store.

Remarks: Defines the target store number and name string for the
complex limits specification. Note that this function must be
followed by one or more ConfigureComplexLimitSegment function  and always terminated by the SaveComplexLimitSpecification function to save the specification to the target non-volatile store. Failing to use the SaveComplexLimitSpecification function will result in loss of data if the user subsequently calls a new  ConfigureComplexLimitSpecificationIDHeader function or the instrument is turned off.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     E    Specifies the store number

Valid Ranges: 1 to 30

Default Value: 1     /    Specifies the name string of the limit store.   St ���]  �    Status                           Z�    o  �    Instrument Handle                [N - $ u  �    Store Number                     [� - � �  �    Name                               	                1    ""   �    This function defines the complex limits segment.

Notes: Only call this function following the ConfigureComplexLimitSpecificationIDName function.  Failing to do so will result in an execution error. Also call the SaveComplexLimitSpecification function at the end of the segment definition. Failing to do so will result in loss of data if a subsequent ConfigureComplexLimitSpecificationIDName function is called, or the instrument is turned off.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     _    Speicifies the segment start time.

Valid Range: -7.00 to +7.00

Default Value: 0.0

Units: s     `    Speicifies the segment stop time.

Valid Range: -7.00 to +7.00 s

Default Value: 0.0

Units: s     �    Speicifies the up limit start value

Valid Range: -999.99 to +999.99 E+06

Default Value: 0.0

Note:
The parameter is unit-less. The user must ensure that
the magnitude of these values agree with the intended
measurement units.     �    Speicifies the up limit stop value

Valid Range: -999.99 to +999.99 E+06

Default Value: 0.0

Note:
The parameter is unit-less. The user must ensure that
the magnitude of these values agree with the intended
measurement units.     �    Speicifies the lower limit start value

Valid Range: -999.99 to +999.99 E+06

Default Value: 0.0

Note:
The parameter is unit-less. The user must ensure that
the magnitude of these values agree with the intended
measurement units.
     �    Speicifies the up limit stop value

Valid Range: -999.99 to +999.99 E+06

Default Value: 0.0

Note:
The parameter is unit-less. The user must ensure that
the magnitude of these values agree with the intended
measurement units.   ^� ���]  �    Status                           e�    o  �    Instrument Handle                fb -  �  �    Start Time                       f� - � �  �    Stop Time                        g1 -� �  �    Up Limit Start                   h   �  �    Up Limit Stop                    i
  � �  �    Low Limit Sart                   i� � �  �    Low Limit Stop                     	                0.0    0.0    0.0    0.0    0.0    0.0   �    This function saves Specification to Complex Limits Store.

Remarks: This function saves the complex limits specification. Uses the following function sequence :
1 ConfigureComplexLimitSpecificationIDName
2 DefineComplexLimitSegment 
3 SaveComplexLimitSpecification 
to define and save a complex limits specification having one or more segments. 

Failing to issue this function will result in loss of data if a
subsequent ConfigureComplexLimitSpecificationIDName function  is called, or the instrument is turned off. An execution error will be returned if this function is issued without first calling the ConfigureComplexLimitSpecificationIDName function, or if this function is called twice or more when saving a specification.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     b    Specifies the maximum time in milliseconds to wait for a return value. 

Default Value: 10000


   o� ���]  �    Status                           v�    o  �    Instrument Handle                w� ' � u  �    Max Time                           	                10000    F    This function configures the marker number for marker configuration.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     ^    Specifies the marker number for marker configuration.

Valid Range: 1 to 4

Default Value: 1   x� ���]  �    Status                           �    o  �    Instrument Handle                �� -  �  �    Channel Name                     �9 -� u  �    Marker Number                      	                ""    1    �    This function enables or disables the marker based on the marker number configuration and configures the marker position. Before calling this function, the marker number must be configured first.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     �    Enables or disables the marker based on the marker configuration number.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)    1    Specifies the marker position based on the marker configuration number.

Note: The range for position depends upon the selected Capture
Time. The marker search is carried out on a 200 or 400 point
measurement data set depending on the display resolution setting . The marker x-axis resolution is therefore a function of capture time and display resolution. If the marker is moved over GPIB by a finer increment then the current display resolution, the instrument shall return the measurement reading from the nearest data point.

Units: s 

Default Value: 0.0   �[ ���]  �    Status                           �{    o  �    Instrument Handle                �5 /  �  �    Channel Name                     �� * � i       Marker Enabled                   �3 /� �  �    Marker Position                    	                ""    On VI_TRUE Off VI_FALSE    0.0    �    This function makes the marker active based on the current marker number.  Before calling this function, the marker number must be configured first.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""   �K ���]  �    Status                           �k    o  �    Instrument Handle                �% -  �  �    Channel Name                       	                ""    3    This function positions the active marker to MAX.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""   �} ���]  �    Status                           ��    o  �    Instrument Handle                �W -  �  �    Channel Name                       	                ""    3    This function positions the active marker to MIN.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""   �� ���]  �    Status                           ��    o  �    Instrument Handle                �� -  �  �    Channel Name                       	                ""    ?    This function configures the advanced marker search settings.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     t    Specifies the advanced marker search lower target.

Valid Range: 1.00  to 99.00 

Units: Percent

Default Value: 1     s    Specifies the advanced marker search upper target.

Valid Range: 1.00 to 99.00

Units: Percent

Default Value: 90    I    Specifies the start value source.

Valid Values:
AUML24XX_VAL_MARKER_SEARCH_SOURCE_MARKER - The active marker power value is used to start the search from.

AUML24XX_VAL_MARKER_SEARCH_SOURCE_GATE - The active gate's average power value is used to start the search from.

Default Value:
AUML24XX_VAL_MARKER_SEARCH_SOURCE_MARKER
   �� ���]  �    Status                           �    o  �    Instrument Handle                �� -  �  �    Channel Name                     �/ - � �  �    Lower Target                     �� -� �  �    Upper Target                     �& �  u �    Start Value Source                 	                ""    1.0    90.0               \Marker AUML24XX_VAL_MARKER_SEARCH_SOURCE_MARKER Gate AUML24XX_VAL_MARKER_SEARCH_SOURCE_GATE    ,    This function configures the delta marker.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     k    Enables or disables the delta marker.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)     s    Enables or disables the delta marker linking.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)     �    Specifies the delta marker measurement type.

Valid Values:
AUML24XX_VAL_DELTA_MARKER_PDIFF - Power Difference
AUML24XX_VAL_DELTA_MARKER_PAVG - Average Power

Default Value:
AUML24XX_VAL_DELTA_MARKER_PDIFF
    �    Specifies the delta marker position.

Note: The marker search is carried out on a 200 or 400 point
measurement data set depending on the Display Resolution
setting. The marker x-axis resolution is therefore a function of Capture Time and Display Resolution. If the marker is moved over GPIB by a finer increment then the current display resolution, the instrument shall return the measurement reading from the nearest data point.

Default Value: 0.0

Units: s   �y ���]  �    Status                           ��    o  �    Instrument Handle                �S /  �  �    Channel Name                     �� * � i       Delta Marker Enabled             �. *� i       Delta Marker Linking Enabled     �� �  u �    Delta Marker Measurement Type     � � �  �    Delta Marker Position              	                ""    On VI_TRUE Off VI_FALSE    On VI_TRUE Off VI_FALSE               ^Power Difference AUML24XX_VAL_DELTA_MARKER_PDIFF Average Power AUML24XX_VAL_DELTA_MARKER_PAVG    0.0    %    This function disables all markers.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""   ƶ ���]  �    Status                           ��    o  �    Instrument Handle                ΐ -  �  �    Channel Name                       	                ""    ;    This function configures the post processing acquisition.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""         Enables or disables the post processing acquistion state.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)     �    Specifies the function module of post processing.

Valid Values:
AUML24XX_VAL_POST_PROCESSING_STATS - Statistical Analysis Module
AUML24XX_VAL_POST_PROCESSING_PAE - Power Added Efficiency

Default Value:
AUML24XX_VAL_POST_PROCESSING_STATS

   �� ���]  �    Status                           �    o  �    Instrument Handle                �� /  �  �    Channel Name                     �2 / i       Post Process Acqusition Enabled  ع /� u �    Function Module                    	                ""    On VI_TRUE Off VI_FALSE               pStatistical Analysis AUML24XX_VAL_POST_PROCESSING_STATS Power Added Efficiency AUML24XX_VAL_POST_PROCESSING_PAE    .    This function configures the PAE processing.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     `    Specifies the PAE bias current.

Units: A

Default Value: 0.01

Valid Range:1.00 uA to 1.00 kA     y    Specifies the PAE bias current conversion factor.

Units: V/A

Default Value: 0.01

Valid Range:1.00 mV/A to 100.00 V/A     _    Specifies the PAE bias voltage.

Units: V

Default Value: 10 

Valid Range:1.00 uV to 1.00 MV    e    Specifies the PAE source.

Valid Values:
AUML24XX_VAL_PAE_SOURCE_CHANNEL - Channel
AUML24XX_VAL_PAE_SOURCE_GATE - Gate
AUML24XX_VAL_PAE_SOURCE_MARKER - Marker

Default Value:
AUML24XX_VAL_PAE_SOURCE_CHANNEL

Remarks: 
Selects the measurement source for power added efficiency
(PAE) post-processing data. Note that when selecting gate
or markers, the currently 'active' gate or marker will be used
as the measurement source. An execution error will be returned if there are no enabled gates or markers. Similarly, an execution error is returned if selecting gate or marker with a channel configured in CW mode.

     �    Specifies the PAE input type.

Valid Values:
AUML24XX_VAL_PAE_INPUT_A_MINUS_B - Input A minus Input B
AUML24XX_VAL_PAE_INPUT_B_MINUS_A - Input B minus Input A


Default Value:
AUML24XX_VAL_PAE_INPUT_A_MINUS_B    h    Specifies the PAE bias current source type.

Valid Values:
AUML24XX_VAL_PAE_BIAS_CURRENT_SOURCE_FIXED -
The bias current is supplied directly.

AUML24XX_VAL_PAE_BIAS_CURRENT_SOURCE_PROBE -
the bias current is calculated from a voltage supplied at the rear panel V/GHZ input and a conversion factor.

Default Value:
AUML24XX_VAL_PAE_BIAS_CURRENT_SOURCE_FIXED
   ۢ ���]  �    Status                           ��    o  �    Instrument Handle                �| -  �  �    Channel Name                     �� -� �  �    PAE Bias Current                 �L |  �  �    PAE Bias Current Conv Factor     �� |� �  �    PAE Bias Voltage                 �4 �  u �    PAE Source Selection             � - � u �    PAE Input Config                 �{ | � u �    PAE Bias Current Source            	                ""    0.01    0.01    10.0               pChannel AUML24XX_VAL_PAE_SOURCE_CHANNEL Gate AUML24XX_VAL_PAE_SOURCE_GATE Marker AUML24XX_VAL_PAE_SOURCE_MARKER               JA-B AUML24XX_VAL_PAE_INPUT_A_MINUS_B B-A AUML24XX_VAL_PAE_INPUT_B_MINUS_A               bFixed AUML24XX_VAL_PAE_BIAS_CURRENT_SOURCE_FIXED Probe AUML24XX_VAL_PAE_BIAS_CURRENT_SOURCE_PROBE    ;    This function configures the statistical post processing.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""         Specifies the statistical post processing maker position.

Units: dB(m)

Default Value: -70.0

Valid Range:-999.99 to +999.99        Specifies the source selection.

Valid Values:
AUML24XX_VAL_STAT_POST_PROCESSING_SOURCE_CHANNEL - Channel
AUML24XX_VAL_STAT_POST_PROCESSING_SOURCE_GATE - Gate
AUML24XX_VAL_STAT_POST_PROCESSING_SOURCE_MARKER - Marker

Default Value:
AUML24XX_VAL_STAT_POST_PROCESSING_SOURCE_CHANNEL     �    Enables or disables the statistical post processing marker.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)        Specifies the function type.

Valid Values:
AUML24XX_VAL_PROCESSING_TYPE_PDF - Probability Density 
AUML24XX_VAL_PROCESSING_TYPE_CDF - Cumulative Distribution 
AUML24XX_VAL_PROCESSING_TYPE_CCDF - Complementary Cumulative Distribution

Default Value:
AUML24XX_VAL_PROCESSING_TYPE_PDF   ����]  �    Status                           ��   o  �    Instrument Handle                �\ /  �  �    Channel Name                     �� /� �  �    Marker Position                  �K � � u �    Source Selection                 �m � M i       Marker Enabled                   �� / � u �    Function Type                      	                ""    -70.0               �Channel AUML24XX_VAL_STAT_POST_PROCESSING_SOURCE_CHANNEL Gate AUML24XX_VAL_STAT_POST_PROCESSING_SOURCE_GATE Marker AUML24XX_VAL_STAT_POST_PROCESSING_SOURCE_MARKER    On VI_TRUE Off VI_FALSE               �Probability Density AUML24XX_VAL_PROCESSING_TYPE_PDF Cumulative Distribution AUML24XX_VAL_PROCESSING_TYPE_CDF Complementary Cumulative Distribution AUML24XX_VAL_PROCESSING_TYPE_CCDF    9    This function restarts the post processing acquisition.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""   � ���]  �    Status                           �    o  �    Instrument Handle                Y -  �  �    Channel Name                       	                ""    B    This function configures the sensor filter and range hold type.         Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     _    Pass the sensor name you want to configure.

Valid Channel Names:  "A","B"

Default Value: ""     l    Enables or disables the sensor filter.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)    Z    Specifies the sensor range hold type.

Valid Values:
AUML24XX_VAL_RANGE_HOLD_AUTO - Auto 
AUML24XX_VAL_RANGE_HOLD_1 - Range Holde mode 1
AUML24XX_VAL_RANGE_HOLD_2 - Range Holde mode 2
AUML24XX_VAL_RANGE_HOLD_3 - Range Holde mode 3
AUML24XX_VAL_RANGE_HOLD_4 - Range Holde mode 4
AUML24XX_VAL_RANGE_HOLD_5 - Range Holde mode 5
AUML24XX_VAL_RANGE_HOLD_6 - Range Holde mode 6
AUML24XX_VAL_RANGE_HOLD_7 - Range Holde mode 7
AUML24XX_VAL_RANGE_HOLD_8 - Range Holde mode 8
AUML24XX_VAL_RANGE_HOLD_9 - Range Holde mode 9

Default Value:
AUML24XX_VAL_RANGE_HOLD_AUTO

Notes:
Different range numbers are allocated depending on the Measurement mode as follows:
Pulsed/Modulated
AUTO | 7 to 9
CW
AUTO | 1 to 5 (1 to 6 Universal Power Sensor Only in True
RMS mode)

AUTO selects the suitable range depending on the incoming signal level and measurement mode (see above)   ����]  �    Status                           �   o  �    Instrument Handle                � 0  �  �    Sensor Name                       + i       Sensor Filter State              u /� u �    Range Hold Type                    	                ""    On VI_TRUE Off VI_FALSE            
  Auto AUML24XX_VAL_RANGE_HOLD_AUTO 1 AUML24XX_VAL_RANGE_HOLD_1 2 AUML24XX_VAL_RANGE_HOLD_2 3 AUML24XX_VAL_RANGE_HOLD_3 4 AUML24XX_VAL_RANGE_HOLD_4 5 AUML24XX_VAL_RANGE_HOLD_5 6 AUML24XX_VAL_RANGE_HOLD_6 7 AUML24XX_VAL_RANGE_HOLD_7 8 AUML24XX_VAL_RANGE_HOLD_8 9 AUML24XX_VAL_RANGE_HOLD_9    7    This function configures the sensor operating mode.

        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     _    Pass the sensor name you want to configure.

Valid Channel Names:  "A","B"

Default Value: ""     �    Specifies the universal sensor operating mode.

Valid Values:
AUML24XX_VAL_UNIVERSAL_SENSOR_TRMS - True RMS mode
AUML24XX_VAL_UNIVERSAL_SENSOR_FCW - Fast CW mode

Default Value:
AUML24XX_VAL_UNIVERSAL_SENSOR_TRMS
   } ���]  �    Status                           �    o  �    Instrument Handle                W 1  �  �    Sensor Name                      � 1� u �    Universal Sensor Operating Mode    	                ""               `True RMS Mode AUML24XX_VAL_UNIVERSAL_SENSOR_TRMS Fast CW Mode AUML24XX_VAL_UNIVERSAL_SENSOR_FCW    V    This function specifies the offset to be added to the measured value in units of dB.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     _    Pass the sensor name you want to configure.

Valid Channel Names:  "A","B"

Default Value: ""     �    The offset for the measured value on sensor.  The driver sets the AUML24XX_SENSOR_ATTR_OFFSET attribute to this value.

Units: dB

Valid Range:  -200.00 to +200.00

Default Value: 0.0   T#���]  �    Status                           &t-   o  �    Instrument Handle                '. =  �  �    Sensor Name                      '� =� �  �    Offset                             	               ""    0.0    I    This function configures the offset table number applied to the sensor.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     [    Specifies the table number applied to the sensor.

Valid Range: 1 to 5

Default Value: 1
     _    Pass the sensor name you want to configure.

Valid Channel Names:  "A","B"

Default Value: ""   )����]  �    Status                           0�   o  �    Instrument Handle                1r -� u  �    Active Table Number              1� -  �  �    Sensor Name                        	                1    ""    0    This function queries the sensor offset value.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     _    Pass the sensor name you want to configure.

Valid Channel Names:  "A","B"

Default Value: ""     $    Indicates the sensor offset value.   3c ���]  �    Status                           :�    o  �    Instrument Handle                ;= -  �  �    Sensor Name                      ;� -� �  �    Offset Value                       	                ""    	            2    This function configures the sensor offset type.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     _    Pass the sensor name you want to configure.

Valid Channel Names:  "A","B"

Default Value: ""        Specifies the sensor offset type.

Valid Values:
AUML24XX_VAL_SENSOR_OFFSET_TYPE_OFF - No offset to be used
AUML24XX_VAL_SENSOR_OFFSET_TYPE_FIXED - Use the fixed value 
AUML24XX_VAL_SENSOR_OFFSET_TYPE_TABLE - Use the Offset table 

Default Value:
AUML24XX_VAL_SENSOR_OFFSET_TYPE_OFF
   = $���]  �    Status                           D $   o  �    Instrument Handle                D� -  �  �    Sensor Name                      EA -� u �    Offset Type                        	                ""               �Off AUML24XX_VAL_SENSOR_OFFSET_TYPE_OFF Fixed AUML24XX_VAL_SENSOR_OFFSET_TYPE_FIXED Table AUML24XX_VAL_SENSOR_OFFSET_TYPE_TABLE    6    This function clears the specified the offset table.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     M    Specifies the table number to clear.

Valid Range: 1 to 5

Default Value: 1     �    Specifies the maximum time in milliseconds to wait for a return value. Instead of passing the time in miliseconds, you can also pass one of the following predefined constants.

Default Value: 10000


   H ���]  �    Status                           O=    o  �    Instrument Handle                O� - � u  �    Table Number                     PL -� u  �    Max Time                           	                1    10000    \    This function adds a frequency/offset data pair to the selected offset table store number.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     E    Specifies the table number.

Valid Range: 1 to 5

Default Value: 1
     c    Specifies the frequency.

Units: Hz

Valid Range: 100.00 kHz to 400.00 GHz

Default Value: 100000     ]    Specifies the offset.

Units: dB

Valid Range: -200.00 dB to +200.00 dB

Default Value: 0.0   Rt ���]  �    Status                           Y�    o  �    Instrument Handle                ZN -  u  �    Table Number                     Z� - � �  �    Frequency                        [ -� �  �    Offset                             	                1    100000    0.0    :    This function configures the offset table Identity Name.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     E    Specifies the table number.

Valid Range: 1 to 5

Default Value: 1
     ,    Sepecifies the offset table identity name.   \� ���]  �    Status                           c�    o  �    Instrument Handle                d� -  u  �    Table Number                     e - � �  �    ID Name                            	                1    ""    i    This function queries the instrument on whether the selected offset table is a valid initialized table.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     E    Specifies the table number.

Valid Range: 1 to 5

Default Value: 1
     8    Indicates whether the specified offset table is valid.   f� ���]  �    Status                           m�    o  �    Instrument Handle                nq -  u  �    Table Number                     n� - � i  �    Valid                              	                1    	            �    This function specifies the frequency of the input signal in Hertz. The instrument uses this value to determine the appropriate correction factor for the sensor.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     _    Pass the sensor name you want to configure.

Valid Channel Names:  "A","B"

Default Value: ""     y    Specifies the correction frequency on sensor.

Units: Hz

Valid Range:  100.00 kHz to 400.00 GHz

Default Value: 50.0e6   p�#���]  �    Status                           w�-   o  �    Instrument Handle                xx =  �  �    Sensor Name                      x� =� �  �    Correction Frequency               	               ""    50.0e6    @    This function configures the calibration factor on the sensor.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     _    Pass the sensor name you want to configure.

Valid Channel Names:  "A","B"

Default Value: ""    ,    Specifies the sensor calibration factor adjust value.

Units: Percent | DB

Default Value:100.0

Valid Range:
0.07 to 150.00 Percent | +31.55 to -1.76dB

Remarks: When the calibration factor source is set to manual, the instrument will use the cal factor adjust value set with this command when performing a 0dBm calibration. If the sensor calibration factor source is set to V/GHz or frequency, the sensor internal EEPROM correction value at 50 MHz is used.
Note that the value can be entered in either percent (%) or dB depending on the selected units.        Specifies the sensor calibration factor manual value.

Units: Percent | dB

Default Value:100.0

Valid Range:
0.07 to 150.00 Percent | +31.55 to -1.76dB

Remarks: Sets the manual calibration factor value. This value will be used when the calibration factor source is set to manual.      �    Specifies the sensor calibration factor units.

Valid Values:
AUML24XX_VAL_CAL_FACTOR_UNIT_PCT - Percent
AUML24XX_VAL_CAL_FACTOR_UNIT_DB  - dB

Default Value:
AUML24XX_VAL_CAL_FACTOR_UNIT_PCT    ;    Specifies the sensor calibration factor source.

Valid Values:
AUML24XX_VAL_CAL_FACTOR_SOURCE_FREQ - Uses the internal EEPROM calibration factor value in the sensor. Selected frequencies falling between Cal Factor data points are interpolated linearly to 0.01 dB resolution.

AUML24XX_VAL_CAL_FACTOR_SOURCE_MAN - Uses the manual calibration factor.

AUML24XX_VAL_CAL_FACTOR_SOURCE_VGHZ - Obtains the frequency from the V/GHz input and looks up the calibration factor table from the selected sensor internal EEPROM. 

Default Value:
AUML24XX_VAL_CAL_FACTOR_SOURCE_FREQ

   z� ���]  �    Status                           ��    o  �    Instrument Handle                �v -  �  �    Sensor Name                      �� . � �  �    Calibration Factor Adjust        � .� �  �    Calibration Factor Manual        �5 � � u �    Calibration Factor Units         �� �  u �    Calibration Factor Source          	                ""    100.0    100.0               LPercent AUML24XX_VAL_CAL_FACTOR_UNIT_PCT dB AUML24XX_VAL_CAL_FACTOR_UNIT_DB               �Frequency AUML24XX_VAL_CAL_FACTOR_SOURCE_FREQ Manual AUML24XX_VAL_CAL_FACTOR_SOURCE_MAN V/GHz AUML24XX_VAL_CAL_FACTOR_SOURCE_VGHZ    >    This function configures the V/GHz calibration factor range.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     _    Pass the sensor name you want to configure.

Valid Channel Names:  "A","B"

Default Value: ""     y    Specifies the calibration factor stop frequency.

Units: Hz

Valid Range: 100.00 kHz to 400.00 GHz

Default Value: 2e10     y    Specifies the calibration factor start frequency.

Units: Hz

Valid Range: 100.00 kHz to 400.00 GHz

Default Value: 1e7     i    Specifies the calibration factor stop volt.

Units: V

Valid Range:  0.00 to 20.00 V

Default Value: 10     l    Specifies the calibration factor start volt.

Units: V

Valid Range:  0.00 to 20.00 V

Default Value: 0.0
   � ���]  �    Status                           �."   o  �    Instrument Handle                �� ,  �  �    Sensor Name                      �O , � �  �    Stop Frequency                   �� ,� �  �    Start Frequency                  �Q �  �  �    Stop Voltage                     �� � � �  �    Start Voltage                      	                ""    2e10    1e7    10.0    0.0    =    This function queries the current calibration factor value.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     _    Pass the sensor name you want to configure.

Valid Channel Names:  "A","B"

Default Value: ""     )    Indicates the calibration factor value.   �" ���]  �    Status                           �B    o  �    Instrument Handle                �� -  �  �    Sensor Name                      �c -� �  �    Calibration Factor Value           	                ""    	           /    This function selects the calibration factor table or combination of tables to be used and automatically updates the sensor. This command only executes when calibration factor source is set to frequency or V/GHz. An execution error is returned if set to manual or if the selected table store is empty.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     _    Pass the sensor name you want to configure.

Valid Channel Names:  "A","B"

Default Value: ""     �    Specifies the table number.

Valid Range:
0: Factory default table
1  to 10: User table being used
11 to 20: Factory table + User table being used.

Default Value: 1   �� ���]  �    Status                           ��    o  �    Instrument Handle                �� -  �  �    Sensor Name                      � -� u  �    Table Number                       	                ""    1        This function queries the instrument on whether the table number passed is a valid initialized table for the selected sensor.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     _    Pass the sensor name you want to configure.

Valid Channel Names:  "A","B"

Default Value: ""     �    Specifies the table number.

Valid Range: 
1 to N, where: N is the number of tables supported by the sensor type.

Default Value: 1     '    Indicates whether the table is valid.   �' ���]  �    Status                           �G    o  �    Instrument Handle                � /  �  �    Sensor Name                      �h / � u  �    Table Number                     �� /� i  �    Valid                              	                ""    1    	            �    This function presets the calibration factor table to the factory settings. The preset table is automatically saved to the sensor.         Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     _    Pass the sensor name you want to configure.

Valid Channel Names:  "A","B"

Default Value: ""     �    Specifies the table number.

Valid Range:
1 to N, where: N is the number of tables supported by the sensor type.

Default Value: 1     �    Specifies the maximum time in milliseconds to wait for a return value. Instead of passing the time in miliseconds, you can also pass one of the following predefined constants.

Default Value: 10000


   �� ���]  �    Status                           �    o  �    Instrument Handle                �� 2  �  �    Sensor Name                      �" 2 � u  �    Table Number                     �� 2� u  �    Max Time                           	                ""    1    10000    �    This function returns a number indicating the calibration factor table, or combination of tables being used by the selected sensor.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     _    Pass the sensor name you want to configure.

Valid Channel Names:  "A","B"

Default Value: ""     :    Indicates the number of table which is currently active.   �: ���]  �    Status                           �Z    o  �    Instrument Handle                � -  �  �    Sensor Name                      �{ -� u  �    Number Of Table                    	                ""    	            �    This function clears the calibration factor table to one entry for 50 MHz at 100% and the identity name string from the table. The cleared table is automatically saved to the sensor.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     _    Pass the sensor name you want to configure.

Valid Channel Names:  "A","B"

Default Value: ""     ~    Specifies the table number.

Valid Range:
1 to N, where: N is the number of tables supported by the sensor

Default Value: 1     �    Specifies the maximum time in milliseconds to wait for a return value. Instead of passing the time in miliseconds, you can also pass one of the following predefined constants.

Default Value: 10000


   �s ���]  �    Status                           ԓ    o  �    Instrument Handle                �M -  �  �    Sensor Name                      մ - � u  �    Table Number                     �: -� u  �    Max Time                           	                ""    1    10000    �    This function updates the seven-character identity string. This only affects the copy of the calibration factor table stored in the memory of the power meter. To take effect and not be lost, function SaveCalibrationFactorTable must be called.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     _    Pass the sensor name you want to configure.

Valid Channel Names:  "A","B"

Default Value: ""     ~    Specifies the table number.

Valid Range:
1 to N, where: N is the number of tables supported by the sensor

Default Value: 1     +    Specifies the identity name of the table.   �5 x��]  �    Status                           �U    o  �    Instrument Handle                � -  �  �    Sensor Name                      �v - � u  �    Table Number                     �� -x �  �    ID Name                            	                ""    1    ""    :    This function configures calibration factor table entry.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     _    Pass the sensor name you want to configure.

Valid Channel Names:  "A","B"

Default Value: ""     ~    Specifies the table number.

Valid Range:
1 to N, where: N is the number of tables supported by the sensor

Default Value: 1     c    Specifies the frequency.

Units: Hz

Valid Range: 100.00 kHz to 400.00 GHz

Default Value: 100000     �    Specifies the sensor calibration factor value.

Units: Percent | dB

Default Value:100.0

Valid Range:
0.07 to 150.00 Percent | +31.55 to -1.76dB
     �    Specifies the unit type.

Valid Values:
AUML24XX_VAL_CAL_FACTOR_UNIT_PCT - Percent
AUML24XX_VAL_CAL_FACTOR_UNIT_DB - dB

Default Value:
AUML24XX_VAL_CAL_FACTOR_UNIT_PCT   � ���]  �    Status                           �    o  �    Instrument Handle                �u /  �  �    Sensor Name                      �� / � u  �    Table Number                     �b /� �  �    Frequency                        �� �  �  �    Calibration Factor               �i � � u �    Unit Type                          	                ""    1    100000    100.0               LPercent AUML24XX_VAL_CAL_FACTOR_UNIT_PCT dB AUML24XX_VAL_CAL_FACTOR_UNIT_DB   �    This function saves the calibration factor table currently being edited to the appropriate sensor.

Uses the following function sequence :
1 ConfigureCalibrationFactorTableEntry
(Run this function more than once if the you want to add more than one Entry.)
2 SaveCalibrationFactorTable

to define and save the calibration factor table having one or more factor/frequency data pairs.

Failing to issue this function will result in loss of data.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     �    Specifies the maximum time in milliseconds to wait for a return value. Instead of passing the time in miliseconds, you can also pass one of the following predefined constants.

Default Value: 10000


   �� ���]  �    Status                           ��    o  �    Instrument Handle                �� % � u  �    Max Time                           	                10000    i    This function configures GPIB buffering, fast mode and number of measurement points on the instruments.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     j    Enables or disables GPIB buffering.

Valid Values:
VI_TRUE  (1) - On (Default Value)
VI_FALSE (0) - Off      v    Enables or disables fast mode of the instrument.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)    *    Specifies the number of display points.

Valid Values:
AUML24XX_VAL_P200 - Plots 200 measurement points (one measurement for each pixel on the display panel)

AUML24XX_VAL_P400 - Plots 400 measurement points (two measurements for each pixel on the display panel)

Default Value: AUML24XX_VAL_P200   �� ���]  �    Status                           �    o  �    Instrument Handle                � + 3 i       GPIB Buffering                   � + i       Fast Mode                        { /� u �    Number Of Points                   	               On VI_TRUE Off VI_FALSE    On VI_TRUE Off VI_FALSE               ^Plots 200 Measurement Points AUML24XX_VAL_P200 Plots 400 Measurement Points AUML24XX_VAL_P400    \    This function configures the BNC output mode,pass voltage level and output source channel.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     \    Pass the BNC name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""    �    Specifies the BNC output mode.

Valid Values:
AUML24XX_VAL_OUTPUT_MODE_OFF - Output tied to ground                         
AUML24XX_VAL_OUTPUT_MODE_AOUT - Analogue scaled output                              
AUML24XX_VAL_OUTPUT_MODE_LVLA1 - Slow Signal channel range 1 amplifier output for sensor A                             
AUML24XX_VAL_OUTPUT_MODE_LVLA2 - Slow Signal channel range 2 amplifier output for sensor A                              
AUML24XX_VAL_OUTPUT_MODE_PSFL - Pass/Fail Logic level output                               
AUML24XX_VAL_OUTPUT_MODE_LVLB1 - Slow Signal channel range 1 amplifier output for sensor B                              
AUML24XX_VAL_OUTPUT_MODE_LVLB2 - Slow Signal channel range 2 amplifier output for sensor B                              
AUML24XX_VAL_OUTPUT_MODE_TRIG - Measurement channel trigger signal                               

Default Value:
AUML24XX_VAL_OUTPUT_MODE_OFF     �    Specifies the pass voltage level.

Valid Values:
AUML24XX_VAL_BNC_PASS_VOLTAGE_LEVEL_HIGH - TTL high is PASS
AUML24XX_VAL_BNC_PASS_VOLTAGE_LEVEL_LOW - TTL low is PASS

Default Value:
AUML24XX_VAL_BNC_PASS_VOLTAGE_LEVEL_HIGH     �    Specifies the source channel.

Valid Values:
AUML24XX_VAL_BNC_OUTPUT_SOURCE_CHANNEL_1 - channel 1
AUML24XX_VAL_BNC_OUTPUT_SOURCE_CHANNEL_2 - channel 2

Default Value:
AUML24XX_VAL_BNC_OUTPUT_SOURCE_CHANNEL_1   � ���]  �    Status                           �    o  �    Instrument Handle                � -  �  �    BNC Number                        + � u �    Output Mode                      � ,~ u �    Pass Voltage Level               � g  u �    Source Channel Number              	                ""              =Output Tied to Ground AUML24XX_VAL_OUTPUT_MODE_OFF Analogue Scaled Output AUML24XX_VAL_OUTPUT_MODE_AOUT Slow Signal Channel Range 1 Amplifier Output (sensorA) AUML24XX_VAL_OUTPUT_MODE_LVLA1 Slow Signal Channel  Range 2 Amplifier Output (sensorA) AUML24XX_VAL_OUTPUT_MODE_LVLA2 Pass/Fail Logic Level Output AUML24XX_VAL_OUTPUT_MODE_PSFL Slow Signal Channel Range 1 Amplifier Output (SensorB) AUML24XX_VAL_OUTPUT_MODE_LVLB1 Slow Signal Channel Range 2 Amplifier Output (SensorB) AUML24XX_VAL_OUTPUT_MODE_LVLB2 Measurement Channel Trigger Signal AUML24XX_VAL_OUTPUT_MODE_TRIG               ZHigh AUML24XX_VAL_BNC_PASS_VOLTAGE_LEVEL_HIGH Low AUML24XX_VAL_BNC_PASS_VOLTAGE_LEVEL_LOW               dChannel1 AUML24XX_VAL_BNC_OUTPUT_SOURCE_CHANNEL_1 Channel2 AUML24XX_VAL_BNC_OUTPUT_SOURCE_CHANNEL_2    :    This function configures the BNC output characteristics.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     \    Pass the BNC name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     �    Specifies analog out power stop value.

Valid Range:
-270.00 to +260.00 dB | dBm
-163.00 to +367.00 dBV
-223.00 to +307.00 dBmV
-283.00 to +247.00 dBW
0.00 to 999.99 MW (clipped)

Default Value: 0.0     �    Specifies analog out power start value.

Valid Range:
-270.00 to +260.00 dB | dBm
-163.00 to +367.00 dBuV
-223.00 to +307.00 dBmV
-283.00 to +247.00 dBW
0.00 to 999.99 MW (clipped)

Default Value: 0.0     [    Specifies analog out stop voltage.

Valid Range:
-5.00 to +5.00 Volts

Default Value: 5.0     \    Specifies analog out start voltage.

Valid Range:
-5.00 to +5.00 Volts

Default Value: 0.0    �    Specifies the power units type.

Valid Values:
AUML24XX_VAL_BNC_OUTPUT_DB - dB 
AUML24XX_VAL_BNC_OUTPUT_DBM - dBm                                
AUML24XX_VAL_BNC_OUTPUT_DBUV - dBuV                                
AUML24XX_VAL_BNC_OUTPUT_DBW - dBW                                 
AUML24XX_VAL_BNC_OUTPUT_DBMV -dBmV                                
AUML24XX_VAL_BNC_OUTPUT_WATTS - W 

Default Value:
AUML24XX_VAL_BNC_OUTPUT_DB - dB   3 ���]  �    Status                           !S    o  �    Instrument Handle                " -  �  �    BNC Number                       "q - � �  �    Analog Output Power Stop         #A -} �  �    Analog Output Power Start        $ y  �  �    Analog Output Stop Voltage       $v y � �  �    Analog Output Start Voltage      $� wx u �    Power Unit Type                    	                ""    0.0    0.0    5.0    0.0               �dB AUML24XX_VAL_BNC_OUTPUT_DB dBm AUML24XX_VAL_BNC_OUTPUT_DBM dBuV AUML24XX_VAL_BNC_OUTPUT_DBUV dBW AUML24XX_VAL_BNC_OUTPUT_DBW dBmV AUML24XX_VAL_BNC_OUTPUT_DBMV W AUML24XX_VAL_BNC_OUTPUT_WATTS    =    This function enables or disables the reference oscillator.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     �    Pass VI_TRUE to enable the reference oscillator. Pass VI_FALSE to disable the reference oscillator.  The driver sets the AUML24XX_ATTR_REF_OSCILLATOR_ENABLED attribute to this value.

Valid Values:
VI_TRUE  (1) - On
VI_FALSE (0) - Off (Default Value)   )�#���]  �    Status                           0�-   o  �    Instrument Handle                1\ = i       Reference Oscillator Enabled       	               On VI_TRUE Off VI_FALSE    g    This function sets the frequency and power level of the signal generated by the reference oscillator.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     O    This feature is not supported by the auml24xx instrument.

Default Value:
0.0     �    Specifies the frequency.

Valid Values:
AUML24XX_VAL_REF_CALIBRATOR_FREQ_50MHZ - 50MHz
AUML24XX_VAL_REF_CALIBRATOR_FREQ_1GHZ - 1GHz

Default Values:
AUML24XX_VAL_REF_CALIBRATOR_FREQ_50MHZ   3�#���]  �    Status                           :�-   o  �    Instrument Handle                ;s >� �  �    Level                            ;� ;  � �    Frequency                          	               0.0               X50MHz AUML24XX_VAL_REF_CALIBRATOR_FREQ_50MHZ 1GHz AUML24XX_VAL_REF_CALIBRATOR_FREQ_1GHZ       Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24XX_error_message function.  To obtain additional information about the error condition, call the auml24XX_GetError function.  To clear the error information from the driver, call the auml24XX_ClearError function.
          
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
3FFA2001  Measurement is under range.
3FFA2002  Measurement is over range.

ERRORS:
BFFA1001  The trigger source is not set to software trigger.
BFFA2001  The channel is not enabled for measurement.
BFFA2020  Maximum operation time was exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None

        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
        If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  chan1,chan2

Default Value:  ""
   D�-   o  �    Instrument Handle                E�#���]  �    Status                           L� � � u  �    Attribute Value                 ���� � ���                                          N� = � � �    Attribute ID                     T: =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViReal64 attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
        If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  chan1,chan2

Default Value:  ""
   [�-   o  �    Instrument Handle                \q#���]  �    Status                           c� � � �  �    Attribute Value                 ���� � ���                                          e� = � � �    Attribute ID                     j� =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViString attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
        If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  chan1,chan2

Default Value:  ""
   rs-   o  �    Instrument Handle                s-#���]  �    Status                           zM � � �  �    Attribute Value                 ���� � ���                                          |h = � � �    Attribute ID                     �� =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViBoolean attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
        If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  chan1,chan2

Default Value:  ""
   �/-   o  �    Instrument Handle                ��#���]  �    Status                           �
 � � i  �    Attribute Value                 ���� � ���                                          �% = � � �    Attribute ID                     �p =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViSession attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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

        Pass the value to which you want to set the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none        If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  chan1,chan2

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
   ��-   o  �    Instrument Handle                ��#���]  �    Status                           �� � � o  �    Attribute Value                  �� =  �  �    Channel Name                     �� = � � �    Attribute ID                    ���� � ���                                                	               ""                0    .Press <ENTER> for a list of 
value constants.   �    This function queries the value of a ViInt32 attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
    �    Returns the current value of the attribute.  Pass the address of a ViInt32 variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
    	    If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  chan1,chan2

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
   ��-   o  �    Instrument Handle                �O#���]  �    Status                           �o � � u  �    Attribute Value                  �- =  �  �    Channel Name                     �> = � � �    Attribute ID                           	           	            ""                0   �    This function queries the value of a ViReal64 attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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

    �    Returns the current value of the attribute.  Pass the address of a ViReal64 variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
    	    If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  chan1,chan2

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
   ��-   o  �    Instrument Handle                Ɠ#���]  �    Status                           ʹ � � �  �    Attribute Value                  �s =  �  �    Channel Name                     Є = � � �    Attribute ID                           	           	           ""                0   4    This function queries the value of a ViString attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

You must provide a ViChar array to serve as a buffer for the value.  You pass the number of bytes in the buffer as the Buffer Size parameter.  If the current value of the attribute, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you want to call this function just to get the required buffer size, you can pass 0 for the Buffer Size and VI_NULL for the Attribute Value buffer.  

If you want the function to fill in the buffer regardless of the   number of bytes in the value, pass a negative number for the Buffer Size parameter.  


     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None

        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
    &    The buffer in which the function returns the current value of the attribute.  The buffer must be of type ViChar and have at least as many bytes as indicated in the Buffer Size parameter.

If the current value of the attribute, including the terminating NUL byte, contains more bytes that you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you specify 0 for the Buffer Size parameter, you can pass VI_NULL for this parameter.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
    	    If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  chan1,chan2

Default Value:  ""
    �    Pass the number of bytes in the ViChar array you specify for the Attribute Value parameter.  

If the current value of the attribute, including the terminating NUL byte, contains more bytes that you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Attribute Value buffer parameter.

Default Value: 512
    �    Pass the ID of an attribute.

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
   ۞-   o  �    Instrument Handle                �Y#���]  �    Status or Required Size          �y � L � �    Attribute Value                  � =  �  �    Channel Name                     � =� u  �    Buffer Size                      � = � � �    Attribute ID                           	           	            ""    512                0   �    This function queries the value of a ViBoolean attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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

    �    Returns the current value of the attribute.  Pass the address of a ViBoolean variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
    	    If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  chan1,chan2

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
   �-   o  �    Instrument Handle                �B#���]  �    Status                           �c � � i  �    Attribute Value                  �# =  �  �    Channel Name                     �4 = � � �    Attribute ID                           	           	            ""                0   �    This function queries the value of a ViSession attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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

    �    Returns the current value of the attribute.  Pass the address of a ViSession variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
    	    If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  chan1,chan2

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
   �-   o  �    Instrument Handle                �#���]  �    Status                           � � � o  �    Attribute Value                  n =  �  �    Channel Name                      = � � �    Attribute ID                           	           	            ""                0    S    This function checks the validity of a value you specify for a ViInt32 attribute.     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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

    (    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none        If the attribute is channel-based, this parameter specifies the name of the channel on which to check the attribute value. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  chan1,chan2

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
   �-   o  �    Instrument Handle                t#���]  �    Status                           � � � u  �    Attribute Value                   � =  �  �    Channel Name                    ���� � ���                                          !� = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    T    This function checks the validity of a value you specify for a ViReal64 attribute.     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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

    (    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none        If the attribute is channel-based, this parameter specifies the name of the channel on which to check the attribute value. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  chan1,chan2

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
   )-   o  �    Instrument Handle                )�#���]  �    Status                           0� � � �  �    Attribute Value                  3 =  �  �    Channel Name                    ���� � ���                                          4! = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    T    This function checks the validity of a value you specify for a ViString attribute.     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
    (    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none        If the attribute is channel-based, this parameter specifies the name of the channel on which to check the attribute value. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  chan1,chan2

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
   ;b-   o  �    Instrument Handle                <#���]  �    Status                           C< � � �  �    Attribute Value                  El =  �  �    Channel Name                    ���� � ���                                          Fu = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    U    This function checks the validity of a value you specify for a ViBoolean attribute.     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
    (    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none        If the attribute is channel-based, this parameter specifies the name of the channel on which to check the attribute value. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  chan1,chan2

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
   M�-   o  �    Instrument Handle                Nq#���]  �    Status                           U� � � i  �    Attribute Value                  W� =  �  �    Channel Name                    ���� � ���                                          X� = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    U    This function checks the validity of a value you specify for a ViSession attribute.     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
    (    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none        If the attribute is channel-based, this parameter specifies the name of the channel on which to check the attribute value. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  chan1,chan2

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
   `-   o  �    Instrument Handle                `�#���]  �    Status                           g� � � o  �    Attribute Value                  j =  �  �    Channel Name                    ���� � ���                                          k! = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    C    This function performs a zero correction on the specified sensor.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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

     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     _    Pass the sensor name you want to configure.

Valid Channel Names:  "A","B"

Default Value: ""   rS#���]  �    Status                           yt-   o  �    Instrument Handle                z. = � �  �    Sensor Name                        	               ""    �    This function zeros the multipurpose BNC connector used for Volts per GHz connection (Analogue Input 2). This will calibrate the units to read zero volts on this BNC.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Pass the maximum length of time in which to allow the read waveform operation to complete.    

If the operation does not complete within this time interval, the function returns the AUML24XX_ERROR_MAX_TIME_EXCEEDED 

Units:  milliseconds.  

Defined Values:
AUML24XX_VAL_MAX_TIME_INFINITE (-1)             AUML24XX_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 10000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.

   {� ���]  �    Status                           �    o  �    Instrument Handle                �� 1 � u  �    Max Time                           	                10000    D    This function performs a zero correction on all enabled channels.         Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   ��#���]  �    Status                           �-   o  �    Instrument Handle                  	               <    This function is not supported by the auml24xx instrument.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     %    Returns the status of the zeroing.
   �{#���]  �    Status                           ��-   o  �    Instrument Handle                �U = � u  �    Status of Zero                     	               	           3    This function ends the range calibrator test if a test is
currently running. If a test is not running, this command is
ignored. Partial test results will not be available when aborting a test sequence prematurely. An execution error is returned if the range calibrator is not connected to the power meter.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Pass the maximum length of time in which to allow the read waveform operation to complete.    

If the operation does not complete within this time interval, the function returns the AUML24XX_ERROR_MAX_TIME_EXCEEDED 

Units:  milliseconds.  

Defined Values:
AUML24XX_VAL_MAX_TIME_INFINITE (-1)             AUML24XX_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 10000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.

   �x���]  �    Status                           ��   o  �    Instrument Handle                �R % � u  �    Max Time                           	                10000   �    When in diagnostics mode, this function performs a zero on
the selected sensor input. A zero is always recommended
prior to requesting a reading, when first entering diagnostics
mode, or when switching to a new measurement range.
An execution error is returned if this command is sent when
the instrument is not configured in diagnostics mode or if the
range calibrator is not connected to the power meter.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Pass the maximum length of time in which to allow the read waveform operation to complete.    

If the operation does not complete within this time interval, the function returns the AUML24XX_ERROR_MAX_TIME_EXCEEDED 

Units:  milliseconds.  

Defined Values:
AUML24XX_VAL_MAX_TIME_INFINITE (-1)             AUML24XX_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 10000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.

   �� ���]  �    Status                           ��    o  �    Instrument Handle                �� . � u  �    Max Time                           	                10000   �    This function initiates a range calibrator full test on the
selected sensor input(s) (see below). At the end of the test
sequence the test results can be obtained using the RCD
command. An execution error is returned if the range
calibrator is not connected to the power meter. A full test
involves the sequence below for each sensor input. The
sensor input is zeroed before each step is carried out.
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     _    Pass the sensor name you want to configure.

Valid Channel Names:  "A","B"

Default Value: ""        Pass the maximum length of time in which to allow the read waveform operation to complete.    

If the operation does not complete within this time interval, the function returns the AUML24XX_ERROR_MAX_TIME_EXCEEDED 

Units:  milliseconds.  

Defined Values:
AUML24XX_VAL_MAX_TIME_INFINITE (-1)             AUML24XX_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 10000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.

   �� ���]  �    Status                           �    o  �    Instrument Handle                �� )  �  �    Sensor Name                      �. ) � u  �    Max Time                           	                ""    10000    A    This function configures range calibrator diagnostic test type.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     _    Pass the sensor name you want to configure.

Valid Channel Names:  "A","B"

Default Value: ""    �    Specifies the test type.

Valid Values:
AUML24XX_VAL_RANGE_CALIBRATOR_ZERO - Zero Level                        
AUML24XX_VAL_RANGE_CALIBRATOR_RANGE1_HIGH - Range 1 High                   
AUML24XX_VAL_RANGE_CALIBRATOR_RANGE1_LOW - Range 1 Low                  
AUML24XX_VAL_RANGE_CALIBRATOR_RANGE2_HIGH - Range 2 High                   
AUML24XX_VAL_RANGE_CALIBRATOR_RANGE2_LOW - Range 2 Low                   
AUML24XX_VAL_RANGE_CALIBRATOR_RANGE3_HIGH - Range 3 High                  
AUML24XX_VAL_RANGE_CALIBRATOR_RANGE3_LOW - Range 3 Low                  
AUML24XX_VAL_RANGE_CALIBRATOR_RANGE4_HIGH - Range 4 High                
AUML24XX_VAL_RANGE_CALIBRATOR_RANGE4_LOW - Range 4 Low                   
AUML24XX_VAL_RANGE_CALIBRATOR_RANGE5_HIGH - Range 5 High                 
AUML24XX_VAL_RANGE_CALIBRATOR_RANGE5_LOW - Range 5 Low                   

Default Value:
AUML24XX_VAL_RANGE_CALIBRATOR_ZERO   �u ���]  �    Status                           ĕ    o  �    Instrument Handle                �O -  �  �    Sensor Name                      Ŷ -� u �    Test Type                          	                ""              JZero Level AUML24XX_VAL_RANGE_CALIBRATOR_ZERO Range 1 High AUML24XX_VAL_RANGE_CALIBRATOR_RANGE1_HIGH Range 1 Low AUML24XX_VAL_RANGE_CALIBRATOR_RANGE1_LOW Range 2 High AUML24XX_VAL_RANGE_CALIBRATOR_RANGE2_HIGH Range 2 Low AUML24XX_VAL_RANGE_CALIBRATOR_RANGE2_LOW Range 3 High AUML24XX_VAL_RANGE_CALIBRATOR_RANGE3_HIGH Range 3 Low AUML24XX_VAL_RANGE_CALIBRATOR_RANGE3_LOW Range 4 High AUML24XX_VAL_RANGE_CALIBRATOR_RANGE4_HIGH Range 4 Low AUML24XX_VAL_RANGE_CALIBRATOR_RANGE4_LOW Range 5 High AUML24XX_VAL_RANGE_CALIBRATOR_RANGE5_HIGH Range 5 Low AUML24XX_VAL_RANGE_CALIBRATOR_RANGE5_LOW       Returns the ML2419x range calibrator test results for the specified sensor that become available once a full test sequence has finished executing. 

Note:
The test results of a test sequence are stored in memory and
can be retrieved over GPIB until a new range calibrator test sequence is initiated or the ML2419x is disconnected from the power meter. An execution error is returned if sending this command while a test sequence is currently ongoing or if the range calibrator is not connected to the power meter.
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     _    Pass the sensor name you want to configure.

Valid Channel Names:  "A","B"

Default Value: ""     -    Indicates whether the test result is valid.     %    Number of points actually returned.     D    A user allocated buffer into which the measurement data is stored.     8    Number of array points requested.

Default Value: None   Η ���]  �    Status                           շ    o  �    Instrument Handle                �q -  �  �    Sensor Name                      �� , � i  �    Valid                            � +� u  �    Actual Points                    �: p  �  �    Data                             ׆ n � u  �    Length                             	                ""    	            	            	                    This function performs calibration on the specified sensor. This functions returns only after the sensor has been calibrated.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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

     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     _    Pass the sensor name you want to configure.

Valid Channel Names:  "A","B"

Default Value: ""   ��#���]  �    Status                           �-   o  �    Instrument Handle                �� = � �  �    Sensor Name                        	               ""    <    This function is not supported by the auml24xx instrument.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     *    Returns the status of the calibration.

   �9#���]  �    Status                           �Y-   o  �    Instrument Handle                � = � u  �    Status of Calibration              	               	            5    This function is not supported on the instrument.          Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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

     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     &    Measured value from the power meter.        Pass the maximum length of time in which to allow the read waveform operation to complete.    

If the operation does not complete within this time interval, the function returns the AUML24XX_ERROR_MAX_TIME_EXCEEDED 

Units:  milliseconds.  

Defined Values:
AUML24XX_VAL_MAX_TIME_INFINITE (-1)             AUML24XX_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 5000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.
   �=#���]  �    Status                           �^-   o  �    Instrument Handle                � =� �  �    Result                           �F =  u  �    Max Time                           	               	           5000    1    This function reads the PMOD Measurement Trace.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     %    Number of points actually returned.     D    A user allocated buffer into which the measurement data is stored.     8    Number of array points requested.

Default Value: None     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     F    Indicates the time of the first point in the trace array. 

Units: S     L    Indicates the time difference between points in the trace array.

Units: S        Pass the maximum length of time in which to allow the read waveform operation to complete.    

If the operation does not complete within this time interval, the function returns the AUML24XX_ERROR_MAX_TIME_EXCEEDED 

Units:  milliseconds.  

Defined Values:
AUML24XX_VAL_MAX_TIME_INFINITE (-1)             AUML24XX_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 10000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.
   �����]  �    Status                           ��   o  �    Instrument Handle                �Z 2 � u  �    Actual Points                    �� 2� �  �    Trace Array                      �� �  u  �    Length                             2  �  �    Channel Name                      { � � �  �    Initial X                         � �� �  �    X Increment                       �  u  �    Max Time                           	                	            	                ""    	            	            10000   �    This function reads readout measurements over capture time.

The sequence of measurement data will be different depending upon the selected measurement type number. 

Measurement Type:
1 Average Power
2 Average Power, Peak Power
3 Average Power, Peak Power, Crest Factor
4 Average Power, Min Power and Time , Max Power and Time
5 Average Power, Held Min Power and Time, Held Max Power and
Time
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     %    Number of points actually returned.    �    A user allocated buffer into which the measurement data is stored.

The sequence of measurement data will be different depending upon the selected measurement type number. 

Measurement Type:
1 Average Power
2 Average Power, Peak Power
3 Average Power, Peak Power, Crest Factor
4 Average Power, Min Power and Time , Max Power and Time
5 Average Power, Held Min Power and Time, Held Max Power and
Time
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""        Pass the maximum length of time in which to allow the read waveform operation to complete.    

If the operation does not complete within this time interval, the function returns the AUML24XX_ERROR_MAX_TIME_EXCEEDED 

Units:  milliseconds.  

Defined Values:
AUML24XX_VAL_MAX_TIME_INFINITE (-1)             AUML24XX_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 10000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.

   ����]  �    Status                              o  �    Instrument Handle                � 3 � u  �    Actual Points                    � 3� �  �    Measurement Data                 � 3  �  �    Channel Name                     � v  u  �    Max Time                           	                	            	            ""    10000    8    This function reads Pulsed / Modulated graph max data.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     %    Number of points actually returned.     D    A user allocated buffer into which the measurement data is stored.     8    Number of array points requested.

Default Value: None     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     F    Indicates the time of the first point in the trace array. 

Units: S     L    Indicates the time difference between points in the trace array.

Units: S        Pass the maximum length of time in which to allow the read waveform operation to complete.    

If the operation does not complete within this time interval, the function returns the AUML24XX_ERROR_MAX_TIME_EXCEEDED 

Units:  milliseconds.  

Defined Values:
AUML24XX_VAL_MAX_TIME_INFINITE (-1)             AUML24XX_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 10000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.

   ����]  �    Status                           �   o  �    Instrument Handle                � / � u  �    Actual Points                    � /| �  �    Trace Data                        ~  u  �    Length                           H /  �  �    Channel Name                     � ~ � �  �    Initial X                        � ~� �  �    X Increment                      R �  u  �    Max Time                           	                	            	                ""    	            	            10000    8    This function reads Pulsed / Modulated graph min data.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     %    Number of points actually returned.     D    A user allocated buffer into which the measurement data is stored.     8    Number of array points requested.

Default Value: None     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     F    Indicates the time of the first point in the trace array. 

Units: S     L    Indicates the time difference between points in the trace array.

Units: S        Pass the maximum length of time in which to allow the read waveform operation to complete.    

If the operation does not complete within this time interval, the function returns the AUML24XX_ERROR_MAX_TIME_EXCEEDED 

Units:  milliseconds.  

Defined Values:
AUML24XX_VAL_MAX_TIME_INFINITE (-1)             AUML24XX_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 10000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.

   "����]  �    Status                           )�   o  �    Instrument Handle                *� 3 � u  �    Actual Points                    *� 3� �  �    Trace Data                       +  |  u  �    Length                           +` 3  �  �    Channel Name                     +� | � �  �    Initial X                        , |� �  �    X Increment                      ,j �  u  �    Max Time                           	                	            	                ""    	            	            10000    Q    This function reads a measurement reading for the selected 
channel in CW mode.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""         Returns the CW data.        Pass the maximum length of time in which to allow the read waveform operation to complete.    

If the operation does not complete within this time interval, the function returns the AUML24XX_ERROR_MAX_TIME_EXCEEDED 

Units:  milliseconds.  

Defined Values:
AUML24XX_VAL_MAX_TIME_INFINITE (-1)             AUML24XX_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 10000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.

   0����]  �    Status                           8   o  �    Instrument Handle                8� 2  �  �    Channel Name                     9@ 2 � �  �    CW Data                          9^ 2z u  �    Max Time                           	                ""    	            10000    /    This function reads specified marker reading.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     3    Returns the time reference for the power reading.         Returns the power.     E    Specifies the marker number.

Valid Range: 1 to 4

Default Value: 1        Pass the maximum length of time in which to allow the read waveform operation to complete.    

If the operation does not complete within this time interval, the function returns the AUML24XX_ERROR_MAX_TIME_EXCEEDED 

Units:  milliseconds.  

Defined Values:
AUML24XX_VAL_MAX_TIME_INFINITE (-1)             AUML24XX_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 10000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.

   <����]  �    Status                           C�   o  �    Instrument Handle                D� 4  �  �    Channel Name                     E p  �  �    Position                         EQ 4� �  �    Power                            Em 2 � u  �    Marker Number                    E� p � u  �    Max Time                           	                ""    	            	            1    10000    +    This function reads delta marker reading.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None

     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     3    Returns the time reference for the power reading.         Returns the measurement data.        Pass the maximum length of time in which to allow the read waveform operation to complete.    

If the operation does not complete within this time interval, the function returns the AUML24XX_ERROR_MAX_TIME_EXCEEDED 

Units:  milliseconds.  

Defined Values:
AUML24XX_VAL_MAX_TIME_INFINITE (-1)             AUML24XX_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 10000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.

   I����]  �    Status                           P�   o  �    Instrument Handle                Q� 4  �  �    Channel Name                     Q� 4� �  �    Position                         R% 3 � �  �    Measurement Data                 RL y  u  �    Max Time                           	                ""    	            	            10000    -    This function reads pulse measurement data.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
         Returns pulse fall time.         Returns pulse rise time.         Returns pulse off time.     $    Returns pulse repetition interval.         Returns pulse width.     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""        Pass the maximum length of time in which to allow the read waveform operation to complete.    

If the operation does not complete within this time interval, the function returns the AUML24XX_ERROR_MAX_TIME_EXCEEDED 

Units:  milliseconds.  

Defined Values:
AUML24XX_VAL_MAX_TIME_INFINITE (-1)             AUML24XX_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 10000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.

   V���]  �    Status                           ]!   o  �    Instrument Handle                ]� ' � �  �    Pulse Fall Time                  ]� %� �  �    Pulse Rise Time                  ^ p  �  �    Pulse Off Time                   ^@ p� �  �    Pulse Repetition Interval        ^l p � �  �    Pulse Width                      ^� '  �  �    Channel Name                     ^� �  u  �    Max Time                           	                	            	            	            	            	            ""    10000    5    This function reads the statistics cursor readings.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     +    Returns Power reading at cursor position.     0    Returns Percentage reading at cursor position.        Pass the maximum length of time in which to allow the read waveform operation to complete.    

If the operation does not complete within this time interval, the function returns the AUML24XX_ERROR_MAX_TIME_EXCEEDED 

Units:  milliseconds.  

Defined Values:
AUML24XX_VAL_MAX_TIME_INFINITE (-1)             AUML24XX_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 10000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.

   cr���]  �    Status                           j�   o  �    Instrument Handle                kL 4  �  �    Channel Name                     k� 4� �  �    Power                            k� 3 � �  �    Percentage                       l z  u  �    Max Time                           	                ""    	            	            10000    &    This function reads the PAE reading.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""         Returns the PAE reading.        Pass the maximum length of time in which to allow the read waveform operation to complete.    

If the operation does not complete within this time interval, the function returns the AUML24XX_ERROR_MAX_TIME_EXCEEDED 

Units:  milliseconds.  

Defined Values:
AUML24XX_VAL_MAX_TIME_INFINITE (-1)             AUML24XX_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 10000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.

   o����]  �    Status                           v�   o  �    Instrument Handle                w� 4  �  �    Channel Name                     x 1 � �  �    PAE Data                         x1 4� u  �    Max Time                           	                ""    	            10000    @    This function reads statistical post processing function data.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     %    Number of points actually returned.     D    A user allocated buffer into which the measurement data is stored.     8    Number of array points requested.

Default Value: None     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     F    Indicates the time of the first point in the trace array. 

Units: S     L    Indicates the time difference between points in the trace array.

Units: S        Pass the maximum length of time in which to allow the read waveform operation to complete.    

If the operation does not complete within this time interval, the function returns the AUML24XX_ERROR_MAX_TIME_EXCEEDED 

Units:  milliseconds.  

Defined Values:
AUML24XX_VAL_MAX_TIME_INFINITE (-1)             AUML24XX_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 10000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.

   {����]  �    Status                           ��   o  �    Instrument Handle                �� 0 � u  �    Actual Points                    �� 0x �  �    Trace Array                      � z  u  �    Length                           �K 0  �  �    Channel Name                     �� z � �  �    Initial X                        � z} �  �    X Increment                      �U �  u  �    Max Time                           	                	            	                ""    	            	            10000   �    This function reads gating pattern measurement data.

The sequence of measurement data will be different depending upon the selected measurement type number. 

Measurement Type:
1 Average Power
2 Average Power, Peak Power
3 Average Power, Peak Power, Crest Factor
4 Average Power, Min Power and Time , Max Power and Time
5 Average Power, Held Min Power and Time, Held Max Power and
Time
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     %    Number of points actually returned.    �    A user allocated buffer into which the measurement data is stored.

he sequence of measurement data will be different depending upon the selected measurement type number. 

Measurement Type:
1 Average Power
2 Average Power, Peak Power
3 Average Power, Peak Power, Crest Factor
4 Average Power, Min Power and Time , Max Power and Time
5 Average Power, Held Min Power and Time, Held Max Power and
Time
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""        Specified gating pattern number.

Valid Range:
1 to 8

Default Value:
1

Note:
Gating pattern numbers 5 to 8 will only return a reading if Gate1 Repeat Pattern is enabled and Gate1 Repeat Count has been set to 5 to 8. An execution error is returned if either condition is not met.        Pass the maximum length of time in which to allow the read waveform operation to complete.    

If the operation does not complete within this time interval, the function returns the AUML24XX_ERROR_MAX_TIME_EXCEEDED 

Units:  milliseconds.  

Defined Values:
AUML24XX_VAL_MAX_TIME_INFINITE (-1)             AUML24XX_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 10000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.

   ����]  �    Status                           �=   o  �    Instrument Handle                �� 5� u  �    Actual Points                    �$ �  �  �    Measurement Data                 �� 4  �  �    Channel Name                     �& 5 � u  �    Gate Number                      �H � � u  �    Max Time                           	                	            	            ""    1    10000    2    This function is not supported on the instrument        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     &    Measured value from the power meter.   �<#���]  �    Status                           �\-   o  �    Instrument Handle                � = � �  �    Result                             	               	           Y    This function initiates a measurement. The instrument will
enter wait for trigger mode.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   �`#���]  �    Status                           ��-   o  �    Instrument Handle                  	               3    This function is not supported on the instrument.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     )    Returns the status of the measurement.
   ��#���]  �    Status                           �-   o  �    Instrument Handle                �� = � u  �    Status of Measurement              	               	            3    This function is not supported on the instrument.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   ��#���]  �    Status                           �-   o  �    Instrument Handle                  	               3    This function is not supported on the instrument.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   �#���]  �    Status                           ğ-   o  �    Instrument Handle                  	               4    This function is not supported on the insturment.
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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

     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     �    Returns whether the MeasurementValue is a valid measurement or a value indicating that the power meter encountered an out-of-range condition.






     [    The measurement value returned by one of the Fetch or Read functions.

Default Value: 0.0   �#���]  �    Status                           �0-   o  �    Instrument Handle                �� =� u  �    Range Type                       Έ =  �  �    Measurement Value                  	               	            0.0       This function returns the header data.
After trigger occurs, the instrument will place one or two measurement readings in the GPIB output buffer as outlined below. These readings must be fetched from the instrument first, before attempting to request additional measurement data.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     �    Returns the header data. 

The data returned depends on the measurement mode:

CW Mode : channel measurement data

Pulsed/Modulated Mode:
Active Gating Pattern (default) <gp_meas_average>
Capture Time (if no gates enabled) <ct_meas_average>
        Pass the maximum length of time in which to allow the read waveform operation to complete.    

If the operation does not complete within this time interval, the function returns the AUML24XX_ERROR_MAX_TIME_EXCEEDED 

Units:  milliseconds.  

Defined Values:
AUML24XX_VAL_MAX_TIME_INFINITE (-1)             AUML24XX_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 10000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.
   ����]  �    Status                           �#   o  �    Instrument Handle                �� 4  �  �    Channel Name                     �E 4 � �  �    Header Data                      �@ 4� u  �    Max Time                           	                ""    	            10000    8    This function returns Pulsed / Modulated profile data.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     %    Number of points actually returned.     D    A user allocated buffer into which the measurement data is stored.     8    Number of array points requested.

Default Value: None     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     F    Indicates the time of the first point in the trace array. 

Units: S     F    Indicates the time of the first point in the trace array. 

Units: S   ݾ���]  �    Status                           ��   o  �    Instrument Handle                � 2 � u  �    Actual Points                    �� 2� �  �    Trace Array                      � �  u  �    Length                           �Q 2  �  �    Channel Name                     � � � �  �    Initial X                        � �� �  �    X Increment                        	                	            	                ""    	            	           �    This function returns readout measurements over capture time.

The sequence of measurement data will be different depending upon the selected measurement type number. 

Measurement Type:
1 Average Power
2 Average Power, Peak Power
3 Average Power, Peak Power, Crest Factor
4 Average Power, Min Power and Time , Max Power and Time
5 Average Power, Held Min Power and Time, Held Max Power and
Time
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     %    Number of points actually returned.    �    A user allocated buffer into which the measurement data is stored.

The sequence of measurement data will be different depending upon the selected measurement type number. 

Measurement Type:
1 Average Power
2 Average Power, Peak Power
3 Average Power, Peak Power, Crest Factor
4 Average Power, Min Power and Time , Max Power and Time
5 Average Power, Held Min Power and Time, Held Max Power and
Time
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""   �����]  �    Status                           ��   o  �    Instrument Handle                � 3 � u  �    Actual Points                    �� 3� �  �    Measurement Data                 � 3  �  �    Channel Name                       	                	            	            ""    :    This function returns Pulsed / Modulated graph max data.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     %    Number of points actually returned.     D    A user allocated buffer into which the measurement data is stored.     8    Number of array points requested.

Default Value: None     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     F    Indicates the time of the first point in the trace array. 

Units: S     F    Indicates the time of the first point in the trace array. 

Units: S   �`���]  �    Status                           ��   o  �    Instrument Handle                �: / � u  �    Actual Points                    �g /| �  �    Trace Data                       �� ~  u  �    Length                           �� /  �  �    Channel Name                     �[ ~ � �  �    Initial X                        �� ~� �  �    X Increment                        	                	            	                ""    	            	            :    This function returns Pulsed / Modulated graph min data.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     %    Number of points actually returned.     D    A user allocated buffer into which the measurement data is stored.     8    Number of array points requested.

Default Value: None     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     F    Indicates the time of the first point in the trace array. 

Units: S     F    Indicates the time of the first point in the trace array. 

Units: S   +���]  �    Status                           	K   o  �    Instrument Handle                
 3 � u  �    Actual Points                    
2 3� �  �    Trace Data                       
~ |  u  �    Length                           
� 3  �  �    Channel Name                     & | � �  �    Initial X                        t |� �  �    X Increment                        	                	            	                ""    	            	            S    This function returns a measurement reading for the selected 
channel in CW mode.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     "    Returns the CW measurement data.   ���]  �    Status                           /   o  �    Instrument Handle                � 4  �  �    Channel Name                     Q 4� �  �    CW Data                            	                ""    	            1    This function returns specified marker reading.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     3    Returns the time reference for the power reading.         Returns the power.     E    Specifies the marker number.

Valid Range: 1 to 4

Default Value: 1   ����]  �    Status                           �   o  �    Instrument Handle                � 9  �  �    Channel Name                     � p  �  �    Position                          ' 9� �  �    Power                             C 9 � u  �    Marker Number                      	                ""    	            	            1    -    This function returns delta marker reading.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     3    Returns the time reference for the power reading.         Returns the measurement data.   "6���]  �    Status                           )V   o  �    Instrument Handle                * 4  �  �    Channel Name                     *x 4� �  �    Position                         *� 3 � �  �    Measurement Data                   	                ""    	            	            /    This function returns pulse measurement data.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
         Returns pulse fall time.         Returns pulse rise time.         Returns pulse off time.     $    Returns pulse repetition interval.         Returns pulse width.     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""   ,H���]  �    Status                           3h   o  �    Instrument Handle                4" ' � �  �    Pulse Fall Time                  4D %� �  �    Pulse Rise Time                  4f p  �  �    Pulse Off Time                   4� p� �  �    Pulse Repetition Interval        4� p � �  �    Pulse Width                      4� '  �  �    Channel Name                       	                	            	            	            	            	            ""    7    This function returns the statistics cursor readings.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     +    Returns Power reading at cursor position.     0    Returns Percentage reading at cursor position.   7r���]  �    Status                           >�   o  �    Instrument Handle                ?L 4  �  �    Channel Name                     ?� 4� �  �    Power                            ?� 3 � �  �    Percentage                         	                ""    	            	            (    This function returns the PAE reading.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""         Returns the PAE reading.   A����]  �    Status                           H�   o  �    Instrument Handle                I` 4  �  �    Channel Name                     I� 4� �  �    PAE Data                           	                ""    	            F    This function returns statistical post-processing function readings.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     %    Number of points actually returned.     D    A user allocated buffer into which the measurement data is stored.     8    Number of array points requested.

Default Value: None     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""     F    Indicates the time of the first point in the trace array. 

Units: S     F    Indicates the time of the first point in the trace array. 

Units: S   K.���]  �    Status                           RN   o  �    Instrument Handle                S 0 � u  �    Actual Points                    S5 0x �  �    Trace Array                      S� z  u  �    Length                           S� 0  �  �    Channel Name                     T) z � �  �    Initial X                        Tw z} �  �    X Increment                        	                	            	                ""    	            	           �    This function returns gating pattern measurement data.

The sequence of measurement data will be different depending upon the selected measurement type number. 

Measurement Type:
1 Average Power
2 Average Power, Peak Power
3 Average Power, Peak Power, Crest Factor
4 Average Power, Min Power and Time , Max Power and Time
5 Average Power, Held Min Power and Time, Held Max Power and
Time
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     %    Number of points actually returned.    �    A user allocated buffer into which the measurement data is stored.

he sequence of measurement data will be different depending upon the selected measurement type number. 

Measurement Type:
1 Average Power
2 Average Power, Peak Power
3 Average Power, Peak Power, Crest Factor
4 Average Power, Min Power and Time , Max Power and Time
5 Average Power, Held Min Power and Time, Held Max Power and
Time     `    Pass the channel name you want to configure.

Valid Channel Names:  "1","2"

Default Value: ""        Specified gating pattern number.

Valid Range: 1 to 8

Default Value: 1

Notes:
Gating pattern numbers 5 to 8 will only return a reading if gate1 repeat pattern is enabled and gate 1 repeat count has been set to 5 to 8. An execution error is returned if either condition is not met.
   XF���]  �    Status                           _f   o  �    Instrument Handle                `  5� u  �    Actual Points                    `M �  �  �    Measurement Data                 a� 4  �  �    Channel Name                     bN 5 � u  �    Gate Number                        	                	            	            ""    1   &    This function resets the instrument to a known state and sends initialization commands to the instrument.  The initialization commands set instrument settings such as Headers Off, Short Command form, and Data Transfer Binary to the state necessary for the operation of the instrument driver.
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   f'���]  �    Status                           m2-   o  �    Instrument Handle                  	                  This function resets the instrument and applies initial user specified settings from the Logical Name which was used to initialize the session.  If the session was created without a Logical Name, this function is equivalent to the auml24XX_reset function.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   oo#���]  �    Status                           v�-   o  �    Instrument Handle                  	               <    This function is not supported by the auml24xx instrument.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   x#���]  �    Status                           '-   o  �    Instrument Handle                  	               Z    This function runs the instrument's self test routine and returns the test result(s). 

    &    This control contains the value returned from the instrument self test.  Zero means success.  For any other code, see the device's operator's manual.

Self-Test Code    Description
---------------------------------------
   0              Passed self test
   1              Self test failed

     �    Returns the self-test response string from the instrument. See the device's operation manual for an explanation of the string's contents.

You must pass a ViChar array with at least 256 bytes.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   �� =  {  �    Self Test Result                 �� = � � ,    Self-Test Message                ��#���]  �    Status                           ��-   o  �    Instrument Handle                  	           	            	               `    This function returns the revision numbers of the instrument driver and instrument firmware.

     �    Returns the instrument driver software revision numbers in the form of a string.

You must pass a ViChar array with at least 256 bytes.     �    Returns the instrument firmware revision numbers in the form of a string.

You must pass a ViChar array with at least 256 bytes.
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   �� =  �  �    Instrument Driver Revision       �� =Z �  �    Firmware Revision                �#���]  �    Status                           �/-   o  �    Instrument Handle                  	            	            	               �    Queries the instrument by SYERLST command(refer to the manual for detail information).  The error message tells the error information. Error code is not supported by Anritsu Power Meter.      �    Returns the error message string read from the instrument's error message queue.

You must pass a ViChar array with at least 256 bytes.
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     ;    The error code is not supported by Anritsu Power Meter.

   �� = � � ,    Error Message                    �<#���]  �    Status                           �\-   o  �    Instrument Handle                � >  u  �    Error Code                         	            	               	           n    This function converts a status code returned by an instrument driver function into a user-readable string.     %�    Pass the Status parameter that is returned from any of the instrument driver functions.
          
Default Value:  0  (VI_SUCCESS)
          
auml24XX Status Codes:
Status    Description

IviPwrMeter Status Codes:
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  Measurement is under range.
3FFA2002  Measurement is over range.

ERRORS:
BFFA1001  The trigger source is not set to software trigger.
BFFA2001  The specified channel is not enabled for measurement.
BFFA2020  Maximum timeout exceeded before operation could complete.

IVI Engine Status Codes:
Status    Description
-------------------------------------------------
ERRORS:
BFFA0001  Instrument error. Call auml24XX_error_query.
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
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
        The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

You can pass VI_NULL for this parameter.  This is useful when one of the initialize functions fail.

Default Value:  VI_NULL
   �� =  ]  h    Error Code                       Ƃ = � � �    Error Message                    �#���]  �    Status                           �=-   o  �    Instrument Handle                  0    	            	           VI_NULL    P    This function invalidates the cached values of all attributes for the session.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   г#���]  �    Status                           ��-   o  �    Instrument Handle                  	              �    This function returns the coercion information associated with the IVI session.  This function retrieves and clears the oldest instance in which the instrument driver coerced a value you specified to another value.

If you set the AUML24XX_ATTR_RECORD_COERCIONS attribute to VI_TRUE, the instrument driver keeps a list of all coercions it makes on ViInt32 or ViReal64 values you pass to instrument driver functions.  You use this function to retrieve information from that list.

If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Coercion Record buffer parameter.

The function returns an empty string in the Coercion Record parameter if no coercion records remain for the session.

        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init function.  The handle identifies a particular instrument session.

Default Value:  None    �    Returns the next coercion record for the IVI session.  If there are no coercion records, the function returns an empty string.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter.  If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

This parameter returns an empty string if no coercion records remain for the session.
    �    Pass the number of bytes in the ViChar array you specify for the Coercion Record parameter.

If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Coercion Record buffer parameter.

Default Value:  None

   ��#���]  �    Status                           ��-   o  �    Instrument Handle                � � Q � �    Coercion Record                  � = � u  �    Buffer Size                        	               	               �    This function retrieves and then clears the IVI error information for the session or the current execution thread. One exception exists: If the BufferSize parameter is 0, the function does not clear the error information. By passing 0 for the buffer size, the caller can ascertain the buffer size required to get the entire error description string and then call the function again with a sufficiently large buffer.

If the user specifies a valid IVI session for the InstrumentHandle parameter, Get Error retrieves and then clears the error information for the session.  If the user passes VI_NULL for the InstrumentHandle parameter, this function retrieves and then clears the error information for the current execution thread.  If the InstrumentHandle parameter is an invalid session, the function does nothing and returns an error. Normally, the error information describes the first error that occurred since the user last called auml24XX_GetError or auml24XX_ClearError.
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Pass the number of bytes in the ViChar array you specify for the Description parameter.

If the error description, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies BufferSize - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Description buffer parameter.

Default Value:  None     �    Returns the error code for the session or execution thread.

If you pass 0 for the Buffer Size, you can pass VI_NULL for this parameter.
    �    Returns the error description for the IVI session or execution thread.  If there is no description, the function returns an empty string.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter.  If the error description, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass 0 for the Buffer Size, you can pass VI_NULL for this parameter.   �f#���]  �    Status or Required Size          ��-   o  �    Instrument Handle                �@ =� u  �    BufferSize                       �  =  ]  �    Code                             �� � Q � �    Description                        	                   	           	           `    This function clears the error information for the current execution thread and the IVI session you specify.  If you pass VI_NULL for the Instrument Handle parameter, this function clears the error information only for the current execution thread. 
This function clears the error code and error description for the IVI session. If the user specifies a valid IVI session for the Instrument Handle parameter, this function clears the error information for the session. If the user passes VI_NULL for the Vi parameter, this function clears the error information for the current execution thread. If the Vi parameter is an invalid session, the function does nothing and returns an error.
The function clears the error code by setting it to VI_SUCCESS.  If the error description string is non-NULL, the function de-allocates the error description string and sets the address to VI_NULL.

Maintaining the error information separately for each thread is useful if the user does not have a session handle to pass to the auml24XX_GetError function, which occurs when a call to auml24XX_init or auml24XX_InitWithOptions fails.
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   L#���]  �    Status                           l-   o  �    Instrument Handle                  	              /    This function returns the interchangeability warnings associated with the IVI session. It retrieves and clears the oldest instance in which the class driver recorded an interchangeability warning.  Interchangeability warnings indicate that using your application with a different instrument might cause different behavior. You use this function to retrieve interchangeability warnings.

The driver performs interchangeability checking when the AUML24XX_ATTR_INTERCHANGE_CHECK attribute is set to VI_TRUE.

The function returns an empty string in the Interchange Warning parameter if no interchangeability warnings remain for the session.

In general, the instrument driver generates interchangeability warnings when an attribute that affects the behavior of the instrument is in a state that you did not specify.
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

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

   �#���]  �    Status or Required Size          �-   o  �    Instrument Handle                � = � u  �    Buffer Size                      � � Q � �    Interchange Warning                	                   	            A    This function clears the list of current interchange warnings.
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
   -   o  �    Instrument Handle                �#���]  �    Status                                 	          �    When developing a complex test system that consists of multiple test modules, it is generally a good idea to design the test modules so that they can run in any order.  To do so requires ensuring that each test module completely configures the state of each instrument it uses.  If a particular test module does not completely configure the state of an instrument, the state of the instrument depends on the configuration from a previously executed test module.  If you execute the test modules in a different order, the behavior of the instrument and therefore the entire test module is likely to change.  This change in behavior is generally instrument specific and represents an interchangeability problem.

You can use this function to test for such cases.  After you call this function, the interchangeability checking algorithms in the specific driver ignore all previous configuration operations.  By calling this function at the beginning of a test module, you can determine whether the test module has dependencies on the operation of previously executed test modules.

This function does not clear the interchangeability warnings from the list of previously recorded interchangeability warnings.  If you want to guarantee that the auml24XX_GetNextInterchangeWarning function only returns those interchangeability warnings that are generated after calling this function, you must clear the list of interchangeability warnings.  You can clear the interchangeability warnings list by repeatedly calling the auml24XX_GetNextInterchangeWarning function until no more interchangeability warnings are returned.  If you are not interested in the content of those warnings, you can call the auml24XX_ClearInterchangeWarnings function.
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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

   .>-   o  �    Instrument Handle                .�#���]  �    Status                                 	          :    This function obtains a multithread lock on the instrument session.  Before it does so, it waits until all other execution threads have released their locks on the instrument session.

Other threads might have obtained a lock on this session in the following ways:

- The user's application called auml24XX_LockSession.

- A call to the instrument driver locked the session.

- A call to the IVI engine locked the session.

After your call to auml24XX_LockSession returns successfully, no other threads can access the instrument session until you call auml24XX_UnlockSession.

Use auml24XX_LockSession and auml24XX_UnlockSession around a sequence of calls to instrument driver functions if you require that the instrument retain its settings through the end of the sequence.

You can safely make nested calls to auml24XX_LockSession within the same thread.  To completely unlock the session, you must balance each call to auml24XX_LockSession with a call to auml24XX_UnlockSession.  If, however, you use the Caller Has Lock parameter in all calls to auml24XX_LockSession and auml24XX_UnlockSession within a function, the IVI Library locks the session only once within the function regardless of the number of calls you make to auml24XX_LockSession.  This allows you to call auml24XX_UnlockSession just once at the end of the function. 
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    This parameter serves as a convenience.  If you do not want to use this parameter, pass VI_NULL. 

Use this parameter in complex functions to keep track of whether you obtain a lock and therefore need to unlock the session.  Pass the address of a local ViBoolean variable.  In the declaration of the local variable, initialize it to VI_FALSE.  Pass the address of the same local variable to any other calls you make to auml24XX_LockSession or auml24XX_UnlockSession in the same function.

The parameter is an input/output parameter.  auml24XX_LockSession and auml24XX_UnlockSession each inspect the current value and take the following actions:

- If the value is VI_TRUE, auml24XX_LockSession does not lock the session again.  If the value is VI_FALSE, auml24XX_LockSession obtains the lock and sets the value of the parameter to VI_TRUE.

- If the value is VI_FALSE, auml24XX_UnlockSession does not attempt to unlock the session.  If the value is VI_TRUE, auml24XX_UnlockSession releases the lock and sets the value of the parameter to VI_FALSE.
 
Thus, you can, call auml24XX_UnlockSession at the end of your function without worrying about whether you actually have the lock.  

Example:

ViStatus TestFunc (ViSession vi, ViInt32 flags)
{
    ViStatus error = VI_SUCCESS;
    ViBoolean haveLock = VI_FALSE;

    if (flags & BIT_1)
        {
        viCheckErr( auml24XX_LockSession(vi, &haveLock));
        viCheckErr( TakeAction1(vi));
        if (flags & BIT_2)
            {
            viCheckErr( auml24XX_UnlockSession(vi, &haveLock));
            viCheckErr( TakeAction2(vi));
            viCheckErr( auml24XX_LockSession(vi, &haveLock);
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
    auml24XX_UnlockSession(vi, &haveLock);
    return error;
}   ;�#���]  �    Status                           B�-   o  �    Instrument Handle                C� = � i  �    Caller Has Lock                    	               	            �    This function releases a lock that you acquired on an instrument session using auml24XX_LockSession.  Refer to auml24XX_LockSession for additional information on session locks.
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    This parameter serves as a convenience.  If you do not want to use this parameter, pass VI_NULL. 

Use this parameter in complex functions to keep track of whether you obtain a lock and therefore need to unlock the session. 
Pass the address of a local ViBoolean variable.  In the declaration of the local variable, initialize it to VI_FALSE.  Pass the address of the same local variable to any other calls you make to auml24XX_LockSession or auml24XX_UnlockSession in the same function.

The parameter is an input/output parameter.  auml24XX_LockSession and auml24XX_UnlockSession each inspect the current value and take the following actions:

- If the value is VI_TRUE, auml24XX_LockSession does not lock the session again.  If the value is VI_FALSE, auml24XX_LockSession obtains the lock and sets the value of the parameter to VI_TRUE.

- If the value is VI_FALSE, auml24XX_UnlockSession does not attempt to unlock the session.  If the value is VI_TRUE, auml24XX_UnlockSession releases the lock and sets the value of the parameter to VI_FALSE.
 
Thus, you can, call auml24XX_UnlockSession at the end of your function without worrying about whether you actually have the lock.  

Example:

ViStatus TestFunc (ViSession vi, ViInt32 flags)
{
    ViStatus error = VI_SUCCESS;
    ViBoolean haveLock = VI_FALSE;

    if (flags & BIT_1)
        {
        viCheckErr( auml24XX_LockSession(vi, &haveLock));
        viCheckErr( TakeAction1(vi));
        if (flags & BIT_2)
            {
            viCheckErr( auml24XX_UnlockSession(vi, &haveLock));
            viCheckErr( TakeAction2(vi));
            viCheckErr( auml24XX_LockSession(vi, &haveLock);
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
    auml24XX_UnlockSession(vi, &haveLock);
    return error;
}   L�#���]  �    Status                           T-   o  �    Instrument Handle                T� = � i  �    Caller Has Lock                    	               	            �    This function writes a user-specified string to the instrument.

Note:  This function bypasses IVI attribute state caching.  Therefore, when you call this function, the cached values for all attributes will be invalidated.     2    Pass the string to be written to the instrument.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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

     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   ^B = � �  �    Write Buffer                     ^|#���]  �    Status                           e�-   o  �    Instrument Handle                      	               /    This function reads data from the instrument.     c    After this function executes, this parameter contains the data that was read from the instrument.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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
     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     �    Pass the maximum number of bytes to read from the instruments.  

Valid Range:  0 to the number of elements in the Read Buffer.

Default Value:  0

     ^    Returns the number of bytes actually read from the instrument and stored in the Read Buffer.   gA =Z �  �    Read Buffer                      g�#���]  �    Status                           n�-   o  �    Instrument Handle                o� =  u  �    Number of Bytes To Read          p$ �  u  �    Num Bytes Read                     	            	               0    	           �    This function performs the following operations:

- Closes the instrument I/O session.

- Destroys the instrument driver session and all of its attributes.

- Deallocates any memory resources the driver uses.

Notes:

(1) You must unlock the session before calling auml24XX_close.

(2) After calling auml24XX_close, you cannot use the instrument driver again until you call auml24XX_init or auml24XX_InitWithOptions.

        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the auml24xx_error_message function.  To obtain additional information about the error condition, call the auml24xx_GetError function.  To clear the error information from the driver, call the auml24xx_ClearError function.
          
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
None 

ERRORS:
BFFA4001  No internal trigger source has been set.
BFFA4002  Auto averaging enabled, manual average                
          number unavailable.
          
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

     �    The ViSession handle that you obtain from the auml24xx_init or auml24xx_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   sl#���]  �    Status                           z�-   o  �    Instrument Handle                  	            ����         $  1�             K.        init                                                                                                                                    ����         3g  X\             K.        InitWithOptions                                                                                                                         ����         Z5  c             K.        ConfigureActiveChannel                                                                                                                  ����         c�  oz             K.        ConfigureUnits                                                                                                                          ����         p�  ~             K.        ConfigureMeasurement                                                                                                                    ����         �  �8             K.        ConfigureRangeAutoEnabled                                                                                                               ����         �=  ��             K.        ConfigureCorrectionFrequency                                                                                                            ����         ��  �             K.        ConfigureOffset                                                                                                                         ����         ��  ��             K.        ConfigureMeasurementMode                                                                                                                ����         �   �!             K.        ConfigureSettlePercentage                                                                                                               ����         �  Ŝ             K.        ConfigurePulsedModulatedMeasurement                                                                                                     ����         ��  ��             K.        ConfigureRelativeMeasurement                                                                                                            ����         ՚  �              K.        ConfigureAveragingEnabled                                                                                                               ����         �  ��             K.        ConfigureAveragingAutoEnabled                                                                                                           ����         ��  ��             K.        ConfigureGET                                                                                                                            ����         �� ]             K.        ConfigureTrigger                                                                                                                        ����        
X �             K.        ConfigureTriggerSource                                                                                                                  ����        j !�             K.        ConfigureTriggerFrameArming                                                                                                             ����        # ,�             K.        ConfigureTriggerLinkingEnabled                                                                                                          ����        -t 6�             K.        ConfigurePMODTriggerHoldoff                                                                                                             ����        8+ CC             K.        ConfigurePMODTrigger                                                                                                                    ����        E8 N              K.        ConfigureExternalTriggerEdge                                                                                                            ����        O W#             K.        EnterTriggerHoldMode                                                                                                                    ����        W� `R             K.        QueryRRSTraceState                                                                                                                      ����        aH l�             K.        ConfigureInternalTrigger                                                                                                                ����        m� w             K.        ConfigureInternalTriggerLevel                                                                                                           ����        w� ��             K.        ConfigureAveragingCount                                                                                                                 ����        �� ��             K.        ConfigureCWAveragingMode                                                                                                                ����        �� �             K.        ResetPMODProfileAveraging                                                                                                               ����        �� �5             K.        ConfigureDutyCycleCorrection                                                                                                            ����        �x ��             K.        GetChannelName                                                                                                                          ����        � ��             K.        ConfigureDualChannelEnabled                                                                                                             ����        �p �}             K.        ConfigureMinMaxTrackingEnabled                                                                                                          ����        ǂ �7             K.        ResetMinMaxTracking                                                                                                                     ����        �� �             K.        ConfigureActiveGatingPattern                                                                                                            ����        �
 ��             K.        ConfigureRepeateGates                                                                                                                   ����        �H �l             K.        ConfigureFence                                                                                                                          ����        �� �             K.        ConfigureGating                                                                                                                         ����        �� �             K.        SwitchOffGatingPatterns                                                                                                                 ����        � �             K.        ConfigureLimit                                                                                                                          ����        V !8             K.        ConfigureSimpleLimit                                                                                                                    ����        "k 0	         	    K.        ConfigureComplexLimit                                                                                                                   ����        28 ;�             K.        ConfigureComplexLimitSpecType                                                                                                           ����        =1 F�             K.        ConfigureComplexLimitSpecActiveNumber                                                                                                   ����        G� P8             K.        QueryComplexLimitMemoryStore                                                                                                            ����        Q- [�             K.        ConfigureComplexLimitSpecificationIDName                                                                                                ����        \� j�             K.        ConfigureComplexLimitSegment                                                                                                            ����        l� w�             K.        SaveComplexLimitSpecification                                                                                                           ����        x� ��             K.        ConfigureMarkerNumber                                                                                                                   ����        �� �l             K.        ConfigureMarker                                                                                                                         ����        �� ��             K.        ConfigureMarkerActive                                                                                                                   ����        �B ��             K.        PositionActiveMarkerToMax                                                                                                               ����        �t ��             K.        PositionActiveMarkerToMin                                                                                                               ����        �� �w             K.        ConfigureAdvancedMarkerSearch                                                                                                           ����        �E �V             K.        ConfigureDeltaMarker                                                                                                                    ����        Ɖ ��             K.        DisableAllMarkers                                                                                                                       ����        ϭ ٳ             K.        ConfigurePostProcessingAcquisition                                                                                                      ����        �l ��         	    K.        ConfigurePowerAddedEfficiencyProcessing                                                                                                 ����        �? �             K.        ConfigureStatisticalPostProcessing                                                                                                      ����        �> �             K.        RestartPostProcessingAcquisition                                                                                                        ����        v �             K.        ConfigureSensor                                                                                                                         ����        > �             K.        ConfigureSensorOperatingMode                                                                                                            ����        � (V             K.        ConfigureSensorOffset                                                                                                                   ����        )G 2<             K.        ConfigureActiveOffsetTableNumber                                                                                                        ����        3+ ;�             K.        QuerySensorOffsetValue                                                                                                                  ����        <� Ff             K.        ConfigureSensorOffsetType                                                                                                               ����        G� Q             K.        ClearOffsetTable                                                                                                                        ����        R [k             K.        ConfigureOffsetTableEntry                                                                                                               ����        \� e7             K.        ConfigureOffsetTableIDName                                                                                                              ����        f& n�             K.        QueryValidOffsetTable                                                                                                                   ����        o� y`             K.        ConfigureSensorCorrectionFrequency                                                                                                      ����        zT �A             K.        ConfigureCalibrationFactor                                                                                                              ����        �� �6             K.        ConfigureVGHZCalibrationFactor                                                                                                          ����        �� ��             K.        QueryCurrentCalibrationFactor                                                                                                           ����        �� ��             K.        ConfigureCalibrationFactorActiveTableNumber                                                                                             ����        �� �$             K.        QueryValidCalibrationFactorTable                                                                                                        ����        �T ��             K.        PresetCalibrationFactorTable                                                                                                            ����        ­ ˽             K.        QueryCalibrationFactorActiveTableNumber                                                                                                 ����        ̳ �             K.        ClearCalibrationFactorTable                                                                                                             ����        �9 �/             K.        ConfigureCalibrationFactorTableIDName                                                                                                   ����        �Y �             K.        ConfigureCalibrationFactorTableEntry                                                                                                    ����        � ��             K.        SaveCalibrationFactorTable                                                                                                              ����        �@ �             K.        ConfigureSystem                                                                                                                         ����        i u             K.        ConfigureBNCOutput                                                                                                                      ����        � &�             K.        ConfigureBNCOutputCharacteristics                                                                                                       ����        )= 2`             K.        ConfigureRefOscillatorEnabled                                                                                                           ����        3* <�             K.        ConfigureRefOscillator                                                                                                                  ����        =� UH             K.        SetAttributeViInt32                                                                                                                     ����        V� l             K.        SetAttributeViReal64                                                                                                                    ����        m� ��             K.        SetAttributeViString                                                                                                                    ����        �Z �~             K.        SetAttributeViBoolean                                                                                                                   ����        � �=             K.        SetAttributeViSession                                                                                                                   ����        �� ��             K.        GetAttributeViInt32                                                                                                                     ����        � �%             K.        GetAttributeViReal64                                                                                                                    ����        �b �P             K.        GetAttributeViString                                                                                                                    ����        �� �             K.        GetAttributeViBoolean                                                                                                                   ����         "             K.        GetAttributeViSession                                                                                                                   ����        _ '             K.        CheckAttributeViInt32                                                                                                                   ����        (� 9k             K.        CheckAttributeViReal64                                                                                                                  ����        ; K�             K.        CheckAttributeViString                                                                                                                  ����        MZ ^             K.        CheckAttributeViBoolean                                                                                                                 ����        _� pm             K.        CheckAttributeViSession                                                                                                                 ����        r z�             K.        Zero                                                                                                                                    ����        {J ��             K.        ZeroBNCInputConnector                                                                                                                   ����        �� ��             K.        ZeroAllChannels                                                                                                                         ����        �7 ��             K.        IsZeroComplete                                                                                                                          ����        �= �]             K.        AbortRangeCalibratorTest                                                                                                                ����        � ��             K.        ZeroRangeCalibratorSensorInput                                                                                                          ����        �R �9             K.        InitiateRangeCalibratorFullTest                                                                                                         ����        �, �H             K.        ConfigureRangeCalibratorDiagnosticTest                                                                                                  ����        ̋ ��             K.        OutputRangeCalibratorDiagnosticTestData                                                                                                 ����        �w �@             K.        Calibrate                                                                                                                               ����        �� �E             K.        IsCalibrationComplete                                                                                                                   ����        �  �O             K.        Read                                                                                                                                    ����        �G '         	    K.        ReadPMODTrace                                                                                                                           ����        W               K.        ReadPMODReadOut                                                                                                                         ����        u  ]         	    K.        ReadPMODMaxTrace                                                                                                                        ����        "� .u         	    K.        ReadPMODMinTrace                                                                                                                        ����        0� ;i             K.        ReadCWData                                                                                                                              ����        <� G�             K.        ReadMarker                                                                                                                              ����        It TW             K.        ReadDeltaMarker                                                                                                                         ����        U� `�         	    K.        ReadPulseMeasurement                                                                                                                    ����        c5 n*             K.        ReadStatisticalCursor                                                                                                                   ����        o� z<             K.        ReadPAE                                                                                                                                 ����        {p �`         	    K.        ReadStatPostProcessingTrace                                                                                                             ����        �� �S             K.        ReadGating                                                                                                                              ����        � �D             K.        Fetch                                                                                                                                   ����        �� �:             K.        Initiate                                                                                                                                ����        �� ��             K.        IsMeasurementComplete                                                                                                                   ����        �� ��             K.        Abort                                                                                                                                   ����        �D �Y             K.        SendSoftwareTrigger                                                                                                                     ����        �� ��             K.        QueryResultRangeType                                                                                                                    ����        �� �J             K.        FetchHeader                                                                                                                             ����        �~ �U             K.        FetchPMODTrace                                                                                                                          ����        �G ��             K.        FetchPMODReadOut                                                                                                                        ����        � ��             K.        FetchPMODMaxTrace                                                                                                                       ����        � �             K.        FetchPMODMinTrace                                                                                                                       ����        � {             K.        FetchCWData                                                                                                                             ����        q  �             K.        FetchMarker                                                                                                                             ����        " *�             K.        FetchDeltaMarker                                                                                                                        ����        , 59             K.        FetchPulseMeasurement                                                                                                                   ����        73 @             K.        FetchStatisticalCursor                                                                                                                  ����        AV I�             K.        FetchPAE                                                                                                                                ����        J� T�             K.        FetchStatisticalPostProcessingTrace                                                                                                     ����        V� cs             K.        FetchGating                                                                                                                             ����        d� m�             K.        reset                                                                                                                                   ����        nf wI             K.        ResetWithDefaults                                                                                                                       ����        w� �             K.        Disable                                                                                                                                 ����        �[ ��             K.        self_test                                                                                                                               ����        �� ��             K.        revision_query                                                                                                                          ����        �� �Y             K.        error_query                                                                                                                             ����        �U �_             K.        error_message                                                                                                                           ����        �[ ؍             K.        InvalidateAllAttributes                                                                                                                 ����        � �             K.        GetNextCoercionRecord                                                                                                                   ����        � ��             K.        GetError                                                                                                                                ����        �� &             K.        ClearError                                                                                                                              ����        � �             K.        GetNextInterchangeWarning                                                                                                               ����        � &�             K.        ClearInterchangeWarnings                                                                                                                ����        'l 6             K.        ResetInterchangeCheck                                                                                                                   ����        6� K             K.        LockSession                                                                                                                             ����        L: \�             K.        UnlockSession                                                                                                                           ����        ]Z fW             K.        WriteInstrData                                                                                                                          ����        g
 p�             K.        ReadInstrData                                                                                                                           ����        q� {G             K.        close                                                                                                                                         �                                                                                     �Initialize                                                                           �Initialize With Options                                                             �Configuration                                                                        �Configure Active Channel                                                             �Configure Units                                                                      �Configure Measurement                                                                �Configure Range Auto Enabled                                                         �Configure Correction Frequency                                                       �Configure Offset                                                                     �Configure Measurement Mode                                                           �Configure Settle Percentage                                                          �Configure Pulsed Modulated Measurement                                               �Configure Relative Measurement                                                       �Configure Averaging Enabled                                                          �Configure Averaging Auto Enabled                                                    �Trigger                                                                              �Configure GET                                                                        �Configure Trigger                                                                    �Configure Trigger Source                                                             �Configure Trigger Frame Arming                                                       �Configure Trigger Linking Enabled                                                    �Configure PMOD Trigger Holdoff                                                       �Configure PMOD Trigger                                                               �Configure External Trigger Edge                                                      �Enter Trigger Hold Mode                                                              �Query RRS Trace State                                                               �Internal Trigger                                                                     �Configure Internal Trigger                                                           �Configure Internal Trigger Level                                                    
Averaging                                                                            �Configure Averaging Count                                                            �Configure CW Averaging Mode                                                          �Reset PMOD Profile Averaging                                                        8Duty Cycle                                                                           �Configure Duty Cycle Correction                                                     CChannel                                                                              �Get Channel Name                                                                     �Configure Dual Channel Enabled                                                       �Configure Min Max Tracking Enabled                                                   �Reset Min Max Tracking                                                              mGating                                                                               �Configure Active Gating Pattern                                                      �Configure Repeate Gates                                                              �Configure Fence                                                                      �Configure Gating                                                                     �Swith Off Gating Patterns                                                           �Limit                                                                                �Configure Limit                                                                      �Configure Simple Limit                                                               �Configure Complex Limit                                                              �Configure Complex Limit Spec Type                                                    �Configure Complex Limit Spec Active Number                                           �Query Complex Limit Memory Store                                                     �Configure Complex Limit Specification ID Name                                        �Configure Complex Limit Segment                                                      �Save Complex Limit Specification                                                    �Marker                                                                               �Configure Marker Number                                                              �Configure Marker                                                                     �Configure Marker Active                                                              �Position Active Marker To Max                                                        �Position Acitve Marker To Min                                                        �Configure Advanced Marker Search                                                     �Configure Delta Marker                                                               �Disable All Markers                                                                 �Processing                                                                           �Configure Post Processing Acquisition                                                �Configure Power Added Efficiency Processing                                          �Configure Statistical Post Processing                                                �Restart Post Processing Acquisition                                                 Sensor                                                                               �Configure Sensor                                                                     �Configure Sensor Operating Mode                                                     6Offset                                                                               �Configure Sensor Offset                                                              �Configure Active Offset Table Number                                                 �Query Sensor Offset Value                                                            �Configure Sensor Offset Type                                                         �Clear Offset Table                                                                   �Configure Offset Table Entry                                                         �Configure Offset Table ID Name                                                       �Query Valid Offset Table                                                            eCalibration Factor                                                                   �Configure Sensor Correction Frequency                                                �Configure Calibration Factor                                                         �Configure VGHz Calibration Factor                                                    �Query Current Calibration Factor                                                     �Configure Calibration Factor Active Table Number                                     �Query Valid Calibration Factor Table                                                 �Preset Calibration Factor Table                                                      �Query Calibration Factor Active Table Number                                         �Clear Calibration Factor Table                                                       �Configure Calibration Factor Table ID Name                                           �Configure Calibration Factor Table Entry                                             �Save Calibration Factor Table                                                       �System                                                                               �Configure System                                                                    �Rear Panel                                                                           �Configure BNC Output                                                                 �Configure BNC Output Characteristics                                                �Reference Oscillator                                                                 �Configure Reference Oscillator Enabled                                               �Configure Reference Oscillator                                                      !Set/Get/Check Attribute                                                             }Set Attribute                                                                        �Set Attribute ViInt32                                                                �Set Attribute ViReal64                                                               �Set Attribute ViString                                                               �Set Attribute ViBoolean                                                              �Set Attribute ViSession                                                             Get Attribute                                                                        �Get Attribute ViInt32                                                                �Get Attribute ViReal64                                                               �Get Attribute ViString                                                               �Get Attribute ViBoolean                                                              �Get Attribute ViSession                                                             �Check Attribute                                                                      �Check Attribute ViInt32                                                              �Check Attribute ViReal64                                                             �Check Attribute ViString                                                             �Check Attribute ViBoolean                                                            �Check Attribute ViSession                                                           *Zeroing                                                                              �Zero                                                                                 �Zero BNC Input Connector                                                             �Zero All Channels                                                                    �Is Zero Correction Complete                                                         Range Calibrator                                                                     �Abort Range Calibrator Test                                                          �Zero Range Calibrator Sensor Input                                                   �Initiate Range Calibrator Full Test                                                  �Configure Range Calibrator Diagnostic Test                                           �Output Range Calibrator Diagnostic Test Data                                        ?Calibration                                                                          �Calibrate                                                                            �Is Calibration Complete                                                             gMeasurement                                                                          �Read                                                                                 �Read PMOD Trace                                                                      �Read PMOD ReadOut                                                                    �Read PMOD Max Trace                                                                  �Read PMOD Min Trace                                                                  �Read CW Data                                                                         �Read Marker                                                                          �Read Delta Marker                                                                    �Read Pulse Measurement                                                               �Read Statistical Cursor                                                              �Read PAE                                                                             �Read Stat Post Process Trace                                                         �Read Gating                                                                         �Low Level Measurement                                                                �Fetch                                                                                �Initiate                                                                             �Is Measurement Complete                                                              �Abort                                                                                �Send Software Trigger                                                                �Query Result Range Type                                                              �Fetch Header                                                                         �Fetch PMOD Trace                                                                     �Fetch PMOD ReadOut                                                                   �Fetch PMOD Max Trace                                                                 �Fetch PMOD Min Trace                                                                 �Fetch CW Data                                                                        �Fetch Marker                                                                         �Fetch Delta Marker                                                                   �Fech Pulse Measurement                                                               �Fetch Statistical Cursor                                                             �Fetch PAE                                                                            �Fetch Statistical Post Process Trace                                                 �Fetch Gating                                                                        PUtility Functions                                                                    �Reset                                                                                �Reset With Defaults                                                                  �Disable                                                                              �Self-Test                                                                            �Revision Query                                                                       �Error-Query                                                                          �Error Message                                                                        �Invalidate All Attributes                                                            �Get Next Coercion Record                                                            �Error Info                                                                           �Get Error                                                                            �Clear Error                                                                         Interchangeability Info                                                              �Get Next Interchange Warning                                                         �Clear Interchange Warnings                                                           �Reset Interchange Check                                                             cLocking                                                                              �Lock Session                                                                         �Unlock Session                                                                      �Instrument I/O                                                                       �Write Instrument Data                                                                �Read Instrument Data                                                                 �Close                                                                           