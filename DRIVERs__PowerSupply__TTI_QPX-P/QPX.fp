s��        �[   M ��  ,�   �   ����                               QPX                             QPX DC Power Supply                                                                                   � � ��ViInt16  �  � ��ViInt32  � � ��ViReal64     � ��ViRsrc     	� 	��ViBoolean     	� 	��ViSession     � ��ViStatus     �  ViChar[]     � ��ViChar     � ��ViString     	�  ViInt16[]     	�  ViInt32[]     
�  	ViReal64[]     � 	 
ViBoolean[]     � ��ViConstString     � ��ViAttr  �    This instrument driver provides programming support for the Thurlby-Thandar QPX Series PSU.  The driver contains all the functions that IVI and VXIplug&play require.  In addition, the driver contains high-level functions that configure the power supply and generate output in a single operation.  The driver also contains lower level functions that configure the power supply and initiate the output changes in separate operations.   

Note:  This driver requires the VISA and IVI libraries.  
     �    This class contains functions that configure the instrument.  The class includes high-level functions that configure multiple instrument settings as well as low-level functions that set, get, and check individual attribute values.
     ;    This class contains functions for configuring the output.     T    This class contains sub-classes for the set, get, and check attribute functions.       �    This class contains functions that set an attribute to a new value.  There are typesafe functions for each attribute data type.     �    This class contains functions that obtain the current value of an attribute.  There are typesafe functions for each attribute data type.     �    This class contains functions that obtain the current value of an attribute.  There are typesafe functions for each attribute data type.     L    This class contains high-level functions for measuring the output signal.      ]    This class contains functions that initiate instrument operations and report their status.
    _    This class contains functions and sub-classes that control common instrument operations.  These functions include many of functions that VXIplug&play require, such as reset, self-test, revision query, error query, and error message.  This class also contains functions that access IVI error infomation, lock the session, and perform instrument I/O.
     J    This class contains functions that retrieve interchangeability warnings.     R    This class contains functions that retrieve and clear the IVI error information.     ?    This class contains functions that retrieve coercion records.     k    This class contains functions that lock and unlock IVI instrument driver sessions for multithread safefy.     F    This class contains functions that send and receive instrument data.    ;    This function performs the following initialization actions:

- Creates a new IVI instrument driver session.

- Opens a session to the specified device using the interface and address you specify for the Resource Name parameter.

- If the ID Query parameter is set to VI_TRUE, this function queries the instrument ID and checks that it is valid for this instrument driver.

- If the Reset parameter is set to VI_TRUE, this function resets the instrument to a known state.

- Sends initialization commands to set the instrument to the state necessary for the operation of the instrument driver.

- Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Note:  This function creates a new session each time you invoke it. Although you can open more than one IVI session for the same resource, it is best not to do so.  You can use the same session in multiple program threads.  You can use the QPX_LockSession and QPX_UnlockSession functions to protect sections of code that require exclusive access to the resource.

        Pass the resource name of the device to initialize.

You can also pass the name of a virtual instrument or logical name that you configure with the IVI Configuration utility.  The virtual instrument identifies a specific device and specifies the initial settings for the session.  A logical Name identifies a particular virtual instrument.

Refer to the following table below for the exact grammar to use for this parameter.  Optional fields are shown in square brackets ([]).

Syntax
------------------------------------------------------
GPIB[board]::<primary address>[::secondary address]::INSTR
VXI[board]::<logical address>::INSTR
GPIB-VXI[board]::<logical address>::INSTR
ASRL<port>::INSTR
<LogicalName>
[VInstr->]<VirtualInstrument>

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
"VInstr->xyz432" - Virtual Instrument "xyz432"
"xyz432" - Logical Name or Virtual Instrument "xyz432"

Default Value:  "ASRL1::INSTR"

Note: You specify the resource name with the "VInstr->" if you have the logical name that is the same as the virtual instrument name and you want to explicitly use the virtual instrument name. Otherwise, the driver uses the logical name.        Specify whether you want the instrument driver to perform an ID Query.

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

(2) Avoid creating multiple concurrent sessions to the same physical instrument.  Although you can create more than one IVI session for the same resource, it is best not to do so.  A better approach is to use the same IVI session in multiple execution threads.  You can use functions QPX_LockSession and QPX_UnlockSession to protect sections of code that require exclusive access to the resource.

    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors
        
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

    ^ =   �  �    Resource Name                     v : �       ID Query                          � =� �       Reset Device                      ; �C �  �    Instrument Handle                 �#����  �    Status                          ����  ��                                            "ASRL1::INSTR"   Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	           XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   (    This function performs the following initialization actions:

- Creates a new IVI instrument driver and optionally sets the initial state of the following session attributes:

    QPX_ATTR_RANGE_CHECK         
    QPX_ATTR_QUERY_INSTR_STATUS  
    QPX_ATTR_CACHE               
    QPX_ATTR_SIMULATE            
    QPX_ATTR_RECORD_COERCIONS    

- Opens a session to the specified device using the interface and address you specify for the Resource Name parameter.

- If the ID Query parameter is set to VI_TRUE, this function queries the instrument ID and checks that it is valid for this instrument driver.

- If the Reset parameter is set to VI_TRUE, this function resets the instrument to a known state.

- Sends initialization commands to set the instrument to the state necessary for the operation of the instrument driver.

- Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Note:  This function creates a new session each time you invoke it. Although you can open more than one IVI session for the same resource, it is best not to do so.  You can use the same session in multiple program threads.  You can use the QPX_LockSession and QPX_UnlockSession functions to protect sections of code that require exclusive access to the resource.

        Pass the resource name of the device to initialize.

You can also pass the name of a virtual instrument or logical name that you configure with the IVI Configuration utility.  The virtual instrument identifies a specific device and specifies the initial settings for the session.  A logical Name identifies a particular virtual instrument.

Refer to the following table below for the exact grammar to use for this parameter.  Optional fields are shown in square brackets ([]).

Syntax
------------------------------------------------------
GPIB[board]::<primary address>[::secondary address]::INSTR
VXI[board]::<logical address>::INSTR
GPIB-VXI[board]::<logical address>::INSTR
ASRL<port>::INSTR
<LogicalName>
[VInstr->]<VirtualInstrument>

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
"VInstr->xyz432" - Virtual Instrument "xyz432"
"xyz432" - Logical Name or Virtual Instrument "xyz432"

Default Value:  "ASRL1::INSTR"

Note: You specify the resource name with the "VInstr->" if you have the logical name that is the same as the virtual instrument name and you want to explicitly use the virtual instrument name. Otherwise, the driver uses the logical name.        Specify whether you want the instrument driver to perform an ID Query.

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

(2) Avoid creating multiple concurrent sessions to the same physical instrument.  Although you can create more than one IVI session for the same resource, it is best not to do so.  A better approach is to use the same IVI session in multiple execution threads.  You can use functions QPX_LockSession and QPX_UnlockSession to protect sections of code that require exclusive access to the resource.

    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

    �    You can use this control to set the initial value of certain attributes for the session.  The following table lists the attributes and the name you use in this parameter to identify the attribute.

Name              Attribute Defined Constant   
--------------------------------------------
RangeCheck        QPX_ATTR_RANGE_CHECK
QueryInstrStatus  QPX_ATTR_QUERY_INSTR_STATUS   
Cache             QPX_ATTR_CACHE   
Simulate          QPX_ATTR_SIMULATE  
RecordCoercions   QPX_ATTR_RECORD_COERCIONS

The format of this string is, "AttributeName=Value" where AttributeName is the name of the attribute and Value is the value to which the attribute will be set.  To set multiple attributes, separate their assignments with a comma.

