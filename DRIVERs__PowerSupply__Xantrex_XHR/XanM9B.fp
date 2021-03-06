s��        ��   \ ��  3   �   ����                               XanM9B                          Xantrex XFR-XHR-XPD-HPD-XT Power Sup.                                                                 � � ��ViInt16  �  � ��ViInt32  � � ��ViReal64     � ��ViRsrc     	� 	��ViBoolean     	� 	��ViSession     � ��ViStatus     �  ViChar[]     � ��ViChar     � ��ViString     	�  ViInt16[]     	�  ViInt32[]     
�  	ViReal64[]     � 	 
ViBoolean[]     � ��ViConstString     � ��ViAttr  )    This instrument driver provides programming support for the Xantrex XFR-XHR-XPD-HPD-XT Series DC Power Supplies equipped with an M9B interface card.  The driver contains all the functions that IVI and VXIplug&play require.  In addition, the driver contains high-level functions that configure the power supply and generate output in a single operation.  The driver also contains lower level functions that configure the power supply and initiate the output changes in separate operations.   

Note:  This driver requires the VISA and IVI libraries.  
     �    This class contains functions that configure the instrument.  The class includes high-level functions that configure multiple instrument settings as well as low-level functions that set, get, and check individual attribute values.
     ;    This class contains functions for configuring the output.     r    This class contains the basic functions necessary for instrument operation. ie. Setting the voltage and current.     m    This class contains the functions used to configure the protection mechanisms. Such as, OVP, Foldback, etc.     �    This class contains functions used to monitor the instrument for certain conditions. Auxiliary status lines can be configured to be monitored by remote equipment.         This class contains functions for configuring the trigger system. To use the Trigger system for these instruments. Follow these instructions:

1) Call XanM9B_ConfigureHoldEnabled to 'Enable' the trigger 
   system.

2) Call XanM9B_ConfigureTriggeredVoltageLevel and 
   XanM9B_ConfigureTriggeredCurrentLimit to set the trigger 
   limits.

3) Call XanM9B_Initiate, to prepare the driver for a trigger
   event.

4) Call XanM9B_SendSoftwareTrigger when you want the trigger
   levels to be implemented.

5) Call XanM9B_ConfigureHoldEnabled to 'Disable' the trigger
   system.


Note: If you want to terminate a trigger setup, call 
      XanM9B_Abort. This will erase the held voltage and 
      current settings. It will also take the instrument out of 
      HOLD mode. 

     T    This class contains sub-classes for the set, get, and check attribute functions.       �    This class contains functions that set an attribute to a new value.  There are typesafe functions for each attribute data type.     �    This class contains functions that obtain the current value of an attribute.  There are typesafe functions for each attribute data type.     �    This class contains functions that obtain the current value of an attribute.  There are typesafe functions for each attribute data type.     L    This class contains high-level functions for measuring the output signal.      ]    This class contains functions that initiate instrument operations and report their status.
     C    These functions instruct the power supply's to initiate an action     V    These functions query the power supply to determine its current status and settings.    _    This class contains functions and sub-classes that control common instrument operations.  These functions include many of functions that VXIplug&play require, such as reset, self-test, revision query, error query, and error message.  This class also contains functions that access IVI error infomation, lock the session, and perform instrument I/O.
     R    This class contains functions that retrieve and clear the IVI error information.     ?    This class contains functions that retrieve coercion records.     J    This class contains functions that retrieve interchangeability warnings.     k    This class contains functions that lock and unlock IVI instrument driver sessions for multithread safefy.     F    This class contains functions that send and receive instrument data.    ?    This function performs the following initialization actions:

- Creates a new IVI instrument driver session.

- Opens a session to the specified device using the interface and address you specify for the Resource Name parameter.

- If the ID Query parameter is set to VI_TRUE, this function queries the instrument ID and checks that it is valid for this instrument driver.

- If the Reset parameter is set to VI_TRUE, this function resets the instrument to a known state.

- Sends initialization commands to set the instrument to the state necessary for the operation of the instrument driver.

- Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Note:  This function creates a new session each time you invoke it. Although you can open more than one IVI session for the same resource, it is best not to do so.  You can use the same session in multiple program threads.  You can use the XanM9B_LockSession and XanM9B_UnlockSession functions to protect sections of code that require exclusive access to the resource.

Content from the IVI specifications reproduced with permission from the IVI Foundation.

The IVI Foundation and its member companies make no warranty of any kind with regard to this material, including, but not limited to, the implied warranties of merchantability and fitness for a particular purpose. The IVI Foundation and its member companies shall not be liable for errors contained herein or for incidental or consequential damages in connection with the furnishing, performance, or use of this material.        Pass the resource name of the device to initialize.

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


Default Value:  "GPIB0::2::INSTR"

Note: You specify the resource name with the "VInstr->" if you have the logical name that is the same as the virtual instrument name and you want to explicitly use the virtual instrument name. Otherwise, the driver uses the logical name.    �    Specify whether you want the instrument driver to perform an ID Query.

Valid Range:
VI_TRUE  (1) - Perform ID Query (Default Value)
VI_FALSE (0) - Skip ID Query

When you set this parameter to VI_TRUE, the driver verifies that the instrument you initialize is a type that this driver supports.  

Circumstances can arise where it is undesirable to send an ID Query command string to the instrument.  When you set this parameter to VI_FALSE, the function initializes the instrument without performing an ID Query.

NOTE: In order for the driver to work properly with your instrument, ID Query must be set to VI_TRUE. This allows the driver to use the correct values when using range tables.     �    Specify whether you want the to reset the instrument during the initialization procedure.

Valid Range:
VI_TRUE  (1) - Reset Device (Default Value)
VI_FALSE (0) - Don't Reset

    �    Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Notes:

(1) This function creates a new session each time you invoke it.  This is useful if you have multiple physical instances of the same type of instrument.  

(2) Avoid creating multiple concurrent sessions to the same physical instrument.  Although you can create more than one IVI session for the same resource, it is best not to do so.  A better approach is to use the same IVI session in multiple execution threads.  You can use functions XanM9B_LockSession and XanM9B_UnlockSession to protect sections of code that require exclusive access to the resource.

    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

    � =   �  �    Resource Name                      : �       ID Query                          !� =� �       Reset Device                      "� �C �  �    Instrument Handle                 %;#����  �    Status                          ����  z��                                            "GPIB0::2::INSTR"   Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	           FCopyright 1998 National Instruments Corporation. All Rights Reserved.   ;    This function performs the following initialization actions:

- Creates a new IVI instrument driver and optionally sets the initial state of the following session attributes:

    XANM9B_ATTR_RANGE_CHECK         
    XANM9B_ATTR_QUERY_INSTR_STATUS  
    XANM9B_ATTR_CACHE               
    XANM9B_ATTR_SIMULATE            
    XANM9B_ATTR_RECORD_COERCIONS    

- Opens a session to the specified device using the interface and address you specify for the Resource Name parameter.

- If the ID Query parameter is set to VI_TRUE, this function queries the instrument ID and checks that it is valid for this instrument driver.

- If the Reset parameter is set to VI_TRUE, this function resets the instrument to a known state.

- Sends initialization commands to set the instrument to the state necessary for the operation of the instrument driver.

- Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Note:  This function creates a new session each time you invoke it. Although you can open more than one IVI session for the same resource, it is best not to do so.  You can use the same session in multiple program threads.  You can use the XanM9B_LockSession and XanM9B_UnlockSession functions to protect sections of code that require exclusive access to the resource.

Content from the IVI specifications reproduced with permission from the IVI Foundation.

The IVI Foundation and its member companies make no warranty of any kind with regard to this material, including, but not limited to, the implied warranties of merchantability and fitness for a particular purpose. The IVI Foundation and its member companies shall not be liable for errors contained herein or for incidental or consequential damages in connection with the furnishing, performance, or use of this material.        Pass the resource name of the device to initialize.

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


Default Value:  "GPIB0::2::INSTR"

Note: You specify the resource name with the "VInstr->" if you have the logical name that is the same as the virtual instrument name and you want to explicitly use the virtual instrument name. Otherwise, the driver uses the logical name.    �    Specify whether you want the instrument driver to perform an ID Query.

Valid Range:
VI_TRUE  (1) - Perform ID Query (Default Value)
VI_FALSE (0) - Skip ID Query

When you set this parameter to VI_TRUE, the driver verifies that the instrument you initialize is a type that this driver supports.  

Circumstances can arise where it is undesirable to send an ID Query command string to the instrument.  When you set this parameter to VI_FALSE, the function initializes the instrument without performing an ID Query.

NOTE: In order for the driver to work properly with your instrument, ID Query must be set to VI_TRUE. This allows the driver to use the correct values when using range tables.     �    Specify whether you want the to reset the instrument during the initialization procedure.

Valid Range:
VI_TRUE  (1) - Reset Device (Default Value)
VI_FALSE (0) - Don't Reset

    �    Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Notes:

(1) This function creates a new session each time you invoke it.  This is useful if you have multiple physical instances of the same type of instrument.  

(2) Avoid creating multiple concurrent sessions to the same physical instrument.  Although you can create more than one IVI session for the same resource, it is best not to do so.  A better approach is to use the same IVI session in multiple execution threads.  You can use functions XanM9B_LockSession and XanM9B_UnlockSession to protect sections of code that require exclusive access to the resource.

    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

    �    You can use this control to set the initial value of certain attributes for the session.  The following table lists the attributes and the name you use in this parameter to identify the attribute.

Name              Attribute Defined Constant   
--------------------------------------------
RangeCheck        XANM9B_ATTR_RANGE_CHECK
QueryInstrStatus  XANM9B_ATTR_QUERY_INSTR_STATUS   
Cache             XANM9B_ATTR_CACHE   
Simulate          XANM9B_ATTR_SIMULATE  
RecordCoercions   XANM9B_ATTR_RECORD_COERCIONS

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
"Simulate=0,RangeCheck=1,QueryInstrStatus=0,Cache=1"
    61 =   �  �    Resource Name                     >M : �       ID Query                          A	 =� �       Reset Device                      A� �Y �  �    Instrument Handle                 D}#����  �    Status                          ����   P��                                           LF �  � �    Option String                      "GPIB0::2::INSTR"   Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	           FCopyright 1998 National Instruments Corporation. All Rights Reserved.    5"Simulate=0,RangeCheck=1,QueryInstrStatus=0,Cache=1"    l    Configures whether the signal that the power supply produces on a channel appears at the output connector.     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     l    Pass the name of the channel you want to enable or disable.

Valid Channel Names:  1

Default Value:  "1"
        Pass whether you want the signal the power supply produces on a channel to appear at the output connector.  The driver uses this value to set the XANM9B_ATTR_OUTPUT_ENABLED attribute.


