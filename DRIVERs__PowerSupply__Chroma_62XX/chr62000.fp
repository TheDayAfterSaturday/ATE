s��        �   U ��  D   �   ����                               chr62000    Chroma DC Power Supply 62000P Series          � � ��ViInt16  �  � ��ViInt32  � � ��ViReal64     � ��ViRsrc     	� 	��ViBoolean     	� 	��ViSession     � ��ViStatus     �  ViChar[]     � ��ViChar     � ��ViString     	�  ViInt16[]     	�  ViInt32[]     
�  	ViReal64[]     � 	 
ViBoolean[]     � ��ViConstString     � ��ViAttr   �    This instrument driver contains programming support for the Chroma DC Power Supply 62000P Series. This driver has all the functions that IVI and VXIplug&play require.  

Note:  This driver requires the VISA and IVI libraries.       �    This class contains high-level test functions. These functions call other instrument driver functions to configure and perform complete instrument operations.
     B    This class contains functions that setting the source subsystem.     E    This class contains functions that setting the configure subsystem.     C    This class contains functions that setting the program subsystem.     B    This class contains functions that setting the status subsystem.     �    This class contains functions and sub-classes that configure the instrument.  The class includes high-level functions that configure multiple instrument settings as well as low-level functions that set, get, and check individual attribute values.
     T    This class contains sub-classes for the set, get, and check attribute functions.       �    This class contains functions that set an attribute to a new value.  There are typesafe functions for each attribute data type.     �    This class contains functions that obtain the current value of an attribute.  There are typesafe functions for each attribute data type.     �    This class contains functions that obtain the current value of an attribute.  There are typesafe functions for each attribute data type.     K    This class contains high-level functions for measuring the output signal.     m    This class contains functions and sub-classes that initiate instrument operations and report their status.
     3    The class contains query functions about setting.     2    The class contains query functions about status.    _    This class contains functions and sub-classes that control common instrument operations.  These functions include many of functions that VXIplug&play require, such as reset, self-test, revision query, error query, and error message.  This class also contains functions that access IVI error infomation, lock the session, and perform instrument I/O.
     R    This class contains functions that retrieve and clear the IVI error information.     ?    This class contains functions that retrieve coercion records.     k    This class contains functions that lock and unlock IVI instrument driver sessions for multithread safefy.     F    This class contains functions that send and receive instrument data.    E    This function performs the following initialization actions:

- Creates a new IVI instrument driver session.

- Opens a session to the specified device using the interface and address you specify for the Resource Name parameter.

- If the ID Query parameter is set to VI_TRUE, this function queries the instrument ID and checks that it is valid for this instrument driver.

- If the Reset parameter is set to VI_TRUE, this function resets the instrument to a known state.

- Sends initialization commands to set the instrument to the state necessary for the operation of the instrument driver.

- Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Note:  This function creates a new session each time you invoke it. Although you can open more than one IVI session for the same resource, it is best not to do so.  You can use the same session in multiple program threads.  You can use the chr62000_LockSession and chr62000_UnlockSession functions to protect sections of code that require exclusive access to the resource.

        Pass the resource name of the device to initialize.

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
 
Default Value:  "GPIB0::1::INSTR"

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

(2) Avoid creating multiple concurrent sessions to the same physical instrument.  Although you can create more than one IVI session for the same resource, it is best not to do so.  A better approach is to use the same IVI session in multiple execution threads.  You can use functions chr62000_LockSession and chr62000_UnlockSession to protect sections of code that require exclusive access to the resource.

    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0054  Bad channel name in Channel List.

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
    � =   �  �    Resource Name                      : �       ID Query                           =� �       Reset Device                      �#  �  �    Instrument Handle                 �#����  �    Status                          ����  z��                                            "GPIB0::1::INSTR"   Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	           FCopyright 1998 National Instruments Corporation. All Rights Reserved.   E    This function performs the following initialization actions:

- Creates a new IVI instrument driver session.

- Opens a session to the specified device using the interface and address you specify for the Resource Name parameter.

- If the ID Query parameter is set to VI_TRUE, this function queries the instrument ID and checks that it is valid for this instrument driver.

- If the Reset parameter is set to VI_TRUE, this function resets the instrument to a known state.

- Sends initialization commands to set the instrument to the state necessary for the operation of the instrument driver.

- Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Note:  This function creates a new session each time you invoke it. Although you can open more than one IVI session for the same resource, it is best not to do so.  You can use the same session in multiple program threads.  You can use the chr62000_LockSession and chr62000_UnlockSession functions to protect sections of code that require exclusive access to the resource.

        Pass the resource name of the device to initialize.

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
 
Default Value:  "GPIB0::1::INSTR"

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

(2) Avoid creating multiple concurrent sessions to the same physical instrument.  Although you can create more than one IVI session for the same resource, it is best not to do so.  A better approach is to use the same IVI session in multiple execution threads.  You can use functions chr62000_LockSession and chr62000_UnlockSession to protect sections of code that require exclusive access to the resource.

    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0054  Bad channel name in Channel List.

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     �    Sets the baud rate into PC serial port.
   
Valid Values:
9600   - baud rate=9600
19200  - baud rate=19200
38400  - baud rate=38400
57600  - baud rate=57600
115200 - baud rate=115200

Default Value: 9600

  
             Y    Return the instrument ID string.

You must pass a ViChar array with at least 512 bytes.     \    Return the instrument model number.

You must pass a ViChar array with at least 512 bytes.    ,| =   � �    Resource Name                     4� : �       ID Query                          6� =� �       Reset Device                      7]#  �  �    Instrument Handle                 :#����  �    Status                            B� �  � �    Baud Rate                         C� �  � ,    ID String                         D �� �  �    Model Number                                  jGPIB 1 "GPIB0::1::INSTR" RS-232 COM1 "ASRL1::INSTR" RS-232 COM2 "ASRL2::INSTR" RS-232 COM3 "ASRL3::INSTR"   Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	                      <9600 9600 19200 19200 38400 38400 57600 57600 115200 115200    	            	           K    This function performs the following initialization actions:

- Creates a new IVI instrument driver and optionally sets the initial state of the following session attributes:

    CHR62000_ATTR_RANGE_CHECK         
    CHR62000_ATTR_QUERY_INSTR_STATUS  
    CHR62000_ATTR_CACHE               
    CHR62000_ATTR_SIMULATE            
    CHR62000_ATTR_RECORD_COERCIONS    

- Opens a session to the specified device using the interface and address you specify for the Resource Name parameter.

- If the ID Query parameter is set to VI_TRUE, this function queries the instrument ID and checks that it is valid for this instrument driver.

- If the Reset parameter is set to VI_TRUE, this function resets the instrument to a known state.

- Sends initialization commands to set the instrument to the state necessary for the operation of the instrument driver.

- Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Note:  This function creates a new session each time you invoke it. Although you can open more than one IVI session for the same resource, it is best not to do so.  You can use the same session in multiple program threads.  You can use the chr62000_LockSession and chr62000_UnlockSession functions to protect sections of code that require exclusive access to the resource.

        Pass the resource name of the device to initialize.

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
 
Default Value:  "GPIB0::1::INSTR"

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

(2) Avoid creating multiple concurrent sessions to the same physical instrument.  Although you can create more than one IVI session for the same resource, it is best not to do so.  A better approach is to use the same IVI session in multiple execution threads.  You can use functions chr62000_LockSession and chr62000_UnlockSession to protect sections of code that require exclusive access to the resource.

    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
    m    You can use this control to set the initial value of certain attributes for the session.  The following table lists the attributes and the name you use in this parameter to identify the attribute.

Name              Attribute Defined Constant   
--------------------------------------------
RangeCheck        CHR62000_ATTR_RANGE_CHECK
QueryInstrStatus  CHR62000_ATTR_QUERY_INSTR_STATUS   
Cache             CHR62000_ATTR_CACHE   
Simulate          CHR62000_ATTR_SIMULATE  
RecordCoercions   CHR62000_ATTR_RECORD_COERCIONS

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
    

The following are the valid values for ViBoolean attributes:

    True:     1, True, or VI_TRUE
    False:    0, False, or VI_FALSE


Default Value:
       "Simulate=0,RangeCheck=1,QueryInstrStatus=1,Cache=1"
    L� =   �  �    Resource Name                     T� : �       ID Query                          V� =� �       Reset Device                      W�#  �  �    Instrument Handle                 ZG#����  �    Status                          ����   P��                                           c� �  � �    Option String                      "GPIB0::1::INSTR"   Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	           FCopyright 1998 National Instruments Corporation. All Rights Reserved.    5"Simulate=0,RangeCheck=1,QueryInstrStatus=1,Cache=1"    �    This function sets the voltage the power supply attempts to generate.

Notice that the voltage high limit and voltage low limit also determine the valid range for this function.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Pass the voltage you want the power supply to attempt to generate. The driver uses this value to set the CHR62000_ATTR_VOLTAGE attribute. 

Units: volt

Resolution: The driver only support for the second decimal place.

Valid Range:
     Model        |     Voltage
-------------------------------------
   62006P-100-25  |  0.00 - 100.00
   62012P-30-160  |  0.00 -  30.00
   62012P-80-60   |  0.00 -  80.00
   62012P-100-50  |  0.00 - 100.00
   62012P-600-8   |  0.00 - 600.00
   
Default Value: 0.00    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
    m5    �  �    Instrument Handle                 m� � � �  �    Voltage                           o� ����  �    Status                                 0.00    	           p    This function sets the power supply's voltage high limit and voltage low limit to restrict the output voltage.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Pass the voltage you want limit the power supply's output voltage. The driver uses this value to set the CHR62000_ATTR_VOLT_LIMIT_HIGH and CHR62000_ATTR_VOLT_LIMIT_LOW attributes. 

Units: volt

Resolution: The driver only support for the first decimal place.

Valid Range:
     Model        |  Voltage Limit
-------------------------------------
   62006P-100-25  |  0.0 - 100.0
   62012P-30-160  |  0.0 -  30.0
   62012P-80-60   |  0.0 -  80.0
   62012P-100-50  |  0.0 - 100.0
   62012P-600-8   |  0.0 - 600.0
   
Default Value: 0.0

Notice that it's illegal that you pass CHR62000_ATTR_VOLT_LIMIT_HIGH value is less than CHR62000_ATTR_VOLT_LIMIT_LOW, or CHR62000_ATTR_VOLT_LIMIT_LOW value is greater than CHR62000_ATTR_VOLT_LIMIT_HIGH    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     �    Specify the attribute you want to set.

Valid Range:
VI_TRUE  (1) - CHR62000_ATTR_VOLT_LIMIT_HIGH
VI_FALSE (0) - CHR62000_ATTR_VOLT_LIMIT_LOW 

