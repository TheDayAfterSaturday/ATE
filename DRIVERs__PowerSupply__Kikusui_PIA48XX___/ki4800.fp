s��        �E   8 ��  �   �   ����                               ki4800                          Kikusui PIA4800 Power Supply Controller                                                               � � ��ViInt16  �  � ��ViInt32  � � ��ViReal64     � ��ViRsrc     	� 	��ViBoolean     	� 	��ViSession     � ��ViStatus     �  ViChar[]     � ��ViChar     � ��ViString     	�  ViInt16[]     	�  ViInt32[]     
�  	ViReal64[]     � 	 
ViBoolean[]     � ��ViConstString     � ��ViAttr   �    This is the IVI-C instrument driver, which supports KIKUSUI PIA4800 Power Supply Controller. 

Note:
This driver requires the VISA-COM software, IVI Shared Components, and NI IVI Compliance Package 4.x.      �    This class contains functions that configure the instrument.  The class includes high-level functions that configure multiple instrument settings as well as low-level functions that set, get, and check individual attribute values.
     ;    This class contains functions for configuring the output.     F    This class contains functions for miscellaneous configuration items.     H    This class contains sub-classes for the set/get attribute functions.       �    This class contains functions that set an attribute to a new value.  There are typesafe functions for each attribute data type.     �    This class contains functions that obtain the current value of an attribute.  There are typesafe functions for each attribute data type.     ]    This class contains functions that initiate instrument operations and report their status.
    _    This class contains functions and sub-classes that control common instrument operations.  These functions include many of functions that VXIplug&play require, such as reset, self-test, revision query, error query, and error message.  This class also contains functions that access IVI error infomation, lock the session, and perform instrument I/O.
     R    This class contains functions that retrieve and clear the IVI error information.     k    This class contains functions that lock and unlock IVI instrument driver sessions for multithread safefy.     F    This class contains functions that send and receive instrument data.    �    This function performs the following initialization actions:

- Creates a new IVI instrument driver session.

- Opens a session to the specified device using the interface and address you specify for the Resource Name parameter.

- If the ID Query parameter is set to VI_TRUE, this function queries the instrument ID and checks that it is valid for this instrument driver.

- If the Reset parameter is set to VI_TRUE, this function resets the instrument to a known state.

- Sends initialization commands to set the instrument to the state necessary for the operation of the instrument driver.

- Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

    Z    Pass the resource name of the device to initialize.

You can also pass the name of a virtual instrument or logical name that you configure with the IVI Configuration utility.  The virtual instrument identifies a specific device and specifies the initial settings for the session.  A logical Name identifies a particular virtual instrument.

Refer to the following table below for the exact grammar to use for this parameter.  Optional fields are shown in square brackets ([]).

Syntax
------------------------------------------------------
GPIB[board]::<primary address>::INSTR
ASRL<port>::INSTR
<LogicalName>

If you do not specify a value for an optional field, the following values are used:

Optional Field - Value
------------------------------------------------------
board - GPIB board index

The following table contains example valid values for this parameter.

"Valid Value" - Description
------------------------------------------------------
"GPIB0::1::INSTR" - GPIB board 0, primary address 1
"ASRL2::INSTR" - COM port 2
"SampleInstr" - Logical name "SampleInstr"
 
Default Value:  "GPIB0::7::INSTR"        Specify whether you want the instrument driver to perform an ID Query.

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

(2) Avoid creating multiple concurrent sessions to the same physical instrument.  Although you can create more than one IVI session for the same resource, it is best not to do so.  A better approach is to use the same IVI session in multiple execution threads.  You can use functions <prefix>_LockSession and <prefix>_UnlockSession to protect sections of code that require exclusive access to the resource.

    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

    � =   �  �    Resource Name                     � : �       ID Query                          � =� �       Reset Device                      � �� �  �    Instrument Handle                 w#����  �    Status                          ����   }��                                            "GPIB0::7::INSTR"   Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	           7(c)2005 Kikusui Electronics Corp. All Rights Reserved.   �    This function performs the following initialization actions:

- Creates a new IVI instrument driver and optionally sets the initial state of the following session attributes:

    IVI_ATTR_RANGE_CHECK         
    IVI_ATTR_QUERY_INSTR_STATUS  
    IVI_ATTR_CACHE               
    IVI_ATTR_SIMULATE            
    IVI_ATTR_RECORD_COERCIONS    

- Opens a session to the specified device using the interface and address you specify for the Resource Name parameter.

- If the ID Query parameter is set to VI_TRUE, this function queries the instrument ID and checks that it is valid for this instrument driver.

- If the Reset parameter is set to VI_TRUE, this function resets the instrument to a known state.

- Sends initialization commands to set the instrument to the state necessary for the operation of the instrument driver.

- Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

    Z    Pass the resource name of the device to initialize.

You can also pass the name of a virtual instrument or logical name that you configure with the IVI Configuration utility.  The virtual instrument identifies a specific device and specifies the initial settings for the session.  A logical Name identifies a particular virtual instrument.

Refer to the following table below for the exact grammar to use for this parameter.  Optional fields are shown in square brackets ([]).

Syntax
------------------------------------------------------
GPIB[board]::<primary address>::INSTR
ASRL<port>::INSTR
<LogicalName>

If you do not specify a value for an optional field, the following values are used:

Optional Field - Value
------------------------------------------------------
board - GPIB board index

The following table contains example valid values for this parameter.

"Valid Value" - Description
------------------------------------------------------
"GPIB0::1::INSTR" - GPIB board 0, primary address 1
"ASRL2::INSTR" - COM port 2
"SampleInstr" - Logical name "SampleInstr"
 
Default Value:  "GPIB0::7::INSTR"        Specify whether you want the instrument driver to perform an ID Query.

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

(2) Avoid creating multiple concurrent sessions to the same physical instrument.  Although you can create more than one IVI session for the same resource, it is best not to do so.  A better approach is to use the same IVI session in multiple execution threads.  You can use functions <prefix>_LockSession and <prefix>_UnlockSession to protect sections of code that require exclusive access to the resource.

    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes. 
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

    �    You can use this control to set the initial value of certain attributes for the session.  The following table lists the attributes and the name you use in this parameter to identify the attribute.

Name              Attribute Defined Constant   
--------------------------------------------
RangeCheck        KI4800_ATTR_RANGE_CHECK
QueryInstrStatus  KI4800_ATTR_QUERY_INSTRUMENT_STATUS   
Cache             KI4800_ATTR_CACHE   
Simulate          KI4800_ATTR_SIMULATE  
RecordCoercions   KI4800_ATTR_RECORD_COERCIONS

The format of this string is, "AttributeName=Value" where AttributeName is the name of the attribute and Value is the value to which the attribute will be set.  To set multiple attributes, separate their assignments with a comma.