Valid Values:
VI_TRUE  - Enable the output
VI_FALSE - Disable the output

 
Default Value: VI_TRUE
    V�-   �  �    Instrument Handle                 W�#����  �    Status                            _v 7  �  �    Channel Name                      _� E � �  �    Enabled                                	           "1"   True VI_TRUE False VI_FALSE   	    Configures the power supply's output range on a channel.  You specify whether you want to configure the voltage or current range, and the value to which to set the range.

Notes:

1) Setting a voltage range can invalidate a previously configured current range.

2) Setting a current range can invalidate a previously configured voltage range.

** Since the output range on these instruments is not configureable, calls to this function simply verify that the range values are acceptable for the particular instrument.

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     0    
Valid Channel Names:  1

Default Value:  "1"
        Pass the range in which you want the power supply to operate.  

If you pass a value of XANM9B_VAL_RANGE_CURRENT for the RangeType parameter, you specify this parameter in amps.

If you pass a value of XANM9B_VAL_RANGE_VOLTAGE for the RangeType parameter, you specify this parameter in volts.

Units: volts (for voltage range)
       amps  (for current range)

Default Value:  0.0
    i    Pass the type of range you want to configure.

Defined Values:
XANM9B_VAL_RANGE_VOLTAGE - Voltage Range
XANM9B_VAL_RANGE_CURRENT - Current Range

Default Value:  XANM9B_VAL_RANGE_VOLTAGE

Notes:

1) Setting a voltage range can invalidate a previously configured current range.

2) Setting a current range can invalidate a previously configured voltage range.
    d,'   �  �    Instrument Handle                 d� ����  �    Status                            l� 6  �  �    Channel Name                      l� 3 �  �    Range                             nj 4 � � �    Range Type                             	           "1"    0.0               BVoltage XANM9B_VAL_RANGE_VOLTAGE Current XANM9B_VAL_RANGE_CURRENT    V    This function configures the DC voltage level the power supply attempts to generate.     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     v    Pass the name of the channel on which to configure the voltage level.

Valid Channel Names:  1

Default Value:  "1"
    &    Pass the DC voltage you want the power supply to attempt to generate.  The driver uses this value to set the XANM9B_ATTR_VOLTAGE_LEVEL attribute. 

Units: volts

Valid Range:  <XFR 2.8KW Models>
              XFR7.5-300 - 0 to 7.5 volts
              XFR12-220  - 0 to 12 volts
              XFR20-130  - 0 to 20 volts
              XFR33-85   - 0 to 33 volts
              XFR40-70   - 0 to 40 volts
              XFR50-60   - 0 to 50 volts
              XFR60-46   - 0 to 60 volts
              XFR80-37   - 0 to 80 volts
              XFR100-28  - 0 to 100 volts
              XFR150-18  - 0 to 150 volts
              XFR300-9   - 0 to 300 volts
              XFR420-7   - 0 to 420 volts
              XFR600-4   - 0 to 600 volts
              <XFR 1.2KW Models>
              XFR6-200   - 0 to 6 volts 
              XFR7.5-140 - 0 to 7.5 volts
              XFR12-100  - 0 to 12 volts
              XFR20-60   - 0 to 20 volts
              XFR35-35   - 0 to 35 volts
              XFR40-30   - 0 to 40 volts
              XFR45-30   - 0 to 45 volts
              XFR60-20   - 0 to 60 volts
              XFR100-12  - 0 to 100 volts
              XFR150-8   - 0 to 150 volts
              XFR160-7.5 - 0 to 160 volts
              XFR300-4   - 0 to 300 volts
              XFR600-2   - 0 to 600 volts
              <XHR 1KW Models>
              XHR7.5-130 - 0 to 7.5 volts
              XHR20-50   - 0 to 20 volts
              XHR33-33   - 0 to 33 volts
              XHR40-25   - 0 to 40 volts
              XHR60-18   - 0 to 60 volts
              XHR100-10  - 0 to 100 volts
              XHR150-7   - 0 to 150 volts
              XHR300-3.5 - 0 to 300 volts
              XHR600-1.7 - 0 to 600 volts
              <XHR 600W Models>
              XHR7.5-80  - 0 to 7.5 volts 
              XHR20-30   - 0 to 20 volts
              XHR33-18   - 0 to 33 volts
              XHR40-15   - 0 to 40 volts
              XHR60-10   - 0 to 60 volts
              XHR100-6   - 0 to 100 volts
              XHR150-4   - 0 to 150 volts
              XHR300-2   - 0 to 300 volts
              XHR600-1   - 0 to 600 volts
              <XPD models>
              XPD7.5-67  - 0 to 7.5 volts
              XPD18-30   - 0 to 18 volts
              XPD33-16   - 0 to 33 volts
              XPD60-9    - 0 to 60 volts
              XPD120-4.5 - 0 to 120 volts
              <HPD 300W Models>
              HPD15-20   - 0 to 15 volts
              HPD30-10   - 0 to 30 volts
              HPD60-5    - 0 to 60 volts
              <XT 60W Models>
              XT7-6      - 0 to 7 volts
              XT15-4     - 0 to 15 volts
              XT20-3     - 0 to 20 volts
              XT30-2     - 0 to 30 volts
              XT60-1     - 0 to 60 volts
              XT120-0.5  - 0 to 120 volts
              XT250-0.25 - 0 to 250 volts

Default Value:  0.0 volts
    q�-   �  �    Instrument Handle                 rg#r���  �    Status                            z0 4 
 �  �    Channel Name                      z� 4 � �  �    Level                                  	           "1"    0.0   S    This function configures the current limit.  You specify the output current limit value and the behavior of the power supply when the output current is greater than or equal to that value.

** These instruments do not have an over current protection mechanism. They do however have Foldback Protection. If you set the Current Behavior parameter to 'Trip', this driver will configure the instrument to Fold CC. This means that if the instrument tries to operate in Constant Current (CC) mode, the output will be disabled. The output will remain disabled until the protection fault is cleared.

Note: To avoid nuisance faults at configuration time, the fault delay time is set to 3 seconds. This is the amount of time that the unit will wait after a new voltage or current setpoint, before it can trip the output due to a fault condition, ie. CC mode.     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     v    Pass the name of the channel on which to configure the current limit.

Valid Channel Names:  1

Default Value:  "1"
    
�    Pass the current limit you want to use. The driver uses this value to set the XANM9B_ATTR_CURRENT_LIMIT attribute.

Units: amps

Valid Range:  <XFR 2.8KW Models>
              XFR7.5-300 - 0 to 300 amps
              XFR12-220  - 0 to 220 amps
              XFR20-130  - 0 to 130 amps
              XFR33-85   - 0 to 85 amps
              XFR40-70   - 0 to 70 amps
              XFR50-60   - 0 to 60 amps
              XFR60-46   - 0 to 46 amps
              XFR80-37   - 0 to 37 amps
              XFR100-28  - 0 to 28 amps
              XFR150-18  - 0 to 18 amps
              XFR300-9   - 0 to 9 amps
              XFR420-7   - 0 to 7 amps
              XFR600-4   - 0 to 4 amps
              <XFR 1.2KW Models>
              XFR6-200   - 0 to 200 amps 
              XFR7.5-140 - 0 to 140 amps
              XFR12-100  - 0 to 100 amps
              XFR20-60   - 0 to 60 amps
              XFR35-35   - 0 to 35 amps
              XFR40-30   - 0 to 30 amps
              XFR45-30   - 0 to 30 amps  (if vout < 40 volts)
              XFR60-20   - 0 to 20 amps
              XFR100-12  - 0 to 12 amps
              XFR150-8   - 0 to 8 amps
              XFR160-7.5 - 0 to 7.5 amps
              XFR300-4   - 0 to 4 amps
              XFR600-2   - 0 to 2 amps
              <XHR 1KW Models>
              XHR7.5-130 - 0 to 130 amps
              XHR20-50   - 0 to 50 amps
              XHR33-33   - 0 to 33 amps
              XHR40-25   - 0 to 25 amps
              XHR60-18   - 0 to 18 amps
              XHR100-10  - 0 to 10 amps
              XHR150-7   - 0 to 7 amps
              XHR300-3.5 - 0 to 3.5 amps
              XHR600-1.7 - 0 to 1.7 amps
              <XHR 600W Models>
              XHR7.5-80  - 0 to 80 amps 
              XHR20-30   - 0 to 30 amps
              XHR33-18   - 0 to 18 amps
              XHR40-15   - 0 to 15 amps
              XHR60-10   - 0 to 10 amps
              XHR100-6   - 0 to 6 amps
              XHR150-4   - 0 to 4 amps
              XHR300-2   - 0 to 2 amps
              XHR600-1   - 0 to 1 amp
              <XPD models>
              XPD7.5-67  - 0 to 67 amps
              XPD18-30   - 0 to 30 amps
              XPD33-16   - 0 to 16 amps
              XPD60-9    - 0 to 9 amps
              XPD120-4.5 - 0 to 4.5 amps
              <HPD 300W Models>
              HPD15-20   - 0 to 20 amps
              HPD30-10   - 0 to 10 amps
              HPD60-5    - 0 to 5 amps
              <XT 60W Models>
              XT7-6      - 0 to 6 amps
              XT15-4     - 0 to 4 amps
              XT20-3     - 0 to 3 amps
              XT30-2     - 0 to 2 amps
              XT60-1     - 0 to 1 amp
              XT120-0.5  - 0 to 0.5 amps
              XT250-0.25 - 0 to 0.25 amps
              
Default Value:  0.0
        Pass the behavior you want the power supply to exhibit when the  ouptut current is greater than or equal to the value of the limit parameter.   The driver uses this value to set the XANM9B_ATTR_CURRENT_LIMIT_BEHAVIOR attribute.

Defined Values:
XANM9B_VAL_CURRENT_REGULATE - Regulatory limit
XANM9B_VAL_CURRENT_TRIP     - Trip limit

Default Value: XANM9B_VAL_CURRENT_REGULATE

** These instruments do not have an over current protection mechanism. They do however have Foldback Protection. If you set the Current Behavior parameter to 'Trip', this driver will configure the instrument to Fold CC. This means that if the instrument tries to operate in Constant Current (CC) mode, the output will be disabled. The output will remain disabled until the protection fault is cleared.

Note: To avoid nuisance faults at configuration time, the fault delay time is set to 3 seconds. This is the amount of time that the unit will wait after a new voltage or current setpoint, before it can trip the output due to a fault condition, ie. CC mode.     �)-   �  �    Instrument Handle                 ��#����  �    Status                            �� 3 
 �  �    Channel Name                      �& 4w �  �    Limit                             �� 1 � � �    Behavior                               	           "1"    0.0               BRegulate XANM9B_VAL_CURRENT_REGULATE Trip XANM9B_VAL_CURRENT_TRIP   �    This function configures the power supply's over-voltage protection.  You specify the over-voltage limit and the behavior of the power supply when the output voltage is greater than or equal to that value.

The supply defaults to OVP = 110% of rated output voltage.

Valid range = 0% to 110% of rated voltage.