Default Value: VI_FALSE    z�    �  �    Instrument Handle                 {< � � �  �    Voltage Limit                     ~' ����  �    Status                            �� W �       High/Low                               0.0    	           High VI_TRUE Low VI_FALSE    @    This function sets the power supply's over voltage protection.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    4    Pass the voltage protect to the power supply. The driver uses this value to set the CHR62000_ATTR_VOLT_PROTECT attribute. 

Units: volt

Resolution: The driver only support for the first decimal place.

Valid Range:
     Model        |  Voltage Protect
-------------------------------------
   62006P-100-25  |  0.0 - 110.0
   62012P-30-160  |  0.0 -  33.0
   62012P-80-60   |  0.0 -  88.0
   62012P-100-50  |  0.0 - 110.0
   62012P-600-8   |  0.0 - 660.0
   
Default Value: 88.0

Notice that the passed value must greater than or equal to 1.1*(voltage setting).    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
    ��    �  �    Instrument Handle                 �H � � �  �    Voltage Protect                   �� ����  �    Status                                 88.0    	           V    This function sets the power supply's rising or falling slew rate of output voltage.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Pass the voltage slew rate to the power supply. The driver uses this value to set the CHR62000_ATTR_VOLT_SLEW attribute. 

Units: V/ms

Resolution: The driver only support for the second decimal place.

Valid Range: 0.01-10.00
   
Default Value: 1.00 
    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
    �     �  �    Instrument Handle                 �� � � �  �    Voltage Slew                      �� ����  �    Status                                 1.00    	           �    This function sets the current the power supply attempts to generate.

Notice that the current high limit and current low limit also determine the valid range for this function.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Pass the current you want the power supply to attempt to generate. The driver uses this value to set the CHR62000_ATTR_CURRENT attribute. 

Units: amp

Resolution: The driver only support for the second decimal place.

Valid Range:
     Model        |     Current
-------------------------------------
   62006P-100-25  |  0.00 -  25.00
   62012P-30-160  |  0.00 - 160.00
   62012P-80-60   |  0.00 -  60.00
   62012P-100-50  |  0.00 -  50.00
   62012P-600-8   |  0.00 -   8.00
   
Default Value: 0.00    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
    ��    �  �    Instrument Handle                 �Q � � �  �    Current                           �O ����  �    Status                                 0.00    	           p    This function sets the power supply's current high limit and current low limit to restrict the output current.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Pass the current you want limit the power supply's output current. The driver uses this value to set the CHR62000_ATTR_CURR_LIMIT_HIGH and CHR62000_ATTR_CURR_LIMIT_LOW attributes. 

Units: amp

Resolution: The driver only support for the first decimal place.

Valid Range:
     Model        |  Current Limit
-------------------------------------
   62006P-100-25  |  0.0 -  25.0
   62012P-30-160  |  0.0 - 160.0
   62012P-80-60   |  0.0 -  60.0
   62012P-100-50  |  0.0 -  50.0
   62012P-600-8   |  0.0 -   8.0
   
Default Value: 0.0

Notice that it's illegal that you pass CHR62000_ATTR_CURR_LIMIT_HIGH value is less than CHR62000_ATTR_CURR_LIMIT_LOW, or CHR62000_ATTR_CURR_LIMIT_LOW value is greater than CHR62000_ATTR_CURR_LIMIT_HIGH    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     �    Specify the attribute you want to set.

Valid Range:
VI_TRUE  (1) - CHR62000_ATTR_CURR_LIMIT_HIGH
VI_FALSE (0) - CHR62000_ATTR_CURR_LIMIT_LOW 

Default Value: VI_FALSE    ��    �  �    Instrument Handle                 �� � � �  �    Current Limit                     �� ����  �    Status                            �� W �       High/Low                               0.0    	           High VI_TRUE Low VI_FALSE    @    This function sets the power supply's over current protection.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    3    Pass the current protect to the power supply. The driver uses this value to set the CHR62000_ATTR_CURR_PROTECT attribute.

Units: amp

Resolution: The driver only support for the first decimal place.

Valid Range:
     Model        |  Current Protect
-------------------------------------
   62006P-100-25  |  0.0 -  26.2
   62012P-30-160  |  0.0 - 168.0
   62012P-80-60   |  0.0 -  63.0
   62012P-100-50  |  0.0 -  52.5
   62012P-600-8   |  0.0 -   8.4
   
Default Value: 63.0

Notice that the passed value must greater than or equal to 1.05*(current setting).    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
    ��    �  �    Instrument Handle                 �� � � �  �    Current Protect                   �� ����  �    Status                                 63.0    	           V    This function sets the power supply's rising or falling slew rate of output current.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Pass the current slew rate to the power supply. The driver uses this value to set the CHR62000_ATTR_CURR_SLEW attribute. 

Units: A/ms

Resolution: The driver only support for the second decimal place.

Valid Range: 0.01-1.00
   
Default Value: 1.00    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
    �`    �  �    Instrument Handle                 � � � �  �    Current Slew                      � ����  �    Status                                 1.00    	           >    This function sets the power supply's over power protection.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Pass the power protect to the power supply. The driver uses this value to set the CHR62000_ATTR_POWER_PROTECT attribute.

Units: watt

Resolution: The driver only support for the first decimal place.

Valid Range:
     Model        |  Power Protect
-------------------------------------
   62006P-100-25  |  0.0 -  630.0
   62012P-30-160  |  0.0 - 1260.0
   62012P-80-60   |  0.0 - 1260.0
   62012P-100-50  |  0.0 - 1260.0
   62012P-600-8   |  0.0 - 1260.0
   
Default Value: 1260.0    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
    ـ    �  �    Instrument Handle                 �9 � � �  �    Power Protect                     �% ����  �    Status                                 1260.0    	           F    This function enables or disables the power supply's output voltage.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     �    Enable or disable the power supply's output voltage.

Valid Range:
VI_TRUE  (1) - Enable output voltage
VI_FALSE (0) - Disable output voltage

Default Value: VI_FALSE    �    �  �    Instrument Handle                 �L ����  �    Status                            � � � �       Output                                 	           On VI_TRUE Off VI_FALSE    7    This function sets the power supply's TTL port value.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Pass the TTL value to the power supply. The driver uses this value to set the CHR62000_ATTR_TTL_PORT attribute. 

Valid Range: 0-255
   
Default Value: 0    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
    �l    �  �    Instrument Handle                 �% � � �  �    TTL Value                         �� ����  �    Status                                 0    	           ?    This function enables or disables the power supply's beeper.      �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     �    Enable or disable the power supply's beeper.

Valid Range:
VI_TRUE  (1) - Enable beeper
VI_FALSE (0) - Disable beeper

Default Value: VI_TRUE    �*    �  �    Instrument Handle                 �� ����  �    Status                           J � � �       Beeper                                 	          On VI_TRUE Off VI_FALSE    s    This function sets the power supply's remote control status.

Notice that this function is valid for RS232C only.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     �    Enable or disable remote control status. The driver uses this value to set the CHR62000_ATTR_REMOTE_MODE attribute. 

Valid Range:
VI_TRUE  (1) - Enable remote control
VI_FALSE (0) - Disable remote control
   
Default Value: VI_FALSE   
&    �  �    Instrument Handle                
� ����  �    Status                           F � � �       Remote Mode                            	           On VI_TRUE Off VI_FALSE    ^    This function sets the power supply's foldback protect mode and foldback protect delay time.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     �    Set the power supply's foldback protect mode.

Valid Range:
0 - Disable foldback protect mode
1 - CVTOCC foldback protect mode
2 - CCTOCV foldback protect mode

Default Value: 0

        Pass the foldback delay time to the power supply. The driver uses this value to set the CHR62000_ATTR_FOLDBACK_DELAY_TIME attribute.

Units: second

Valid Range: 0.01-600.00

Resolution: The driver only support for the second decimal place.

Default Value: 0.01



   i    �  �    Instrument Handle                " ����  �    Status                            � c ��      Foldback Protect                 !F � � �  �    Foldback Delay Time                    	                      DISABLE 0 CVTOCC 1 CCTOCV 2    0.01    K    This function sets the power supply's APG mode and APG reference voltage.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     �    Set the power supply's APG mode.

Valid Range:
0 - APG mode sets to NONE
1 - APG mode sets to V
2 - APG mode sets to I
3 - APG mode sets to VI

Default Value: 0     �    Set the power supply's APG reference voltage.

Valid Range:
VI_TRUE  (1) - APG reference voltage sets to 10V
VI_FALSE (0) - APG reference voltage sets to 5V

Default Value: VI_FALSE   #�    �  �    Instrument Handle                $| ����  �    Status                           -� � � ��      APG Mode                         .� �P ��      APG Reference Voltage                  	                      NONE 0 V 1 I 2 VI 3               FIVE VI_FALSE TEN VI_TRUE    x    This function sets the power supply's program number, link program number, program count, and if program clear or not.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     �    Pass the program selected to the power supply. The driver uses this value to set the CHR62000_ATTR_PROG_SELECTED attribute. 

Valid Range: 1-10
   
Default Value: 1     T    Pass the program link to the power supply.

Valid Range: 0-10
   
Default Value: 0     X    Pass the program count to the power supply.

Valid Range: 1-15000
   
Default Value: 1     �    Clear program parameters which you selected.

Valid Range:
VI_TRUE  (1) - Clear program parameters
VI_FALSE (0) - Do not clear program parameters

Default Value: VI_FALSE   0�    �  �    Instrument Handle                1� ����  �    Status                           ; �  � �    Program Selected                 ;� � � � �    Link                             <& �{ �  �    Count                            <� � �       Program Clear                          	                   
   *1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10               .0 0 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10    1    Yes VI_TRUE No VI_FALSE   2    This function sets the power supply's sequence number, type, voltage, voltage slew rate, current, current slew rate, TTL port value, and duration of time.

Notice that voltage is restricted by voltage high limit and voltage low limit, and current is restricted by current high limit and current low limit     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     Y    Pass the sequence selected to the power supply.

Valid Range: 1-10
   
Default Value: 1    �    Pass the sequence voltage to the power supply.

Units: volt

Resolution: The driver only support for the second decimal place.

Valid Range:
     Model        |     Voltage
-------------------------------------
   62006P-100-25  |  0.00 - 100.00
   62012P-30-160  |  0.00 -  30.00
   62012P-80-60   |  0.00 -  80.00
   62012P-100-50  |  0.00 - 100.00
   62012P-600-8   |  0.00 - 600.00
   
Default Value: 0.00     �    Pass the sequence voltage slew rate to the power supply.

Units: V/ms

Resolution: The driver only support for the second decimal place.

Valid Range: 0.01-10.00
   
Default Value: 10.00     �    Pass the sequence current to the power supply.

Units: amp

Resolution: The driver only support for the second decimal place.

Valid Range:
     Model        |     Current
-------------------------------------
   62006P-100-25  |  0.00 -  25.00
   62012P-30-160  |  0.00 - 160.00
   62012P-80-60   |  0.00 -  60.00
   62012P-100-50  |  0.00 -  50.00
   62012P-600-8   |  0.00 -   8.00
   
Default Value: 0.00     �    Pass the sequence current slew rate to the power supply.

Units: A/ms

Resolution: The driver only support for the second decimal place.

Valid Range: 0.01-1.00
   
Default Value: 1.00     [    Pass the sequence TTL value to the power supply.

Valid Range: 0-255
   
Default Value: 0     �    Pass the sequence time to the power supply.

Units: second

Resolution: The driver only support for the second decimal place.

Valid Range: 0.00-15000.00
   
Default Value: 0.00     �    Pass the sequence type to the power supply.

Valid Range:
0 - sequence type sets to AUTO
1 - sequence type sets to MANUAL
2 - sequence type sets to TRIGGER
   
Default Value: 0   @X    �  �    Instrument Handle                A }���  �    Status                           Jx   � �    Sequence Selected                J� t  �  �    Voltage                          L| t � �  �    Voltage Slew                     MA t} �  �    Current                          N� �  �  �    Current Slew                     O� � � �  �    TTL                              P �} �  �    Time                             P� 
 ��      Type                                   	                   
   *1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10    0.00    10.00    0.00    1.00    0    0.00               AUTO 0 MANUAL 1 TRIGGER 2    L    This function enables or diables the power supply's program running state.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     �    Enable or diable the power supply's program running state.

Valid Range:
VI_TRUE  (1) - Enable program running state
VI_FALSE (0) - Disable program running state

Default Value: VI_FALSE

   T�    �  �    Instrument Handle                U< ����  �    Status                           ^� � � �       Run                                    	           On VI_TRUE Off VI_FALSE    <    This function saves the power supply's program parameters.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
   `w    �  �    Instrument Handle                a0 ����  �    Status                                 	           1    This function clears the power supply's status.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
   kJ    �  �    Instrument Handle                l ����  �    Status                                 	           N    This function sets the power supply's standard event status enable register.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Pass the standard event status enable register to the power supply. The driver uses this value to set the CHR62000_ATTR_STATUS_ESE attribute. 

Valid Range: 0-255
   
Default Value: 0    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
   v:    �  �    Instrument Handle                v� � � �  �    Enable Register                  w� ����  �    Status                                 0    	           H    This function sets the power supply's service request enable register.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Pass the service request enable register to the power supply. The driver uses this value to set the CHR62000_ATTR_STATUS_SRE attribute. 

Valid Range: 0-255
   
Default Value: 0    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
   �    �  �    Instrument Handle                �� � � �  �    Enable Register                  �� ����  �    Status                                 0    	           J    This function saves the power supply's whole parameters to flash memory.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
   �     �  �    Instrument Handle                �� ����  �    Status                                 	           N    This function recalls the power supply's whole parameters from flash memory.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
   ��    �  �    Instrument Handle                �� ����  �    Status                                 	          �    This function sets the value of a ViInt32 attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
3FFF0085  The status value you passed is unknown. 

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
   �]-   �  �    Instrument Handle                �#����  �    Status                           �� � � �  �    Attribute Value                 ���� � ���                                          �� = � � �    Attribute ID                     �: =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViReal64 attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