If you pass NULL or an empty string for this parameter and a VISA resource descriptor for the Resource Name parameter, the session uses the default values for the attributes. The default values for the attributes are shown below:

    Attribute Name     Default Value
    ----------------   -------------
    RangeCheck         VI_TRUE
    QueryInstrStatus   VI_TRUE
    Cache              VI_TRUE
    Simulate           VI_FALSE
    RecordCoercions    VI_FALSE
    

If you pass NULL or an empty string for this parameter and a virtual instrument or logical name for the Resource Name parameter, the session uses the values that you configure for virtual instrument or logical name with the IVI Configuration utility.

You can override the values of the attributes by assigning a value explicitly in a string you pass for this parameter.  You do not have to specify all of the attributes and may leave any of them out.  If you do not specify one of the attributes, its default value or the value that you configure with the IVI Configuration utility will be used.

The following are the valid values for ViBoolean attributes:

    True:     1, TRUE, or VI_TRUE
    False:    0, False, or VI_FALSE


Default Value:
"Simulate=0,RangeCheck=1,QueryInstrStatus=1,Cache=1"
    * =   �  �    Resource Name                     2 : �       ID Query                          4$ =� �       Reset Device                      4� �Y �  �    Instrument Handle                 7�#����  �    Status                          ����   P��                                           =s �  � �    Option String                   ����  %��                                            "ASRL1::INSTR"   Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	           FCopyright 1998 National Instruments Corporation. All Rights Reserved.    5"Simulate=0,RangeCheck=1,QueryInstrStatus=1,Cache=1"    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    Z    Sets the operating mode of the power supply. Only valid for dual output power supplies.
     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    Pass the name of the channel you want to enable or disable.

Valid Channel Names:  depends on model, see instruction manual

Default Value:  "1"
    �    

Valid Values: 0 to 4 (Depends on model, see instruction manual)

0  Output V2 tracks V1 at a fixed ratio 5% to 2000%
The ratio is set on entry to this mode and this mode can only be entered if both V1 and V2
are set to at least 1V. This is the only mode where the �RATIO� and �RATIO?� commands
are legal.

1  Unused
This mode is reserved for single output power supplies.

2  Dual Output Unlinked.
In this mode the two outputs are independant of each other. Only in this mode are
commands that directly set V2 allowed. i.e. �V2�, �V2V�, �DECV2�, �DECV2V�, �INCV2�,
�INCV2V� and �DELTAV2�

3  Track voltage and Current (Displaying combined voltage)
This mode in intended to be a pseudo series mode. This mode can only be entered when
both outputs are off.The ouputs are not connected together internally. It is upto the user to
wire the outpus as required. In this mode in is not possible to set V2 or I2 directly. V2 and
I2 setpoints will allways match V1 and I1 setpoints.

4  Track voltage and Current (Displaying combined current)
This mode in intended to be a pseudo paralell mode. This mode can only be entered when
both outputs are off.The ouputs are not connected together internally. It is upto the user to
wire the outpus as required. In this mode in is not possible to set V2 or I2 directly. V2 and
I2 setpoints will allways match V1 and I1 setpoints.


Default Value: 1 (QPX1200)
               2 (QPX600D)


    H�   �  �    Instrument Handle                 I@����  �    Status                            O! %  �  �    Channel Name                      O� % � �,    trackingMode                           	           "1"              �Ratio 0 Single Output (QPX1200) 1 Dual Output Unlinked 2 Track Voltage and Current - Displaying Combined Voltage 3 Track Voltage and Current - Displaying Combined Current 4    Q    This function configures the voltage realtionship between output 1 and output 2     �    Pass the voltage ratio relationship value to be applied between output 1 and output 2.  

Note: Only valid on dual output power supplies and only when congidured in Voltage Tracking Mode. 


Valid Range:  5.0 to 2000%

Default Value:  100.0     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    Pass the name of the channel you want to enable or disable.

Valid Channel Names:  depends on model, see instruction manual

Default Value:  "1"
    WT >Q �  �    ratio                             XN   �  �    Instrument Handle                 X�����  �    Status                            ^� 6 , �  �    Channel Name                       100.0        	           "1"    l    Configures whether the signal that the power supply produces on a channel appears at the output connector.     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    Pass the name of the channel you want to enable or disable.

Valid Channel Names:  depends on model, see instruction manual

Default Value:  "1"
        Pass whether you want the signal the power supply produces on a channel to appear at the output connector.  The driver uses this value to set the QPX_ATTR_OUTPUT_ENABLED attribute.

Valid Values:
VI_TRUE  - Enable the output
VI_FALSE - Disable the output