Note: You cannot disable the OVP on these instruments. If you 
      try to set OVP to disabled, a warning is produced.
     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     r    Pass the name of the channel on which to configure the OVP limit.

Valid Channel Names:  1

Default Value:  "1"
    �    Pass whether you want to enable or disable the OVP limit.   The driver uses this value to set the XANM9B_ATTR_OVP_ENABLED attribute.

Note: This feature is not available on these instruments. OVP cannot be disabled. Trying to set this control to VI_FALSE will cause a warning to be issued.


Valid Values:
VI_TRUE  - Enable OVP limit
VI_FALSE - Disable OVP limit


Default Value: VI_TRUE
    z    Pass the over-voltage protection limit you want to use. The driver uses this value to set the XANM9B_ATTR_OVP_LIMIT attribute.

Units: volts

Default Value: 0.0 (instrument will default to 110% of max)

Valid Range:  <XFR 2.8kW Models>
              XFR7.5-300 - 0.375 to 8.25 volts
              XFR12-220  - 0.6 to 13.2 volts
              XFR20-130  - 1 to 22 volts
              XFR33-85   - 1.65 to 36.3 volts
              XFR40-70   - 2 to 44 volts
              XFR50-60   - 2.5 to 55 volts
              XFR60-46   - 3 to 66 volts
              XFR80-37   - 4 to 88 volts
              XFR100-28  - 5 to 110 volts
              XFR150-18  - 7.5 to 165 volts
              XFR300-9   - 15 to 330 volts
              XFR420-7   - 21 to 462 volts
              XFR600-4   - 30 to 660 volts
              <XFR 1.2kW Models>
              XFR6-200   - 0.3 to 6.6 volts 
              XFR7.5-140 - 0.375 to 8.25 volts
              XFR12-100  - 0.6 to 13.2 volts
              XFR20-60   - 1 to 22 volts
              XFR35-35   - 1.75 to 38.5 volts
              XFR40-30   - 2 to 44 volts
              XFR45-30   - 2.25 to 49.5 volts
              XFR60-20   - 3 to 66 volts
              XFR100-12  - 5 to 110 volts
              XFR150-8   - 7.5 to 165 volts
              XFR160-7.5 - 8 to 176 volts
              XFR300-4   - 15 to 330 volts
              XFR600-2   - 30 to 660 volts
              <XHR 1KW Models>
              XHR7.5-130 - 0 to 8.25 volts
              XHR20-50   - 0 to 22 volts
              XHR33-33   - 0 to 36.3 volts
              XHR40-25   - 0 to 44 volts
              XHR60-18   - 0 to 66 volts
              XHR100-10  - 0 to 110 volts
              XHR150-7   - 0 to 165 volts
              XHR300-3.5 - 0 to 330 volts
              XHR600-1.7 - 0 to 660 volts
              <XHR 600W Models>
              XHR7.5-80  - 0 to 8.25 volts 
              XHR20-30   - 0 to 22 volts
              XHR33-18   - 0 to 36.3 volts
              XHR40-15   - 0 to 44 volts
              XHR60-10   - 0 to 66 volts
              XHR100-6   - 0 to 110 volts
              XHR150-4   - 0 to 165 volts
              XHR300-2   - 0 to 330 volts
              XHR600-1   - 0 to 660 volts
              <XPD 500W Models>
              XPD7.5-67  - 0 to 8.25 volts
              XPD18-30   - 0 to 19.8 volts
              XPD33-16   - 0 to 36.3 volts
              XPD60-9    - 0 to 66 volts
              XPD120-4.5 - 0 to 132 volts
              <HPD 300W Models>
              HPD15-20   - 0 to 16.5 volts
              HPD30-10   - 0 to 33 volts
              HPD60-5    - 0 to 66 volts
              <XT 60W Models>
              XT7-6      - 0 to 7.7 volts
              XT15-4     - 0 to 16.5 volts
              XT20-3     - 0 to 22 volts
              XT30-2     - 0 to 33 volts
              XT60-1     - 0 to 66 volts
              XT120-0.5  - 0 to 132 volts
              XT250-0.25 - 0 to 275 volts
    �A-   �  �    Instrument Handle                 ��#����  �    Status                            �� 3 
 �  �    Channel Name                      �: � � �  �    Enabled                           �� 3 � �  �    Limit                                  	           "1"   True VI_TRUE False VI_FALSE    0.0    <    This function sets the maximum programmable voltage level.     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     l    Pass the name of the channel you want to enable or disable.

Valid Channel Names:  1

Default Value:  "1"
    
�    Pass the maximum programmable voltage level.  The driver uses this value to set the XANM9B_ATTR_MAXIMUM_VOLTAGE attribute. 

Units: volts


Valid Range:  <XFR 2.8KW Models>
              XFR7.5-300 - 0 to 7.5 volts
              XFR12-220  - 0 to 12 volts
              XFR20-130  - 0 to 20 volts
              XFR33-85   - 0 to 33 volts
              XFR40-70   - 0 to 40 volts
              XFR50-60   - 0 to 50 volts
              XFR60-46   - 0 to 60 volts
              XFR80-37   - 0 to 80 volts
              XFR100-28  - 0 to 100 volts
              XFR150-18  - 0 to 150 volts
              XFR300-9   - 0 to 300 volts
              XFR420-7   - 0 to 420 volts
              XFR600-4   - 0 to 600 volts
              <XFR 1.2KW Models>
              XFR6-200   - 0 to 6 volts 
              XFR7.5-140 - 0 to 7.5 volts
              XFR12-100  - 0 to 12 volts
              XFR20-60   - 0 to 20 volts
              XFR35-35   - 0 to 35 volts
              XFR40-30   - 0 to 40 volts
              XFR45-30   - 0 to 45 volts
              XFR60-20   - 0 to 60 volts
              XFR100-12  - 0 to 100 volts
              XFR150-8   - 0 to 150 volts
              XFR160-7.5 - 0 to 160 volts
              XFR300-4   - 0 to 300 volts
              XFR600-2   - 0 to 600 volts
              <XHR 1KW Models>
              XHR7.5-130 - 0 to 7.5 volts
              XHR20-50   - 0 to 20 volts
              XHR33-33   - 0 to 33 volts
              XHR40-25   - 0 to 40 volts
              XHR60-18   - 0 to 60 volts
              XHR100-10  - 0 to 100 volts
              XHR150-7   - 0 to 150 volts
              XHR300-3.5 - 0 to 300 volts
              XHR600-1.7 - 0 to 600 volts
              <XHR 600W Models>
              XHR7.5-80  - 0 to 7.5 volts 
              XHR20-30   - 0 to 20 volts
              XHR33-18   - 0 to 33 volts
              XHR40-15   - 0 to 40 volts
              XHR60-10   - 0 to 60 volts
              XHR100-6   - 0 to 100 volts
              XHR150-4   - 0 to 150 volts
              XHR300-2   - 0 to 300 volts
              XHR600-1   - 0 to 600 volts
              <XPD models>
              XPD7.5-67  - 0 to 7.5 volts
              XPD18-30   - 0 to 18 volts
              XPD33-16   - 0 to 33 volts
              XPD60-9    - 0 to 60 volts
              XPD120-4.5 - 0 to 120 volts
              <HPD 300W Models>
              HPD15-20   - 0 to 15 volts
              HPD30-10   - 0 to 30 volts
              HPD60-5    - 0 to 60 volts
              <XT 60W Models>
              XT7-6      - 0 to 7 volts
              XT15-4     - 0 to 15 volts
              XT20-3     - 0 to 20 volts
              XT30-2     - 0 to 30 volts
              XT60-1     - 0 to 60 volts
              XT120-0.5  - 0 to 120 volts
              XT250-0.25 - 0 to 250 volts
    �� 	  �  �    Instrument Handle                 ��f���  �    Status                            �S 8  �  �    Channel Name                      �� 8 � �  �    VMAX                                   	           "1"        <    This function sets the maximum programmable current limit.     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     l    Pass the name of the channel you want to enable or disable.

Valid Channel Names:  1

Default Value:  "1"
    
�    Pass the maximum programmable current limit you want to use. The driver uses this value to set the XANM9B_ATTR_MAXIMUM_CURRENT_LIMIT attribute.

Units: amps

Valid Range:  <XFR 2.8KW Models>
              XFR7.5-300 - 0 to 300 amps
              XFR12-220  - 0 to 220 amps
              XFR20-130  - 0 to 130 amps
              XFR33-85   - 0 to 85 amps
              XFR40-70   - 0 to 70 amps
              XFR50-60   - 0 to 60 amps
              XFR60-46   - 0 to 46 amps
              XFR80-37   - 0 to 37 amps
              XFR100-28  - 0 to 28 amps
              XFR150-18  - 0 to 18 amps
              XFR300-9   - 0 to 9 amps
              XFR420-7   - 0 to 7 amps
              XFR600-4   - 0 to 4 amps
              <XFR 1.2KW Models>
              XFR6-200   - 0 to 200 amps 
              XFR7.5-140 - 0 to 140 amps
              XFR12-100  - 0 to 100 amps
              XFR20-60   - 0 to 60 amps
              XFR35-35   - 0 to 35 amps
              XFR40-30   - 0 to 30 amps
              XFR45-30   - 0 to 30 amps  (if vout < 40 volts)
              XFR60-20   - 0 to 20 amps
              XFR100-12  - 0 to 12 amps
              XFR150-8   - 0 to 8 amps
              XFR160-7.5 - 0 to 7.5 amps
              XFR300-4   - 0 to 4 amps
              XFR600-2   - 0 to 2 amps
              <XHR 1KW Models>
              XHR7.5-130 - 0 to 130 amps
              XHR20-50   - 0 to 50 amps
              XHR33-33   - 0 to 33 amps
              XHR40-25   - 0 to 25 amps
              XHR60-18   - 0 to 18 amps
              XHR100-10  - 0 to 10 amps
              XHR150-7   - 0 to 7 amps
              XHR300-3.5 - 0 to 3.5 amps
              XHR600-1.7 - 0 to 1.7 amps
              <XHR 600W Models>
              XHR7.5-80  - 0 to 80 amps 
              XHR20-30   - 0 to 30 amps
              XHR33-18   - 0 to 18 amps
              XHR40-15   - 0 to 15 amps
              XHR60-10   - 0 to 10 amps
              XHR100-6   - 0 to 6 amps
              XHR150-4   - 0 to 4 amps
              XHR300-2   - 0 to 2 amps
              XHR600-1   - 0 to 1 amp
              <XPD models>
              XPD7.5-67  - 0 to 67 amps
              XPD18-30   - 0 to 30 amps
              XPD33-16   - 0 to 16 amps
              XPD60-9    - 0 to 9 amps
              XPD120-4.5 - 0 to 4.5 amps
              <HPD 300W Models>
              HPD15-20   - 0 to 20 amps
              HPD30-10   - 0 to 10 amps
              HPD60-5    - 0 to 5 amps
              <XT 60W Models>
              XT7-6      - 0 to 6 amps
              XT15-4     - 0 to 4 amps
              XT20-3     - 0 to 3 amps
              XT30-2     - 0 to 2 amps
              XT60-1     - 0 to 1 amp
              XT120-0.5  - 0 to 0.5 amps
              XT250-0.25 - 0 to 0.25 amps

    ��   �  �    Instrument Handle                 ҭe���  �    Status                            �v 8  �  �    Channel Name                      �� 8 � �  �    IMAX                                   	           "1"       �    This function sets the foldback mode for the supply.  Foldback protection disables the power supply output when the output enters the fold condition.