3FFF0085  The status value you passed is unknown. 
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
   ��-   �  �    Instrument Handle                �g#����  �    Status                           �# � � �  �    Attribute Value                 ���� � ���                                          �> = � � �    Attribute ID                     ψ =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViString attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
3FFF0085  The status value you passed is unknown. 
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
   ��-   �  �    Instrument Handle                ׵#����  �    Status                           �q � � �  �    Attribute Value                 ���� � ���                                          � = � � �    Attribute ID                     �� =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViBoolean attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
3FFF0085  The status value you passed is unknown. 
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
   �I-   �  �    Instrument Handle                �#����  �    Status                           �� � � �  �    Attribute Value                 ���� � ���                                          �� = � � �    Attribute ID                     �% =  �  �    Channel Name                           	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViSession attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
3FFF0085  The status value you passed is unknown. 
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
   �-   �  �    Instrument Handle                S#����  �    Status                            � � �  �    Attribute Value                  * =  �  �    Channel Name                     . = � � �    Attribute ID                    ���� � ���                                                	               ""                0    .Press <ENTER> for a list of 
value constants.   �    This function queries the value of a ViInt32 attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
3FFF0085  The status value you passed is unknown. 
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
   �-   �  �    Instrument Handle                �#����  �    Status                           "G � � �  �    Attribute Value                  $ =  �  �    Channel Name                     % = � � �    Attribute ID                           	           	            ""                0   �    This function queries the value of a ViReal64 attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
3FFF0085  The status value you passed is unknown. 
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
   ,�-   �  �    Instrument Handle                -a#����  �    Status                           5 � � �  �    Attribute Value                  6� =  �  �    Channel Name                     7� = � � �    Attribute ID                           	           	           ""                0   4    This function queries the value of a ViString attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

You must provide a ViChar array to serve as a buffer for the value.  You pass the number of bytes in the buffer as the Buffer Size parameter.  If the current value of the attribute, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you want to call this function just to get the required buffer size, you can pass 0 for the Buffer Size and VI_NULL for the Attribute Value buffer.  

If you want the function to fill in the buffer regardless of the   number of bytes in the value, pass a negative number for the Buffer Size parameter.  


     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    
�    Reports the status of this operation.

If the function succeeds and the buffer you pass is large enough to hold the entire value, the function returns 0.   