Default Value: VI_TRUE
    `�-   �  �    Instrument Handle                 a�#����  �    Status                            gs 3 
 �  �    Channel Name                      h 3 � �  �    Enabled                         ����  /��                                                	           "1"   True VI_TRUE False VI_FALSE    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    �    This function configures the current limit.  You specify the output current limit value and the behavior of the power supply when the output current is greater than or equal to that value.
     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors
          
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

     �    Pass the name of the channel you want to enable or disable.

Valid Channel Names:  depends on model, see instruction manual

Default Value:  "1"
    '    Pass the current limit you want to use. The driver uses this value to set the QPX_ATTR_CURRENT_LIMIT attribute.

Note that the QPX_ATTR_RANGE_SETTING controls what can actually be set on the instrument.

Units: amps

Valid Range:  depends on model, see instruction manual

Default Value:  1.0
    �    Pass the behavior you want the power supply to exhibit when the  ouptut current is greater than or equal to the value of the limit parameter.   The driver uses this value to set the QPX_ATTR_CURRENT_LIMIT_BEHAVIOR attribute.

Default Value:  
QPX_VAL_CURRENT_REGULATE

Valid Values:
QPX_VAL_CURRENT_REGULATE
QPX_VAL_CURRENT_TRIP

Note:
Any other value than QPX_VAL_CURRENT_REGULATE is invalid for this PSU and is thus ignored.    k�-   �  �    Instrument Handle                 l@#����  �    Status                            r+ 3 
 �  �    Channel Name                      r� 3� �  �    Limit                           ����  %��                                           s� 8 � � �    Behavior                               	           "1"    1.0    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.               <Regulate QPX_VAL_CURRENT_REGULATE Trip QPX_VAL_CURRENT_TRIP   Y    Configures the power supply's output range on a channel.  You specify whether you want to configure the voltage or current range, and the value to which to set the range.

Notes:

1) Setting a voltage range can invalidate a previously configured current range.

2) Setting a current range can invalidate a previously configured voltage range.
     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    Pass the name of the channel you want to enable or disable.

Valid Channel Names:  depends on model, see instruction manual

Default Value:  "1"
     �    Pass the type of range you want to configure.


Default Value: QPX_VAL_RANGE_VOLTAGE

Valid Values:
QPX_VAL_RANGE_VOLTAGE
QPX_VAL_RANGE_CURRENT

Notes:
All though PLP_VAL_RANGE_CURRENT is provided it will be ignored as this PSU only supports voltage.    �    Pass the range in which you want the power supply to operate.  The instrument driver coerces this value to the closest value the instrument supports that is greater than or equal to the value you specify.

Units: volts (for voltage range)
       amps  (for current range)

Valid Range:  0.0 - 25.0 volts (for voltage range)
              0.0 - 30.0 amps  (for current range)

Default Value:  1.0
    y   �  �    Instrument Handle                 y�c���  �    Status                            � 4 % �  �    Channel Name                      �8 6 � � �    Range Type                        �< 7� �  �    Range                                  	           "1"               <Voltage QPX_VAL_RANGE_VOLTAGE Current QPX_VAL_RANGE_CURRENT    1    o    This function configures the power supply's over-voltage protection.  You specifies the over-voltage limit.

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    Pass the name of the channel you want to enable or disable.

Valid Channel Names:  depends on model, see instruction manual

Default Value:  "1"
     �    Pass the over-voltage protection limit you want to use. The driver uses this value to set the QPX_ATTR_OVP_LIMIT attribute. 


Units: volts

Valid Range:  depends on model, see instruction manual


Default Value:  65.0     �    Pass whether you want to enable or disable the OVP limit.   The driver uses this value to set the QPX_ATTR_OVP_ENABLED attribute.

Valid Values:
VI_TRUE  - Enable OVP limit
VI_FALSE - Disable OVP limit

Default Value: VI_TRUE
    ��-   �  �    Instrument Handle                 �i#����  �    Status                            �J 3 
 �  �    Channel Name                      �� 3� �  �    Limit                           ����   %��                                           �� > � � �    Enabled                                	           "1"    65.0    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   True VI_TRUE False VI_FALSE    n    This function configures the power supply's over-voltage protection.  You specifies the over-voltage limit.
     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    Pass the name of the channel you want to enable or disable.

Valid Channel Names:  depends on model, see instruction manual

Default Value:  "1"
     �    Pass the over-voltage protection limit you want to use. The driver uses this value to set the QPX_ATTR_OVP_LIMIT attribute.

Units: volts

Valid Range:  depends on model, see instruction manual

Default Value:  55.0
    �-   �  �    Instrument Handle                 ��#����  �    Status                            �� 3 
 �  �    Channel Name                      �. 3� �  �    Limit                           ����   ��                                                	           "1"    55.0    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    V    This function configures the DC voltage level the power supply attempts to generate.     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    Pass the name of the channel you want to enable or disable.

Valid Channel Names:  depends on model, see instruction manual

Default Value:  "1"
    N    Pass the DC voltage you want the power supply to attempt to generate.  The driver uses this value to set the QPX_ATTR_VOLTAGE_LEVEL attribute. 

Note that the QPX_ATTR_RANGE_SETTING controls what can actually be set on the instrument.

Units: volts

Valid Range:  depends on model, see instruction manual

Default Value:  0.0 volts
    ��-   �  �    Instrument Handle                 ��#����  �    Status                            �� 3 
 �  �    Channel Name                      � 3 � �  �    Level                           ����   ��                                                	           "1"    0.0    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    V    Increments the output voltage by the step size set for the output channel specified.     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    Pass the name of the channel you want to enable or disable.

Valid Channel Names:  depends on model, see instruction manual

Default Value:  "1"
    �S-   �  �    Instrument Handle                 �#����  �    Status                            �� 3 
 �  �    Channel Name                    ����  9��                                                	           "1"    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    V    Decrements the output voltage by the step size set for the output channel specified.     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    Pass the name of the channel you want to enable or disable.

Valid Channel Names:  depends on model, see instruction manual

Default Value:  "1"
    �#-   �  �    Instrument Handle                 ��#����  �    Status                            �� 3 
 �  �    Channel Name                    ����   ��                                                	           "1"    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    [    Increments the current level limit by the step size set for the output channel specified.     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    Pass the name of the channel you want to enable or disable.

Valid Channel Names:  depends on model, see instruction manual

Default Value:  "1"
    ��-   �  �    Instrument Handle                 ��#����  �    Status                            �� 3 
 �  �    Channel Name                    ����   ��                                                	           "1"    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    [    Decrements the current level limit by the step size set for the output channel specified.     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors
          
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

     �    Pass the name of the channel you want to enable or disable.

Valid Channel Names:  depends on model, see instruction manual

Default Value:  "1"
    ��-   �  �    Instrument Handle                 �}#����  �    Status                            �h 3 
 �  �    Channel Name                    ����   ��                                                	           "1"    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   �    This function sets the value of a ViInt32 attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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
    $    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  depends on model, see instruction manual

Default Value:  ""

    �-   �  �    Instrument Handle                 ��#����  �    Status                            ҭ � � �  �    Attribute Value                 ���� � ���                                           �� = � � �    Attribute ID                      � =  �  �    Channel Name                    ����  ��                                                	               .Press <ENTER> for a list of 
value constants.                0    "1"    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   �    This function sets the value of a ViReal64 attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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
    #    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  depends on model, see instruction manual

Default Value:  ""
    �?-   �  �    Instrument Handle                 ��#����  �    Status                            �� � � �  �    Attribute Value                 ���� � ���                                           �� = � � �    Attribute ID                      �5 =  �  �    Channel Name                    ����  ��                                                	               .Press <ENTER> for a list of 
value constants.                0    "1"    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   �    This function sets the value of a ViString attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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
    #    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  depends on model, see instruction manual

Default Value:  ""
    �`-   �  �    Instrument Handle                 �#����  �    Status                            �� � � �  �    Attribute Value                 ���� � ���                                           = � � �    Attribute ID                     U =  �  �    Channel Name                    ����  ��                                                	               .Press <ENTER> for a list of 
value constants.                0    "1"    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   �    This function sets the value of a ViBoolean attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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
    #    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  depends on model, see instruction manual

Default Value:  ""
   �-   �  �    Instrument Handle                1#����  �    Status                            � � �  �    Attribute Value                 ���� � ���                                          - = � � �    Attribute ID                     x =  �  �    Channel Name                    ����  ��                                                	               .Press <ENTER> for a list of 
value constants.                0    "1"    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   �    This function sets the value of a ViSession attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

Default Value: none    #    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  depends on model, see instruction manual

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
   $�-   �  �    Instrument Handle                %T#����  �    Status                           +5 � � �  �    Attribute Value                  -P =  �  �    Channel Name                     .{ = � � �    Attribute ID                    ���� � ���                                         ����  ��                                                	               "1"                0    .Press <ENTER> for a list of 
value constants.    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   �    This function queries the value of a ViInt32 attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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
    &    If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  depends on model, see instruction manual

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
   7�-   �  �    Instrument Handle                8_#����  �    Status                           >@ � � �  �    Attribute Value                  ?� =  �  �    Channel Name                     A, = � � �    Attribute ID                    ����  ��                                                	           	            "1"                0    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   �    This function queries the value of a ViReal64 attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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
    &    If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  depends on model, see instruction manual

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
   IX-   �  �    Instrument Handle                J#����  �    Status                           O� � � �  �    Attribute Value                  Q� =  �  �    Channel Name                     R� = � � �    Attribute ID                    ����  
��                                                	           	           "1"                0    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   3    This function queries the value of a ViString attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

You must provide a ViChar array to serve as a buffer for the value.  You pass the number of bytes in the buffer as the Buffer Size parameter.  If the current value of the attribute, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you want to call this function just to get the required buffer size, you can pass 0 for the Buffer Size and VI_NULL for the Attribute Value buffer.  