If you pass NULL or an empty string for this parameter and a VISA resource descriptor for the Resource Name parameter, the session uses the default values for the attributes. The default values for the attributes are shown below:

    Attribute Name     Default Value
    ----------------   -------------
    RangeCheck         VI_TRUE
    QueryInstrStatus   VI_FALSE
    Cache              VI_TRUE
    Simulate           VI_FALSE
    RecordCoercions    VI_FALSE
    

If you pass NULL or an empty string for this parameter and a virtual instrument or logical name for the Resource Name parameter, the session uses the values that you configure for virtual instrument or logical name with the IVI Configuration utility.

You can override the values of the attributes by assigning a value explicitly in a string you pass for this parameter.  You do not have to specify all of the attributes and may leave any of them out.  If you do not specify one of the attributes, its default value or the value that you configure with the IVI Configuration utility will be used.

The following are the valid values for ViBoolean attributes:

    True:     1, True, or VI_TRUE
    False:    0, False, or VI_FALSE

As for DriverSetup string, currently this instrument driver does not support anything, therefore it shall be empty.  Future versions of this instrument driver may add the DriverSetup support.


Default Value:
"Simulate=0,RangeCheck=1,QueryInstrStatus=1,Cache=1"
    !� =   �  �    Resource Name                     & : �       ID Query                          ( =� �       Reset Device                      (� � �  �    Instrument Handle                 +�#����  �    Status                          ����  x��                                           2 �  � �    Option String                      "GPIB0::7::INSTR"   Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	           7(c)2005 Kikusui Electronics Corp. All Rights Reserved.    5"Simulate=0,RangeCheck=1,QueryInstrStatus=1,Cache=1"    �    Configures whether the signal that the power supply produces on a channel appears at the output connector.

Note:
This function call is equivalent to setting the following ViBoolean attribute:

KI4800_ATTR_OUTPUT_ENABLED
     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
         
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes. 
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

    �    Pass the channel name that you want to control with this function.

Valid Channel Names:  "N1!C1" to "N35!C4"

Default Value:  "N5!C1"

Note:

The valid channel name format is a combination of NODE# and CHANNEL# as shown below:

"N<node>!C<channel>"

The <node> part represents the NODE and the <channel> part represents CHANNEL, where the power supply is actually configured. For example, if a power supply is configured at Node=5 and Channel=1, its Name will be:

"N5!C1"

The valid range for Node is 1 through 35, and the valid range for Channel is 1 through 4. (Channel values 2 through 4 are only for multi-track models such as Kikusui PMR series. For other cases, the Channel value must be 1.)
    '    Pass whether you want the signal the power supply produces on a channel to appear at the output connector.  The driver uses this value to set the KI4800_ATTR_OUTPUT_ENABLED attribute.

Valid Values:
VI_TRUE  - Enable the output
VI_FALSE - Disable the output (Default)

Default Value: VI_FALSE
    =�-   �  �    Instrument Handle                 >�#����  �    Status                            E? 3 
 �  �    Channel Name                      H 3 � �  �    Enabled                                	           "N5!C1"    True 1 False 0    �    This function configures the output Voltage Level.

Note:
This function call is equivalent to setting the following ViReal64 attribute:

KI4800_ATTR_VOLTAGE_LEVEL 
     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

    �    Pass the channel name that you want to control with this function.

Valid Channel Names:  "N1!C1" to "N35!C4"

Default Value:  "N5!C1"

Note:

The valid channel name format is a combination of NODE# and CHANNEL# as shown below:

"N<node>!C<channel>"

The <node> part represents the NODE and the <channel> part represents CHANNEL, where the power supply is actually configured. For example, if a power supply is configured at Node=5 and Channel=1, its Name will be:

"N5!C1"

The valid range for Node is 1 through 35, and the valid range for Channel is 1 through 4. (Channel values 2 through 4 are only for multi-track models such as Kikusui PMR series. For other cases, the Channel value must be 1.)
    i    Pass the Voltage Level.

Units: Volts

Valid Ranges: Differ depending on model type

Default Value: 0.0[V]

Note:
Valid Ranges are different depending on the mode type of the connected power supply.  In most cases, the model name is explanative for max voltage and current.  For example, if using PAS 320-2, the max voltage is 320V and the max current is 2A.
    J�-   �  �    Instrument Handle                 K�#����  �    Status                            R, 3 
 �  �    Channel Name                      T� 3 � �  �    Voltage Level                          	           "N5!C1"    0.0    �    This function configures the Current Limit behaviour and its limit value.

Note:
This function call is equivalent to setting the following ViInt32 and ViReal64 attributes:

KI4800_ATTR_CURRENT_LIMIT_BEHAVIOR
KI4800_ATTR_CURRENT_LIMIT 
     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes. 
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

    �    Pass the channel name that you want to control with this function.

Valid Channel Names:  "N1!C1" to "N35!C4"

Default Value:  "N5!C1"

Note:

The valid channel name format is a combination of NODE# and CHANNEL# as shown below:

"N<node>!C<channel>"

The <node> part represents the NODE and the <channel> part represents CHANNEL, where the power supply is actually configured. For example, if a power supply is configured at Node=5 and Channel=1, its Name will be:

"N5!C1"

The valid range for Node is 1 through 35, and the valid range for Channel is 1 through 4. (Channel values 2 through 4 are only for multi-track models such as Kikusui PMR series. For other cases, the Channel value must be 1.)
    h    Pass the Current Limit.

Units: Amps

Valid Ranges: Differ depending on model type

Default Value: 0.0[A]

Note:
Valid Ranges are different depending on the mode type of the connected power supply.  In most cases, the model name is explanative for max voltage and current.  For example, if using PAS 320-2, the max voltage is 320V and the max current is 2A.
     �    Pass the type of current limit behaviour.

Valid Values:
KI4800_VAL_CURRENT_REGULATE - Regulate (0)
KI4800_VAL_CURRENT_TRIP     - Trip (1)

Default Value: KI4800_VAL_CURRENT_REGULATE
    XN-   �  �    Instrument Handle                 Y#����  �    Status                            _� 3 
 �  �    Channel Name                      b^ 1g �  �    Current Limit                     c� 1 � � �    Behavior                               	           "N5!C1"    0.0               BRegulate KI4800_VAL_CURRENT_REGULATE Trip KI4800_VAL_CURRENT_TRIP    �    This function configures the Power Limit.

Note:
This function call is equivalent to setting the following ViReal64 attribute:

KI4800_ATTR_POWER_LIMIT 
     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes. 
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

    �    Pass the channel name that you want to control with this function.

Valid Channel Names:  "N1!C1" to "N35!C4"

Default Value:  "N5!C1"

Note:

The valid channel name format is a combination of NODE# and CHANNEL# as shown below:

"N<node>!C<channel>"

The <node> part represents the NODE and the <channel> part represents CHANNEL, where the power supply is actually configured. For example, if a power supply is configured at Node=5 and Channel=1, its Name will be:

"N5!C1"

The valid range for Node is 1 through 35, and the valid range for Channel is 1 through 4. (Channel values 2 through 4 are only for multi-track models such as Kikusui PMR series. For other cases, the Channel value must be 1.)
     �    Pass the Power Limit.

Units: Watts

Valid Ranges: Differ depending on model type

Default Value: 0.0[W]

Note:
This function is applied to PWR series only.
    f�-   �  �    Instrument Handle                 gh#����  �    Status                            m� 3 
 �  �    Channel Name                      p� 0 � �  �    Power Limit                            	           "N5!C1"    0.0    �    This function configures the OVP Limit.

Note:
This function call is equivalent to setting the following ViReal64 attribute:

KI4800_ATTR_OVP_LIMIT
     �    The ViSession handle that you obtain from the hpe364xa_init or hpe364xa_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the hpe364xa_error_message function.  To obtain additional information about the error condition, call the hpe364xa_GetError function.  To clear the error information from the driver, call the hpe364xa_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

    �    Pass the channel name that you want to control with this function.

Valid Channel Names:  "N1!C1" to "N35!C4"

Default Value:  "N5!C1"

Note:

The valid channel name format is a combination of NODE# and CHANNEL# as shown below:

"N<node>!C<channel>"

The <node> part represents the NODE and the <channel> part represents CHANNEL, where the power supply is actually configured. For example, if a power supply is configured at Node=5 and Channel=1, its Name will be:

"N5!C1"

The valid range for Node is 1 through 35, and the valid range for Channel is 1 through 4. (Channel values 2 through 4 are only for multi-track models such as Kikusui PMR series. For other cases, the Channel value must be 1.)
    �    Pass the OVP Limit value.

Units: Volts

Valid Ranges: Differ depending on model type

Default Value: 0.0[V]

Note:
Valid Ranges are different depending on the mode type of the connected power supply.  In most cases, the model name is explanative for max voltage and current.  For example, if using PAS 320-2, the max voltage is 320V and the max current is 2A.

Valid range for OVP is normally 10% to 110% of the full scale value for the Voltage Level.    r�-   �  �    Instrument Handle                 s�#����  �    Status                            zB 3 
 �  �    Channel Name                      } 1 � �  �    OVP Limit                              	           "N5!C1"    0.0    �    This function configures the OCP Limit.

Note:
This function call is equivalent to setting the following ViReal64 attribute:

KI4800_ATTR_OCP_LIMIT
     �    The ViSession handle that you obtain from the hpe364xa_init or hpe364xa_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the hpe364xa_error_message function.  To obtain additional information about the error condition, call the hpe364xa_GetError function.  To clear the error information from the driver, call the hpe364xa_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

    �    Pass the channel name that you want to control with this function.

Valid Channel Names:  "N1!C1" to "N35!C4"

Default Value:  "N5!C1"

Note:

The valid channel name format is a combination of NODE# and CHANNEL# as shown below:

"N<node>!C<channel>"

The <node> part represents the NODE and the <channel> part represents CHANNEL, where the power supply is actually configured. For example, if a power supply is configured at Node=5 and Channel=1, its Name will be:

"N5!C1"

The valid range for Node is 1 through 35, and the valid range for Channel is 1 through 4. (Channel values 2 through 4 are only for multi-track models such as Kikusui PMR series. For other cases, the Channel value must be 1.)
    �    Pass the OCP Limit value.

Units: Amps

Valid Ranges: Differ depending on model type

Default Value: 0.0[A]

Note:
Valid Ranges are different depending on the mode type of the connected power supply.  In most cases, the model name is explanative for max voltage and current.  For example, if using PAS 320-2, the max voltage is 320V and the max current is 2A.

Valid range for OCP is normally 10% to 110% of the full scale value for the Current Limit.    �j-   �  �    Instrument Handle                 �$#����  �    Status                            �� 3 
 �  �    Channel Name                      �y 1 � �  �    OCP Limit                              	           "N5!C1"    0.0    �    This function sets the Digital Port Outputs.

Note:
This function call is equivalent to setting the following ViInt32 attribute:

KI4800_ATTR_DIGITAL_PORT
 
     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

    �    Pass the channel name that you want to control with this function.

Valid Channel Names:  "N1!C1" to "N35!C4"

Default Value:  "N5!C1"

Note:

The valid channel name format is a combination of NODE# and CHANNEL# as shown below:

"N<node>!C<channel>"

The <node> part represents the NODE and the <channel> part represents CHANNEL, where the power supply is actually configured. For example, if a power supply is configured at Node=5 and Channel=1, its Name will be:

"N5!C1"

The valid range for Node is 1 through 35, and the valid range for Channel is 1 through 4. (Channel values 2 through 4 are only for multi-track models such as Kikusui PMR series. For other cases, the Channel value must be 1.)
     J    Pass the port data to output.

Valid Range: 0 to 255

Default Value: 0

    ��-   �  �    Instrument Handle                 ��#����  �    Status                            �, 3 
 �  �    Channel Name                      �� 3 � �  �    Port Output                            	           "N5!C1"    0    �    This function gets the Digital Port Inputs.

Note:
This function call is equivalent to getting the following ViInt32 attribute:

KI4800_ATTR_DIGITAL_PORT
 
     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

    �    Pass the channel name that you want to control with this function.

Valid Channel Names:  "N1!C1" to "N35!C4"

Default Value:  "N5!C1"

Note:

The valid channel name format is a combination of NODE# and CHANNEL# as shown below:

"N<node>!C<channel>"

The <node> part represents the NODE and the <channel> part represents CHANNEL, where the power supply is actually configured. For example, if a power supply is configured at Node=5 and Channel=1, its Name will be:

"N5!C1"

The valid range for Node is 1 through 35, and the valid range for Channel is 1 through 4. (Channel values 2 through 4 are only for multi-track models such as Kikusui PMR series. For other cases, the Channel value must be 1.)
     F    Pass the ViInt32 type variable that receives the input port data.


    ��-   �  �    Instrument Handle                 ��#����  �    Status                            �' 3 
 �  �    Channel Name                      �� 2 � �  �    Port Input                             	           "N5!C1"    	           �    This function sets the value of a ViInt32 attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
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

Default Value: none        If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  CH1 or empty

Default Value:  ""
     �    Pass the ID for a ViInt32 attribute. Valid ID symboles/values are defined in the <prefix>.h INCLUDE file as <prefix>_ATTR_xxx constants.
    �	-   �  �    Instrument Handle                 ��#����  �    Status                            �R � � �  �    Attribute Value                   �m =  �  �    Channel Name                      �| < � � �    Attribute ID                           	               ""                0   �    This function sets the value of a ViReal64 attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes. 
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
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

Default Value: none        If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  CH1 or empty

Default Value:  ""
     �    Pass the ID for a ViReal64 attribute. Valid ID symboles/values are defined in the <prefix>.h INCLUDE file as <prefix>_ATTR_xxx constants.
    �-   �  �    Instrument Handle                 ��#����  �    Status                            �b � � �  �    Attribute Value                   �} =  �  �    Channel Name                      Ō < � � �    Attribute ID                           	               ""                0   �    This function sets the value of a ViString attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes. 
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
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

Default Value: none     �    Pass the ID for a ViString attribute. Valid ID symboles/values are defined in the <prefix>.h INCLUDE file as <prefix>_ATTR_xxx constants.
        If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  CH1 or empty

Default Value:  ""
    �)-   �  �    Instrument Handle                 ��#����  �    Status                            �s � � �  �    Attribute Value                   Վ < � � �    Attribute ID                      �" =  �  �    Channel Name                           	                           0    ""   �    This function sets the value of a ViBoolean attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
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