If the current value of the attribute, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If the function fails for some other reason, it returns a negative error code.  For more information on error codes, refer to the Status return value control in one of the other function panels.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
3FFF0085  The status value you passed is unknown. 
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
   B�-   �  �    Instrument Handle                C�#����  �    Status or Required Size          Nh � L � �    Attribute Value                  R� =  �  �    Channel Name                     S� =� �  �    Buffer Size                      V� = � � �    Attribute ID                           	           	            ""    512                0   �    This function queries the value of a ViBoolean attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
3FFF0085  The status value you passed is unknown. 
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
   ^Y-   �  �    Instrument Handle                _#����  �    Status                           f� � � �  �    Attribute Value                  h� =  �  �    Channel Name                     i� = � � �    Attribute ID                           	           	            ""                0   �    This function queries the value of a ViSession attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
3FFF0085  The status value you passed is unknown. 
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
   q5-   �  �    Instrument Handle                q�#����  �    Status                           y� � � �  �    Attribute Value                  {k =  �  �    Channel Name                     |r = � � �    Attribute ID                           	           	            ""                0    S    This function checks the validity of a value you specify for a ViInt32 attribute.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
3FFF0085  The status value you passed is unknown. 
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
   ��-   �  �    Instrument Handle                �g#����  �    Status                           �# � � �  �    Attribute Value                  �S =  �  �    Channel Name                    ���� � ���                                          �R = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    T    This function checks the validity of a value you specify for a ViReal64 attribute.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
3FFF0085  The status value you passed is unknown. 
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
   ��-   �  �    Instrument Handle                �K#����  �    Status                           � � � �  �    Attribute Value                  �7 =  �  �    Channel Name                    ���� � ���                                          �6 = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    T    This function checks the validity of a value you specify for a ViString attribute.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
3FFF0085  The status value you passed is unknown. 
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
   �w-   �  �    Instrument Handle                �1#����  �    Status                           �� � � �  �    Attribute Value                  � =  �  �    Channel Name                    ���� � ���                                          � = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    U    This function checks the validity of a value you specify for a ViBoolean attribute.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
3FFF0085  The status value you passed is unknown. 
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
   �^-   �  �    Instrument Handle                �#����  �    Status                           �� � � �  �    Attribute Value                  � =  �  �    Channel Name                    ���� � ���                                          � = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    U    This function checks the validity of a value you specify for a ViSession attribute.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
3FFF0085  The status value you passed is unknown. 
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
   �G-   �  �    Instrument Handle                �#����  �    Status                           ֽ � � �  �    Attribute Value                  �� =  �  �    Channel Name                    ���� � ���                                          �� = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    i    This function takes a measurement(voltage/current/power) on the output and returns the measured value.
     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Returns the measured value.

Units: 
volt (for voltage measurement)
amp  (for current measurement)
watt (for power measurement)    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     �    Pass the measure type you want to measure to the power supply.

Valid Range:
0 - measure type sets to voltage
1 - measure type sets to current
2 - measure type sets to power

Default Value: 0   �D    �  �    Instrument Handle                �� � � �  �    ReadValue                        � ����  �    Status                           �� Y ��      Measure Type                           	           	                      Voltage 0 Current 1 Power 2    [    This function fetches(voltage/current/power) on the output and returns the fetched value.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     \    Returns the fetched value.

Units: 
volt (for voltage)
amp  (for current)
watt (for power)    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     �    Pass the fetch type you want to fetch to the power supply.

Valid Range:
0 - fetch type sets to voltage
1 - fetch type sets to current
2 - fetch type sets to power

Default Value: 0   �4    �  �    Instrument Handle                �� � � �  �    ReadValue                        �Q ����  �    Status                           �� Y ��      Fetch Type                             	           	                      Voltage 0 Current 1 Power 2    8    This function queries the power supply's beeper state.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     o    This parameter returns the power supply's beeper state.

You must pass a ViChar array with at least 16 bytes.    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
   ��    �  �    Instrument Handle                �� � � �  �    Beeper                           � ����  �    Status                                 	            	           8    This function queries the power supply's output state.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     o    This parameter returns the power supply's output state.

You must pass a ViChar array with at least 16 bytes.    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
   d    �  �    Instrument Handle                 � � �  �    Output                           � ����  �    Status                                 	            	           a    This function queries the power supply's foldback protect mode and foldback protect delay time.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     x    This parameter returns the power supply's foldback protect mode.

You must pass a ViChar array with at least 16 bytes.    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     H    This parameter returns the power supply's foldback protect delay time.       �  �    Instrument Handle                � � a �  �    Foldback                         X ����  �    Status                           � �% �  �    Foldback Delay Time                    	            	           	           N    This function queries the power supply's APG mode and APG reference voltage.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     k    This parameter returns the power supply's APG mode.

You must pass a ViChar array with at least 16 bytes.    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     x    This parameter returns the power supply's APG reference voltage.

You must pass a ViChar array with at least 16 bytes.   a    �  �    Instrument Handle                 � k �  �    APG Mode                         � ����  �    Status                           (� �$ �  �    APG Reference Voltage                  	            	           	            >    This function queries the power supply's program parameters.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     �    Pass the program selected to the power supply. The driver uses this value to set the CHR62000_ATTR_PROG_SELECTED attribute. 

Valid Range: 1-10
   
Default Value: 1     Y    Pass the sequence selected to the power supply.

Valid Range: 1-10
   
Default Value: 1     �    This parameter returns the power supply's sequence type which the program and sequence you selected.

You must pass a ViChar array with at least 16 bytes.

You can pass VI_NULL for the parameter if you are not interested in this value.
     �    This parameter returns the power supply's sequence voltage which the program and sequence you selected.

You can pass VI_NULL for the parameter if you are not interested in this value.

Units: volt     �    This parameter returns the power supply's sequence voltage slew rate which the program and sequence you selected.

You can pass VI_NULL for the parameter if you are not interested in this value.

Units: V/ms     �    This parameter returns the power supply's sequence current which the program and sequence you selected.

You can pass VI_NULL for the parameter if you are not interested in this value.

Units: amp     �    This parameter returns the power supply's sequence current slew rate which the program and sequence you selected.

You can pass VI_NULL for the parameter if you are not interested in this value.

Units: A/ms     �    This parameter returns the power supply's sequence TTL value which the program and sequence you selected.

You can pass VI_NULL for the parameter if you are not interested in this value.        This parameter returns the power supply's sequence time which the program and sequence you selected.

You can pass VI_NULL for the parameter if you are not interested in this value.

Units: second

Notice that if the sequence type is MANUAL or EXT.TRIGGER, it returns -1.     �    This parameter returns the power supply's program count which the program you selected.

You can pass VI_NULL for the parameter if you are not interested in this value.
     �    This parameter returns the power supply's program link which the program you selected.

You can pass VI_NULL for the parameter if you are not interested in this value.
   *�    �  �    Instrument Handle                +o }���  �    Status                           4�   � �    Program Selected                 5�  � � �    Sequence Selected                5� V} �  �    Type                             6� �  �  �    Voltage                          7� � � �  �    Voltage Slew                     8� �} �  �    Current                          9Q �  	�  �    Current Slew                     :* � � 