Note: When you configure the Current for the power supply, you have to choose either XANM9B_VAL_CURRENT_REGULATE, or XANM9B_VAL_CURRENT_TRIP. If you choose 'regulate', this driver will check the fold protection, and will ensure that fold CC is not selected. If you choose 'trip', this driver will set the foldback to CC mode.      v    Pass the name of the channel on which to configure the voltage level.

Valid Channel Names:  1

Default Value:  "1"
     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

        Pass the Foldback Setting you want the power supply to to generate.  The driver uses this value to set the XANM9B_ATTR_FOLDBACK_SETTING attribute.
 
Valid Values:
XANM9B_VAL_FOLD_OFF 
 - Foldback mode disabled

XANM9B_VAL_FOLD_CV  
 - Supply operates in Constant Current mode and disables output 
   if the supply switches to Constant Voltage mode.

XANM9B_VAL_FOLD_CC  
 - Supply operates in Constant Voltage mode and disables output 
   if the supply switches to Constant Current mode.
 
Default Value : XANM9B_VAL_FOLD_OFF    � 4  �  �    Channel Name                      �   �  �    Instrument Handle                 ��a���  �    Status                            � 4 � � �    Fold Value                         "1"        	                      SFOLD OFF XANM9B_VAL_FOLD_OFF FOLD CV XANM9B_VAL_FOLD_CV FOLD CC XANM9B_VAL_FOLD_CC    c    This function configures the time delay the power supply waits before reporting fault conditions.     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     v    Pass the name of the channel on which to configure the voltage level.

Valid Channel Names:  1

Default Value:  "1"
     �    Pass the time delay value you want the power supply to wait before reporting fault conditions.  The driver uses this value to set the XANM9B_ATTR_FAULT_DELAY attribute. 

Valid Range:   0 to 32 seconds

Default Value: 0.5 sec    �Y- 
  �  �    Instrument Handle                 �&W���  �    Status                            �� /  �  �    Channel Name                      �V / � �  �    Value                                  	           "1"    0.5    l    This function controls the AUXA output signal level at rear panel connector J7-7 (or J21-7 on XPD models).     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     l    Pass the name of the channel you want to enable or disable.

Valid Channel Names:  1

Default Value:  "1"
    -    Pass whether you want the AUXA output signal level to appear at rear panel connector J7-7 (J21-7 on XPD models).  The driver uses this value to set the XANM9B_ATTR_AUXA_ENABLED attribute.


Valid Values:
VI_TRUE  - Enable the AUXA output
VI_FALSE - Disable the AUXA output

 
Default Value: VI_TRUE
    � 
  �  �    Instrument Handle                ]����  �    Status                           	& -  �  �    Channel Name                     	� = � �  �    Enabled                                	           "1"   True VI_TRUE False VI_FALSE    k    his function controls the AUXB output signal level at rear panel connector J7-8 (or J21-8 on XPD models).     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     l    Pass the name of the channel you want to enable or disable.

Valid Channel Names:  1

Default Value:  "1"
    -    Pass whether you want the AUXB output signal level to appear at rear panel connector J7-8 (J21-8 on XPD models).  The driver uses this value to set the XANM9B_ATTR_AUXB_ENABLED attribute.


Valid Values:
VI_TRUE  - Enable the AUXB output
VI_FALSE - Disable the AUXB output

 
Default Value: VI_TRUE
   L   �  �    Instrument Handle                ����  �    Status                           � +  �  �    Channel Name                     ? 8 � �  �    Enabled                                	           "1"   True VI_TRUE False VI_FALSE    O    This function enables the Service Request option for the IEEE 488 Controller.     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     l    Pass the name of the channel you want to enable or disable.

Valid Channel Names:  1

Default Value:  "1"
     �    Pass whether the supply is to respond to fault conditions with a request for service to the IEEE-488 Bus Controller.


Valid Values:
VI_TRUE  - SRQ ON
VI_FALSE - SRQ OFF

 
Default Value: VI_TRUE
   �   �  �    Instrument Handle                �����  �    Status                            T 3  �  �    Channel Name                      � 4 � �  �    Enabled                                	           "1"   True VI_TRUE False VI_FALSE    �    This function configures the enable/disable for the voltage/current setting hold mode on the supply.  When HOLD ON is specified, all voltage and current settings are held until a TRG command is received.     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     w    Pass the name of the channel on which to configure the trigger source.

Valid Channel Names:  1

Default Value:  "1"
     �    Pass whether you want to enable or disable HOLD mode.   The driver uses this value to set the XANM9B_ATTR_HOLD_ENABLED attribute.


Valid Values:
VI_TRUE  - Enable HOLD
VI_FALSE - Disable HOLD


Default Value: VI_TRUE
   #u   �  �    Instrument Handle                $+b���  �    Status                           +� J  �  �    Channel Name                     ,s H � �  �    Enabled                                	           "1"   True VI_TRUE False VI_FALSE   L    This function configures the DC voltage level the power supply attempts to generate after it receives a trigger.

** Ensure that you have enabled HOLD, before calling this function. You must call XanM9B_ConfigureHoldEnabled and set to 'Enabled'. Otherwise, the voltage you specify in this function will be implemented immediately.     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    Pass the name of the channel on which to configure the triggered voltage level.

Valid Channel Names:  1

Default Value:  "1"
     �    Pass the DC voltage level you want the power supply to attempt to generate after it receives a trigger.  The driver sets the XANM9B_ATTR_TRIGGERED_VOLTAGE_LEVEL attribute to this value.

Units: volts


Default Value:  0.0 volts
   /�)   �  �    Instrument Handle                0k"v���  �    Status                           84 1 
 �  �    Channel Name                     8� 1 � �  �    Triggered Level                        	           "1"    0.0   E    This function configures the current limit the power supply attempts to use after it receives a trigger.


** Ensure that you have enabled HOLD, before calling this function. You must call XanM9B_ConfigureHoldEnabled and set to 'Enabled'. Otherwise, the current you specify in this function will be implemented immediately.     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    Pass the name of the channel on which to configure the triggered current limit.


Valid Channel Names:  1

Default Value:  "1"
     �    Pass the current limit you want the power supply to attempt to use after it receives a trigger.  The driver sets the XANM9B_ATTR_TRIGGERED_CURRENT_LIMIT attribute to this value.

Units: amps

Default Value:  0.0 amps
   ;�#   �  �    Instrument Handle                <�$|���  �    Status                           D� 3 
 �  �    Channel Name                     E. 3 � �  �    Triggered Limit                        	           "1"    0.0   �    This function configures the trigger source to which the power supply responds after you call XanM9B_Initiate.  When the power supply receives a trigger signal on the source you specify, it changes its current and voltage outputs.

You configure the triggered current and voltage outputs with the
XanM9B_ConfigureTriggeredCurrentLimit and 
XanM9B_ConfigureTriggeredVoltageLevel functions. 

Notes:

(1) This function is part of the IviDCPwrTrigger [TRG] extension group.

** Note: You cannot configure a trigger source for these
   devices. This function is only included to comply with the
   IVI specifications. Calling this function will result in an 
   error being returned.     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     w    Pass the name of the channel on which to configure the trigger source.

Valid Channel Names:  1

Default Value:  "1"
        Pass the trigger source to which you want the power supply to respond.  The driver sets the XANM9B_ATTR_TRIGGER_SOURCE attribute to this value.

Default Value:
None

Note: This function is not supported, calls to it will result in an error being returned.   I�!   �  �    Instrument Handle                Jj���  �    Status                           R3 =  �  �    Channel Name                     R� : � �  �    Source                                 	           "1"       �    This function sets the value of a ViInt32 attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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

Default Value:  "1"
   Y}-   �  �    Instrument Handle                Z3#����  �    Status                           a� � � �  �    Attribute Value                 ���� � ���                                          d = � � �    Attribute ID                     ib =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    "1"   �    This function sets the value of a ViReal64 attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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

Default Value:  "1"
   p�-   �  �    Instrument Handle                q�#����  �    Status                           yW � � �  �    Attribute Value                 ���� � ���                                          {r = � � �    Attribute ID                     �� =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    "1"   �    This function sets the value of a ViString attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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

Default Value:  "1"
   �1-   �  �    Instrument Handle                ��#����  �    Status                           �� � � �  �    Attribute Value                 ���� � ���                                          �� = � � �    Attribute ID                     � =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    "1"   �    This function sets the value of a ViBoolean attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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

Default Value:  "1"
   ��-   �  �    Instrument Handle                �@#����  �    Status                           �	 � � �  �    Attribute Value                 ���� � ���                                          �$ = � � �    Attribute ID                     �o =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    "1"   �    This function sets the value of a ViSession attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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

Default Value:  "1"
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
   ��-   �  �    Instrument Handle                ��#����  �    Status                           �d � � �  �    Attribute Value                  � =  �  �    Channel Name                      = � � �    Attribute ID                    ���� � ���                                                	               "1"                0    .Press <ENTER> for a list of 
value constants.   �    This function queries the value of a ViInt32 attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

    �    Returns the current value of the attribute.  Pass the address of a ViInt32 variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
         If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  1