Default Value: none        If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  CH1 or empty

Default Value:  ""
     �    Pass the ID for a ViBoolean attribute. Valid ID symboles/values are defined in the <prefix>.h INCLUDE file as <prefix>_ATTR_xxx constants.
    �;-   �  �    Instrument Handle                 ��#����  �    Status                            � � � �  �    Attribute Value                   � =  �  �    Channel Name                      � < � � �    Attribute ID                           	               ""                0   �    This function sets the value of a ViSession attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
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

Default Value: none        If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  CH1 or empty

Default Value:  ""
     �    Pass the ID for a ViSession attribute. Valid ID symboles/values are defined in the <prefix>.h INCLUDE file as <prefix>_ATTR_xxx constants.
    �M-   �  �    Instrument Handle                 �#����  �    Status                            �� � � �  �    Attribute Value                   �� =  �  �    Channel Name                      �� < � � �    Attribute ID                           	               ""                0   �    This function queries the value of a ViInt32 attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
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
    
    If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  CH1 or empty

Default Value:  ""
     �    Pass the ID for a ViInt32 attribute. Valid ID symboles/values are defined in the <prefix>.h INCLUDE file as <prefix>_ATTR_xxx constants.
    �G-   �  �    Instrument Handle                 �#����  �    Status                           � � � �  �    Attribute Value                  N =  �  �    Channel Name                     ` < � � �    Attribute ID                           	           	            ""                0   �    This function queries the value of a ViReal64 attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
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
    
    If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  CH1 or empty