�  �    TTL                              :� �} �  �    Time                             < V � �  �    Count                            <� V  �  �    Link                                   	                   
   *1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10            
   *1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10    	            	           	           	           	           	            	           	            	            A    This function queries the power supply's program running state.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     x    This parameter returns the power supply's program running state.

You must pass a ViChar array with at least 16 bytes.    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
   AT    �  �    Instrument Handle                B � � �  �    Program Running State            B� ����  �    Status                                 	            	           J    This function queries the power supply's standard event status register.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     K    This parameter returns the power supply's standard event status register.    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
   M    �  �    Instrument Handle                M� � � �  �    Status Register                  N ����  �    Status                                 	            	           <    This function queries the power supply's read status byte.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     =    This parameter returns the power supply's read status byte.    	_    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call chr62000_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
   Xs    �  �    Instrument Handle                Y, � � �  �    Status Byte                      Yq ����  �    Status                                 	            	          &    This function resets the instrument to a known state and sends initialization commands to the instrument.  The initialization commands set instrument settings such as Headers Off, Short Command form, and Data Transfer Binary to the state necessary for the operation of the instrument driver.
    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

3FFC0102  Reset not supported.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   d�#����  �    Status                           it-   �  �    Instrument Handle                  	               Z    This function runs the instrument's self test routine and returns the test result(s). 

    &    This control contains the value returned from the instrument self test.  Zero means success.  For any other code, see the device's operator's manual.

Self-Test Code    Description
---------------------------------------
   0              Passed self test
   1              Self test failed

     �    Returns the self-test response string from the instrument. See the device's operation manual for an explanation of the string's contents.

You must pass a ViChar array with at least 256 bytes.    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

3FFC0103  Self-Test not supported.

BFFC0012  Error interpreting instrument response.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   k
 =  �  �    Self Test Result                 l8 = � � ,    Self-Test Message                m#����  �    Status                           q�-   �  �    Instrument Handle                  	           	            	               `    This function returns the revision numbers of the instrument driver and instrument firmware.

     �    Returns the instrument driver software revision numbers in the form of a string.

You must pass a ViChar array with at least 256 bytes.     �    Returns the instrument firmware revision numbers in the form of a string.

You must pass a ViChar array with at least 256 bytes.
    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

3FFC0105  Revision Query not supported.

BFFC0012  Error interpreting instrument response.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   t	 = 3 �  �    Instrument Driver Revision       t� =6 �  �    Firmware Revision                u%#����  �    Status                           z-   �  �    Instrument Handle                  	            	            	               V    This function reads an error code and a message from the instrument's error queue.

     B    Returns the error code read from the instrument's error queue.

     �    Returns the error message string read from the instrument's error message queue.

You must pass a ViChar array with at least 256 bytes.
    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0104  Error Query not supported

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFC0012  Error interpreting instrument response.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   |( =  �  �    Error Code                       |r = � � ,    Error Message                    }#����  �    Status                           ��-   �  �    Instrument Handle                  	            	            	               n    This function converts a status code returned by an instrument driver function into a user-readable string.      z    Pass the Status parameter that is returned from any of the instrument driver functions.

Default Value:  0  (VI_SUCCESS)     �    Returns the user-readable message string that corresponds to the status code you specify.

You must pass a ViChar array with at least 256 bytes.
    H    Reports the status of this operation.  

This function can return only three possible status codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFF0085  Unknown status code (warning).

BFFF000A  Invalid parameter (Error Message buffer is VI_NULL).

        The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

You can pass VI_NULL for this parameter.  This is useful when one of the initialize functions fail.

Default Value:  VI_NULL
   � =  �  h    Error Code                       �� = � � �    Error Message                    �8#����  �    Status                           ��-   �  �    Instrument Handle                  0    	            	           VI_NULL   I    This function returns the error information associated with an IVI session or with the current execution thread.  If you specify a valid IVI session for the Instrument Handle parameter, this function retrieves and then clears the error information for the session.  If you pass VI_NULL for the Instrument Handle parameter, this function retrieves and then clears the error information for the current execution thread.  

The error information includes a primary error, secondary error, and an error elaboration string.  For a particular session, this information is the same as the values held in the following attributes:

CHR62000_ATTR_PRIMARY_ERROR
CHR62000_ATTR_SECONDARY_ERROR
CHR62000_ATTR_ERROR_ELABORATION

The IVI Library also maintains this error information separately for each thread.  This is useful if you do not have a session handle to pass to chr62000_GetErrorInfo or chr62000_ClearErrorInfo, which
occurs when a call to chr62000_init or chr62000_InitWithOptions fails.

You can call chr62000_error_message to obtain a text description of the primary or secondary error value.
    �    Reports the status of this operation.

This function returns a non-zero status code only when it is unable to obtain the error information for the session or thread.  The function can return the following status codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFA0021  Unable to allocate system resource.

BFFF000E  Invalid session handle.

     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  VI_NULL
    �    The primary error code for the session or execution thread.   The value is the same as the one held by the attribute CHR62000_ATTR_PRIMARY_ERROR.
  
A value of VI_SUCCESS (0) indicates that no error occurred,  A positive value indicates a warning.  A negative value indicates an error.  

You can call chr62000_error_message to get a text description of the value.

If you are not interested in this value, you can pass VI_NULL.    �    The secondary error code for the session or execution thread.  If the primary error code is non-zero, the secondary error code can further describe the error or warning condition.  The value is the same as the one held by the attribute CHR62000_ATTR_SECONDARY_ERROR.

A value of VI_SUCCESS (0) indicates no further description.  

You can call chr62000_error_message to get a text description of the value.

If you are not interested in this value, you can pass VI_NULL.
    �    The error elaboration string for the session or execution thread.  If the primary error code is non-zero, the elaboration string can further describe the error or warning condition.   The value is the same as the one held by the attribute CHR62000_ATTR_ERROR_ELABORATION.  

If you are not interested in this value, you can pass VI_NULL.  Otherwise, you must pass a ViChar array with at least 256 bytes.
   ��#����  �    Status                           ��-   �  �    Instrument Handle                �c 5 R �  �    Primary Error                    � 5A �  �    Secondary Error                  �� � Q � �    Error Elaboration                  	           VI_NULL    	           	           	           �    This function clears the error information for the current execution thread and the IVI session you specify.  If you pass VI_NULL for the Instrument Handle parameter, this function clears the error information only for the current execution thread. 

The error information includes a primary error code, secondary error code, and an error elaboration string.  For a particular session, this information is the same as the values held in the following attributes:

CHR62000_ATTR_PRIMARY_ERROR
CHR62000_ATTR_SECONDARY_ERROR
CHR62000_ATTR_ERROR_ELABORATION

This function sets the primary and secondary error codes to VI_SUCCESS (0), and sets the error elaboration string to "".

The IVI Library also maintains this error information separately for each thread.  This is useful if you do not have a session handle to pass to chr62000_ClearErrorInfo or chr62000_GetErrorInfo, which occurs when a call to chr62000_init or chr62000_InitWithOptions fails.

    w    Reports the status of this operation.

This function returns a non-zero status code only when it is unable to clear the error information for the session or thread.  The function can return the following status codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFF000E  Invalid session handle.

     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   ��#����  �    Status                           �-   �  �    Instrument Handle                  	              �    This function returns the coercion information associated with the IVI session.  This function retrieves and clears the oldest instance in which the instrument driver coerced a value you specified to another value.

If you set the CHR62000_ATTR_RECORD_COERCIONS attribute to VI_TRUE, the instrument driver keeps a list of all coercions it makes on ViInt32 or ViReal64 values you pass to instrument driver functions.  You use this function to retrieve information from that list.

If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Coercion Record buffer parameter.

The function returns an empty string in the Coercion Record parameter if no coercion records remain for the session.

        Reports the status of this operation.

If the function succeeds and the buffer you pass is large enough to hold the entire coercion record string, the function returns 0.

If the next coercion record string, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If the function fails for some other reason, it returns a negative error code.

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
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     �    The ViSession handle that you obtain from the chr62000_init function.  The handle identifies a particular instrument session.

Default Value:  None    �    Returns the next coercion record for the IVI session.  If there are no coercion records, the function returns an empty string.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter.  If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

This parameter returns an empty string if no coercion records remain for the session.
    �    Pass the number of bytes in the ViChar array you specify for the Coercion Record parameter.

If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Coercion Record buffer parameter.

Default Value:  None

   �'#����  �    Status                           �=-   �  �    Instrument Handle                �� � Q � �    Coercion Record                  �� = � �  �    Buffer Size                        	               	               :    This function obtains a multithread lock on the instrument session.  Before it does so, it waits until all other execution threads have released their locks on the instrument session.

Other threads might have obtained a lock on this session in the following ways:

- The user's application called chr62000_LockSession.

- A call to the instrument driver locked the session.

- A call to the IVI engine locked the session.

After your call to chr62000_LockSession returns successfully, no other threads can access the instrument session until you call chr62000_UnlockSession.

Use chr62000_LockSession and chr62000_UnlockSession around a sequence of calls to instrument driver functions if you require that the instrument retain its settings through the end of the sequence.

You can safely make nested calls to chr62000_LockSession within the same thread.  To completely unlock the session, you must balance each call to chr62000_LockSession with a call to chr62000_UnlockSession.  If, however, you use the Caller Has Lock parameter in all calls to chr62000_LockSession and chr62000_UnlockSession within a function, the IVI Library locks the session only once within the function regardless of the number of calls you make to chr62000_LockSession.  This allows you to call chr62000_UnlockSession just once at the end of the function. 
    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

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
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    This parameter serves as a convenience.  If you do not want to use this parameter, pass VI_NULL. 

Use this parameter in complex functions to keep track of whether you obtain a lock and therefore need to unlock the session.  Pass the address of a local ViBoolean variable.  In the declaration of the local variable, initialize it to VI_FALSE.  Pass the address of the same local variable to any other calls you make to chr62000_LockSession or chr62000_UnlockSession in the same function.

The parameter is an input/output parameter.  chr62000_LockSession and chr62000_UnlockSession each inspect the current value and take the following actions:

- If the value is VI_TRUE, chr62000_LockSession does not lock the session again.  If the value is VI_FALSE, chr62000_LockSession obtains the lock and sets the value of the parameter to VI_TRUE.

- If the value is VI_FALSE, chr62000_UnlockSession does not attempt to unlock the session.  If the value is VI_TRUE, chr62000_UnlockSession releases the lock and sets the value of the parameter to VI_FALSE.
 
Thus, you can, call chr62000_UnlockSession at the end of your function without worrying about whether you actually have the lock.  

Example:

ViStatus TestFunc (ViSession vi, ViInt32 flags)
{
    ViStatus error = VI_SUCCESS;
    ViBoolean haveLock = VI_FALSE;

    if (flags & BIT_1)
        {
        viCheckErr( chr62000_LockSession(vi, &haveLock));
        viCheckErr( TakeAction1(vi));
        if (flags & BIT_2)
            {
            viCheckErr( chr62000_UnlockSession(vi, &haveLock));
            viCheckErr( TakeAction2(vi));
            viCheckErr( chr62000_LockSession(vi, &haveLock);
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
    chr62000_UnlockSession(vi, &haveLock);
    return error;
}   �#����  �    Status                           ��-   �  �    Instrument Handle                �X H � �  �    Caller Has Lock                    	               	            �    This function releases a lock that you acquired on an instrument session using chr62000_LockSession.  Refer to chr62000_LockSession for additional information on session locks.
    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

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
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    This parameter serves as a convenience.  If you do not want to use this parameter, pass VI_NULL. 

Use this parameter in complex functions to keep track of whether you obtain a lock and therefore need to unlock the session. 
Pass the address of a local ViBoolean variable.  In the declaration of the local variable, initialize it to VI_FALSE.  Pass the address of the same local variable to any other calls you make to chr62000_LockSession or chr62000_UnlockSession in the same function.

The parameter is an input/output parameter.  chr62000_LockSession and chr62000_UnlockSession each inspect the current value and take the following actions:

- If the value is VI_TRUE, chr62000_LockSession does not lock the session again.  If the value is VI_FALSE, chr62000_LockSession obtains the lock and sets the value of the parameter to VI_TRUE.

- If the value is VI_FALSE, chr62000_UnlockSession does not attempt to unlock the session.  If the value is VI_TRUE, chr62000_UnlockSession releases the lock and sets the value of the parameter to VI_FALSE.
 
Thus, you can, call chr62000_UnlockSession at the end of your function without worrying about whether you actually have the lock.  

Example:

ViStatus TestFunc (ViSession vi, ViInt32 flags)
{
    ViStatus error = VI_SUCCESS;
    ViBoolean haveLock = VI_FALSE;

    if (flags & BIT_1)
        {
        viCheckErr( chr62000_LockSession(vi, &haveLock));
        viCheckErr( TakeAction1(vi));
        if (flags & BIT_2)
            {
            viCheckErr( chr62000_UnlockSession(vi, &haveLock));
            viCheckErr( TakeAction2(vi));
            viCheckErr( chr62000_LockSession(vi, &haveLock);
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
    chr62000_UnlockSession(vi, &haveLock);
    return error;
}   #����  �    Status                           �1-   �  �    Instrument Handle                �� H � �  �    Caller Has Lock                    	               	            �    This function writes a user-specified string to the instrument.

Note:  This function bypasses IVI attribute state caching.  Therefore, when you call this function, the cached values for all attributes will be invalidated.     2    Pass the string to be written to the instrument.         Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   �^ A � �  �    Write Buffer                     ј#����  �    Status                           ��-   �  �    Instrument Handle                      	               /    This function reads data from the instrument.     c    After this function executes, this parameter contains the data that was read from the instrument.    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

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
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     �    Pass the maximum number of bytes to read from the instruments.  

Valid Range:  0 to the number of elements in the Read Buffer.

Default:  0

     ^    Returns the number of bytes actually read from the instrument and stored in the Read Buffer.   �d @ �  �    Read Buffer                      ��#����  �    Status                           �b-   �  �    Instrument Handle                � @ C �  �    Number of Bytes To Read          ݴ �' �  �    Num Bytes Read                     	            	               0    	           �    This function performs the following operations:

- Closes the instrument I/O session.

- Destroys the instrument driver session and all of its attributes.

- Deallocates any memory resources the driver uses.

Notes:

(1) You must unlock the session before calling chr62000_close.

(2) After calling chr62000_close, you cannot use the instrument driver again until you call chr62000_init or chr62000_InitWithOptions.

    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the chr62000_error_message function.  To obtain additional information about the error condition, use the chr62000_GetErrorInfo and chr62000_ClearErrorInfo functions.

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
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
     �    The ViSession handle that you obtain from the chr62000_init or chr62000_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   ��#����  �    Status                           �-   �  �    Instrument Handle                  	            ����         �  &E     K.    init                            ����         (/  D�     K.    InitInterface                   ����         GU  j#     K.    InitWithOptions                 ����         lz  yT     K.    SetVoltage                      ����         z  �?     K.    SetVoltageLimit                 ����         �G  ��     K.    SetVoltageProtect               ����         ��  �&     K.    SetVoltageSlew                  ����         ��  ��     K.    SetCurrent                      ����         �m  ��     K.    SetCurrentLimit                 ����         ��  �K     K.    SetCurrentProtect               ����         �  ؃     K.    SetCurrentSlew                  ����         �:  �     K.    SetPowerProtect                 ����         �E  �c     K.    SetOutput                       ����         �-  �/     K.    SetTTLPort                      ����         �� �     K.    SetBeeper                       ����        	� 9     K.    SetRmtMode                      ����         "Y     K.    SetFoldbackProtect              ����        #p /L     K.    SetAPGMode                      ����        0| =:     K.    ProgSel                         ����        ? Q} 
    K.    SetSeqPara                      ����        T/ _i     K.    ProgRun                         ����        `3 j�     K.    SaveProgram                     ����        k uj     K.    SetCLS                          ����        u� �     K.    SetESE                          ����        �� ��     K.    SetSRE                          ����        �� �      K.    Save                            ����        �� �     K.    Recall                          ����        �� �>     K.    SetAttributeViInt32             ����        �� Ќ     K.    SetAttributeViReal64            ����        �' ��     K.    SetAttributeViString            ����        �t �)     K.    SetAttributeViBoolean           ����         � y     K.    SetAttributeViSession           ����         )�     K.    GetAttributeViInt32             ����        *� <�     K.    GetAttributeViReal64            ����        =� [!     K.    GetAttributeViString            ����        \� n9     K.    GetAttributeViBoolean           ����        ov �     K.    GetAttributeViSession           ����        �R ��     K.    CheckAttributeViInt32           ����        �5 ��     K.    CheckAttributeViReal64          ����        � �f     K.    CheckAttributeViString          ����        � �O     K.    CheckAttributeViBoolean         ����        �� �8     K.    CheckAttributeViSession         ����        �� �     K.    Measure                         ����        �� �w     K.    Fetch                           ����        �� i     K.    QueryBeeper                     ����        $ �     K.    QueryOutput                     ����        �      K.    QueryFoldback                   ����         )t     K.    QueryAPGMode                    ����        *p =l     K.    QueryProgPara                   ����        A K�     K.    QueryProgRunState               ����        L� Wt     K.    QueryESR                        ����        X/ b�     K.    QuerySTB                        ����        c� j.     K.    reset                           ����        j� r�     K.    self_test                       ����        s� z�     K.    revision_query                  ����        {� ��     K.    error_query                     ����        �� ��     K.    error_message                   ����        �� ��     K.    GetErrorInfo                    ����        �� ��     K.    ClearErrorInfo                  ����        �O ��     K.    GetNextCoercionRecord           ����        �� �(     K.    LockSession                     ����        �� ϻ     K.    UnlockSession                   ����        �v �z     K.    WriteInstrData                  ����        �- �     K.    ReadInstrData                   ����        �P �I     K.    close                                 �                                     DInitialize                           DInit Interface                       DInitialize With Options             �Application Functions               \Source                               DSet Voltage                          DSet Voltage Limit                    DSet Voltage Protect                  DSet Voltage Slew                     DSet Current                          DSet Current Limit                    DSet Current Protect                  DSet Current Slew                     DSet Power Protect                   �Configure                            DSet Output                           DSet TTL Port                         DSet Beeper                           DSet Remote Mode(RS232C only)         DSet Foldback Protect                 DSet APG Mode                        �Program                              DProgram Select                       DSet Sequence Parameter               DRun                                  DSave Program                        >Status                               D*CLS, Clear Status                   D*ESE, Std. Event Status Enable       D*SRE, Service Request Enable         D*SAV, Save                           D*RCL, Recall                        �Configuration Functions             �Set/Get/Check Attribute             �Set Attribute                        DSet Attribute ViInt32                DSet Attribute ViReal64               DSet Attribute ViString               DSet Attribute ViBoolean              DSet Attribute ViSession             nGet Attribute                        DGet Attribute ViInt32                DGet Attribute ViReal64               DGet Attribute ViString               DGet Attribute ViBoolean              DGet Attribute ViSession              Check Attribute                      DCheck Attribute ViInt32              DCheck Attribute ViReal64             DCheck Attribute ViString             DCheck Attribute ViBoolean            DCheck Attribute ViSession           �Measure Functions                    DMeasure                              DFetch                               �Action/Status Functions             ZQuery Action                         DQuery Beeper                         DQuery Output                         DQuery Foldback Protect               DQuery APG Mode                       DQuery Program Parameter              DQuery Program Running State         �Query Status                         D*ESR?, Std. Eve. Status Reg.         D*STB?, Read Status Byte             �Utility Functions                    DReset                                DSelf-Test                            DRevision Query                       DError-Query                          DError Message                       
6Error Info                           DGet Error Info                       DClear Error Info                    
�Coercion Info                        DGet Next Coercion Record            
�Locking                              DLock Session                         DUnlock Session                      JInstrument I/O                       DWrite Instrument Data                DRead Instrument Data                 DClose                           