Default Value:  "1"
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
   �(-   �  �    Instrument Handle                ��#����  �    Status                           ӧ � � �  �    Attribute Value                  �e =  �  �    Channel Name                     �m = � � �    Attribute ID                           	           	            "1"                0   �    This function queries the value of a ViReal64 attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

    �    Returns the current value of the attribute.  Pass the address of a ViReal64 variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
         If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  1

Default Value:  "1"
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
   �	-   �  �    Instrument Handle                ޿#����  �    Status                           � � � �  �    Attribute Value                  �G =  �  �    Channel Name                     �O = � � �    Attribute ID                           	           	           "1"                0   4    This function queries the value of a ViString attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

You must provide a ViChar array to serve as a buffer for the value.  You pass the number of bytes in the buffer as the Buffer Size parameter.  If the current value of the attribute, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you want to call this function just to get the required buffer size, you can pass 0 for the Buffer Size and VI_NULL for the Attribute Value buffer.  

If you want the function to fill in the buffer regardless of the   number of bytes in the value, pass a negative number for the Buffer Size parameter.  


     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
         If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  1

Default Value:  "1"
    �    Pass the number of bytes in the ViChar array you specify for the Attribute Value parameter.  

If the current value of the attribute, including the terminating NUL byte, contains more bytes that you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Attribute Value buffer parameter.

Default Value: 512 Bytes
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
   �j-   �  �    Instrument Handle                � #����  �    Status or Required Size          �� �  �      Attribute Value                   =  �  �    Channel Name                      =� �  �    Buffer Size                       = � � �    Attribute ID                           	           	            "1"    512                0   �    This function queries the value of a ViBoolean attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

    �    Returns the current value of the attribute.  Pass the address of a ViBoolean variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
         If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  1

Default Value:  "1"
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
   �-   �  �    Instrument Handle                �#����  �    Status                           u � � �  �    Attribute Value                  5 =  �  �    Channel Name                     = = � � �    Attribute ID                           	           	            "1"                0   �    This function queries the value of a ViSession attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

    �    Returns the current value of the attribute.  Pass the address of a ViSession variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
         If the attribute is channel-based, this parameter specifies the name of the channel on which to obtain the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Channel Names:  1

Default Value:  "1"
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
   �-   �  �    Instrument Handle                 �#����  �    Status                           (\ � � �  �    Attribute Value                  * =  �  �    Channel Name                     +$ = � � �    Attribute ID                           	           	            "1"                0    S    This function checks the validity of a value you specify for a ViInt32 attribute.     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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

Default Value:  "1"
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
   1`-   �  �    Instrument Handle                2#����  �    Status                           9� � � �  �    Attribute Value                  < =  �  �    Channel Name                    ���� � ���                                          = = � � �    Attribute ID                           	               "1"    .Press <ENTER> for a list of 
value constants.                0    T    This function checks the validity of a value you specify for a ViReal64 attribute.     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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

Default Value:  "1"
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
   DO-   �  �    Instrument Handle                E#����  �    Status                           L� � � �  �    Attribute Value                  N� =  �  �    Channel Name                    ���� � ���                                          O� = � � �    Attribute ID                           	               "1"    .Press <ENTER> for a list of 
value constants.                0    T    This function checks the validity of a value you specify for a ViString attribute.     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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

Default Value:  "1"
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
   W@-   �  �    Instrument Handle                W�#����  �    Status                           _� � � �  �    Attribute Value                  a� =  �  �    Channel Name                    ���� � ���                                          b� = � � �    Attribute ID                           	               "1"    .Press <ENTER> for a list of 
value constants.                0    U    This function checks the validity of a value you specify for a ViBoolean attribute.     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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

Default Value:  "1"
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
   j2-   �  �    Instrument Handle                j�#����  �    Status                           r� � � �  �    Attribute Value                  t� =  �  �    Channel Name                    ���� � ���                                          u� = � � �    Attribute ID                           	               "1"    .Press <ENTER> for a list of 
value constants.                0    U    This function checks the validity of a value you specify for a ViSession attribute.     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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

Default Value:  "1"
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
   }'-   �  �    Instrument Handle                }�#����  �    Status                           �� � � �  �    Attribute Value                  �� =  �  �    Channel Name                    ���� � ���                                          �� = � � �    Attribute ID                           	               "1"    .Press <ENTER> for a list of 
value constants.                0    �    This function takes a single measurement on the channel you specify.

Notes:

(1) This function is part of the IviDCPwrMeasure [MSR] extension group.
     �    Pass the measurement you want the power supply to take.


Valid Values:
XANM9B_VAL_MEASURE_VOLTAGE - DC voltage measurement
XANM9B_VAL_MEASURE_CURRENT - DC current measurement
 

Default Value: XANM9B_VAL_MEASURE_VOLTAGE     m    Returns the measured value.

Units: volts (for voltage measurement)
       amps  (for current measurement)
     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     m    Pass the name of the channel on which to take a measurement.

Valid Channel Names:  1

Default Value:  "1"
   �^ 3 � � �    Measurement Type                 �D 3� �  �    Measurement                      ��-   �  �    Instrument Handle                �o#����  �    Status                           �8 3 
 �  �    Channel Name                                  FVoltage XANM9B_VAL_MEASURE_VOLTAGE Current XANM9B_VAL_MEASURE_CURRENT    	               	           "1"   T    After you call this function, the power supply waits for the trigger you specify with the XanM9B_ConfigureTriggerSource function.  

After the power supply detects the trigger, it updates its voltage level, current limit and power limit to the values you specify with the XanM9B_ConfigureTriggeredVoltageLevel XanM9B_ConfigureTriggeredCurrentLimit functions

Notes:
(1) This function is part of the IviDCPwrTrigger [TRG] 
    extension group.

(2) Always call this function before calling 
    XanM9B_SendSoftwareTrigger and when you want the supply to
    wait for an external trigger source.     �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   ������  �    Status                           �S    �  �    Instrument Handle                  	              Z    This function aborts all pending output changes, and instructs the instrument to no longer wait for a trigger event.

Notes:

(1) This function is part of the IviDCPwrTrigger [TRG] extension group.

(2) If you call this function after calling the XanM9B_Initiate function, the power supply ignores any trigger and does not change the output.


    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   ������  �    Status                           ��" 
  �  �    Instrument Handle                  	               �    This function sends a command to trigger the power supply.  
The programmed voltage and current settings which had been in hold mode will be implemented.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   ��#����  �    Status                           �J&   �  �    Instrument Handle                  	               2    This function clears the status data structures.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   ��$����  �    Status                           �}'   �  �    Instrument Handle                  	              �    This function resets the power supply's output protection after an over-voltage, over-current, or other output protection condition occurs.

An over-voltage condition occurs when the output voltage is equal to or greater than the value of the XANM9B_ATTR_OVP_LIMIT attribute and the XANM9B_ATTR_OVP_ENABLED attribute is set to VI_TRUE.  

An over-current condition occurs when the output current is equal to or greater than the value of the XANM9B_ATTR_CURRENT_LIMIT attribute.  

When either an over-voltage condition or an over-current condition occurs, the output protection of the power supply disables the output.  Once the output protection is reset, the power supply resumes generating a power signal.

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     `    Pass the name of the channel you want to reset.

Valid Channel Names:  1

Default Value:  "1"
   �}-   �  �    Instrument Handle                �3#����  �    Status                           �� 3 
 �  �    Channel Name                           	           "1"   -    This function disables the power supply's previously unmasked
operating conditions from setting bits in the fault and status registers.

Note: The supply powers up with all mnemonics masked. This function is used to mask certain conditions that were previously unmasked for fault detection purposes.     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     `    Pass the name of the channel you want to reset.

Valid Channel Names:  1

Default Value:  "1"
    �    Pass the operating conditions to be masked.

Format: "CC,CV,FOLD"

Valid Mnemonics for XFR-XHR-XPD:  CV,CC,OV,OT,SD,FOLD,ERR,PON,REM,ACF,OPF,SNS,ALL,NONE   

Valid Mnemonics for HPD-XT:
CV,CC,OV,SD,FOLD,ERR,PON,REM,ALL,NONE 

Default Value: "ALL" 

Note: Do not put spaces between the mnemonics. Use only commas to separate the mnemonics and ensure that the mnemonics are inside the quotation marks unless you are passing a literal. Also ensure to use capital letters only.   �O#   �  �    Instrument Handle                �#|���  �    Status                           �� .  �  �    Channel Name                     �6 . � �  �    Settings                               	           "1"    "ALL"    �    This function enables the user to select the supply operating conditions to monitor for fault occurrence.

The supply powers up with all mnemonics masked. Therefore, unmask the conditions you are interested in.     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     `    Pass the name of the channel you want to reset.

Valid Channel Names:  1

Default Value:  "1"
    �    Pass the operating conditions to be unmasked.

Format: "CC,CV,FOLD"
     
Valid Mnemonics for XFR-XHR-XPD:  CV,CC,OV,OT,SD,FOLD,ERR,PON,REM,ACF,OPF,SNS,ALL,NONE    

Valid Mnemonics for HPD-XT:
CV,CC,OV,SD,FOLD,ERR,PON,REM,ALL,NONE 

Default Value: "NONE"

Note: Do not put spaces between the mnemonics. Use only commas to separate the mnemonics and ensure that the mnemonics are inside the quotation marks unless you are passing a literal. Also ensure to use Capital Letters only.   ��#   �  �    Instrument Handle                ߟ|���  �    Status                           �h )  �  �    Channel Name                     �� * � �  �    Settings                               	           "1"    "NONE"       This function returns whether the power supply is in a particular output state.

A constant voltage condition occurs when the output voltage is equal to the value of the XANM9B_ATTR_VOLTAGE_LEVEL attribute and the current is less than or equal to the value of the XANM9B_ATTR_CURRENT_LIMIT attribute.

A constant current condition occurs when the output current is equal to the value of the XANM9B_ATTR_CURRENT_LIMIT attribute and the XANM9B_ATTR_CURRENT_LIMIT_BEHAVIOR attribute is set to XANM9B_VAL_CURRENT_REGULATE.

An unregulated condition occurs when the output voltage is less than the value of the XANM9B_ATTR_VOLTAGE_LEVEL attribute and the current is less than the value of the XANM9B_ATTR_CURRENT_LIMIT attribute.

An over-voltage condition occurs when the output voltage is equal to or greater than the value of the XANM9B_ATTR_OVP_LIMIT attribute and the XANM9B_ATTR_OVP_ENABLED attribute is set to VI_TRUE.

When an over-voltage condition occurs, the power supply's output protection disables the output.  If the power supply is in an over-voltage state, it does not produce power until the output protection is reset.  The XanM9B_ResetOutputProtection function resets the output protection.  Once the output protection is reset, the power supply resumes generating a power signal.
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    1    Pass the output state for which you want to query.

Defined Values:
XANM9B_VAL_OUTPUT_CONSTANT_VOLTAGE - Constant Voltage State

XANM9B_VAL_OUTPUT_CONSTANT_CURRENT - Constant Current State

XANM9B_VAL_OUTPUT_UNREGULATED      - Unregulated State

XANM9B_VAL_OUTPUT_OVER_VOLTAGE     - Over-Voltage State

XANM9B_VAL_OUTPUT_OVER_TEMPERATURE - Over-Temperature State

XANM9B_VAL_OUTPUT_FOLD_TRIPPED     - Fold Protection Tripped

Default Value: XANM9B_VAL_OUTPUT_CONSTANT_VOLTAGE

Note: 
The XT and HPD models do not have an Over-Temperature sensing capabiltity.
     �    This parameter returns VI_TRUE if the power supply is currently in the state you specify with the OutputState parameter, and VI_FALSE if it is not.
     m    Pass the name of the channel on which to take a measurement.

Valid Channel Names:  1