Default Value:  ""
     �    Pass the ID for a ViReal64 attribute. Valid ID symboles/values are defined in the <prefix>.h INCLUDE file as <prefix>_ATTR_xxx constants.
   	�-   �  �    Instrument Handle                
�#����  �    Status                           7 � � �  �    Attribute Value                  � =  �  �    Channel Name                      < � � �    Attribute ID                           	           	           ""                0   4    This function queries the value of a ViString attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

You must provide a ViChar array to serve as a buffer for the value.  You pass the number of bytes in the buffer as the Buffer Size parameter.  If the current value of the attribute, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you want to call this function just to get the required buffer size, you can pass 0 for the Buffer Size and VI_NULL for the Attribute Value buffer.  

If you want the function to fill in the buffer regardless of the   number of bytes in the value, pass a negative number for the Buffer Size parameter.  


     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    E    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
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
    
    If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  CH1 or empty

Default Value:  ""
    �    Pass the number of bytes in the ViChar array you specify for the Attribute Value parameter.  

If the current value of the attribute, including the terminating NUL byte, contains more bytes that you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Attribute Value buffer parameter.
     �    Pass the ID for a ViString attribute. Valid ID symboles/values are defined in the <prefix>.h INCLUDE file as <prefix>_ATTR_xxx constants.
   -   �  �    Instrument Handle                �#����  �    Status or Required Size          $ � L � �    Attribute Value                  (J =  �  �    Channel Name                     )\ =� �  �    Buffer Size                      ,? < � � �    Attribute ID                           	           	            ""    512                0   �    This function queries the value of a ViBoolean attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
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
    
    If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  CH1 or empty

Default Value:  ""
     �    Pass the ID for a ViBoolean attribute. Valid ID symboles/values are defined in the <prefix>.h INCLUDE file as <prefix>_ATTR_xxx constants.
   0-   �  �    Instrument Handle                0�#����  �    Status                           7T � � �  �    Attribute Value                  9 =  �  �    Channel Name                     :& < � � �    Attribute ID                           	           	            ""                0   �    This function queries the value of a ViSession attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
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
    
    If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  CH1 or empty

Default Value:  ""
     �    Pass the ID for a ViSession attribute. Valid ID symboles/values are defined in the <prefix>.h INCLUDE file as <prefix>_ATTR_xxx constants.
   =�-   �  �    Instrument Handle                >q#����  �    Status                           E  � � �  �    Attribute Value                  F� =  �  �    Channel Name                     G� < � � �    Attribute ID                           	           	            ""                0       This function returns the OP-type, through which the power supply module is connected

--------------------

For example, if the power supply instrument represented by the Output object is connected to the PIA4810 main unit through the OP01-PIA adapter, this property returns the OP-type code for the OP01-PIA (= 0x01). If the power supply is the model PAS40-9 digitally connected with a TP-BUS cable, this property returns the OP-type code for the PAS series (= 0x22).

Depending on the OP-type, functions provided by methods and properties are different. For example, reading the Enabled property and invoking the QueryState are restricted on some OP-types. Other than these, there are some model-specific or OP-type-specific features.

Currently the following OP-type codes are supported:
0x01 - Connected through OP01-PIA
0x02 - Connected through OP02-PIA
0x11 - Digitally connected as PMR series
0x21 - Digitally connected as PAM series
0x22 - Digitally connected as PAS series
0x23 - Digitally connected as PWR series

     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

    �    Pass the channel name that you want to control with this function.

Valid Channel Names:  "N1!C1" to "N35!C4"

Default Value:  "N5!C1"

Note:

The valid channel name format is a combination of NODE# and CHANNEL# as shown below:

"N<node>!C<channel>"

The <node> part represents the NODE and the <channel> part represents CHANNEL, where the power supply is actually configured. For example, if a power supply is configured at Node=5 and Channel=1, its Name will be:

"N5!C1"

The valid range for Node is 1 through 35, and the valid range for Channel is 1 through 4. (Channel values 2 through 4 are only for multi-track models such as Kikusui PMR series. For other cases, the Channel value must be 1.)
     D    Pass the ViInt32 type variable that receives the OP Type value.


   M�-   �  �    Instrument Handle                Ni#����  �    Status                           T� 3 
 �  �    Channel Name                     W� 2 � �  �    OP Type                                	           "N5!C1"    	            �    This function returns the track name, which is actually the power supply model name in most cases.  As for PMR series multi-track power supply models, the track name is the power supply model name plus corresponding track information.

     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
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
3FFA4001  Current decreased to satisfy voltage requirements.
3FFA4002  Voltage decreased to satisfy current requirements.
          
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

    �    Returns the highest-level channel name that corresponds to the specific driver channel string that is in the channel table at an index you specify..

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter.  If the channel string, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass 0 for the Buffer Size, you can pass VI_NULL for this parameter.    �    Pass the number of bytes in the ViChar array you specify for the channel name parameter.