If you want the function to fill in the buffer regardless of the   number of bytes in the value, pass a negative number for the Buffer Size parameter.  

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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
    &    If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  depends on model, see instruction manual

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
   ^�-   �  �    Instrument Handle                _0#����  �    Status or Required Size          f� � L � �    Attribute Value                  j� =  �  �    Channel Name                     l+ =� �  �    Buffer Size                      o" = � � �    Attribute ID                    ����  ��                                                	           	            "1"    512                0    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   �    This function queries the value of a ViBoolean attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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
    &    If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  depends on model, see instruction manual

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
   w�-   �  �    Instrument Handle                x<#����  �    Status                           ~ � � �  �    Attribute Value                  � =  �  �    Channel Name                     � = � � �    Attribute ID                    ���� 	 %��                                                	           	            "1"                0    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   �    This function queries the value of a ViSession attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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
    &    If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  depends on model, see instruction manual

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
   �;-   �  �    Instrument Handle                ��#����  �    Status                           �� � � �  �    Attribute Value                  �� =  �  �    Channel Name                     �� = � � �    Attribute ID                    ����  ��                                                	           	            "1"                0    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    S    This function checks the validity of a value you specify for a ViInt32 attribute.     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

    (    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none        If the attribute is channel-based, this parameter specifies the name of the channel on which to check the attribute value. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  depends on model, see instruction manual

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
   ��-   �  �    Instrument Handle                �6#����  �    Status                           � � � �  �    Attribute Value                  �G =  �  �    Channel Name                    ���� � ���                                          �m = � � �    Attribute ID                    ����   F��                                                	               "1"    .Press <ENTER> for a list of 
value constants.                0    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    T    This function checks the validity of a value you specify for a ViReal64 attribute.     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

    (    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none        If the attribute is channel-based, this parameter specifies the name of the channel on which to check the attribute value. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  depends on model, see instruction manual

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
   �=-   �  �    Instrument Handle                ��#����  �    Status                           �� � � �  �    Attribute Value                  �� =  �  �    Channel Name                    ���� � ���                                          �$ = � � �    Attribute ID                    ����  /��                                                	               "1"    .Press <ENTER> for a list of 
value constants.                0    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    T    This function checks the validity of a value you specify for a ViString attribute.     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

    (    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none        If the attribute is channel-based, this parameter specifies the name of the channel on which to check the attribute value. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names: depends on model, see instruction manual

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
   ��-   �  �    Instrument Handle                ��#����  �    Status                           Ç � � �  �    Attribute Value                  ŷ =  �  �    Channel Name                    ���� � ���                                          �� = � � �    Attribute ID                    ����  /��                                                	               "1"    .Press <ENTER> for a list of 
value constants.                0    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    U    This function checks the validity of a value you specify for a ViBoolean attribute.     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

    (    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none        If the attribute is channel-based, this parameter specifies the name of the channel on which to check the attribute value. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  depends on model, see instruction manual

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
   ί-   �  �    Instrument Handle                �_#����  �    Status                           �@ � � �  �    Attribute Value                  �p =  �  �    Channel Name                    ���� � ���                                          ؖ = � � �    Attribute ID                    ����  ��                                                	               "1"    .Press <ENTER> for a list of 
value constants.                0    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    U    This function checks the validity of a value you specify for a ViSession attribute.     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

    (    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none        If the attribute is channel-based, this parameter specifies the name of the channel on which to check the attribute value. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  depends on model, see instruction manual

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
   �k-   �  �    Instrument Handle                �#����  �    Status                           �� � � �  �    Attribute Value                  �, =  �  �    Channel Name                    ���� � ���                                          �R = � � �    Attribute ID                    ����  ��                                                	               "1"    .Press <ENTER> for a list of 
value constants.                0    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    X    This function takes a measurement on the output signal and returns the measured value.     �    Pass the measurement you want the power supply to take.

Valid Values:
QPX_VAL_MEASURE_VOLTAGE - DC voltage measurement
QPX_VAL_MEASURE_CURRENT - DC current measurement

Default Value: QPX_VAL_MEASURE_VOLTAGE     m    Returns the measured value.

Units: volts (for voltage measurement)
       amps  (for current measurement)
     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    Pass the name of the channel on which to take a measurement.

Valid Channel Names:  depends on model, see instruction manual

Default Value:  ""
   �* 3 � � �    Measurement Type                 � 3� �  �    Measurement                      �y-   �  �    Instrument Handle                �)#����  �    Status                           �
 3 
 �  �    Channel Name                    ����  ��                                                       @Voltage QPX_VAL_MEASURE_VOLTAGE Current QPX_VAL_MEASURE_CURRENT    	               	           "1"    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   �    This function returns whether the power supply is in a particular output state.

This power supply can't report this automatically so this function always returns FALSE for any parameter. To help the operator derive this themselves the following has been provided:

A constant voltage condition occurs when the output voltage is equal to the value of the QPX_ATTR_VOLTAGE_LEVEL attribute and the current is less than or equal to the value of the QPX_ATTR_CURRENT_LIMIT attribute.

A constant current condition occurs when the output current is equal to the value of the QPX_ATTR_CURRENT_LIMIT attribute and the QPX_ATTR_CURRENT_LIMIT_BEHAVIOR attribute is set to QPX_VAL_CURRENT_REGULATE.

An unregulated condition occurs when the output voltage is less than the value of the QPX_ATTR_VOLTAGE_LEVEL attribute and the current is less than the value of the QPX_ATTR_CURRENT_LIMIT attribute.

An over-voltage condition occurs when the output voltage is equal to or greater than the value of the QPX_ATTR_OVP_LIMIT attribute and the QPX_ATTR_OVP_ENABLED attribute is set to VI_TRUE.

An over-current condition occurs when the output current is equal to or greater than the value of the QPX_ATTR_CURRENT_LIMIT attribute and the QPX_ATTR_CURRENT_LIMIT_BEHAVIOR attribute is set to QPX_VAL_CURRENT_TRIP.  

When either an over-voltage condition or an over-current condition occurs, the power supply's output protection disables the output.  If the power supply is in an over-voltage or over-current state, it does not produce power until the output protection is reset.  The QPX_ResetOutputProtection function resets the output protection.  Once the output protection is reset, the power supply resumes generating a power signal.
     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetError function.  To clear the error information from the driver, call the QPX_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     s    Pass the name of the channel on which to query for an output state.

Valid Channel Names:  1

Default Value:  ""
    |    Pass the output state for which you want to query.

Valid Values:
QPX_VAL_OUTPUT_CONSTANT_VOLTAGE - Constant Voltage State

QPX_VAL_OUTPUT_CONSTANT_CURRENT - Constant Current State

QPX_VAL_OUTPUT_UNREGULATED - Unregulated State

QPX_VAL_OUTPUT_OVER_VOLTAGE - Over-voltage State

QPX_VAL_OUTPUT_OVER_CURRENT - Over-current State


Default Value:
QPX_VAL_OUTPUT_CONSTANT_VOLTAGE
     �    This parameter returns VI_TRUE if the power supply is currently in the state you specify with the outputState parameter, and VI_FALSE if it is not.
   u-   �  �    Instrument Handle                %#����  �    Status                           

 3 
 �  �    Channel Name                     
� 3 � � �    Output State                     	 3� �  �    In State                        ����  >��                                                	           "1"               �Constant Voltage QPX_VAL_OUTPUT_CONSTANT_VOLTAGE Constant Current QPX_VAL_OUTPUT_CONSTANT_CURRENT Unregulated QPX_VAL_OUTPUT_UNREGULATED Over Voltage QPX_VAL_OUTPUT_OVER_VOLTAGE Over Current QPX_VAL_OUTPUT_OVER_CURRENT    	            XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    �    This function returns the maximum programmable current limit that the power supply accepts for a particular voltage level on a channel.
     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    Pass the name of the channel on which to query for the maximum programmable current limit.

Valid Channel Names:  depends on model, see instruction manual

Default Value:  ""
     �    Pass the voltage level for which to determine the maximum programmable current limit.  

Units: volts (V).

Valid Range:  depends on model, see instruction manual

Default Value: 0.0
     s    This parameter returns the maximum programmable current limit for the voltage level you specify.

Units: amps (A)   �-   �  �    Instrument Handle                �#����  �    Status                           p 3 
 �  �    Channel Name                     ) 3 � � �    Voltage Level                    � 3� �  �    Max Current Limit               ����   ��                                                	           "1"    0.00    	           XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    �    This function returns the maximum programmable voltage level that the power supply accepts for a particular current limit on a channel.
     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    Pass the name of the channel on which to query for the maximum programmable voltage level.

Valid Channel Names:  depends on model, see instruction manual

Default Value:  ""
     �    Pass the current limit for which to determine the maximum programmable voltage level.  

Units: amps (A).

Valid Range:  depends on model, see instruction manual

Default Value: 0.0
     t    This parameter returns the maximum programmable voltage level for the current limit you specify.

Units: volts (V)   �-   �  �    Instrument Handle                k#����  �    Status                           !L 3 
 �  �    Channel Name                     " 3 � � �    Current Limit                    "� 3� �  �    Max Voltage Level               ����  ��                                                	           "1"    0.00    	           XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   �    This function resets the power supply's output protection after an over-voltage or over-current.

An over-voltage condition occurs when the output voltage is equal to or greater than the value of the QPX_ATTR_OVP_LIMIT attribute.  

An over-current condition occurs when the output current is equal to or greater than the value of the QPX_ATTR_CURRENT_LIMIT attribute.  

When either an over-voltage condition or an over-current condition occurs, the output protection of the power supply disables the output.  Once the output protection is reset, the power supply resumes generating a power signal.

You use the QPX_QueryOutputState function to determine if the power supply is in an output-protection state.
     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    Pass the name of the channel on which to query for the maximum programmable current limit.

Valid Channel Names:  depends on model, see instruction manual

Default Value:  ""
   '�-   �  �    Instrument Handle                (�#����  �    Status                          ����  ��                                          .f >  �  �    Channel Name                           	           XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    "1"    �    Wait for Operation Complete true. As all commands are completely executed before the next is started this command takes no additional action.     �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   0�#����  �    Status                           6�-   �  �    Instrument Handle               ����  '��                                            	               XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    �    Clears the Standard Event Status Register, Query Error Register and Execution Error Register. This indirectly clears the Status Byte Register.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   90#����  �    Status                           ?-   �  �    Instrument Handle               ����  ��                                            	               XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    �    This function resets the instrument to a known state and sends initialization commands to the instrument.  The initialization commands set instrument settings to the state necessary for the operation of the instrument driver.
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   A�#����  �    Status                           G�-   �  �    Instrument Handle               ���� [ 3��                                            	               XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   n    Saves the current set-up of channel requested to the set-up store specified which can be 0-9.

If the instrument is operating in linked mode then the entire instrument set-up will be stored in the linked mode set-up store specified. The channel specification is ignored. This has no affect on the individual channel set-up stores available when not in linked mode      �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     w    Pass the name of the channel on which to configure the voltage level.

Valid Channel Names:  1,2

Default Value:  ""
     4    Pass the store you want to use.

Default Value: 0
   J�& 
  �  �    Instrument Handle                Kx����  �    Status                           QY ,  �  �    Channel Name                     Q� , � �  �    Store                           ����  )��                                                	           "1"    0    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.       Recall a set up for the channel selected from the set-up store specified which can be 0-9.

If the instrument is operating in linked mode then the entire instrument set-up will be recalled from the linked mode set-up store specified. The channel specification is ignored.     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     w    Pass the name of the channel on which to configure the voltage level.

Valid Channel Names:  1,2

Default Value:  ""
     3    Pass the store you want to use.

Default Value: 0   T�& 
  �  �    Instrument Handle                U]����  �    Status                           [> ,  �  �    Channel Name                     [� , � �  �    Store                           ����  .��                                                	           "1"    0    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    �    This function resets the instrument and applies initial user specified settings from the Logical Name which was used to initialize the session.  If the session was created without a Logical Name, this function is equivalent to the QPX_reset function.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetError function.  To clear the error information from the driver, call the QPX_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   ^|#����  �    Status                           da-   �  �    Instrument Handle               ���� W J��                                            	               XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    �    This function places the instrument in a quiescent state where it has minimal or no impact on the system to which it is connected. This is done by disabling all outputs and is the same as using the attribute QPX_ATTR_OUTPUT_ENABLED_ALL.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetError function.  To clear the error information from the driver, call the QPX_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   g#����  �    Status                           l�-   �  �    Instrument Handle               ���� � K��                                            	               XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    P    This function invalidates the cached values of all attributes for the session.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetError function.  To clear the error information from the driver, call the QPX_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
                    
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   o	����  �    Status                           u)   �  �    Instrument Handle               ���� � ��                                            	               XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    &    Switch the instrument to local mode.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   w����  �    Status                           |�  	  �  �    Instrument Handle               ����  .��                                            	               XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    �    This function runs the instrument's self test routine and returns the test result(s). 

The PSU has no self test capability and the response is always 0     i    This control contains the value returned from the instrument self test.  Zero means success.  For any other code, see the device's operator's manual.

The PSU has no self test capability and the response is always 0 

Self-Test Code    Description
---------------------------------------
   0              Passed self test
   1              Self test failed

     �    Returns the self-test response string from the instrument. See the device's operation manual for an explanation of the string's contents.

You must pass a ViChar array with at least 256 bytes.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   O =  �  �    Self Test Result                 �� = � � ,    Self-Test Message                ��#����  �    Status                           �k-   �  �    Instrument Handle               ����  8��                                            	           	            	               XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   b    This function returns the highest-level channel name that corresponds to the specific driver channel string that is in the channel table at an index you specify.  By passing 0 for the buffer size, the caller can ascertain the buffer size required to get the entire channel name string and then call the function again with a sufficiently large buffer.
     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    q    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, or if the status code is not listed below, call the QPX_error_message function.  To obtain additional information about the error condition, use the QPX_GetError and QPX_ClearError functions.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     <    A 1-based index into the channel table.

Default Value: 1
        Returns the highest-level channel name that corresponds to the specific driver channel string that is in the channel table at an index you specify..

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter.  If the channel name description, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass 0 for the Buffer Size, you can pass VI_NULL for this parameter.    �    Pass the number of bytes in the ViChar array you specify for the Channel Name parameter.

If the channel name, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies BufferSize - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Channel Name buffer parameter.

Default Value:  None   �-   �  �    Instrument Handle                ��#����  �    Status or Required Size          �9 = 0 �  �    Index                            �} �6 �  �    Channel Name                     �� � 1 �  �    Buffer Size                     ����  W��                                                	           1            "1"        XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    `    This function returns the revision numbers of the instrument driver and instrument firmware.

     �    Returns the instrument driver software revision numbers in the form of a string.

You must pass a ViChar array with at least 256 bytes.     �    Returns the instrument firmware revision numbers in the form of a string.

You must pass a ViChar array with at least 256 bytes.
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   �� = 3 �  �    Instrument Driver Revision       �" =6 �  �    Firmware Revision                ��#����  �    Status                           ��-   �  �    Instrument Handle               ����  4��                                            	            	            	               XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    V    This function reads an error code and a message from the instrument's error queue.

     B    Returns the error code read from the instrument's error queue.

     �    Returns the error message string read from the instrument's error message queue.

You must pass a ViChar array with at least 256 bytes.
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   �( =  �  �    Error Code                       �r = � � ,    Error Message                    �#����  �    Status                           ��-   �  �    Instrument Handle               ����  .��                                            	            	            	               XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    V    This function reads an error code and a message from the instrument's error queue.

     B    Returns the error code read from the instrument's error queue.

     �    Returns the error message string read from the instrument's error message queue.

You must pass a ViChar array with at least 256 bytes.
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   � =  �  �    Error Code                       �� = � � ,    Error Message                    �[#����  �    Status                           �<-   �  �    Instrument Handle               ����  /��                                            	            	            	               XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    n    This function converts a status code returned by an instrument driver function into a user-readable string.     #�    Pass the Status parameter that is returned from any of the instrument driver functions.
          
Default Value:  0  (VI_SUCCESS)
          
IVI Engine Status Codes:
Status    Description
-------------------------------------------------
ERRORS:
BFFA0001  Instrument error. Call QPX_error_query.
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
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

        The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

You can pass VI_NULL for this parameter.  This is useful when one of the initialize functions fail.

Default Value:  VI_NULL
   �� =  �  h    Error Code                       �� = � � �    Error Message                    ܋#����  �    Status                           �l-   �  �    Instrument Handle               ����  "��                                            0    	            	           VI_NULL    XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   *    This function returns the interchangeability warnings associated with the IVI session. It retrieves and clears the oldest instance in which the class driver recorded an interchangeability warning.  Interchangeability warnings indicate that using your application with a different instrument might cause different behavior. You use this function to retrieve interchangeability warnings.

The driver performs interchangeability checking when the QPX_ATTR_INTERCHANGE_CHECK attribute is set to VI_TRUE.

The function returns an empty string in the Interchange Warning parameter if no interchangeability warnings remain for the session.

In general, the instrument driver generates interchangeability warnings when an attribute that affects the behavior of the instrument is in a state that you did not specify.
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, or if the status code is not listed below, call the QPX_error_message function.  To obtain additional information about the error condition, use the QPX_GetError and QPX_ClearError functions.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors
     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

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

   �B#����  �    Status or Required Size          ��-   �  �    Instrument Handle                � = � �  �    Buffer Size                      � � Q � �    Interchange Warning             ����  $��                                            	                   	            XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    A    This function clears the list of current interchange warnings.
     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetError function.  To clear the error information from the driver, call the QPX_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

   ��-   �  �    Instrument Handle                �M#����  �    Status                          ���� 3 -��                                                	           XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   �    When developing a complex test system that consists of multiple test modules, it is generally a good idea to design the test modules so that they can run in any order.  To do so requires ensuring that each test module completely configures the state of each instrument it uses.  If a particular test module does not completely configure the state of an instrument, the state of the instrument depends on the configuration from a previously executed test module.  If you execute the test modules in a different order, the behavior of the instrument and therefore the entire test module is likely to change.  This change in behavior is generally instrument specific and represents an interchangeability problem.

You can use this function to test for such cases.  After you call this function, the interchangeability checking algorithms in the specific driver ignore all previous configuration operations.  By calling this function at the beginning of a test module, you can determine whether the test module has dependencies on the operation of previously executed test modules.

This function does not clear the interchangeability warnings from the list of previously recorded interchangeability warnings.  If you want to guarantee that the QPX_GetNextInterchangeWarning function only returns those interchangeability warnings that are generated after calling this function, you must clear the list of interchangeability warnings.  You can clear the interchangeability warnings list by repeatedly calling the QPX_GetNextInterchangeWarning function until no more interchangeability warnings are returned.  If you are not interested in the content of those warnings, you can call the QPX_ClearInterchangeWarnings function.
     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetError function.  To clear the error information from the driver, call the QPX_ClearError function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

   0-   �  �    Instrument Handle                �#����  �    Status                          ���� _ M��                                                	           XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   !    This function returns the error information associated with an IVI session or with the current execution thread.  If you specify a valid IVI session for the Instrument Handle parameter, this function retrieves and then clears the error information for the session.  If you pass VI_NULL for the Instrument Handle parameter, this function retrieves and then clears the error information for the current execution thread.  

The error information includes a primary error, secondary error, and an error elaboration string.  For a particular session, this information is the same as the values held in the following attributes:

QPX_ATTR_PRIMARY_ERROR
QPX_ATTR_SECONDARY_ERROR
QPX_ATTR_ERROR_ELABORATION

The IVI Library also maintains this error information separately for each thread.  This is useful if you do not have a session handle to pass to QPX_GetErrorInfo or QPX_ClearErrorInfo, which
occurs when a call to QPX_init or QPX_InitWithOptions fails.

You can call QPX_error_message to obtain a text description of the primary or secondary error value.
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  VI_NULL
    �    The primary error code for the session or execution thread.   The value is the same as the one held by the attribute QPX_ATTR_PRIMARY_ERROR.
  
A value of VI_SUCCESS (0) indicates that no error occurred,  A positive value indicates a warning.  A negative value indicates an error.  

You can call QPX_error_message to get a text description of the value.

If you are not interested in this value, you can pass VI_NULL.    �    The secondary error code for the session or execution thread.  If the primary error code is non-zero, the secondary error code can further describe the error or warning condition.  The value is the same as the one held by the attribute QPX_ATTR_SECONDARY_ERROR.

A value of VI_SUCCESS (0) indicates no further description.  

You can call QPX_error_message to get a text description of the value.

If you are not interested in this value, you can pass VI_NULL.
    �    The error elaboration string for the session or execution thread.  If the primary error code is non-zero, the elaboration string can further describe the error or warning condition.   The value is the same as the one held by the attribute QPX_ATTR_ERROR_ELABORATION.  

If you are not interested in this value, you can pass VI_NULL.  Otherwise, you must pass a ViChar array with at least 256 bytes.
   �#����  �    Status                           �-   �  �    Instrument Handle                � 5 R �  �    Primary Error                    . 5A �  �    Secondary Error                   � Q � �    Error Elaboration               ����  )��                                            	           VI_NULL    	           	           	            XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   �    This function clears the error information for the current execution thread and the IVI session you specify.  If you pass VI_NULL for the Instrument Handle parameter, this function clears the error information only for the current execution thread. 

The error information includes a primary error code, secondary error code, and an error elaboration string.  For a particular session, this information is the same as the values held in the following attributes:

QPX_ATTR_PRIMARY_ERROR
QPX_ATTR_SECONDARY_ERROR
QPX_ATTR_ERROR_ELABORATION

This function sets the primary and secondary error codes to VI_SUCCESS (0), and sets the error elaboration string to "".

The IVI Library also maintains this error information separately for each thread.  This is useful if you do not have a session handle to pass to QPX_ClearErrorInfo or QPX_GetErrorInfo, which occurs when a call to QPX_init or QPX_InitWithOptions fails.

    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   $#����  �    Status                           )�-   �  �    Instrument Handle               ���� � A��                                            	               XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   !    This function returns the error information associated with an IVI session or with the current execution thread.  If you specify a valid IVI session for the Instrument Handle parameter, this function retrieves and then clears the error information for the session.  If you pass VI_NULL for the Instrument Handle parameter, this function retrieves and then clears the error information for the current execution thread.  

The error information includes a primary error, secondary error, and an error elaboration string.  For a particular session, this information is the same as the values held in the following attributes:

QPX_ATTR_PRIMARY_ERROR
QPX_ATTR_SECONDARY_ERROR
QPX_ATTR_ERROR_ELABORATION

The IVI Library also maintains this error information separately for each thread.  This is useful if you do not have a session handle to pass to QPX_GetErrorInfo or QPX_ClearErrorInfo, which
occurs when a call to QPX_init or QPX_InitWithOptions fails.

You can call QPX_error_message to obtain a text description of the primary or secondary error value.
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  VI_NULL
    �    The primary error code for the session or execution thread.   The value is the same as the one held by the attribute QPX_ATTR_PRIMARY_ERROR.
  
A value of VI_SUCCESS (0) indicates that no error occurred,  A positive value indicates a warning.  A negative value indicates an error.  

You can call QPX_error_message to get a text description of the value.

If you are not interested in this value, you can pass VI_NULL.    �    The secondary error code for the session or execution thread.  If the primary error code is non-zero, the secondary error code can further describe the error or warning condition.  The value is the same as the one held by the attribute QPX_ATTR_SECONDARY_ERROR.

A value of VI_SUCCESS (0) indicates no further description.  

You can call QPX_error_message to get a text description of the value.

If you are not interested in this value, you can pass VI_NULL.
    �    The error elaboration string for the session or execution thread.  If the primary error code is non-zero, the elaboration string can further describe the error or warning condition.   The value is the same as the one held by the attribute QPX_ATTR_ERROR_ELABORATION.  

If you are not interested in this value, you can pass VI_NULL.  Otherwise, you must pass a ViChar array with at least 256 bytes.
   /�#����  �    Status                           5�-   �  �    Instrument Handle                6g 5 R �  �    Primary Error                    8 5A �  �    Secondary Error                  9� � Q � �    Error Elaboration               ����  )��                                            	           VI_NULL    	           	           	            XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   �    This function clears the error information for the current execution thread and the IVI session you specify.  If you pass VI_NULL for the Instrument Handle parameter, this function clears the error information only for the current execution thread. 

The error information includes a primary error code, secondary error code, and an error elaboration string.  For a particular session, this information is the same as the values held in the following attributes:

QPX_ATTR_PRIMARY_ERROR
QPX_ATTR_SECONDARY_ERROR
QPX_ATTR_ERROR_ELABORATION

This function sets the primary and secondary error codes to VI_SUCCESS (0), and sets the error elaboration string to "".

The IVI Library also maintains this error information separately for each thread.  This is useful if you do not have a session handle to pass to QPX_ClearErrorInfo or QPX_GetErrorInfo, which occurs when a call to QPX_init or QPX_InitWithOptions fails.

    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   @�#����  �    Status                           F�-   �  �    Instrument Handle               ���� � A��                                            	               XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   �    This function returns the coercion information associated with the IVI session.  This function retrieves and clears the oldest instance in which the instrument driver coerced a value you specified to another value.

If you set the QPX_ATTR_RECORD_COERCIONS attribute to VI_TRUE, the instrument driver keeps a list of all coercions it makes on ViInt32 or ViReal64 values you pass to instrument driver functions.  You use this function to retrieve information from that list.

If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Coercion Record buffer parameter.

The function returns an empty string in the Coercion Record parameter if no coercion records remain for the session.

    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    The ViSession handle that you obtain from the QPX_init function.  The handle identifies a particular instrument session.

Default Value:  None    �    Returns the next coercion record for the IVI session.  If there are no coercion records, the function returns an empty string.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter.  If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

This parameter returns an empty string if no coercion records remain for the session.
    �    Pass the number of bytes in the ViChar array you specify for the Coercion Record parameter.

If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Coercion Record buffer parameter.

Default Value:  None

   Mb#����  �    Status or Required Size          U-   �  �    Instrument Handle                U� � Q � �    Coercion Record                  X� = � �  �    Buffer Size                     ����  3��                                            	               	                XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   �    This function obtains a multithread lock on the instrument session.  Before it does so, it waits until all other execution threads have released their locks on the instrument session.

Other threads might have obtained a lock on this session in the following ways:

- The user's application called QPX_LockSession.

- A call to the instrument driver locked the session.

- A call to the IVI engine locked the session.

After your call to QPX_LockSession returns successfully, no other threads can access the instrument session until you call QPX_UnlockSession.

Use QPX_LockSession and QPX_UnlockSession around a sequence of calls to instrument driver functions if you require that the instrument retain its settings through the end of the sequence.

You can safely make nested calls to QPX_LockSession within the same thread.  To completely unlock the session, you must balance each call to QPX_LockSession with a call to QPX_UnlockSession.  If, however, you use the Caller Has Lock parameter in all calls to QPX_LockSession and QPX_UnlockSession within a function, the IVI Library locks the session only once within the function regardless of the number of calls you make to QPX_LockSession.  This allows you to call QPX_UnlockSession just once at the end of the function. 
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    This parameter serves as a convenience.  If you do not want to use this parameter, pass VI_NULL. 

Use this parameter in complex functions to keep track of whether you obtain a lock and therefore need to unlock the session.  Pass the address of a local ViBoolean variable.  In the declaration of the local variable, initialize it to VI_FALSE.  Pass the address of the same local variable to any other calls you make to QPX_LockSession or QPX_UnlockSession in the same function.

The parameter is an input/output parameter.  QPX_LockSession and QPX_UnlockSession each inspect the current value and take the following actions:

- If the value is VI_TRUE, QPX_LockSession does not lock the session again.  If the value is VI_FALSE, QPX_LockSession obtains the lock and sets the value of the parameter to VI_TRUE.

- If the value is VI_FALSE, QPX_UnlockSession does not attempt to unlock the session.  If the value is VI_TRUE, QPX_UnlockSession releases the lock and sets the value of the parameter to VI_FALSE.
 
Thus, you can, call QPX_UnlockSession at the end of your function without worrying about whether you actually have the lock.  

Example:

ViStatus TestFunc (ViSession vi, ViInt32 flags)
{
    ViStatus error = VI_SUCCESS;
    ViBoolean haveLock = VI_FALSE;

    if (flags & BIT_1)
        {
        viCheckErr( QPX_LockSession(vi, &haveLock));
        viCheckErr( TakeAction1(vi));
        if (flags & BIT_2)
            {
            viCheckErr( QPX_UnlockSession(vi, &haveLock));
            viCheckErr( TakeAction2(vi));
            viCheckErr( QPX_LockSession(vi, &haveLock);
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
    QPX_UnlockSession(vi, &haveLock);
    return error;
}   b#����  �    Status                           g�-   �  �    Instrument Handle                h� H � �  �    Caller Has Lock                 ����  %��                                            	               	            XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    �    This function releases a lock that you acquired on an instrument session using QPX_LockSession.  Refer to QPX_LockSession for additional information on session locks.
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    This parameter serves as a convenience.  If you do not want to use this parameter, pass VI_NULL. 

Use this parameter in complex functions to keep track of whether you obtain a lock and therefore need to unlock the session. 
Pass the address of a local ViBoolean variable.  In the declaration of the local variable, initialize it to VI_FALSE.  Pass the address of the same local variable to any other calls you make to QPX_LockSession or QPX_UnlockSession in the same function.

The parameter is an input/output parameter.  QPX_LockSession and QPX_UnlockSession each inspect the current value and take the following actions:

- If the value is VI_TRUE, QPX_LockSession does not lock the session again.  If the value is VI_FALSE, QPX_LockSession obtains the lock and sets the value of the parameter to VI_TRUE.

- If the value is VI_FALSE, QPX_UnlockSession does not attempt to unlock the session.  If the value is VI_TRUE, QPX_UnlockSession releases the lock and sets the value of the parameter to VI_FALSE.
 
Thus, you can, call QPX_UnlockSession at the end of your function without worrying about whether you actually have the lock.  

Example:

ViStatus TestFunc (ViSession vi, ViInt32 flags)
{
    ViStatus error = VI_SUCCESS;
    ViBoolean haveLock = VI_FALSE;

    if (flags & BIT_1)
        {
        viCheckErr( QPX_LockSession(vi, &haveLock));
        viCheckErr( TakeAction1(vi));
        if (flags & BIT_2)
            {
            viCheckErr( QPX_UnlockSession(vi, &haveLock));
            viCheckErr( TakeAction2(vi));
            viCheckErr( QPX_LockSession(vi, &haveLock);
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
    QPX_UnlockSession(vi, &haveLock);
    return error;
}   r:#����  �    Status                           x-   �  �    Instrument Handle                x� H � �  �    Caller Has Lock                 ����  '��                                            	               	            XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    �    This function writes a user-specified string to the instrument.

Note:  This function bypasses IVI attribute state caching.  Therefore, when you call this function, the cached values for all attributes will be invalidated.     2    Pass the string to be written to the instrument.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   �� A � �  �    Write Buffer                     ��#����  �    Status                           ��-   �  �    Instrument Handle               ����  7��                                                	               XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.    /    This function reads data from the instrument.     c    After this function executes, this parameter contains the data that was read from the instrument.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     �    Pass the maximum number of bytes to read from the instruments.  

Valid Range:  0 to the number of elements in the Read Buffer.

Default Value:  0

     ^    Returns the number of bytes actually read from the instrument and stored in the Read Buffer.   �� @ �  �    Read Buffer                      �=#����  �    Status                           �-   �  �    Instrument Handle                �� @ C �  �    Number of Bytes To Read          �l �' �  �    Num Bytes Read                  ����  ��                                            	            	               0    	            XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved.   �    This function performs the following operations:

- Closes the instrument I/O session.

- Destroys the instrument driver session and all of its attributes.

- Deallocates any memory resources the driver uses.

Notes:

(1) You must unlock the session before calling QPX_close.

(2) After calling QPX_close, you cannot use the instrument driver again until you call QPX_init or QPX_InitWithOptions.

    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the QPX_error_message function.  To obtain additional information about the error condition, call the QPX_GetErrorInfo function.  To clear the error information from the driver, call the QPX_ClearErrorInfo function.
          
The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

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

     �    The ViSession handle that you obtain from the QPX_init or QPX_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   �0#����  �    Status                           �-   �  �    Instrument Handle               ����  !��                                            	               XCopyright 2008 Product Technology Partners Ltd (www.ptpart.co.uk). All Rights Reserved. ����           "�             K.        init                                                                                                                                    ����         $�  EJ             K.        InitWithOptions                                                                                                                         ����         H.  UT             K.        ConfigureTrackingMode                                                                                                                   ����         V�  _z             K.        ConfigureRatio                                                                                                                          ����         `n  i/             K.        ConfigureOutputEnabled                                                                                                                  ����         j�  u�             K.        ConfigureCurrentLimit                                                                                                                   ����         w�  ��             K.        ConfigureOutputRange                                                                                                                    ����         �B  ��             K.        ConfigureOVP                                                                                                                            ����         ��  �             K.        ConfigureOCP                                                                                                                            ����         ��  �s             K.        ConfigureVoltageLevel                                                                                                                   ����         ��  �             K.        IncrementVoltageLevel                                                                                                                   ����         ��  �O             K.        DecrementVoltageLevel                                                                                                                   ����         ��  �$             K.        IncrementCurrentLevel                                                                                                                   ����         �j  �             K.        DecrementCurrentLevel                                                                                                                   ����         �I  �?             K.        SetAttributeViInt32                                                                                                                     ����         �k  �`             K.        SetAttributeViReal64                                                                                                                    ����         � �             K.        SetAttributeViString                                                                                                                    ����        	� �             K.        SetAttributeViBoolean                                                                                                                   ����        � 3�             K.        SetAttributeViSession                                                                                                                   ����        5� E�             K.        GetAttributeViInt32                                                                                                                     ����        G� Ww             K.        GetAttributeViReal64                                                                                                                    ����        YE s�             K.        GetAttributeViString                                                                                                                    ����        u� ��             K.        GetAttributeViBoolean                                                                                                                   ����        �| �]             K.        GetAttributeViSession                                                                                                                   ����        �+ ��             K.        CheckAttributeViInt32                                                                                                                   ����        �� �n             K.        CheckAttributeViReal64                                                                                                                  ����        �� �&             K.        CheckAttributeViString                                                                                                                  ����        �R ��             K.        CheckAttributeViBoolean                                                                                                                 ����        � �             K.        CheckAttributeViSession                                                                                                                 ����        �� ��             K.        Measure                                                                                                                                 ����        �� �             K.        QueryOutputState                                                                                                                        ����        M e             K.        QueryMaxCurrentLimit                                                                                                                    ����        ) #A             K.        QueryMaxVoltageLevel                                                                                                                    ����        % /             K.        ResetOutputProtection                                                                                                                   ����        0e 7�             K.        WaitForOperationComplete                                                                                                                ����        8� ?�             K.        ClearStatus                                                                                                                             ����        @� HH             K.        reset                                                                                                                                   ����        IR R             K.        SaveSetup                                                                                                                               ����        S� [�             K.        RecallSetup                                                                                                                             ����        ]x e             K.        ResetWithDefaults                                                                                                                       ����        f m�             K.        Disable                                                                                                                                 ����        n� u�             K.        InvalidateAllAttributes                                                                                                                 ����        v� }�             K.        Local                                                                                                                                   ����        ~� �             K.        self_test                                                                                                                               ����        �� �h             K.        GetChannelName                                                                                                                          ����        �) �>             K.        revision_query                                                                                                                          ����        �� ��             K.        execution_error_query                                                                                                                   ����        �! ��             K.        error_query                                                                                                                             ����        �x �             K.        error_message                                                                                                                           ����        � ��             K.        GetNextInterchangeWarning                                                                                                               ����        �T �c             K.        ClearInterchangeWarnings                                                                                                                ����         m �             K.        ResetInterchangeCheck                                                                                                                   ����        � �             K.        GetErrorInfo                                                                                                                            ����         r *�             K.        ClearErrorInfo                                                                                                                          ����        +� ;�             K.        GetError                                                                                                                                ����        =W G�             K.        ClearError                                                                                                                              ����        H� [�             K.        GetNextCoercionRecord                                                                                                                   ����        ] p>             K.        LockSession                                                                                                                             ����        q� �Z             K.        UnlockSession                                                                                                                           ����        �� �X             K.        WriteInstrData                                                                                                                          ����        �� ��             K.        ReadInstrData                                                                                                                           ����        �� ��             K.        close                                                                                                                                                                                                                              �Initialize                                                                           �Initialize With Options                                                             
Configuration Functions                                                             �Output                                                                               �Configure Tracking Mode                                                              �Configure Ratio                                                                      �Configure Output Enabled                                                             �Configure Current Limit                                                              �Configure Output Range                                                               �Configure OVP                                                                        �Configure OCP                                                                        �Configure Voltage Level                                                              �Increment Voltage Level                                                              �Decrement Voltage Level                                                              �Increment Current Level                                                              �Decrement Current Level                                                             >Set/Get/Check Attribute                                                             �Set Attribute                                                                        �Set Attribute ViInt32                                                                �Set Attribute ViReal64                                                               �Set Attribute ViString                                                               �Set Attribute ViBoolean                                                              �Set Attribute ViSession                                                             #Get Attribute                                                                        �Get Attribute ViInt32                                                                �Get Attribute ViReal64                                                               �Get Attribute ViString                                                               �Get Attribute ViBoolean                                                              �Get Attribute ViSession                                                             �Check Attribute                                                                      �Check Attribute ViInt32                                                              �Check Attribute ViReal64                                                             �Check Attribute ViString                                                             �Check Attribute ViBoolean                                                            �Check Attribute ViSession                                                           GMeasure Output                                                                       �Measure                                                                             �Action/Status Functions                                                              �Query Output State                                                                   �Query Max Current Limit                                                              �Query Max Voltage Level                                                              �Reset Output Protection                                                              �Wait for operation complete                                                          �Clear Status                                                                         Utility Functions                                                                    �Reset                                                                                �Save Setup                                                                           �Recall Setup                                                                         �Reset With Defaults                                                                  �Disable                                                                              �Invalidate All Attributes                                                            �Local                                                                                �Self-Test                                                                            �Get Channel Name                                                                     �Revision Query                                                                       �Execution Error-Query                                                                �Error-Query                                                                          �Error Message                                                                       	gInterchangeability Info                                                              �Get Next Interchange Warning                                                         �Clear Interchange Warnings                                                           �Reset Interchange Check                                                             	�Error Info                                                                           �Get Error Info                                                                       �Clear Error Info                                                                     �Get Error                                                                            �Clear Error                                                                         
Coercion Info                                                                        �Get Next Coercion Record                                                            
ZLocking                                                                              �Lock Session                                                                         �Unlock Session                                                                      
�Instrument I/O                                                                       �Write Instrument Data                                                                �Read Instrument Data                                                                 �Close                                                                           