Default Value:  "1"
   ������  �    Status                           ��( 
  �  �    Instrument Handle                �I . � � �    Output State                     �� .� �  �    In State                         �  /  �  �    Channel Name                       	                         !Constant Voltage XANM9B_VAL_OUTPUT_CONSTANT_VOLTAGE Constant Current XANM9B_VAL_OUTPUT_CONSTANT_CURRENT Unregulated XANM9B_VAL_OUTPUT_UNREGULATED Over Voltage XANM9B_VAL_OUTPUT_OVER_VOLTAGE Over Temperature XANM9B_VAL_OUTPUT_OVER_TEMPERATURE Fold Protection XANM9B_VAL_OUTPUT_FOLD_TRIPPED    	            "1"    �    This function queries the state of the fault register.  A bit is set in the fault register when a fault arises for that condition. The query clears the fault register.     �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     m    Pass the name of the channel on which to take a measurement.

Valid Channel Names:  1

Default Value:  "1"
    X    Returns the decimal value of the Fault Register.

The returned value represents a combination of the bits below.

Bit Position     Bit Weight     Condition
-------------------------------------------------------
     0               1          Constant Voltage
     1               2          Constant Current
     2               4          Not Used
     3               8          Over Voltage Tripped
     4               16         Over Temperature Tripped
     5               32         External Shutdown Active
     6               64         Foldback Mode Operation
     7               128        Programming Error
     8               256        Power ON
     9               512        Remote Mode
     10              1024       AC Failed
     11              2048       Output Failed
     12              4096       Sense Protection Tripped
   ������  �    Status                           l   �  �    Instrument Handle                " .  �  �    Channel Name                     � '� �  �    Fault State                        	               "1"    	           i    This function returns the maximum programmable current limit that the power supply accepts. 

This function is here to be in accordance with the IVI-4.4: IviDCPwr Class Specification. 

Since these instruments do not support different voltage range setups, this function verifies the voltage level you specify and returns the power supplies max current limit.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     /    Valid Channel Names:  1

Default Value:  "1"
     �    Pass the voltage level for which to determine the maximum programmable current limit.   

Units: volts (V).

Default Value: 0.0
     s    This parameter returns the maximum programmable current limit for the voltage level you specify.

Units: amps (A)   _����  �    Status                           (' 
  �  �    Instrument Handle                � 0  �  �    Channel Name                      0 � �  �    Voltage Level                    � 0~ �  �    Max Current Limit                  	               "1"    0.0    	          u    This function returns the maximum programmable voltage level that the power supply accepts. 

This function is here to be in accordance with the IVI-4.4: IviDCPwr Class Specification. 

Since these instruments do not support different current range setups, this function verifies the current limit you specify and returns the power supplies maximum voltage level setting.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     /    Valid Channel Names:  1

Default Value:  "1"
     �    Pass the current limit for which to determine the maximum programmable voltage level.  

Units: amps (A).

Default Value: 0.0

     t    This parameter returns the maximum programmable voltage level for the current limit you specify.

Units: volts (V)   �#����  �    Status                           !�-   �  �    Instrument Handle                "I 6  �  �    Channel Name                     "� 6 � �  �    Current Limit                    #	 6� �  �    Max Voltage Level                  	               "1"    0.0    	           V    This function queries the fault register for the fault conditions which are enabled.     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     `    Pass the name of the channel you want to reset.

Valid Channel Names:  1

Default Value:  "1"
    *    Returns the supply's faults conditions which are currently enabled.

Bit Position     Bit Weight     Condition
-------------------------------------------------------
     0               1          Constant Voltage
     1               2          Constant Current
     2               4          Not Used
     3               8          Over Voltage Tripped
     4               16         Over Temperature Tripped
     5               32         External Shutdown Active
     6               64         Foldback Mode Operation
     7               128        Programming Error
     8               256        Power ON
     9               512        Remote Mode
     10              1024       AC Failed
     11              2048       Output Failed
     12              4096       Sense Protection Tripped   %   �  �    Instrument Handle                %�r���  �    Status                           -� %  �  �    Channel Name                     -� (l �  �    Unmask State                           	           "1"    	            �    This function queries one of the following setpoint Limits:

Voltage
Current
Voltage Soft Limit
Current Soft Limit
Over Voltage Protection
Fault Delay Time      �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     m    Pass the name of the channel on which to take a measurement.

Valid Channel Names:  1

Default Value:  "1"
    �    Pass the setpoint type you want to query.


Valid Values:
XANM9B_ATTR_VOLTAGE_LEVEL          = Voltage
XANM9B_ATTR_CURRENT_LIMIT          = Current
XANM9B_ATTR_MAXIMUM_VOLTAGE        = Voltage Soft Limit
XANM9B_ATTR_MAXIMUM_CURRENT_LIMIT  = Current Soft Limit
XANM9B_ATTR_OVP_LIMIT              = Over Voltage Protection
XANM9B_ATTR_FAULT_DELAY            = Fault Delay Time
 

Default Value: XANM9B_ATTR_VOLTAGE_LEVEL     �    Returns the setpoint value.

Units: volts   (for voltage settings)
       amps    (for current settings)
       seconds (for Fault Delay setting)    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

   2�   �  �    Instrument Handle                3� 3  �  �    Channel Name                     3� 3 � � �    Setpoint Type                    5� 3� �  �    Setpoint Level                   6=����  �    Status                                 "1"               �Voltage XANM9B_ATTR_VOLTAGE_LEVEL Current XANM9B_ATTR_CURRENT_LIMIT Voltage Soft Limit XANM9B_ATTR_MAXIMUM_VOLTAGE Current Soft Limit XANM9B_ATTR_MAXIMUM_CURRENT_LIMIT Over Voltage Protection XANM9B_ATTR_OVP_LIMIT Fault Delay XANM9B_ATTR_FAULT_DELAY    	           	           �    This function queries the current state of the following settings.

Output:     0/1     Disabled/Enabled
Aux A:      0/1     Disabled/Enabled
Aux B:      0/1     Disabled/Enabled
Fold:       0/1/2   Disabled/CV/CC
Hold:       0/1     Disabled/Enabled     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     m    Pass the name of the channel on which to take a measurement.

Valid Channel Names:  1

Default Value:  "1"
        Pass the Mode type you want to query.


Valid Values:
XANM9B_ATTR_OUTPUT_ENABLED   = Output
XANM9B_ATTR_AUXA_ENABLED     = Aux A
XANM9B_ATTR_AUXB_ENABLED     = Aux B
XANM9B_ATTR_FOLDBACK_SETTING = Fold
XANM9B_ATTR_HOLD_ENABLED     = Hold
 

Default Value: XANM9B_ATTR_OUTPUT_ENABLED    &    Returns the status of the mode being queried.

Mode Type   Mode Value       Meaning
Output:        0/1       Disabled/Enabled
Aux A:         0/1       Disabled/Enabled
Aux B:         0/1       Disabled/Enabled
Fold:          0/1/2     Disabled/CV/CC
Hold           0/1       Disabled/Enabled
   A? 
  �  �    Instrument Handle                A�����  �    Status                           I� 0  �  �    Channel Name                     J2 . � � �    Mode Type                        KV /� �  �    Mode Value                             	           "1"               �Output XANM9B_ATTR_OUTPUT_ENABLED Aux A XANM9B_ATTR_AUXA_ENABLED Aux B XANM9B_ATTR_AUXB_ENABLED Fold XANM9B_ATTR_FOLDBACK_SETTING Hold XANM9B_ATTR_HOLD_ENABLED    	            �    This function asks for the supply's accumulated status register.  The accumulated status register stores any bit that was entered in the status register since the last ASTS command.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     m    Pass the name of the channel on which to take a measurement.

Valid Channel Names:  1

Default Value:  "1"
    %    Returns the decimal value of the Accumulated Status Register.

Bit Position     Bit Weight     Condition
-------------------------------------------------------
     0               1          Constant Voltage
     1               2          Constant Current
     2               4          Not Used
     3               8          Over Voltage Tripped
     4               16         Over Temperature Tripped
     5               32         External Shutdown Active
     6               64         Foldback Mode Operation
     7               128        Programming Error
     8               256        Power ON
     9               512        Remote Mode
     10              1024       AC Failed
     11              2048       Output Failed
     12              4096       Sense Protection Tripped
   O����  �    Status                           V�   �  �    Instrument Handle                W� 3  �  �    Channel Name                     X ,� �  �    State                              	               "1"    	            6    This function enables/disables the calibration mode.     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     l    Pass the name of the channel you want to enable or disable.

Valid Channel Names:  1

Default Value:  "1"
     �    Pass whether you want the power supply to be in calibration mode   The driver uses this value to set the XANM9B_ATTR_CMODE_ENABLED attribute.


Valid Values:
VI_TRUE  - Enable CMODE
VI_FALSE - Disable CMODE

 
Default Value: VI_TRUE
   \t  	  �  �    Instrument Handle                ]*����  �    Status                           d� *  �  �    Channel Name                     eg 0 � �  �    Enabled                                	           "1"   True VI_TRUE False VI_FALSE        This function runs the instrument's self test routine and returns the test result. 

**Self Test is not a supported function. It is only included to comply with the IVI specifications. Calling this function will result in an warning code being returned.
     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    This control contains the value returned from the instrument self test.  Zero means success.  For any other code, see the device's operator's manual.

     �    Returns the self-test response string from the instrument. See the device's operation manual for an explanation of the string's contents.

You must pass a ViChar array with at least 256 bytes.   hl( 
  �  �    Instrument Handle                i"����  �    Status                           p� @ ( �  �    Self Test Result                 q� @ � � ,    Self-Test Message                      	           	           	            B    This function resets the instrument to its power ON condition.
     �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   s�#����  �    Status                           {e-   �  �    Instrument Handle                  	                   This function resets the instrument and applies initial user specified settings from the Logical Name which was used to initialize the session.  If the session was created without a Logical Name, this function is equivalent to the XanM9B_reset function.
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   }�����  �    Status                           �f) 
  �  �    Instrument Handle                  	               �    This function places the instrument in a quiescent state where it has minimal or no impact on the system to which it is connected. It does this by sending the CLR command.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   �K����  �    Status                           �( 
  �  �    Instrument Handle                  	               `    This function returns the revision numbers of the instrument driver and instrument firmware.

     �    Returns the instrument driver software revision numbers in the form of a string.

You must pass a ViChar array with at least 256 bytes.     �    Returns the instrument firmware revision numbers in the form of a string.

You must pass a ViChar array with at least 256 bytes.
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   �� = 3 �  �    Instrument Driver Revision       �= =6 �  �    Firmware Revision                ��#����  �    Status                           ��-   �  �    Instrument Handle                  	            	            	               �    Select the operation mode for the supply. This function sets the XANM9B_ATTR_REMOTE_MODE attribute.

Note: It is not necessary to call this function if you are using GPIB to connect to the power supply     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    Select operation mode for the supply.

Valid Values:
XANM9B_VAL_LOC - supply runs in Local mode (front panel)
XANM9B_VAL_REM - supply runs in Remote mode (RS 232)


Default Value:
XANM9B_VAL_REM   �   �  �    Instrument Handle                ������  �    Status                           �� G � � �    State                                  	                      +Remote XANM9B_VAL_REM Local XANM9B_VAL_LOC    P    This function invalidates the cached values of all attributes for the session.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   ������  �    Status                           ��! 
  �  �    Instrument Handle                  	               `    The function returns the channel string that is in the channel table at an index you specify.
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     <    A 1-based index into the channel table.

Default Value: 1
     �    Returns the channel string that is in the channel table at the index you specify.

Do not modify the contents of the channel string.    �    Pass the number of bytes in the ViChar array you specify for the Channel String parameter.

If the Channel String, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies BufferSize - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Channel String buffer parameter.

Default Value:  None
   �1#����  �    Status                           ��-   �  �    Instrument Handle                �� H % �  �    Index                            �� H" �  �    Channel Name                     �� � + �  �    Name Buffer Size                   	               1    	                H    This function reads an error code from the instrument's error queue.

     B    Returns the error code read from the instrument's error queue.

    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     �    Returns the error message string read from the instrument's error message queue.

You must pass a ViChar array with at least 256 bytes.
   �� 4  �  �    Error Code                       �.d���  �    Status                           ��   �  �    Instrument Handle                ĭ 2 � � ,    Error Message                      	            	               	            n    This function converts a status code returned by an instrument driver function into a user-readable string.     &R    Pass the Status parameter that is returned from any of the instrument driver functions.
          
Default Value:  0  (VI_SUCCESS)
          
XanM9B Status Codes:
Status    Description
-------------------------------------------------
ERRORS:
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
IviPower Status Codes:
Status    Description
-------------------------------------------------
ERRORS:
BFFA1001  The trigger source is not software trigger.

IVI Engine Status Codes:
Status    Description
-------------------------------------------------
ERRORS:
BFFA0001  Instrument error. Call XanM9B_error_query.
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
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

        The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

You can pass VI_NULL for this parameter.  This is useful when one of the initialize functions fail.

Default Value:  VI_NULL
   Ʊ =  �  h    Error Code                       � = � � �    Error Message                    ��#����  �    Status                           �o-   �  �    Instrument Handle                  0    	            	           VI_NULL   9    This function returns the error information associated with an IVI session or with the current execution thread.  If you specify a valid IVI session for the Instrument Handle parameter, this function retrieves and then clears the error information for the session.  If you pass VI_NULL for the Instrument Handle parameter, this function retrieves and then clears the error information for the current execution thread.  

The error information includes a primary error, secondary error, and an error elaboration string.  For a particular session, this information is the same as the values held in the following attributes:

XANM9B_ATTR_PRIMARY_ERROR
XANM9B_ATTR_SECONDARY_ERROR
XANM9B_ATTR_ERROR_ELABORATION

The IVI Library also maintains this error information separately for each thread.  This is useful if you do not have a session handle to pass to XanM9B_GetErrorInfo or XanM9B_ClearErrorInfo, which
occurs when a call to XanM9B_init or XanM9B_InitWithOptions fails.

You can call XanM9B_error_message to obtain a text description of the primary or secondary error value.
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  VI_NULL
     �    Returns the error code for the session or execution thread.

If you pass 0 for the Buffer Size, you can pass VI_NULL for this parameter.
    �    Pass the number of bytes in the ViChar array you specify for the Description parameter.

If the error description, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies BufferSize - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Description buffer parameter.

Default Value:  None
    �    Returns the error description for the IVI session or execution thread.  If there is no description, the function returns an empty string.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter.  If the error description, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass 0 for the Buffer Size, you can pass VI_NULL for this parameter.   ��"����  �    Status                           �, 
  �  �    Instrument Handle                L 8 D �  �    Error Code                       � 83 �  �    Error Description Buffer Size    � � C � �    Error Description                  	               	               	           �    This function clears the error information for the current execution thread and the IVI session you specify.  If you pass VI_NULL for the Instrument Handle parameter, this function clears the error information only for the current execution thread. 

The error information includes a primary error code, secondary error code, and an error elaboration string.  For a particular session, this information is the same as the values held in the following attributes:

XANM9B_ATTR_PRIMARY_ERROR
XANM9B_ATTR_SECONDARY_ERROR
XANM9B_ATTR_ERROR_ELABORATION

This function sets the primary and secondary error codes to VI_SUCCESS (0), and sets the error elaboration string to "".

The IVI Library also maintains this error information separately for each thread.  This is useful if you do not have a session handle to pass to XanM9B_ClearErrorInfo or XanM9B_GetErrorInfo, which occurs when a call to XanM9B_init or XanM9B_InitWithOptions fails.

    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  VI_NULL
   �����  �    Status                           l$ 
  �  �    Instrument Handle                  	              �    This function returns the coercion information associated with the IVI session.  This function retrieves and clears the oldest instance in which the instrument driver coerced a value you specified to another value.

If you set the XANM9B_ATTR_RECORD_COERCIONS attribute to VI_TRUE, the instrument driver keeps a list of all coercions it makes on ViInt32 or ViReal64 values you pass to instrument driver functions.  You use this function to retrieve information from that list.

If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Coercion Record buffer parameter.

The function returns an empty string in the Coercion Record parameter if no coercion records remain for the session.

    	}    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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

     �    The ViSession handle that you obtain from the XanM9B_init function.  The handle identifies a particular instrument session.

Default Value:  None    �    Returns the next coercion record for the IVI session.  If there are no coercion records, the function returns an empty string.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter.  If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

This parameter returns an empty string if no coercion records remain for the session.
    �    Pass the number of bytes in the ViChar array you specify for the Coercion Record parameter.

If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Coercion Record buffer parameter.

Default Value:  None

   u#����  �    Status or Required Size          &�-   �  �    Instrument Handle                '� � Q � �    Coercion Record                  *� = � �  �    Buffer Size                        	               	               -    This function returns the interchangeability warnings associated with the IVI session. It retrieves and clears the oldest instance in which the class driver recorded an interchangeability warning.  Interchangeability warnings indicate that using your application with a different instrument might cause different behavior. You use this function to retrieve interchangeability warnings.

The driver performs interchangeability checking when the XANM9B_ATTR_INTERCHANGE_CHECK attribute is set to VI_TRUE.

The function returns an empty string in the Interchange Warning parameter if no interchangeability warnings remain for the session.

In general, the instrument driver generates interchangeability warnings when an attribute that affects the behavior of the instrument is in a state that you did not specify.
    	}    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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

     �    The ViSession handle that you obtain from the XanM9B_init function.  The handle identifies a particular instrument session.