If the channel name, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies BufferSize - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Description buffer parameter.

Default Value:  None    �    Pass the channel name that you want to control with this function.

Valid Channel Names:  "N1!C1" to "N35!C4"

Default Value:  "N5!C1"

Note:

The valid channel name format is a combination of NODE# and CHANNEL# as shown below:

"N<node>!C<channel>"

The <node> part represents the NODE and the <channel> part represents CHANNEL, where the power supply is actually configured. For example, if a power supply is configured at Node=5 and Channel=1, its Name will be:

"N5!C1"

The valid range for Node is 1 through 35, and the valid range for Channel is 1 through 4. (Channel values 2 through 4 are only for multi-track models such as Kikusui PMR series. For other cases, the Channel value must be 1.)
   Y�-   �  �    Instrument Handle                Z�#����  �    Status                           cm � Q � �    Channel String                   fq 1 � �  �    BufferSize                       iM 3 
 �  �    Channel Name                           	           	            16    "N5!C1"   Q    This function returns whether the power supply is in a particular output state.

See the Output State parameter help for what kind of output state can be checked.

When a protection operation was reported, the instrument generates an ALARM. You can reset the protection/alarm state by using <prefix>_ResetOutputProtection() function.

     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes. 
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

    �    Pass the channel name that you want to control with this function.

Valid Channel Names:  "N1!C1" to "N35!C4"

Default Value:  "N5!C1"

Note:

The valid channel name format is a combination of NODE# and CHANNEL# as shown below:

"N<node>!C<channel>"

The <node> part represents the NODE and the <channel> part represents CHANNEL, where the power supply is actually configured. For example, if a power supply is configured at Node=5 and Channel=1, its Name will be:

"N5!C1"

The valid range for Node is 1 through 35, and the valid range for Channel is 1 through 4. (Channel values 2 through 4 are only for multi-track models such as Kikusui PMR series. For other cases, the Channel value must be 1.)
    �    Pass the output state for which you want to query.

Valid Values:
KI4800_VAL_OUTPUT_CONSTANT_VOLTAGE - Constant Voltage State
KI4800_VAL_OUTPUT_CONSTANT_CURRENT - Constant Current State
KI4800_VAL_OUTPUT_OVER_VOLTAGE - Over-voltage State
KI4800_VAL_OUTPUT_OVER_CURRENT - Over-current State
KI4800_VAL_OUTPUT_UNREGULATED - Unregulated State
KI4800_VAL_OUTPUT_CONSTANT_POWER - Constant Power State

Default Value:
KI4800_VAL_OUTPUT_CONSTANT_VOLTAGE
     �    This parameter returns VI_TRUE if the power supply is currently in the state you specify with the outputState parameter, and VI_FALSE if it is not.
   n�-   �  �    Instrument Handle                o\#����  �    Status                           u� 3 
 �  �    Channel Name                     x� 3 � � �    Output State                     z{ 3� �  �    In State                               	           "N5!C1"              Constant Voltage KI4800_VAL_OUTPUT_CONSTANT_VOLTAGE Constant Current KI4800_VAL_OUTPUT_CONSTANT_CURRENT Over Voltage KI4800_VAL_OUTPUT_OVER_VOLTAGE Over Current KI4800_VAL_OUTPUT_OVER_CURRENT Unregulated KI4800_VAL_OUTPUT_UNREGULATED Constant Power KI4800_VAL_OUTPUT_CONSTANT_POWER    	            K    This function queries the min/max programmable values for Voltage Level.
     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes. 
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

    �    Pass the channel name that you want to control with this function.

Valid Channel Names:  "N1!C1" to "N35!C4"

Default Value:  "N5!C1"

Note:

The valid channel name format is a combination of NODE# and CHANNEL# as shown below:

"N<node>!C<channel>"

The <node> part represents the NODE and the <channel> part represents CHANNEL, where the power supply is actually configured. For example, if a power supply is configured at Node=5 and Channel=1, its Name will be:

"N5!C1"

The valid range for Node is 1 through 35, and the valid range for Channel is 1 through 4. (Channel values 2 through 4 are only for multi-track models such as Kikusui PMR series. For other cases, the Channel value must be 1.)
     R    Pass a ViReal64 variable that receives the minimum value for the queried item.

     R    Pass a ViReal64 variable that receives the maximum value for the queried item.

   }�-   �  �    Instrument Handle                ~#����  �    Status                           � 3 
 �  �    Channel Name                     �� 3� �  �    Min Value                        �/ z� �  �    Max Value                              	           "N5!C1"    	           	           K    This function queries the min/max programmable values for Current Limit.
     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes. 
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

    �    Pass the channel name that you want to control with this function.

Valid Channel Names:  "N1!C1" to "N35!C4"

Default Value:  "N5!C1"

Note:

The valid channel name format is a combination of NODE# and CHANNEL# as shown below:

"N<node>!C<channel>"

The <node> part represents the NODE and the <channel> part represents CHANNEL, where the power supply is actually configured. For example, if a power supply is configured at Node=5 and Channel=1, its Name will be:

"N5!C1"