Default Value:  None    �    Pass the number of bytes in the ViChar array you specify for the Interchange Warning parameter.

If the next interchangeability warning string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Interchange Warning buffer parameter.

Default Value:  None
        Returns the next interchange warning for the IVI session. If there are no interchange warnings, the function returns an empty  string.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter. If the next interchangeability warning string, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

This parameter returns an empty string if no interchangeability
warnings remain for the session.

   1�����  �    Status or Required Size          ;>' 
  �  �    Instrument Handle                ;� * � �  �    Buffer Size                      >� � J � �    Interchange Warning                	                   	            @    This function clears the list of current interchange warnings.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   C?����  �    Status                           K' 
  �  �    Instrument Handle                  	              �    When developing a complex test system that consists of multiple test modules, it is generally a good idea to design the test modules so that they can run in any order.  To do so requires ensuring that each test module completely configures the state of each instrument it uses.  If a particular test module does not completely configure the state of an instrument, the state of the instrument depends on the configuration from a previously executed test module.  If you execute the test modules in a different order, the behavior of the instrument and therefore the entire test module is likely to change.  This change in behavior is generally instrument specific and represents an interchangeability problem.

You can use this function to test for such cases.  After you call this function, the interchangeability checking algorithms in the specific driver ignore all previous configuration operations.  By calling this function at the beginning of a test module, you can determine whether the test module has dependencies on the operation of previously executed test modules.

This function does not clear the interchangeability warnings from the list of previously recorded interchangeability warnings.  If you want to guarantee that the XanM9B_GetNextInterchangeWarning function only returns those interchangeability warnings that are generated after calling this function, you must clear the list of interchangeability warnings.  You can clear the interchangeability warnings list by repeatedly calling the XanM9B_GetNextInterchangeWarning function until no more interchangeability warnings are returned.  If you are not interested in the content of those warnings, you can call the XanM9B_ClearInterchangeWarnings function.
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   S"����  �    Status                           Z�,   �  �    Instrument Handle                  	              "    This function obtains a multithread lock on the instrument session.  Before it does so, it waits until all other execution threads have released their locks on the instrument session.

Other threads might have obtained a lock on this session in the following ways:

- The user's application called XanM9B_LockSession.

- A call to the instrument driver locked the session.

- A call to the IVI engine locked the session.

After your call to XanM9B_LockSession returns successfully, no other threads can access the instrument session until you call XanM9B_UnlockSession.

Use XanM9B_LockSession and XanM9B_UnlockSession around a sequence of calls to instrument driver functions if you require that the instrument retain its settings through the end of the sequence.

You can safely make nested calls to XanM9B_LockSession within the same thread.  To completely unlock the session, you must balance each call to XanM9B_LockSession with a call to XanM9B_UnlockSession.  If, however, you use the Caller Has Lock parameter in all calls to XanM9B_LockSession and XanM9B_UnlockSession within a function, the IVI Library locks the session only once within the function regardless of the number of calls you make to XanM9B_LockSession.  This allows you to call XanM9B_UnlockSession just once at the end of the function. 
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    This parameter serves as a convenience.  If you do not want to use this parameter, pass VI_NULL. 

Use this parameter in complex functions to keep track of whether you obtain a lock and therefore need to unlock the session.  Pass the address of a local ViBoolean variable.  In the declaration of the local variable, initialize it to VI_FALSE.  Pass the address of the same local variable to any other calls you make to XanM9B_LockSession or XanM9B_UnlockSession in the same function.

The parameter is an input/output parameter.  XanM9B_LockSession and XanM9B_UnlockSession each inspect the current value and take the following actions:

- If the value is VI_TRUE, XanM9B_LockSession does not lock the session again.  If the value is VI_FALSE, XanM9B_LockSession obtains the lock and sets the value of the parameter to VI_TRUE.

- If the value is VI_FALSE, XanM9B_UnlockSession does not attempt to unlock the session.  If the value is VI_TRUE, XanM9B_UnlockSession releases the lock and sets the value of the parameter to VI_FALSE.
 
Thus, you can, call XanM9B_UnlockSession at the end of your function without worrying about whether you actually have the lock.  
   a'#����  �    Status                           h�-   �  �    Instrument Handle                i� H � �  �    Caller Has Lock                    	               	            �    This function releases a lock that you acquired on an instrument session using XanM9B_LockSession.  Refer to XanM9B_LockSession for additional information on session locks.
    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    This parameter serves as a convenience.  If you do not want to use this parameter, pass VI_NULL. 

Use this parameter in complex functions to keep track of whether you obtain a lock and therefore need to unlock the session. 
Pass the address of a local ViBoolean variable.  In the declaration of the local variable, initialize it to VI_FALSE.  Pass the address of the same local variable to any other calls you make to XanM9B_LockSession or XanM9B_UnlockSession in the same function.

The parameter is an input/output parameter.  XanM9B_LockSession and XanM9B_UnlockSession each inspect the current value and take the following actions:

- If the value is VI_TRUE, XanM9B_LockSession does not lock the session again.  If the value is VI_FALSE, XanM9B_LockSession obtains the lock and sets the value of the parameter to VI_TRUE.

- If the value is VI_FALSE, XanM9B_UnlockSession does not attempt to unlock the session.  If the value is VI_TRUE, XanM9B_UnlockSession releases the lock and sets the value of the parameter to VI_FALSE.
 
Thus, you can, call XanM9B_UnlockSession at the end of your function without worrying about whether you actually have the lock.  
   o�#����  �    Status                           ww-   �  �    Instrument Handle                x- H � �  �    Caller Has Lock                    	               	            �    This function writes a user-specified string to the instrument.

Note:  This function bypasses IVI attribute state caching.  Therefore, when you call this function, the cached values for all attributes will be invalidated.     2    Pass the string to be written to the instrument.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   ~f A � �  �    Write Buffer                     ~�#����  �    Status                           �i-   �  �    Instrument Handle                      	               /    This function reads data from the instrument.     c    After this function executes, this parameter contains the data that was read from the instrument.    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     �    Pass the maximum number of bytes to read from the instruments.  

Valid Range:  0 to the number of elements in the Read Buffer.

Default Value:  0

     ^    Returns the number of bytes actually read from the instrument and stored in the Read Buffer.   �	 @ �  �    Read Buffer                      �t#����  �    Status                           �=-   �  �    Instrument Handle                �� @ C �  �    Number of Bytes To Read          �� �' �  �    Num Bytes Read                     	            	               0    	           �    This function performs the following operations:

- Closes the instrument I/O session.

- Destroys the instrument driver session and all of its attributes.

- Deallocates any memory resources the driver uses.

Notes:

(1) You must unlock the session before calling XanM9B_close.

(2) After calling XanM9B_close, you cannot use the instrument driver again until you call XanM9B_init or XanM9B_InitWithOptions.

    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the XanM9B_error_message function.  To obtain additional information about the error condition, call the XanM9B_GetErrorInfo function.  To clear the error information from the driver, call the XanM9B_ClearErrorInfo function.
          
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
0    No Errors
4    Unrecognized Character
     Improper Number
     Unrecognized String
     Syntax Error
5    Number Out of Range
6    Attempt to Exceed Soft Limits
7    Improper Soft Limit
8    Data Requested without a Query Being Sent
9    OVP Set Below Output
10   Slave Processor Not Responding
12   Illegal Calibration 
          
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
BFFC0000 to BFFCFFFF     VXIPnP   Driver Errors

     �    The ViSession handle that you obtain from the XanM9B_init or XanM9B_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   ��#����  �    Status                           ��-   �  �    Instrument Handle                  	            ����         �  -             K.        init                                                                                                                                    ����         .�  T,             K.        InitWithOptions                                                                                                                         ����         V�  a             K.        ConfigureOutputEnabled                                                                                                                  ����         b  o�             K.        ConfigureOutputRange                                                                                                                    ����         qS  ��             K.        ConfigureVoltageLevel                                                                                                                   ����         ��  �             K.        ConfigureCurrentLimit                                                                                                                   ����         ��  �J             K.        ConfigureOVP                                                                                                                            ����         ��  ��             K.        MaxVoltage                                                                                                                              ����         ѳ  �             K.        MaxCurrentLimit                                                                                                                         ����         �  �             K.        ConfigureFoldbackSetting                                                                                                                ����         ��  �A             K.        ConfigureFaultDelay                                                                                                                     ����         3 
�             K.        ConfigureAuxaEnabled                                                                                                                    ����        � t             K.        ConfigureAuxbEnabled                                                                                                                    ����        ~ !�             K.        ConfigureSrqEnabled                                                                                                                     ����        "� -W             K.        ConfigureHoldEnabled                                                                                                                    ����        .a 9�             K.        ConfigureTriggeredVoltageLevel                                                                                                          ����        :� F             K.        ConfigureTriggeredCurrentLimit                                                                                                          ����        G S�             K.        ConfigureTriggerSource                                                                                                                  ����        T� jg             K.        SetAttributeViInt32                                                                                                                     ����        l ��             K.        SetAttributeViReal64                                                                                                                    ����        �] �             K.        SetAttributeViString                                                                                                                    ����        �� �t             K.        SetAttributeViBoolean                                                                                                                   ����        � ��             K.        SetAttributeViSession                                                                                                                   ����        �k �             K.        GetAttributeViInt32                                                                                                                     ����        �K ��             K.        GetAttributeViReal64                                                                                                                    ����        �. 	�             K.        GetAttributeViString                                                                                                                    ����        7 �             K.        GetAttributeViBoolean                                                                                                                   ����         /�             K.        GetAttributeViSession                                                                                                                   ����        1 BW             K.        CheckAttributeViInt32                                                                                                                   ����        C� UH             K.        CheckAttributeViReal64                                                                                                                  ����        V� h9             K.        CheckAttributeViString                                                                                                                  ����        i� {.             K.        CheckAttributeViBoolean                                                                                                                 ����        |� �"             K.        CheckAttributeViSession                                                                                                                 ����        �� ��             K.        Measure                                                                                                                                 ����        �. �	             K.        Initiate                                                                                                                                ����        �� �d             K.        Abort                                                                                                                                   ����        �� �              K.        SendSoftwareTrigger                                                                                                                     ����        �z �3             K.        ClearStatus                                                                                                                             ����        ĭ �d             K.        ResetOutputProtection                                                                                                                   ����        � �             K.        MaskSetting                                                                                                                             ����        � �             K.        UnmaskSetting                                                                                                                           ����        � ��             K.        QueryOutputState                                                                                                                        ����        �� 
�             K.        QueryFaultState                                                                                                                         ����        �              K.        QueryMaxCurrentLimit                                                                                                                    ����        M #�             K.        QueryMaxVoltageLevel                                                                                                                    ����        $� 1/             K.        UnmaskCondition                                                                                                                         ����        2& >             K.        QuerySetpoint                                                                                                                           ����        @; L�             K.        QueryMode                                                                                                                               ����        N_ [?             K.        QueryAccumulatedState                                                                                                                   ����        \6 fZ             K.        ConfigureCmodeEnabled                                                                                                                   ����        gd rV             K.        self_test                                                                                                                               ����        sR |             K.        reset                                                                                                                                   ����        |� �             K.        ResetWithDefaults                                                                                                                       ����        �� ��             K.        Disable                                                                                                                                 ����        �D �G             K.        revision_query                                                                                                                          ����        �C ��             K.        SetRemoteMode                                                                                                                           ����        �x �O             K.        InvalidateAllAttributes                                                                                                                 ����        �� �f             K.        GetChannelName                                                                                                                          ����        �� �?             K.        error_query                                                                                                                             ����        �; ��             K.        error_message                                                                                                                           ����        �� 
�             K.        GetError                                                                                                                                ����        � %             K.        ClearError                                                                                                                              ����        � -�             K.        GetNextCoercionRecord                                                                                                                   ����        .� B             K.        GetNextInterchangeWarning                                                                                                               ����        B� K�             K.        ClearInterchangeWarnings                                                                                                                ����        L8 [�             K.        ResetInterchangeCheck                                                                                                                   ����        [� n<             K.        LockSession                                                                                                                             ����        n� |�             K.        UnlockSession                                                                                                                           ����        }~ �             K.        WriteInstrData                                                                                                                          ����        �� ��             K.        ReadInstrData                                                                                                                           ����        �- �P             K.        close                                                                                                                                                                                                                              �Initialize                                                                           �Initialize With Options                                                             CConfiguration Functions                                                             4Output                                                                              wBasic Operation                                                                      �Configure Output Enabled                                                             �Configure Output Range                                                               �Configure Voltage Level                                                              �Configure Current Limit                                                             �Protection Mechanisms                                                                �Configure OVP                                                                        �Maximum Voltage Level                                                                �Maximum Current Limit                                                                �Configure Foldback Setting                                                           �Configure Fault Delay                                                               fMonitor Power Supply Status                                                          �Configure AUXA Enabled                                                               �Configure AUXB Enabled                                                               �Congfigure SRQ Enabled                                                              Triggering                                                                           �Configure Hold Enabled [TRG]                                                         �Configure Triggered Volt [TRG]                                                       �Configure Triggered Curr [TRG]                                                       �Configure Trigger Source                                                            
"Set/Get/Check Attribute                                                             
~Set Attribute                                                                        �Set Attribute ViInt32                                                                �Set Attribute ViReal64                                                               �Set Attribute ViString                                                               �Set Attribute ViBoolean                                                              �Set Attribute ViSession                                                             Get Attribute                                                                        �Get Attribute ViInt32                                                                �Get Attribute ViReal64                                                               �Get Attribute ViString                                                               �Get Attribute ViBoolean                                                              �Get Attribute ViSession                                                             �Check Attribute                                                                      �Check Attribute ViInt32                                                              �Check Attribute ViReal64                                                             �Check Attribute ViString                                                             �Check Attribute ViBoolean                                                            �Check Attribute ViSession                                                           +Measure Output                                                                       �Measure [MSR]                                                                       Action/Status Functions                                                             �Action                                                                               �Initiate [TRG]                                                                       �Abort [TRG]                                                                          �Send Software Trigger [SWT]                                                          �Clear Status                                                                         �Reset Output Protection                                                              �MASK Setting                                                                         �UNMASK Setting                                                                      /Query                                                                                �Query Output State                                                                   �Query Fault State                                                                    �Query Max Current Limit                                                              �Query Max Voltage Level                                                              �Unmask Condition                                                                     �Query Setpoint                                                                       �Query Mode                                                                           �Query Accumulated State                                                             �Utility Functions                                                                    �Configure CMODE Enabled                                                              �Self-Test                                                                            �Reset                                                                                �Reset With Defaults                                                                  �Disable                                                                              �Revision Query                                                                       �Set Remote Mode                                                                      �Invalidate All Attributes                                                            �Get Channel Name                                                                     �Error-Query                                                                          �Error Message                                                                       �Error Info                                                                           �Get Error                                                                            �Clear Error                                                                         NCoercion Info                                                                        �Get Next Coercion Record                                                            �Interchangeability Info                                                              �Get Next Interchange Warning                                                         �Clear Interchange Warnings                                                           �Reset Interchange Check                                                             �Locking                                                                              �Lock Session                                                                         �Unlock Session                                                                      ZInstrument I/O                                                                       �Write Instrument Data                                                                �Read Instrument Data                                                                 �Close                                                                           