The valid range for Node is 1 through 35, and the valid range for Channel is 1 through 4. (Channel values 2 through 4 are only for multi-track models such as Kikusui PMR series. For other cases, the Channel value must be 1.)
     R    Pass a ViReal64 variable that receives the minimum value for the queried item.

     R    Pass a ViReal64 variable that receives the maximum value for the queried item.

   �-   �  �    Instrument Handle                ��#����  �    Status                           �b 3 
 �  �    Channel Name                     �( 3� �  �    Min Value                        �� z� �  �    Max Value                              	           "N5!C1"    	           	           I    This function queries the min/max programmable values for Power Limit.
     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes. 
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

    �    Pass the channel name that you want to control with this function.

Valid Channel Names:  "N1!C1" to "N35!C4"

Default Value:  "N5!C1"

Note:

The valid channel name format is a combination of NODE# and CHANNEL# as shown below:

"N<node>!C<channel>"

The <node> part represents the NODE and the <channel> part represents CHANNEL, where the power supply is actually configured. For example, if a power supply is configured at Node=5 and Channel=1, its Name will be:

"N5!C1"

The valid range for Node is 1 through 35, and the valid range for Channel is 1 through 4. (Channel values 2 through 4 are only for multi-track models such as Kikusui PMR series. For other cases, the Channel value must be 1.)
     R    Pass a ViReal64 variable that receives the minimum value for the queried item.

     R    Pass a ViReal64 variable that receives the maximum value for the queried item.

   �i-   �  �    Instrument Handle                �##����  �    Status                           �� 3 
 �  �    Channel Name                     �y 3� �  �    Min Value                        �� z� �  �    Max Value                              	           "N5!C1"    	           	          a    This function resets the power supply's output protection after an protection (ALARM) state.

Note:
(1)You can use the <prefix>_QueryOutputState function to determine if the power supply is in a protection state.

(2)DSP-related protections require the instrument to be rebooted to reset the protection and therefore cannot be reset by this function.
     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
         
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes. 
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

    �    Pass the channel name that you want to control with this function.

Valid Channel Names:  "N1!C1" to "N35!C4"

Default Value:  "N5!C1"

Note:

The valid channel name format is a combination of NODE# and CHANNEL# as shown below:

"N<node>!C<channel>"

The <node> part represents the NODE and the <channel> part represents CHANNEL, where the power supply is actually configured. For example, if a power supply is configured at Node=5 and Channel=1, its Name will be:

"N5!C1"

The valid range for Node is 1 through 35, and the valid range for Channel is 1 through 4. (Channel values 2 through 4 are only for multi-track models such as Kikusui PMR series. For other cases, the Channel value must be 1.)
   ��-   �  �    Instrument Handle                ��#����  �    Status                           � 3 
 �  �    Channel Name                           	           "N5!C1"    K    This function initiates a new measurement and queries a measurement data.     �    Pass a measurement item you want to query.

Valid Values:

KI4800_VAL_MEASURE_CURRENT           0
KI4800_VAL_MEASURE_VOLTAGE           1

Default Value: KI4800_VAL_MEASURE_CURRENT
    !    Returns the measured value.

Units: 

volts (for voltage measurement)
amps  (for current measurement)
watts (for power measurement)
volt-amps (for apparent power measurement)
volt-amps-reactive (for reactive power measurement)

No units applied to current crest-factor and power-factor.
     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

    �    Pass the channel name that you want to control with this function.

Valid Channel Names:  "N1!C1" to "N35!C4"

Default Value:  "N5!C1"

Note:

The valid channel name format is a combination of NODE# and CHANNEL# as shown below:

"N<node>!C<channel>"

The <node> part represents the NODE and the <channel> part represents CHANNEL, where the power supply is actually configured. For example, if a power supply is configured at Node=5 and Channel=1, its Name will be:

"N5!C1"

The valid range for Node is 1 through 35, and the valid range for Channel is 1 through 4. (Channel values 2 through 4 are only for multi-track models such as Kikusui PMR series. For other cases, the Channel value must be 1.)
   �� 3 � � �    Measurement Type                 �� 3� �  �    Measurement                      ��-   �  �    Instrument Handle                ��#����  �    Status                           � 3 
 �  �    Channel Name                                  FCurrent KI4800_VAL_MEASURE_CURRENT Voltage KI4800_VAL_MEASURE_VOLTAGE    	               	           "N5!C1"    Z    This function runs the instrument's self test routine and returns the test result(s). 

    �    This control contains the value returned from the instrument self test.  Zero means success.  For any other code, see the device's operator's manual.

Self-Test Code    Description
---------------------------------------
   0              Passed self test
   non-zero       Self test failed 


Note:
Use ErrorQuery() function to retrieve SCPI instrument error codes if non-zero value is returned by self-test.

     �    Returns the self-test response string from the instrument. See the device's operation manual for an explanation of the string's contents.

You must pass a ViChar array with at least 256 bytes.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   �� =  �  �    Self Test Result                 �p = � � ,    Self-Test Message                �:#����  �    Status                           ��-   �  �    Instrument Handle                  	           	            	              &    This function resets the instrument to a known state and sends initialization commands to the instrument.  The initialization commands set instrument settings such as Headers Off, Short Command form, and Data Transfer Binary to the state necessary for the operation of the instrument driver.
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes. 
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   ȭ#����  �    Status                           �=-   �  �    Instrument Handle                  	                  This function resets the instrument and applies initial user specified settings from the Logical Name which was used to initialize the session.  If the session was created without a Logical Name, this function is equivalent to the hpe364xa_reset function.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
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
3FFA4001  Current decreased to satisfy voltage requirements.
3FFA4002  Voltage decreased to satisfy current requirements.
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   �z#����  �    Status                           �t-   �  �    Instrument Handle                  	               �    This function places the instrument in a quiescent state where it has minimal or no impact on the system to which it is connected.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
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
3FFA4001  Current decreased to satisfy voltage requirements.
3FFA4002  Voltage decreased to satisfy current requirements.
          
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
     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   �4#����  �    Status                           �/-   �  �    Instrument Handle                  	               `    This function returns the revision numbers of the instrument driver and instrument firmware.

     �    Returns the instrument driver software revision numbers in the form of a string.

You must pass a ViChar array with at least 256 bytes.     �    Returns the instrument firmware revision numbers in the form of a string.

You must pass a ViChar array with at least 256 bytes.
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   �� = 3 �  �    Instrument Driver Revision       �\ =6 �  �    Firmware Revision                ��#����  �    Status                           �v-   �  �    Instrument Handle                  	            	            	               V    This function reads an error code and a message from the instrument's error queue.

     B    Returns the error code read from the instrument's error queue.

     �    Returns the error message string read from the instrument's error message queue.

You must pass a ViChar array with at least 256 bytes.
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes. 
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   � =  �  �    Error Code                       �� = � � ,    Error Message                    �f#����  �    Status                           ��-   �  �    Instrument Handle                  	            	            	               n    This function converts a status code returned by an instrument driver function into a user-readable string.     $�    Pass the Status parameter that is returned from any of the instrument driver functions.
          
Default Value:  0  (VI_SUCCESS)
          

IviPower Status Codes:
Status    Description
-------------------------------------------------
ERRORS:
BFFA1001  The trigger source is not software trigger.

IVI Engine Status Codes:
Status    Description
-------------------------------------------------
ERRORS:
BFFA0001  Instrument error. Call <prefix>_error_query.
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
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

        The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

You can pass VI_NULL for this parameter.  This is useful when one of the initialize functions fail.

Default Value:  VI_NULL
   �" =  �  h    Error Code                       � = � � �    Error Message                    c#����  �    Status                           !�-   �  �    Instrument Handle                  0    	            	           VI_NULL    P    This function invalidates the cached values of all attributes for the session.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
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
3FFA4001  Current decreased to satisfy voltage requirements.
3FFA4002  Voltage decreased to satisfy current requirements.
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   $h#����  �    Status                           +b-   �  �    Instrument Handle                  	              b    This function returns the highest-level channel name that corresponds to the specific driver channel string that is in the channel table at an index you specify.  By passing 0 for the buffer size, the caller can ascertain the buffer size required to get the entire channel name string and then call the function again with a sufficiently large buffer.
     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
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
3FFA4001  Current decreased to satisfy voltage requirements.
3FFA4002  Voltage decreased to satisfy current requirements.
          
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

     <    A 1-based index into the channel table.

Default Value: 1
    �    Returns the highest-level channel name that corresponds to the specific driver channel string that is in the channel table at an index you specify..

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter.  If the channel string, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass 0 for the Buffer Size, you can pass VI_NULL for this parameter.    �    Pass the number of bytes in the ViChar array you specify for the channel name parameter.

If the channel name, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies BufferSize - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Description buffer parameter.

Default Value:  None   . -   �  �    Instrument Handle                .�#����  �    Status                           7r = Q �  �    Index                            7� � Q � �    Channel String                   :� =@ �  �    BufferSize                             	           1    	            16   �    This function retrieves and then clears the IVI error information for the session or the current execution thread. One exception exists: If the BufferSize parameter is 0, the function does not clear the error information. By passing 0 for the buffer size, the caller can ascertain the buffer size required to get the entire error description string and then call the function again with a sufficiently large buffer.

If the user specifies a valid IVI session for the InstrumentHandle parameter, Get Error retrieves and then clears the error information for the session.  If the user passes VI_NULL for the InstrumentHandle parameter, this function retrieves and then clears the error information for the current execution thread.  If the InstrumentHandle parameter is an invalid session, the function does nothing and returns an error. Normally, the error information describes the first error that occurred since the user last called <prefix>_GetError or <prefix>_ClearError.
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
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
3FFA4001  Current decreased to satisfy voltage requirements.
3FFA4002  Voltage decreased to satisfy current requirements.
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Pass the number of bytes in the ViChar array you specify for the Description parameter.

If the error description, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies BufferSize - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Description buffer parameter.

Default Value:  None     �    Returns the error code for the session or execution thread.

If you pass 0 for the Buffer Size, you can pass VI_NULL for this parameter.
    �    Returns the error description for the IVI session or execution thread.  If there is no description, the function returns an empty string.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter.  If the error description, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass 0 for the Buffer Size, you can pass VI_NULL for this parameter.   B�#����  �    Status                           KY-   �  �    Instrument Handle                L => �  �    BufferSize                       N� = Q �  �    Code                             O� � Q � �    Description                        	                   	           	           e    This function clears the error code and error description for the IVI session. If the user specifies a valid IVI session for the instrument_handle parameter, this function clears the error information for the session. If the user passes VI_NULL for the Vi parameter, this function clears the error information for the current execution thread. If the Vi parameter is an invalid session, the function does nothing and returns an error.
The function clears the error code by setting it to VI_SUCCESS.  If the error description string is non-NULL, the function de-allocates the error description string and sets the address to VI_NULL.

Maintaining the error information separately for each thread is useful if the user does not have a session handle to pass to the <prefix>_GetError function, which occurs when a call to <prefix>_Init or <prefix>_InitWithOptions fails.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
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
3FFA4001  Current decreased to satisfy voltage requirements.
3FFA4002  Voltage decreased to satisfy current requirements.
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   W$#����  �    Status                           ^-   �  �    Instrument Handle                  	              :    This function obtains a multithread lock on the instrument session.  Before it does so, it waits until all other execution threads have released their locks on the instrument session.

Other threads might have obtained a lock on this session in the following ways:

- The user's application called <prefix>_LockSession.

- A call to the instrument driver locked the session.

- A call to the IVI engine locked the session.

After your call to <prefix>_LockSession returns successfully, no other threads can access the instrument session until you call <prefix>_UnlockSession.

Use <prefix>_LockSession and <prefix>_UnlockSession around a sequence of calls to instrument driver functions if you require that the instrument retain its settings through the end of the sequence.

You can safely make nested calls to <prefix>_LockSession within the same thread.  To completely unlock the session, you must balance each call to <prefix>_LockSession with a call to <prefix>_UnlockSession.  If, however, you use the Caller Has Lock parameter in all calls to <prefix>_LockSession and <prefix>_UnlockSession within a function, the IVI Library locks the session only once within the function regardless of the number of calls you make to <prefix>_LockSession.  This allows you to call <prefix>_UnlockSession just once at the end of the function. 
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    This parameter serves as a convenience.  If you do not want to use this parameter, pass VI_NULL. 

Use this parameter in complex functions to keep track of whether you obtain a lock and therefore need to unlock the session.  Pass the address of a local ViBoolean variable.  In the declaration of the local variable, initialize it to VI_FALSE.  Pass the address of the same local variable to any other calls you make to <prefix>_LockSession or <prefix>_UnlockSession in the same function.

The parameter is an input/output parameter.  <prefix>_LockSession and <prefix>_UnlockSession each inspect the current value and take the following actions:

- If the value is VI_TRUE, <prefix>_LockSession does not lock the session again.  If the value is VI_FALSE, <prefix>_LockSession obtains the lock and sets the value of the parameter to VI_TRUE.

- If the value is VI_FALSE, <prefix>_UnlockSession does not attempt to unlock the session.  If the value is VI_TRUE, <prefix>_UnlockSession releases the lock and sets the value of the parameter to VI_FALSE.
 
Thus, you can, call <prefix>_UnlockSession at the end of your function without worrying about whether you actually have the lock.  

Example:

ViStatus TestFunc (ViSession vi, ViInt32 flags)
{
    ViStatus error = VI_SUCCESS;
    ViBoolean haveLock = VI_FALSE;

    if (flags & BIT_1)
        {
        viCheckErr( <prefix>_LockSession(vi, &haveLock));
        viCheckErr( TakeAction1(vi));
        if (flags & BIT_2)
            {
            viCheckErr( <prefix>_UnlockSession(vi, &haveLock));
            viCheckErr( TakeAction2(vi));
            viCheckErr( <prefix>_LockSession(vi, &haveLock);
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
    <prefix>_UnlockSession(vi, &haveLock);
    return error;
}   d�#����  �    Status                           k#-   �  �    Instrument Handle                k� H � �  �    Caller Has Lock                    	               	            �    This function releases a lock that you acquired on an instrument session using <prefix>_LockSession.  Refer to <prefix>_LockSession for additional information on session locks.
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    This parameter serves as a convenience.  If you do not want to use this parameter, pass VI_NULL. 

Use this parameter in complex functions to keep track of whether you obtain a lock and therefore need to unlock the session. 
Pass the address of a local ViBoolean variable.  In the declaration of the local variable, initialize it to VI_FALSE.  Pass the address of the same local variable to any other calls you make to <prefix>_LockSession or <prefix>_UnlockSession in the same function.

The parameter is an input/output parameter.  <prefix>_LockSession and <prefix>_UnlockSession each inspect the current value and take the following actions:

- If the value is VI_TRUE, <prefix>_LockSession does not lock the session again.  If the value is VI_FALSE, <prefix>_LockSession obtains the lock and sets the value of the parameter to VI_TRUE.

- If the value is VI_FALSE, <prefix>_UnlockSession does not attempt to unlock the session.  If the value is VI_TRUE, <prefix>_UnlockSession releases the lock and sets the value of the parameter to VI_FALSE.
 
Thus, you can, call <prefix>_UnlockSession at the end of your function without worrying about whether you actually have the lock.  

Example:

ViStatus TestFunc (ViSession vi, ViInt32 flags)
{
    ViStatus error = VI_SUCCESS;
    ViBoolean haveLock = VI_FALSE;

    if (flags & BIT_1)
        {
        viCheckErr( <prefix>_LockSession(vi, &haveLock));
        viCheckErr( TakeAction1(vi));
        if (flags & BIT_2)
            {
            viCheckErr( <prefix>_UnlockSession(vi, &haveLock));
            viCheckErr( TakeAction2(vi));
            viCheckErr( <prefix>_LockSession(vi, &haveLock);
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
    <prefix>_UnlockSession(vi, &haveLock);
    return error;
}   u##����  �    Status                           {�-   �  �    Instrument Handle                |l H � �  �    Caller Has Lock                    	               	            �    This function writes a user-specified string to the instrument.

Note:  This function bypasses IVI attribute state caching.  Therefore, when you call this function, the cached values for all attributes will be invalidated.     2    Pass the string to be written to the instrument.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes. 
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   �� A � �  �    Write Buffer                     �#����  �    Status                           ��-   �  �    Instrument Handle                      	               /    This function reads data from the instrument.     c    After this function executes, this parameter contains the data that was read from the instrument.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes. 
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     �    Pass the maximum number of bytes to read from the instruments.  

Valid Range:  0 to the number of elements in the Read Buffer.

Default:  0

     ^    Returns the number of bytes actually read from the instrument and stored in the Read Buffer.   �M @ �  �    Read Buffer                      ��#����  �    Status                           �H-   �  �    Instrument Handle                � @ C �  �    Number of Bytes To Read          �� �' �  �    Num Bytes Read                     	            	               0    	           �    This function performs the following operations:

- Closes the instrument I/O session.

- Destroys the instrument driver session and all of its attributes.

- Deallocates any memory resources the driver uses.

Notes:

(1) You must unlock the session before calling hpe364xa_close.

(2) After calling <prefix>_close, you cannot use the instrument driver again until you call <prefix>_init or <prefix>_InitWithOptions.

    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the <prefix>_error_message function.  To obtain additional information about the error condition, call the <prefix>_GetError function.  To clear the error information from the driver, call the <prefix>_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
No defined status codes.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA2000 to 3FFA3FFF     IviPower Warnings
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA2000 to BFFA3FFF     IviPower Errors
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors

     �    The ViSession handle that you obtain from the <prefix>_init or <prefix>_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   ��#����  �    Status                           �q-   �  �    Instrument Handle                  	            ����         �               K.        init                                                                                                                                    ����         �  :�             K.        InitWithOptions                                                                                                                         ����         =  I4             K.        ConfigureOutputEnabled                                                                                                                  ����         J5  Vc             K.        ConfigureVoltageLevel                                                                                                                   ����         WY  d�             K.        ConfigureCurrentLimit                                                                                                                   ����         f  qe             K.        ConfigurePowerLimit                                                                                                                     ����         r[  ~�             K.        ConfigureOVPLimit                                                                                                                       ����         �  �F             K.        ConfigureOCPLimit                                                                                                                       ����         �<  �D             K.        OutputDigitalPort                                                                                                                       ����         �8  �;             K.        InputDigitalPort                                                                                                                        ����         �6  �             K.        SetAttributeViInt32                                                                                                                     ����         �D  �              K.        SetAttributeViReal64                                                                                                                    ����         �U  �1             K.        SetAttributeViString                                                                                                                    ����         �f  �C             K.        SetAttributeViBoolean                                                                                                                   ����         �x  �U             K.        SetAttributeViSession                                                                                                                   ����         �� �             K.        GetAttributeViInt32                                                                                                                     ����        0 �             K.        GetAttributeViReal64                                                                                                                    ����        � ,�             K.        GetAttributeViString                                                                                                                    ����        .L :�             K.        GetAttributeViBoolean                                                                                                                   ����        ;� Hg             K.        GetAttributeViSession                                                                                                                   ����        I� X
             K.        QueryOPType                                                                                                                             ����        Y l             K.        QueryTrackName                                                                                                                          ����        mI {             K.        QueryOutputState                                                                                                                        ����        }r ��             K.        QueryVoltageLevelMinMax                                                                                                                 ����        �� ��             K.        QueryCurrentLimitMinMax                                                                                                                 ����        � �-             K.        QueryPowerLimitMinMax                                                                                                                   ����        �i ��             K.        ResetOutputProtection                                                                                                                   ����        �� ��             K.        Measure                                                                                                                                 ����        �i ƃ             K.        self_test                                                                                                                               ����        � ��             K.        reset                                                                                                                                   ����        �q �.             K.        ResetWithDefaults                                                                                                                       ����        ٨ ��             K.        Disable                                                                                                                                 ����        �c �0             K.        revision_query                                                                                                                          ����        �, ��             K.        error_query                                                                                                                             ����        �� #             K.        error_message                                                                                                                           ����        $ ,             K.        InvalidateAllAttributes                                                                                                                 ����        ,� =�             K.        GetChannelName                                                                                                                          ����        >� R�             K.        GetError                                                                                                                                ����        S� ^�             K.        ClearError                                                                                                                              ����        _R s�             K.        LockSession                                                                                                                             ����        th �<             K.        UnlockSession                                                                                                                           ����        �� �c             K.        WriteInstrData                                                                                                                          ����        � �              K.        ReadInstrData                                                                                                                           ����        �6 �+             K.        close                                                                                                                                                                                                                              �Initialize                                                                           �Initialize With Options                                                             �Configuration                                                                       �Output                                                                               �Configure Output Enabled                                                             �Configure Voltage Level                                                              �Configure Current Limit                                                              �Configure Power Limit                                                                �Configure OVP Limit                                                                  �Configure OCP Limit                                                                 Miscellaneous                                                                        �Output Digital Port                                                                  �Input Digital Port                                                                  iSet/Get Attribute                                                                   �Set Attribute                                                                        �Set Attribute ViInt32                                                                �Set Attribute ViReal64                                                               �Set Attribute ViString                                                               �Set Attribute ViBoolean                                                              �Set Attribute ViSession                                                             BGet Attribute                                                                        �Get Attribute ViInt32                                                                �Get Attribute ViReal64                                                               �Get Attribute ViString                                                               �Get Attribute ViBoolean                                                              �Get Attribute ViSession                                                             �Action/Status                                                                        �Query OP Type                                                                        �Query Track Name                                                                     �Query Output State                                                                   �Query Voltage Level Min Max                                                          �Query Current Limit Min Max                                                          �Query Power Limit Min Max                                                            �Reset Output Protection                                                              �Measure                                                                             9Utility                                                                              �Self-Test                                                                            �Reset                                                                                �Reset With Defaults                                                                  �Disable                                                                              �Revision Query                                                                       �Error-Query                                                                          �Error Message                                                                        �Invalidate All Attributes                                                            �Get Channel Name                                                                    �Error                                                                                �Get Error                                                                            �Clear Error                                                                         �Locking                                                                              �Lock Session                                                                         �Unlock Session                                                                      mInstrument I/O                                                                       �Write Instrument Data                                                                �Read Instrument Data                                                                 �Close                                                                           