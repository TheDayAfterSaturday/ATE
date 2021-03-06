s��         k  	 ~�  ��   �   ����                               agesg                           Agilent ESG Family Signal Generators                                                                     � ��ViStatus     	� 	��ViSession  � � ��ViReal64     	� 	��ViBoolean  �  � ��ViInt32     � ��ViConstString     �  ViChar[]     
�  	ViReal64[]  � � ��ViInt16     � ��ViAttr     � ��ViRsrc     � ��ViString  � � ��ViUInt16  � � ��ViUInt32     	�  ViInt16[]     	�  ViInt32[]     � 	 
ViBoolean[]  D    This instrument driver provides programming support for the Agilent ESG Family Signal Generator.  The driver contains all the functions that IVI and VXIplug&play require.  In addition, the driver contains high-level functions that configure the RF signal generator.

Note:  This driver requires the VISA and IVI libraries.     X    This class contains functions and sub-classes that configure the RF Signal Generator.
     ^    Setting the output frequency and amplitude, enabling or disabling the ALC and the RF output.     8    Additional setting for instrument frequency behaviors.     4    Additional setting for instrument power behaviors.     b    Configure analog modulation. Apply amplitude, frequency or phase modulation to an output signal.     �    Supports signal generators that can apply pulse modulation to the RF output signal. The user can enable or disable pulse modulation, and specify the source and the polarity of the modulating signal.    �    Supports the LF generator (within the RF signal generator), that is normally used as a source for the modulators and the output of the LF generator, if it is used as a source for external devices. To use the LF generator as a modulation source, the modulation source in the Modulate AM,  Modulate FM or Modulate PM should be configured. The user can set the frequency, the waveform of the LF signal, amplitude and enable or disable the output.     �    Supports the pulse generator within the signal generator that is normally used as a source for the pulse modulator. The user can set the pulse period, width and delay. The pulse can be triggered, so source and external trigger polarity can be set.     i    Supports signal generators with the ability to step the frequency or the power of the RF output signal.     ;    For generators with configurable Automatic Level Control.     x    The IviRFSigGenReferenceOscillator extension group supports signal generators with a configurable frequency reference.    U    Supports signal generators that can apply IQ (vector) modulation to the RF output signal. The user can enable or disable IQ modulation and specify the source of the modulating signal. A calibration is executed with an event function.
The user can simulate or correct impairment on IQ (vector) modulation.

Only for ESG-D and ESG-DP series.     �    Controls the internal arbitrary waveform generator. The two outputs of the Arb generator are used with the IQ (vector) modulation to simulate digital modulation.

Only with UND option.     n    The user can simulate mobile (cell) phone modulation based on Code Division Muliple Access (CDMA) standards.     �    The CDMA subsystem are used to set the controls and the parameters associated with IS-95A communications standard. Only for signal generators with both Options UND and UN5.     �    Set the controls and parameters associated with the W-CDMA (Rev 1.0-1.2) communications standard. 
Only to signal generators with both Options UND and 100.     �    Set the controls and parameters associated with the W-CDMA (3GPP 3.4 12-00) communications standard. 
Only to signal generators with both Options UND and 100.     �    Set the controls and parameters associated with the cdma2000 communications standard. 
Only for signal generators with both Options UND and 101.     o    The user can simulate mobile (cell) phone modulation based on Time Division Multiple Access (TDMA) standards.    �    The Digital European Cordless Telecommunications, (DECT) digital communications standard defines an access technology for existing and future networks including PSTN, ISDN and GSM for public applications and PBXs and X.25 for private networking.

Because DECT can be used to access any network, a wide range of cordless communications systems are being developed using the DECT standard. The same handset can be used in different applications allowing mobility between systems while offering higher performance, both �in-building� and across wide geographic areas. 

The DECT digital communications standard employs a 12:1 Time Division Multiple Access (TDMA), Time Division Duplex (TDD). The raw bit rate, 1.152 Mbits/second, is modulated using a system known as Gaussian Frequency Shift Keying (GFSK). This method deviates the carrier frequency by +288 kHz to represent a logic 1 or -288 kHz to represent a logic 0. The speech rate is 32 kbits/s and the raw data rate is 1.152 Mbits/s. The frequency allocation is 1880 MHz to 1900 MHz. There are ten carriers in this band with a carrier spacing of 1.728 MHz and a channel bandwidth of 1 MHz. The ten carriers are numbered 0 to 9 (where channel nine is the lowest frequency at 1881.792 MHz and channel zero is the highest, at 1897.344 MHz). 

Each of these carriers spaced across this 20 MHz band employ Time Division Multiple Access, Time Division Duplex. This means that each carrier can be activated at any one of the 24 available timeslots in a 10 ms timeframe. Duplex communication is achieved by using the first 12 timeslots as the transmit time and the second 12 timeslots as the receive time. 
The power level in DECT is fixed at +24 dBm for both the fixed part and portable parts of the system; it does not vary as in cellular systems.

The DECT framing structure is based on a hierarchical system consisting of timeslots, TDMA frames, multiframes, and hyperframes. One traffic bearer burst (from mobile to base station) consists of 390 modulated bits including of  guard, preamble, synchronization, signaling/data, and error correction bits. Twelve of these bursts make up one TDMA frame. Eighteen TDMA frames make up one multiframe.     #    The Trans European Trunked Radio or TETRA digital communications standard defines a voice and data over-air interface between a mobile radio and the system infrastructure.
This standard was designed as the basis for a private radio communications system. A central control center is linked to multiple base station sites  which provide the required coverage.

The TETRA digital communications standard employs a 4:1 Time Division Multiple Access (TDMA) allowing four channels to use one carrier frequency simultaneously. The raw bit rate, 36k bits/second, is modulated using a system known as p/4 Differential Quadrature Phase Shift Keying (p/4DQPSK). This standard defines the channel separation as 25 kHz at carrier frequencies surrounding 400 MHz. The standard includes a Broadcast Control Channel, multiple Traffic Channels, and a host of other logical channel types. 

The TETRA framing structure is based on a hierarchical system consisting of timeslots/bursts, TDMA frames, multiframes, and hyperframes. One Normal Uplink Burst (from mobile to base station) consists of 510 modulated bits consisting of ramp, tail, training, data, and guard bits. Four of these bursts make up one TDMA frame. Eighteen TDMA frames make up one multiframe. Frame 18 in the multiframe is dedicated to control channel signaling.         The Personal Handy Phone System (PHS) digital communications standard defines a voice and data over-air interface between a mobile radio and a base station/network interface. A central control center is linked to multiple base station sites which provide the required coverage.

The PHS digital communications standard employs a 4:1 Time Division Multiple Access (TDMA), Time Division Duplex (TDD), allowing eight channels to use one carrier frequency simultaneously. The 384 kbits/second raw bit rate is modulated using a system known as p/4 Differential Quadrature Phase Shift Keying (p/4DQPSK). This standard defines the channel separation as 300 kHz at carrier frequencies between 1895 and 1918 MHz at a power level of 10 mW (mobile station). The standard includes a multiple uplink and downlink traffic channels and a dedicated control (synchronization) channel. 

The PHS framing structure is based on a hierarchical system consisting of timeslots, TDMA frames, multiframes, and hyperframes. One transmission burst consists of 240 modulated bits including ramp, start symbol, preamble, unique word, channel identifier, slow associated control channel, traffic channel data, cycle redundancy check, and guard bits. Eight of these bursts make up one TDMA frame. Eighteen TDMA frames make up one multiframe.    P    The North American Digital Cellular digital communications standard defines a voice and data over-air interface between a mobile radio and the system infrastructure. This standard was designed as the basis for a private radio communications system. A central control center is linked to multiple base station sites which provide the required coverage. 

The NADC digital communications standard employs a 6:1 Time Division Multiple Access (TDMA) allowing six channels to use one carrier frequency simultaneously. The raw bit rate, 48.6 kbits/second, is modulated using a system known as p/4 Differential Quadrature Phase Shift Keying (p/4DQPSK). This standard defines the channel separation as 30 kHz at carrier frequencies between 824 and 849 MHz (uplink transmissions) and 869 to 894 MHz (downlink transmissions) at a power level ranging from 2.2 mW to 6W (mobile station).

The NADC framing structure is based on a hierarchical system consisting of timeslots, TDMA frames, multiframes, and hyperframes. One Normal Uplink Burst (from mobile to base station) consists of 324 modulated bits consisting of guard, ramp, synchronization word, slow associated control channel, color code, and data bits. Six of these bursts make up one TDMA frame. Eighteen TDMA frames make up one multiframe. Frame 18 in the multiframe is dedicated to control channel signaling.    �    The Personal Digital Cellular (PDC) digital communications standard defines a voice and data over-air interface between a mobile radio and the system infrastructure. A central control center is linked to multiple base station sites which provide the required coverage.

The PDC digital communications standard employs a 6:1 Time Division Multiple Access (TDMA) allowing six channels to use one carrier frequency simultaneously. The raw bit rate, 42 kbits/second, is modulated using a system known as p/4 Differential Quadrature Phase Shift Keying (p/4DQPSK). This standard defines the channel separation as 50 kHz (25 kHz interleave) in two separate frequency bands: 810 to 826 MHz (downlink transmission) 940 to 956 MHz (uplink transmission), as well as 1477 to 1501 MHz (downlink transmission) 1429 to 1453 MHz (uplink transmission) at a power level of 0.8 W
(mobile station). The standard includes a control channel, multiple traffic channels, and other logical channel types.

The PDC framing structure is based on a hierarchical system consisting of timeslots, TDMA frames, multiframes, and hyperframes. One uplink traffic channel burst (from mobile to base station) consists of 280 modulated bits including ramp, data, preamble, synchronization word, color code, steal flag, slow associated access channel, and guard bits. Six of these bursts make up one TDMA frame. Eighteen TDMA frames make up one multiframe.    �    The Global System for Mobile Communication (GSM) digital communications standard defines a voice and data over-air interface between a mobile radio and the system infrastructure. This standard was designed as the basis for a private radio communications system. A central control center is linked to multiple base station sites which provide the required coverage.

The GSM digital communications standard employs a 8:1 Time Division Multiple Access (TDMA) allowing eight channels to use one carrier frequency simultaneously. The 270.833 kbits/second raw bit rate is modulated using a system known as Gaussian Minimum Shift Keying (GMSK). This standard defines the channel separation as 200 kHz at carrier frequencies between 935 and 960 MHz (downlink transmissions) and 890 to 915 MHz (uplink transmissions) at a power level ranging between 3.7 mW and 20 W. The standard includes multiple traffic channels, a control channel, and a cell broadcast channel.

The GSM framing structure is based on a hierarchical system consisting of timeslots, TDMA frames, multiframes, and hyperframes. One traffic channel consists of 156.25 (157)
modulated bits including tail, training sequence, encryption, and guard time, and timeslot bits. Eight of these bursts make up one TDMA frame. Twenty-six TDMA frames make up one multiframe. Frames 13 and 26 in the multiframe are dedicated to control channel signaling.

Guard time appears in the visual representation of the timeslot as an 8.25-bit field. In the actual implementation, the guard time field in timeslots 0 and 4 are 9 bits long and the remaining timeslots contain 8 bit fields. (This implementation is documented in the GSM standard �GSM REC. 05.10 Section 5.7� as follows: �Optionally, the BS may use a timeslot length of  157 bit periods on timeslots with TN=0 and 4, and 156 bit periods on timeslots with TN=1, 2, 3, 5, 6, 7, rather than 156.25 bit periods on all timeslots.�)    B    The Real-Time I/Q Baseband Generator enables you to shape the characteristics of a digitally modulated signal. You can use it to create time-domain multiple access signals. 

You can choose from a variety of modulation types, including QPSK, offset QPSK, BPSK, p/4DQPSK, 4-, 16-, 32-, 64-, and 256-QAM, as well as define your own MSK, FSK, and I/Q
modulation types. You can create and modify these custom modulation types using simple table editors, and store custom files to the signal generator�s memory where they can be recalled on demand. Using the table editors, you can adjust the signal�s data, frequency deviation, I value, Q value, phase deviation, bit rate, filter alpha, FIR coefficient and value, and a channel offset. Also, with user-defined IQ and FSK modulations, you can design custom differential encoding schemes.     T    The route subsystem is used to set the parameters associated with signal polarity.     T    This class contains sub-classes for the set, get, and check attribute functions.       �    This class contains functions that set an attribute to a new value.  There are typesafe functions for each attribute data type.     �    This class contains functions that obtain the current value of an attribute.  There are typesafe functions for each attribute data type.     �    This class contains functions that obtain the current value of an attribute.  There are typesafe functions for each attribute data type.         Action/Status Functions    E    This class contains functions and sub-classes that control common instrument operations.  These functions include many of functions that VXIplug&play require, such as reset, self-test, revision query, error query, and error message.  This class also contains functions that access IVI error infomation and lock the session.     R    This class contains functions that retrieve and clear the IVI error information.     J    This class contains functions that retrieve interchangeability warnings.     ?    This class contains functions that retrieve coercion records.     k    This class contains functions that lock and unlock IVI instrument driver sessions for multithread safefy.     F    This class contains functions that send and receive instrument data.    �    This function performs the following initialization actions:

- Creates a new IVI instrument driver session.

- Opens a session to the specified device using the interface and address you specify for the Resource Name parameter.

- If the ID Query parameter is set to VI_TRUE, this function queries the instrument ID and checks that it is valid for this instrument driver.

- If the Reset parameter is set to VI_TRUE, this function resets the instrument to a known state.

- Sends initialization commands to set the instrument to the state necessary for the operation of the instrument driver.

- Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Note:  This function creates a new session each time you invoke it. Although you can open more than one IVI session for the same resource, it is best not to do so.  You can use the same session in multiple program threads.  You can use the agesg_LockSession and agesg_UnlockSession functions to protect sections of code that require exclusive access to the resource.

Warning: Before you call this function, all probes must be connected and during communication with instrument these probes cannot be changed.

    �    Pass the resource name of the device to initialize.

You can also pass the name of a virtual instrument or logical name that you configure with the IVI Configuration utility.  The virtual instrument identifies a specific device and specifies the initial settings for the session.  A logical Name identifies a particular virtual instrument.

Refer to the following table below for the exact grammar to use for this parameter.  Optional fields are shown in square brackets ([]).

Syntax
------------------------------------------------------
GPIB[board]::<primary address>[::secondary address]::INSTR
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
"SampleInstr" - Logical name "SampleInstr"
"VInstr->xyz432" - Virtual Instrument "xyz432"
"xyz432" - Logical Name or Virtual Instrument "xyz432"

Default Value:  "GPIB::19::INSTR"

Note: You specify the resource name with the "VInstr->" if you have the logical name that is the same as the virtual instrument name and you want to explicitly use the virtual instrument name. Otherwise, the driver uses the logical name.        Specify whether you want the instrument driver to perform an ID Query.

When you set this parameter to VI_TRUE, the driver verifies that the instrument you initialize is a type that this driver supports.  

Circumstances can arise where it is undesirable to send an ID Query command string to the instrument.  When you set this parameter to VI_FALSE, the function initializes the instrument without performing an ID Query.

Valid Values:
VI_TRUE  (1) - Perform ID Query
VI_FALSE (0) - Skip ID Query

Default Value: VI_TRUE  (1)     �    Specify whether you want the to reset the instrument during the initialization procedure.

Valid Values:
VI_TRUE  (1) - Reset Device
VI_FALSE (0) - Don't Reset

Default Value:  VI_TRUE  (1)    �    Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Notes:

(1) This function creates a new session each time you invoke it.  This is useful if you have multiple physical instances of the same type of instrument.  

(2) Avoid creating multiple concurrent sessions to the same physical instrument.  Although you can create more than one IVI session for the same resource, it is best not to do so.  A better approach is to use the same IVI session in multiple execution threads.  You can use functions agesg_LockSession and agesg_UnlockSession to protect sections of code that require exclusive access to the resource.

    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA4001  Histogram is not enabled.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
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
    B� =   �  �    Resource Name                     Ia : �       ID Query                          Kz =� �       Reset Device                      LA �C �  �    Instrument Handle                 N�#����  �    Status                          ����  f��                                            "GPIB::19::INSTR"   Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	           KCopyright 2002-2009 National Instruments Corporation. All Rights Reserved.   �    This function performs the following initialization actions:

- Creates a new IVI instrument driver and optionally sets the initial state of the following session attributes:

    AGESG_ATTR_RANGE_CHECK         
    AGESG_ATTR_QUERY_INSTRUMENT_STATUS  
    AGESG_ATTR_CACHE               
    AGESG_ATTR_SIMULATE            
    AGESG_ATTR_RECORD_COERCIONS    

- Opens a session to the specified device using the interface and address you specify for the Resource Name parameter.

- If the ID Query parameter is set to VI_TRUE, this function queries the instrument ID and checks that it is valid for this instrument driver.

- If the Reset parameter is set to VI_TRUE, this function resets the instrument to a known state.

- Sends initialization commands to set the instrument to the state necessary for the operation of the instrument driver.

- Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Note:  This function creates a new session each time you invoke it. Although you can open more than one IVI session for the same resource, it is best not to do so.  You can use the same session in multiple program threads.  You can use the agesg_LockSession and agesg_UnlockSession functions to protect sections of code that require exclusive access to the resource.

Warning: Before you call this function, all probes must be connected and during communication with instrument these probes cannot be changed.

    �    Pass the resource name of the device to initialize.

You can also pass the name of a virtual instrument or logical name that you configure with the IVI Configuration utility.  The virtual instrument identifies a specific device and specifies the initial settings for the session.  A logical Name identifies a particular virtual instrument.

Refer to the following table below for the exact grammar to use for this parameter.  Optional fields are shown in square brackets ([]).

Syntax
------------------------------------------------------
GPIB[board]::<primary address>[::secondary address]::INSTR
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
"SampleInstr" - Logical name "SampleInstr"
"VInstr->xyz432" - Virtual Instrument "xyz432"
"xyz432" - Logical Name or Virtual Instrument "xyz432"

Default Value:  "GPIB::19::INSTR"

Note: You specify the resource name with the "VInstr->" if you have the logical name that is the same as the virtual instrument name and you want to explicitly use the virtual instrument name. Otherwise, the driver uses the logical name.    �    Specify whether you want the instrument driver to perform an ID Query.

When you set this parameter to VI_TRUE, the driver verifies that the instrument you initialize is a type that this driver supports.  

Circumstances can arise where it is undesirable to send an ID Query command string to the instrument.  When you set this parameter to VI_FALSE, the function initializes the instrument without performing an ID Query.

Notes:

(1) If ID Query is disable, you should pass DriverSetup string for your model. If you don't pass DriverSetup string, default model is Agilent E4400B.

Valid Values:
VI_TRUE  (1) - Perform ID Query
VI_FALSE (0) - Skip ID Query

Default Value:  VI_TRUE  (1)     �    Specify whether you want the to reset the instrument during the initialization procedure.

Valid Values:
VI_TRUE  (1) - Reset Device
VI_FALSE (0) - Don't Reset

Default Value:  VI_TRUE  (1)    �    Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Notes:

(1) This function creates a new session each time you invoke it.  This is useful if you have multiple physical instances of the same type of instrument.  

(2) Avoid creating multiple concurrent sessions to the same physical instrument.  Although you can create more than one IVI session for the same resource, it is best not to do so.  A better approach is to use the same IVI session in multiple execution threads.  You can use functions agesg_LockSession and agesg_UnlockSession to protect sections of code that require exclusive access to the resource.

    �    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA4001  Histogram is not enabled.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
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
        You can use this control to set the initial value of certain attributes for the session.  The following table lists the attributes and the name you use in this parameter to identify the attribute.

Name              Attribute Valid Constant   
--------------------------------------------
RangeCheck        AGESG_ATTR_RANGE_CHECK
QueryInstrStatus  AGESG_ATTR_QUERY_INSTRUMENT_STATUS   
Cache             AGESG_ATTR_CACHE   
Simulate          AGESG_ATTR_SIMULATE  
RecordCoercions   AGESG_ATTR_RECORD_COERCIONS

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

    True:     1, TRUE, or VI_TRUE
    False:    0, False, or VI_FALSE


Default Value:
       "Simulate=0,RangeCheck=1,QueryInstrStatus=1,Cache=1"

Notes:
(1) For the DriverSetup parameter, you can pass the following strings:
  Model: X where X is the instrument type E4400B, E4420B, E4421B, E4422B, E4423B, E4424B, E4425B, E4426B, E4430B, E4431B, E4432B, E4433B, E4434B, E4435B, E4436B and E4437B

Here is an example of this option string which turns on simulation and emulates the Agilent E4400B:

  "Simulate=1,DriverSetup=Model:E4400B"
 
(2) If you enable IDQuery and don't pass DriverSetup driver automaticly detect your instrument model.

(3) ESG series instrument options can be specified in the simulation mode only.
    Options: opt1&opt2&...

    Available options are 1E5, 1E6, UNA, UNB, UND, UN3, UN4, UN7, UN8, UN9, H99, UN5, 100, 101, 200, 201, 202, 300.

Hardware options:

  1E5 - High-stability time base
         (standard for ESG-AP and ESG-DP)

  1E6 - High-performance pulse modulation
         (only ESG-A and ESG-AP)

  UNA - Alternate time slot level control
         (only ESG-D and ESG-DP)
        Required Option UN8
        Not compatible with UNB, H03, H98, H99

  UNB - High power with mechanical attenuator
        Not compatible with UNA, 300, H03, H98, H99

  UND - Internal dual arbitrary waveform generator
        Not compatible with 300, H03, H98

  UN3 - 

  UN4 - 

  UN7 - Internal bit error rate (BER) analyzer
         (only ESG-D and ESG-DP)
        Required Option UN8 (or UN3 or UN4)
        Not compatible with H03, H98, 300

  UN8 - Real-time I/Q baseband generator 1M RAM
         (only ESG-D and ESG-DP)
        Not compatible with H03, H98

  UN9 - Add 7M RAM to Option UN8
         (only ESG-D and ESG-DP)
        Required Option UN8
        Not compatible with H03, H98

  H99 - Improved ACP performance for TETRA, CDMA, WCDMA
          and cdma2000
         (only ESG-D and ESG-DP)
        Not compatible with UNA, UNB, H03
    
Firmware options:

  UN5 - Multicarrier, multichannel cdmaOne personality
          for Option UND
         (only ESG-D and ESG-DP)
        Required option UND
        Not compatible with 300, H03, H98

  100 - Multicarrier, multichannel W-CDMA personality
          for Option UND
         (only ESG-D and ESG-DP)
        Required option UND
        Not compatible with 300, H03, H98

  101 - Multicarrier, multichannel cdma2000 personality
          for Option UND
         (only ESG-D and ESG-DP)
        Required option UND
        Not compatible with 300, H03, H98

  200 - Real-time 3GPP W-CDMA personality for Option UN8
         (only ESG-D and ESG-DP)
        Required option UN8, revision C
        Not compatible with H03, H98

  201 - Real-time cdma2000 personality for Option UN8
         (only ESG-D and ESG-DP)
        Required option UN8, revision C
        Not compatible with H03, H98

  202 - Real-time EDGE personality for Option UN8
         (only ESG-D and ESG-DP)
        Required option UN8, revision C
        Not compatible with H03, H98

  300 - Base station BERT
         (only ESG-D)
        Required option UN8, revision C, 202; recomended UNA.
          Also requires E4406A with options 300 and 202
        Not compatible with UNB, H99, UND, UN5, 100, 101, H98,
                            H03, UN7

Here is an example of this option string which turns on simulation and emulates the Agilent E4437B with options UND, UN8 and 200.
     "Simulate=1,DriverSetup=Model:E4437B;Options:UND&UN8&200"

(4) If you don't pass these parameters and IDQuery is disabled default model is Agilent E4400B. In the simulation mode options are not installed.
    ]c =   �  �    Resource Name                     d : �       ID Query                          f� =� �       Reset Device                      g� �Y �  �    Instrument Handle                 jW#����  �    Status                          ����   d��                                           q  �  � �    Option String                      "GPIB::19::INSTR"   Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	           KCopyright 2002-2009 National Instruments Corporation. All Rights Reserved.    5"Simulate=0,RangeCheck=1,QueryInstrStatus=1,Cache=1"    V    This function configures the frequency and the power level of the RF output signal.     M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    )    Specifies the frequency of the generated RF signal.
The driver sets the AGESG_ATTR_FREQUENCY to this value.

Units:  Hz

Range:  100 kHz to the signal generator's maximum specified
        output frequency.

Default Value: the signal generator's maximum specified output
               frequency    {    Specifies the power level of the generated RF signal.
The driver sets the AGESG_ATTR_POWER_LEVEL to this value.

Units: dBm

Range: Between -136.0 (minimum) and +20.0 dBm (maximum).

Default Value: -135.0 dBm

Notes:
(1) Maximum power value depend on frequency setting. When you exceed the maximum value instrument generate unleveled signal.
See data sheet for your instrument.    ��#����  �    Status                            �+, 
  �  �    Instrument Handle                 �� '  �  �    Frequency                         � ' � �  �    Power Level                        	                   -135.0    F    This function enables or disables the Automatic Level Control (ALC).    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Specifies whether the ALC is used.
The driver sets the AGESG_ATTR_ALC_ENABLED to this value.

Valid Values:
VI_TRUE  (1) - Enables the Automatic Level Control (ALC)
VI_FALSE (0) - Disables the Automatic Level Control (ALC)

Default Value:  VI_TRUE  (1)
    ��#����  �    Status                            �', 
  �  �    Instrument Handle                 �� Q �  �    ALC Enabled                        	              On VI_TRUE Off VI_FALSE    9    This function enables or disables the RF output signal.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None        Specifies whether the RF output is enabled.
The driver sets the AGESG_ATTR_OUTPUT_ENABLED to this value.

Valid Values:
VI_TRUE  (1) - Produces appears at the output connector
VI_FALSE (0) - Produces does not appear at the output connector

Default Value:  VI_FALSE (0)    ��#����  �    Status                            �A, 
  �  �    Instrument Handle                 �� Q �  �    Output Enabled                     	               On VI_TRUE Off VI_FALSE    D    This function enables or disables the RF output modulation signal.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Sets the operating state of the signal generator�s RF output modulations you have enabled. All modulation types can be simultaneously enabled except FM with FM, AM with external burst source, and wideband AM with I/Q. An annunciator is always displayed to indicate whether overall modulation is switched on or off.
The driver sets the AGESG_ATTR_OUTPUT_MODULATION_ENABLED to this value.

Valid Values:
VI_TRUE  (1) - Enables modulations
VI_FALSE (0) - Disables modulations

Default Value:  VI_TRUE (1)    �!#����  �    Status                            �v, 
  �  �    Instrument Handle                 �) Q �  �    Output Enabled                     	              On VI_TRUE Off VI_FALSE   	    This function sets the multiplier for the signal generator�s carrier frequency. You can multiply the frequency shown on the display without changing the frequency output at the RF OUTPUT connector (simulating the frequency at the output of a harmonic multiplier).    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Sets the multiplier for the signal generator�s carrier frequency. You can multiply the frequency shown on the display without changing the frequency output at the RF OUTPUT connector (simulating the frequency at the output of a harmonic multiplier).
For example, set the output frequency to 1 MHz. Then set the multiplier to 3. The display will now show an output frequency of 3 MHz but the actual output frequency will remain at 1 MHz. For any multiplier greater than 1, the MULT indicator is shown in the frequency area of the display.
The driver sets the AGESG_ATTR_FREQUENCY_MULTIPLIER_CW to this value.

Valid Range:  1.0 to 50.0

Valid Range for E4438C:
  -1000.0 to -0.001, 0.001 to 1000.0

Default Value: 1.0    �#����  �    Status                            �X, 
  �  �    Instrument Handle                 � @ � �  �    Multiplier                         	               1.0       This function sets the frequency offset. A frequency offset changes the value shown in the frequency area of the display but does not affect the output frequency. This feature lets you simulate the frequency at the output of a frequency translating device.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None        Sets the frequency offset. A frequency offset changes the value shown in the frequency area of the display but does not affect the output frequency. For example, if the current output frequency is 1 MHz and you enter a frequency offset of 3 MHz, the output frequency will remain at 1 MHz but the display will show a frequency of 4 MHz. This feature lets you simulate the frequency at the output of a frequency translating device.
A frequency offset can be entered at any time during normal operation and also when you are operating in frequency reference mode. When an offset has been entered, the OFFSET
indicator is turned on in the frequency area of the display.

The driver sets the AGESG_ATTR_FREQUENCY_OFFSET to this value.

Valid Range:  -200.0 GHz to 200.0 GHz

Default Value: 0.0 Hz    ��#����  �    Status                            ��, 
  �  �    Instrument Handle                 © @ � �  �    Offset                             	               0.0    5    This function enables or disables frequency offset.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Enables or disables the offset frequency.

The driver sets the AGESG_ATTR_FREQUENCY_OFFSET_ENABLED to this value.

Valid Values:
  VI_TRUE (1)  - Enables frequency offset
  VI_FALSE (0) - Disables frequency offset

Default Value: VI_FALSE (0)    ƽ#����  �    Status                            �, 
  �  �    Instrument Handle                 �� G � �    Enabled                            	               On VI_TRUE Off VI_FALSE    �    This function sets the current output frequency as a frequency reference value. All frequency parameters are then set as relative to the reference value.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    A    Sets the current output frequency as a frequency reference value. All frequency parameters are then set as relative to the reference value.
The driver sets the AGESG_ATTR_FREQUENCY_REFERENCE to this value.

Valid Range: between 0.0 Hz and the signal generator�s maximum specified output frequency

Default Value: 0.0 Hz    �.#����  �    Status                            փ, 
  �  �    Instrument Handle                 �6 @ � � �    Reference                          	               0.0    8    This function enables or disables frequency reference.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Toggles the frequency reference mode on and off. When frequency reference mode is turned on, the frequency value displayed is equal to the current hardware output frequency minus the reference value. The REF indicator is turned on in the frequency area of the display. All frequency parameters will now be set as relative to the reference value. Frequency offsets can be used with frequency reference mode. In this situation, the display will show the frequency calculated as the current hardware output frequency minus the reference value plus the frequency offset.
Frequency reference mode only changes the display; it does not change the RF output frequency. For example, if you set your RF output frequency to 700 MHz, set your reference value to 700 MHz, and then turn frequency relative mode on, your display shows your frequency as 0 Hz but your output frequency remains at 700 MHz.

The driver sets the AGESG_ATTR_FREQUENCY_REFERENCE_ENABLED to this value.

Valid Values:
  VI_TRUE (1)  - Enables frequency reference
  VI_FALSE (0) - Disables frequency reference

Default Value: VI_FALSE (0)    �u#����  �    Status                            ��, 
  �  �    Instrument Handle                 �} G � �    Enabled                            	               On VI_TRUE Off VI_FALSE    ;    This function adjusts the phase of the modulating signal.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Adjusts the phase of the modulating signal.
The driver sets the AGESG_ATTR_PHASE_ADJUSTMENT to this value.

Valid Range: between -3.14 and 3.14 radians

Default Value: 0.0 radian    ��#����  �    Status                            �4, 
  �  �    Instrument Handle                 �� @ � � �    Adjustment                         	               0.0    �    This function sets the current output phase as a zero reference. Phase adjustments are then set as relative to this zero reference.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    ��#����  �    Status                            �;, 
  �  �    Instrument Handle                  	               �    This function sets the PLL (Phase Lock Loop) bandwidth for optimizing phase noise. This command is used with ESG-A and ESG-D Series instruments only.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Sets the PLL (Phase Lock Loop) bandwidth for optimizing phase noise. This command is used with ESG-A and ESG-D Series instruments only.

The driver sets the AGESG_ATTR_FREQUENCY_OPTIMIZATION to this value.

Valid Values: 
   AGESG_VAL_FREQUENCY_OPTIMIZATION_BELOW_10KHZ
      offsets below 10 kHz

   AGESG_VAL_FREQUENCY_OPTIMIZATION_ABOVE_10KHZ
      offsets above 10 kHz

Default Value: AGESG_VAL_FREQUENCY_OPTIMIZATION_ABOVE_10KHZ    �#����  �    Status                            �\, 
  �  �    Instrument Handle                 � @ � � �    Optimization                       	                         tBelow 10 kHz AGESG_VAL_FREQUENCY_OPTIMIZATION_BELOW_10KHZ Above 10 kHz AGESG_VAL_FREQUENCY_OPTIMIZATION_ABOVE_10KHZ    ^    This function enables or disables the Alternate amplitude.

NOTE:
  (1)  required option UNA    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None        Specifies whether the alternate amplitude is used.
The driver sets the AGESG_ATTR_ALTERNATE_AMPLITUDE_ENABLED to this value.

Valid Values:
VI_TRUE  (1) - Enables the Alternate amplitude
VI_FALSE (0) - Disables the Alternate amplitude

Default Value:  VI_FALSE (0)
   b#����  �    Status                           �, 
  �  �    Instrument Handle                j Q �  �    ALC Enabled                        	               On VI_TRUE Off VI_FALSE    �    This function sets the delta value for the alternate amplitude. The actual RF output is equal to the sum of the delta value, the main RF output amplitude, the amplitude offset value minus the amplitude reference value.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None        Sets the delta value for the alternate amplitude. The actual RF output is equal to the sum of the delta value, the main RF output amplitude, the amplitude offset value minus the amplitude reference value.
The driver sets the AGESG_ATTR_ALTERNATE_AMPLITUDE to this value.

Valid Range: -156.0 to 156.0

Default Value: 0.0 dB

Notes:
(1) Sum of delta value, the main RF output amplitude, the amplitude offset value minus the amplitude reference value cannot exceed the minimum and maximum amplitude limits of the signal generator.   +#����  �    Status                           �, 
  �  �    Instrument Handle                3 @ � �  �    Alternate Amplitude                	               0.0    �    This function configures the source the alternate amplitude trigger source and the alternate amplitude manual trigger.

NOTE:
  (1)  Required option UNA    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Selects the alternate amplitude trigger source to be either internal, external, or manual. Internal triggering is only available with baseband generator options. With internal triggering, each timeslot is allowed to output power with assigned main or alternate amplitude.
With external triggering, an external trigger must be provided at the TRIGGER IN BNC connector to toggle the RF output power between main or alternate amplitudes. 
With manual triggering, the RF output can be toggled between main and alternate amplitudes.
The driver sets the AGESG_ATTR_ALTERNATE_TRIGGER_SOURCE to this value.

Valid Values:
  AGESG_VAL_ALTERNATE_TRIGGER_SOURCE_INTERNAL
    - Internal trigger (only with baseband generator                options)

  AGESG_VAL_ALTERNATE_TRIGGER_SOURCE_EXTERNAL
    - External trigger (TRIGGER IN BNC connector)
  
  AGESG_VAL_ALTERNATE_TRIGGER_SOURCE_MANUAL
    - Manual trigger

Default Value: AGESG_VAL_ALTERNATE_TRIGGER_SOURCE_MANUAL        This command toggles the alternate amplitude manual trigger source between main and alternate (delta). With the alternate amplitude trigger set to manual, this command is used to switch the RF output between main and alternate amplitudes.
The driver sets the AGESG_ATTR_ALTERNATE_MANUAL_TRIGGER to this value.

Valid Values:
  AGESG_VAL_ALTERNATE_MANUAL_TRIGGER_MAIN
    - The main amplitude
  
  AGESG_VAL_ALTERNATE_MANUAL_TRIGGER_DELTA
    - The alternate amplitude

Default Value: AGESG_VAL_ALTERNATE_MANUAL_TRIGGER_MAIN   �#����  �    Status                           �, 
  �  �    Instrument Handle                � /  � �    Source                            v / � � �    Manual Trigger                     	                         �Internal AGESG_VAL_ALTERNATE_TRIGGER_SOURCE_INTERNAL External AGESG_VAL_ALTERNATE_TRIGGER_SOURCE_EXTERNAL Manual AGESG_VAL_ALTERNATE_TRIGGER_SOURCE_MANUAL               \Main AGESG_VAL_ALTERNATE_MANUAL_TRIGGER_MAIN Delta AGESG_VAL_ALTERNATE_MANUAL_TRIGGER_DELTA    N    This function enables or disables the Automatic RF Output Level Attenuation.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    F    Sets the signal generator to automatically couple the attenuator to the RF output power level. With this function off (equivalent to attenuator-hold mode On), power drop-outs do not occur for power adjustments. The maximum power adjustment range is frequency-dependent, but  will be at least +4 dB for increasing power and at least -13 dB for decreasing power.
The driver sets the AGESG_ATTR_AUTOMATIC_ATTENUATION_ENABLED to this value.

Valid Values:
VI_TRUE  (1) - Enables the Automatic Attenuation
VI_FALSE (0) - Disables the Automatic Attenuation

Default Value:  VI_TRUE (1)
   $�#����  �    Status                           +/, 
  �  �    Instrument Handle                +� Q �  �    ALC Enabled                        	              On VI_TRUE Off VI_FALSE   /    This function sets a value for amplitude offset for the RF output power level. An amplitude offset changes the value shown in the amplitude area of the display but does not affect the absolute output power. This feature lets you simulate the power level at a test point beyond the RF OUTPUT connector.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    P    Sets a value for amplitude offset for the RF output power level. An amplitude offset changes the value shown in the amplitude area of the display but does not affect the absolute output power. For example, if the current output power is 0 dBm and you enter an amplitude offset of -3 dBm, the output power will remain at 0 dBm but the display will show an amplitude of -3 dBm. This feature lets you simulate the power level at a test point beyond the RF OUTPUT connector.

The driver sets the AGESG_ATTR_POWER_OFFSET to this value.

Valid Range:  -200.0 dB to 200.0 dB

Default Value: 0.0 dB   01#����  �    Status                           6�, 
  �  �    Instrument Handle                79 @ � �  �    Offset                             	               0.0    U    This function sets the power setting of the signal generator�s RF output reference.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Sets the power setting of the signal generator�s RF output reference.
The driver sets the AGESG_ATTR_POWER_REFERENCE to this value.

Valid Range: between -400.0 dBm and 300.0 dBm

Default Value: 0.0 dBm   :�#����  �    Status                           @�, 
  �  �    Instrument Handle                A� @ � � �    Reference                          	               0.0    8    This function enables or disables frequency reference.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Toggles the frequency reference mode on and off. When frequency reference mode is turned on, the frequency value displayed is equal to the current hardware output frequency minus the reference value. The REF indicator is turned on in the frequency area of the display. All frequency parameters will now be set as relative to the reference value. Frequency offsets can be used with frequency reference mode. In this situation, the display will show the frequency calculated as the current hardware output frequency minus the reference value plus the frequency offset.
Frequency reference mode only changes the display; it does not change the RF output frequency. For example, if you set your RF output frequency to 700 MHz, set your reference value to 700 MHz, and then turn frequency relative mode on, your display shows your frequency as 0 Hz but your output frequency remains at 700 MHz.

The driver sets the AGESG_ATTR_FREQUENCY_REFERENCE_ENABLED to this value.

Valid Values:
  VI_TRUE (1)  - Enables frequency reference
  VI_FALSE (0) - Disables frequency reference

Default Value: VI_FALSE (0)   Cv#����  �    Status                           I�, 
  �  �    Instrument Handle                J~ G � �    Enabled                            	               On VI_TRUE Off VI_FALSE    ^    This function configures the ALC search span parameters.

Notes:
(1) Only for Agilent 4438C.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Sets the stop frequency for a span power search over a user specified range.
The driver sets the AGESG_ATTR_POWER_ALC_SEARCH_SPAN_STOP to this value.

Units: Hertz (Hz)

Default Value: 0.0 Hz     �    Sets the start frequency for a span power search over a user specified range.
The driver sets the AGESG_ATTR_POWER_ALC_SEARCH_SPAN_START to this value.

Units: Hertz (Hz)

Default Value: 0.0 Hz    �    Enables you to select the frequency range for a span power search. You can specify the range (User) or you can select the full range (Full) of the signal generator.
The driver sets the AGESG_ATTR_POWER_ALC_SEARCH_SPAN_TYPE to this value.

Valid Values:
AGESG_VAL_POWER_ALC_SEARCH_SPAN_TYPE_FULL (0)
AGESG_VAL_POWER_ALC_SEARCH_SPAN_TYPE_USER (1)

Default Value: AGESG_VAL_POWER_ALC_SEARCH_SPAN_TYPE_FULL (0)    �    Enables or disables the span mode, allowing you to perform power searches over a selected range of frequencies. The power search corrections are then stored and used whenever the signal generator is tuned within the selected range.
The driver sets the AGESG_ATTR_POWER_ALC_SEARCH_SPAN_ENABLED to this value.

Valid Values:
  VI_TRUE (1)  - Enables
  VI_FALSE (0) - Disables

Default Value: VI_FALSE (0)   P#����  �    Status                           VX, 
  �  �    Instrument Handle                W : � � �    Stop                             W� :  � �    Start                            X� :� � �    Type                             Z? � N �       Enabled                            	               0.0    0.0               ^FULL AGESG_VAL_POWER_ALC_SEARCH_SPAN_TYPE_FULL USER AGESG_VAL_POWER_ALC_SEARCH_SPAN_TYPE_USER    On VI_TRUE Off VI_FALSE    f    This function configures the signal generator to apply amplitude modulation to the RF output signal.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Enables or disables amplitude modulation.
The driver sets the AGESG_ATTR_AM_ENABLED to this value.

Valid Values:
VI_TRUE  (1) - Amplitude modulation On
VI_FALSE (0) - Amplitude modulation Off

Default Value:  VI_FALSE (0)   ^-#����  �    Status                           d�, 
  �  �    Instrument Handle                e5 Q �  �    Enabled                            	               On VI_TRUE Off VI_FALSE    �    This function configures the coupling of the external source the signal generator uses for amplitude modulation of the output signal.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    u    Specifies the coupling of the external source.
The driver sets the AGESG_ATTR_AM_EXTERNAL_COUPLING to this value.

Valid Values:
  AGESG_VAL_AM_EXTERNAL_COUPLING_AC (0)
     - The external source is coupled for AC only

  AGESG_VAL_AM_EXTERNAL_COUPLING_DC (1)
     - The external source is coupled for both DC and AC

Default Value:  AGESG_VAL_AM_EXTERNAL_COUPLING_DC (1)   gv#����  �    Status                           m�, 
  �  �    Instrument Handle                n~ Q �  �    Coupling                           	                         JAC AGESG_VAL_AM_EXTERNAL_COUPLING_AC DC AGESG_VAL_AM_EXTERNAL_COUPLING_DC    �    This function configures the attributes that control the signal generator's amplitude modulation. These attributes are the AM modulation source, scaling and depth.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None        Specifies the source of the signal that the signal generator uses to modulate the output signal.
The driver sets the AGESG_ATTR_AM_SOURCE to this value.

To get the valid source names, use the agesg_GetAnalogModulationSourceName function.

Default Value: "INT" - Internal     �    Specifies the scaling of the modulation.
The driver sets the AGESG_ATTR_AM_SCALING to this value.

Valid Values:
  AGESG_VAL_AM_SCALING_LINEAR
    - Enables linear attenuation for amplitude modulation

Default Value:
  AGESG_VAL_AM_SCALING_LINEAR only     �    Specifies the extent of modulation.
The driver sets the AGESG_ATTR_AM_DEPTH to this value.

Units: percentage

Range:
  0.0 to 100.0 %

Default Value:  0.1 %   q�#����  �    Status                           x, 
  �  �    Instrument Handle                x� (  �  �    Source                           y� ( � � �    Scaling                          z� (| �  �    Depth                              	                              #Linear AGESG_VAL_AM_SCALING_LINEAR    0.1    I    This function enables  or disables amplitude modulation depth coupling.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    This command links the AM depth values of AM Path 1 and AM Path 2 and allows the amplitude modulation depth values on both path 1 and path 2 to track each other. If the AM depth coupling function is activated, changing the AM depth on path 1 will cause an equal change in AM depth on path 2, and visa versa.
The driver sets the AGESG_ATTR_AM_DEPTH_COUPLING to this value.

Valid Values:
  VI_TRUE (1)  - Enables depth coupling
  VI_FALSE (0) - Disables depth coupling

Default Value: VI_FALSE (0)   }$#����  �    Status                           �y, 
  �  �    Instrument Handle                �, N � �       Depth Coupling                     	               On VI_TRUE Off VI_FALSE    f    This function configures the signal generator to apply amplitude modulation to the RF output signal.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Enables or disables amplitude modulation.
The driver sets the AGESG_ATTR_AM2_ENABLED to this value.

Valid Values:
VI_TRUE  (1) - Amplitude modulation On
VI_FALSE (0) - Amplitude modulation Off

Default Value:  VI_FALSE (0)   �^#����  �    Status                           ��, 
  �  �    Instrument Handle                �f Q �  �    Enabled                            	               On VI_TRUE Off VI_FALSE    �    This function configures the coupling of the external source the signal generator uses for amplitude modulation of the output signal.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    y    Specifies the coupling of the external source.
The driver sets the AGESG_ATTR_AM2_EXTERNAL_COUPLING to this value.

Valid Values:
  AGESG_VAL_AM2_EXTERNAL_COUPLING_AC (0)
    - The external source is coupled for AC only
  
  AGESG_VAL_AM2_EXTERNAL_COUPLING_DC (1)
    - The external source is coupled for both DC and AC

Default Value:  AGESG_VAL_AM2_EXTERNAL_COUPLING_DC (1)   ��#����  �    Status                           ��, 
  �  �    Instrument Handle                �� Q �  �    Coupling                           	                         LAC AGESG_VAL_AM2_EXTERNAL_COUPLING_AC DC AGESG_VAL_AM2_EXTERNAL_COUPLING_DC    �    This function configures the attributes that control the signal generator's amplitude modulation. These attributes are the AM modulation source, scaling and depth.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None        Specifies the source of the signal that the signal generator uses to modulate the output signal.
The driver sets the AGESG_ATTR_AM2_SOURCE to this value.

To get the valid source names, use the agesg_GetAnalogModulationSourceName function.

Default Value: "INT" - Internal     �    Specifies the scaling of the modulation.
The driver sets the AGESG_ATTR_AM2_SCALING to this value.

Valid Values:
  AGESG_VAL_AM_SCALING_LINEAR
    - Enables linear attenuation for amplitude modulation

Default Value:
  AGESG_VAL_AM_SCALING_LINEAR only     �    Specifies the extent of modulation.
The driver sets the AGESG_ATTR_AM2_DEPTH to this value.

Units: percentage

Range:
  0.0 to 100.0 %

Default Value:  0.1 %   ��#����  �    Status                           �=, 
  �  �    Instrument Handle                �� (  �  �    Source                           �
 ( � � �    Scaling                          � (| �  �    Depth                              	                              #Linear AGESG_VAL_AM_SCALING_LINEAR    0.1    f    This function configures the signal generator to apply amplitude modulation to the RF output signal.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Sets the operating state of the wideband amplitude modulation source. AM wideband (ESG-D and ESG-DP Series) provides bandwidth beyond the standard AM with fixed depth (100%). The modulation source is the I input.
AM Path 1 and AM Path 2 are summed internally for composite modulation. Either path can be switched to any one of the modulation sources: Int, Ext1, or Ext2. All modulation types can be simultaneously enabled, except FM with FM, AM with burst envelope, and wideband AM with I/Q. AM, FM, and FM can sum simultaneous inputs from any two sources (Int, Ext1, and Ext2). Any given source (Int, Ext1, or Ext2) can only be routed to one activated modulation type. The wideband AM selection (AM Path WB) eliminates the bandwidth limitations of the ALC loop thereby increasing the bandwidth beyond that of the standard amplitude modulation.
Typical rates for wideband AM are listed in the technical specifications document. When you select AM Path WB in the AM menu, you must apply your modulating signal to the I input. The sensitivity is 0.5 V = 100% AM depth. With AM Path  WB selected, the modulated RF signal will be available at the RF OUTPUT connector when you turn on both Mod On/Off and RF On/Off.
The driver sets the AGESG_ATTR_AM_WIDEBAND_ENABLED to this value.

Valid Values:
VI_TRUE  (1) - Wideband amplitude modulation On
VI_FALSE (0) - Wideband amplitude modulation Off

Default Value:  VI_FALSE (0)   �|#����  �    Status                           ��, 
  �  �    Instrument Handle                �� Q �  �    Enabled                            	               On VI_TRUE Off VI_FALSE    f    This function configures the signal generator to apply frequency modulation to the RF output signal.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Enables or disables frequency modulation.
The driver sets the AGESG_ATTR_FM_ENABLED to this value.

Valid Values:
VI_TRUE  (1) - Frequency modulation On
VI_FALSE (0) - Frequency modulation Off

Default Value:  VI_FALSE (0)   �P#����  �    Status                           ��, 
  �  �    Instrument Handle                �X Q �  �    Enabled                            	               On VI_TRUE Off VI_FALSE    �    This function configures the coupling of the external source the generator uses for frequency modulation of the output signal.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    i    Specifies the coupling of the external source.
The driver sets the AGESG_ATTR_FM_EXTERNAL_COUPLING to this value.

Valid Values:
  AGESG_VAL_FM_EXTERNAL_COUPLING_AC
    - The external source is coupled for AC only
  
  AGESG_VAL_FM_EXTERNAL_COUPLING_DC
    - The external source is coupled for both DC and AC

Default Value:  AGESG_VAL_FM_EXTERNAL_COUPLING_DC   ��#����  �    Status                           ��, 
  �  �    Instrument Handle                Ě Q �  �    Coupling                           	                         JAC AGESG_VAL_FM_EXTERNAL_COUPLING_AC DC AGESG_VAL_FM_EXTERNAL_COUPLING_DC    �    This function configures the attributes that control the signal generator's frequency modulation. The attributes are the modulation deviation and the modulating source(s).    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Specifies the modulating source.
The driver sets the AGESG_ATTR_FM_SOURCE to this value.

To get the valid source names, use the agesg_GetAnalogModulationSourceName function.

Default Value: "INT" - Internal     �    Specifies the extent of modulation.
The driver sets the AGESG_ATTR_FM_DEVIATION to this value.

Value Range is depend on Carrier Frequency. See manual for more details.

Units:  Hertz   ��#����  �    Status                           �, 
  �  �    Instrument Handle                �� (  �  �    Source                           ϩ ( � �  �    Deviation                          	                       M    This function enables  or disables frequency modulation deviation coupling.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Toggles the FM deviation coupling on and off. Turning on FM deviation coupling links the FM deviation values of FM Path 1 and FM Path 2. When the values are coupled, any change you make to one FM deviation value is applied to both FM deviation values.
The driver sets the AGESG_ATTR_FM_DEVIATION_COUPLING to this value.

Valid Values:
  VI_TRUE (1)  - Enables deviation coupling
  VI_FALSE (0) - Disables deviation coupling

Default Value: VI_FALSE (0)   ѫ#����  �    Status                           � , 
  �  �    Instrument Handle                س N � �       Deviation Coupling                 	               On VI_TRUE Off VI_FALSE    f    This function configures the signal generator to apply frequency modulation to the RF output signal.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Enables or disables frequency modulation.
The driver sets the AGESG_ATTR_FM2_ENABLED to this value.

Valid Values:
VI_TRUE  (1) - Frequency modulation On
VI_FALSE (0) - Frequency modulation Off

Default Value:  VI_FALSE (0)   ۹#����  �    Status                           �, 
  �  �    Instrument Handle                �� Q �  �    Enabled                            	               On VI_TRUE Off VI_FALSE    �    This function configures the coupling of the external source the generator uses for frequency modulation of the output signal.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    n    Specifies the coupling of the external source.
The driver sets the AGESG_ATTR_FM2_EXTERNAL_COUPLING to this value.

Valid Values:
  AGESG_VAL_FM2_EXTERNAL_COUPLING_AC
    - The external source is coupled for AC only
  
  AGESG_VAL_FM2_EXTERNAL_COUPLING_DC 
    - The external source is coupled for both DC and AC

Default Value:  AGESG_VAL_FM2_EXTERNAL_COUPLING_DC   ��#����  �    Status                           �Q, 
  �  �    Instrument Handle                � Q �  �    Coupling                           	                         LAC AGESG_VAL_FM2_EXTERNAL_COUPLING_AC DC AGESG_VAL_FM2_EXTERNAL_COUPLING_DC    �    This function configures the attributes that control the signal generator's frequency modulation. The attributes are the modulation deviation and the modulating source(s).    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Specifies the modulating source.
The driver sets the AGESG_ATTR_FM2_SOURCE to this value.

To get the valid source names, use the agesg_GetAnalogModulationSourceName function.

Default Value: "INT" - Internal     �    Specifies the extent of modulation.
The driver sets the AGESG_ATTR_FM2_DEVIATION to this value.

Value Range is depend on Carrier Frequency. See manual for more details.

Units:  Hertz   �9#����  �    Status                           ��, 
  �  �    Instrument Handle                �A (  �  �    Source                           � ( � �  �    Deviation                          	                       b    This function configures the signal generator to apply phase modulation to the RF output signal.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Enables or disables phase modulation.
The driver sets the AGESG_ATTR_PM_ENABLED to this value.

Valid Values:
VI_TRUE  (1) - Phase modulation On
VI_FALSE (0) - Phase modulation Off

Default Value:  VI_FALSE (0)   �3#����  �    Status                           ��, 
  �  �    Instrument Handle                 ; Q �  �    Enabled                            	               On VI_TRUE Off VI_FALSE    T    This function configures the coupling of the external source for phase modulation.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    g    Specifies the coupling of the external source.
The driver sets the AGESG_ATTR_PM_EXTERNAL_COUPLING to this value.

Valid Values:
  AGESG_VAL_PM_EXTERNAL_COUPLING_AC
    - The external source is coupled for AC only

  AGESG_VAL_PM_EXTERNAL_COUPLING_DC
    - The external source is coupled for both DC and AC

Default Value:  AGESG_VAL_PM_EXTERNAL_COUPLING_DC   =#����  �    Status                           �, 
  �  �    Instrument Handle                	E Q �  �    Coupling                           	                         JAC AGESG_VAL_PM_EXTERNAL_COUPLING_AC DC AGESG_VAL_PM_EXTERNAL_COUPLING_DC    �    This function configures the attributes that control the signal generator's phase modulation. The attributes are the modulation deviation and the modulating source(s).    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None        Specifies the source of the signal the signal generator uses to modulate the output signal.
The driver sets the AGESG_ATTR_PM_SOURCE to this value.

To get the valid source names, use the agesg_GetAnalogModulationSourceName function.

Default Value: "INT" - Internal     �    Specifies the extent of modulation.
The driver sets the AGESG_ATTR_PM_DEVIATION to this value.

Value Range is depend on Carrier Frequency. See manual for more details.

Units:  radians

Default Value:  0.0 radians   m#����  �    Status                           �, 
  �  �    Instrument Handle                u (  �  �    Source                           � ( � �  �    Deviation                          	                   0.0    I    This function enables  or disables phase modulation deviation coupling.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Toggles the PM deviation coupling on and off. Turning on PM deviation coupling links the PM deviation values of PM Path 1 and PM Path 2. When the values are coupled, any change you make to one PM deviation value is applied to both PM deviation values.
The driver sets the AGESG_ATTR_PM_DEVIATION_COUPLING to this value.

Valid Values:
  VI_TRUE (1)  - Enables deviation coupling
  VI_FALSE (0) - Disables deviation coupling

Default Value: VI_FALSE (0)   �#����  �    Status                           �, 
  �  �    Instrument Handle                � N � �       Depth Coupling                     	               On VI_TRUE Off VI_FALSE    `    This function selects between normal phase modulation mode and wideband phase modulation mode.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    6    Select between normal phase modulation mode and wideband phase modulation mode.
The driver sets the AGESG_ATTR_PM_BANDWIDTH to this value.

Valid Values:
AGESG_VAL_PM_BANDWIDTH_NORMAL (0) - Normal bandwidth
AGESG_VAL_PM_BANDWIDTH_HIGH   (1) - High bandwidth

Default Value:  AGESG_VAL_PM_BANDWIDTH_NORMAL (0)    �#����  �    Status                           ', 
  �  �    Instrument Handle                '� X � � �    Bandwidth                          	                          FNormal AGESG_VAL_PM_BANDWIDTH_NORMAL High AGESG_VAL_PM_BANDWIDTH_HIGH    b    This function configures the signal generator to apply phase modulation to the RF output signal.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Enables or disables phase modulation.
The driver sets the AGESG_ATTR_PM2_ENABLED to this value.

Valid Values:
VI_TRUE  (1) - Phase modulation On
VI_FALSE (0) - Phase modulation Off

Default Value:  VI_FALSE (0)   *e#����  �    Status                           0�, 
  �  �    Instrument Handle                1m Q �  �    Enabled                            	               On VI_TRUE Off VI_FALSE    �    This function configures the attributes that control the signal generator's phase modulation. The attributes are the modulation deviation and the modulating source(s).    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None        Specifies the source of the signal the signal generator uses to modulate the output signal.
The driver sets the AGESG_ATTR_PM2_SOURCE to this value.

To get the valid source names, use the agesg_GetAnalogModulationSourceName function.

Default Value: "INT" - Internal     �    Specifies the extent of modulation.
The driver sets the AGESG_ATTR_PM2_DEVIATION to this value.

Value Range is depend on Carrier Frequency. See manual for more details.

Units:  radians

Default Value:  0.0 radians   3�#����  �    Status                           :, 
  �  �    Instrument Handle                :� (  �  �    Source                           ;� ( � �  �    Deviation                          	                   0.0    T    This function configures the coupling of the external source for phase modulation.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    k    Specifies the coupling of the external source.
The driver sets the AGESG_ATTR_PM2_EXTERNAL_COUPLING to this value.

Valid Values:
  AGESG_VAL_PM2_EXTERNAL_COUPLING_AC
    - The external source is coupled for AC only

  AGESG_VAL_PM2_EXTERNAL_COUPLING_DC
    - The external source is coupled for both DC and AC

Default Value:  AGESG_VAL_PM2_EXTERNAL_COUPLING_DC   >#����  �    Status                           Dc, 
  �  �    Instrument Handle                E Q �  �    Coupling                           	                         LAC AGESG_VAL_PM2_EXTERNAL_COUPLING_AC DC AGESG_VAL_PM2_EXTERNAL_COUPLING_DC    S    This function sets active external source for setting external source parameters.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    2    Pass name of active external source. The driver sets the AGESG_ATTR_ACTIVE_EXTERNAL_SOURCE to this value.

To get the valid source names, use the agesg_GetAnalogModulationSourceName function.

Default Value: "EXT1" - External 1

Notes:
(1) Value "INT" is not valid value. External sources are valid only.   G�#����  �    Status or Required Size          P, 
  �  �    Instrument Handle                P� ( � �  �    Active Source                      	                   �    This function returns the specific driver defined analog modulation source name that corresponds to the one-based index that the user specifies.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     6    A one-based index that defines which name to return.     Y    The number of bytes in the viChar array that the user specifies for the Name parameter.     �    A user-allocated buffer into which the driver stores the Analog Modulation Source name. The caller may pass VI_NULL for this parameter if the NameBufferSize parameter is 0.   S;#����  �    Status or Required Size          [N, 
  �  �    Instrument Handle                \ (  �  �    Index                            \? ( � �  �    Name Buffer Size                 \� (| �  �    Name                               	                       	           �    This function initiates a DCFM or DCFM calibration (depending on which kind of modulation is currently active) and stores the results in the instrument�s firmware. This calibration eliminates the offset in phase (or frequency, as appropriate) modulation so that the carrier phase (or frequency) remains the same with no modulation applied. An external DC-coupled phase (or frequency) modulation must be active when the calibration is performed. After calibration, the DC signal produces no modulation.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None   `�#����  �    Status                           f�, 
  �  �    Instrument Handle                  	               b    This function configures the signal generator to apply pulse modulation to the RF output signal.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    True enables pulse modulation.
The driver sets the AGESG_ATTR_PULSE_MODULATION_ENABLED to this value.

Valid Values:
VI_TRUE  (1) - Enables pulse modulation
VI_FALSE (0) - Disables pulse modulation

Default Value:  VI_FALSE (0)   hn#����  �    Status                           n�, 
  �  �    Instrument Handle                ov Q �  �    Enabled                            	               On VI_TRUE Off VI_FALSE    m    This function configures the source the signal generator uses for pulse modulation of the RF output signal.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Specifies the source of the signal, the signal generator uses to modulate the output signal.
The driver sets the AGESG_ATTR_PULSE_MODULATION_SOURCE to this value.

Valid Values:
  AGESG_VAL_PULSE_MODULATION_SOURCE_INTERNAL
    - The internal pulse generator

  AGESG_VAL_PULSE_MODULATION_SOURCE_EXTERNAL
    - An external generator is used for modulation

Default Value:  AGESG_VAL_PULSE_MODULATION_SOURCE_INTERNAL   q�#����  �    Status                           w�, 
  �  �    Instrument Handle                x� A � � �    Source                             	                          hInternal AGESG_VAL_PULSE_MODULATION_SOURCE_INTERNAL External AGESG_VAL_PULSE_MODULATION_SOURCE_EXTERNAL    E    This function specifies the polarity of the external source signal.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Specifies the polarity of the signal used as the external modulation source.
The driver sets the AGESG_ATTR_PULSE_MODULATION_EXTERNAL_POLARITY to this value.

Valid Values:
  AGESG_VAL_PULSE_MODULATION_EXTERNAL_POLARITY_NORMAL
    - The signal generator modulates the carrier signal with normal pulse polarity. Increasing the positive pulse voltage level results in higher RF level.

Default Value:  AGESG_VAL_PULSE_MODULATION_EXTERNAL_POLARITY_NORMAL   {�#����  �    Status                           �, 
  �  �    Instrument Handle                �� [ � � �    Polarity                           	                          ;Normal AGESG_VAL_PULSE_MODULATION_EXTERNAL_POLARITY_NORMAL    b    This function configures the signal generator to apply pulse modulation to the RF output signal.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    True enables pulse modulation.
The driver sets the AGESG_ATTR_PULSE_MODULATION_ENABLED to this value.

Valid Values:
VI_TRUE  (1) - Enables pulse modulation
VI_FALSE (0) - Disables pulse modulation

Default Value:  VI_FALSE (0)   ��#����  �    Status                           �R, 
  �  �    Instrument Handle                � Q �  �    Enabled                            	               On VI_TRUE Off VI_FALSE    �    This function toggles the modulation waveform of the internal pulse modulation source between squarewave and variable pulse width wave.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    L    Toggles the modulation waveform of the internal pulse modulation source between squarewave and variable pulse width wave.
The driver sets the AGESG_ATTR_PULSE_WAVEFORM to this value.

Valid Values:
  AGESG_VAL_PULSE_WAVEFORM_PULSE  - Pulse
  AGESG_VAL_PULSE_WAVEFORM_SQUARE - Square

Default Value:  AGESG_VAL_PULSE_WAVEFORM_PULSE   �M#����  �    Status                           ��, 
  �  �    Instrument Handle                �U [ � � �    Waveform                           	                         LSquare AGESG_VAL_PULSE_WAVEFORM_SQUARE Pulse AGESG_VAL_PULSE_WAVEFORM_PULSE    Q    This function sets the rate of the internal squarewave pulse modulation source.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None        Sets the rate of the internal squarewave pulse modulation source.
The driver sets the AGESG_ATTR_PULSE_FREQUENCY to this value.

Units:  hertz

Valid Range:
  0.1 Hz to 10.0 kHz

Valid Range for Agilent E4438C:
  0.1 Hz to 20.0 kHz

Default Value:  400.0 Hz   �#����  �    Status                           �a, 
  �  �    Instrument Handle                � ( � �  �    Frequency                          	               400.0    K    This function configures the LF generator output frequency and  waveform.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Specifies the frequency of the LF generator.
The driver sets the AGESG_ATTR_LF_GENERATOR_FREQUENCY to this value.

Valid Range:
 0.1 Hz to 50.0 kHz - for sine, dual- and swept-sine waveforms
 0.1 Hz to 10.0 kHz - for other waveforms

Valid Range for Agilent E4438C:
 0.1 Hz to 100.0 kHz - for sine, dual- and swept-sine waveforms
 0.1 Hz to  20.0 kHz - for other waveforms

Default Value:  400.0 Hz    �    Specifies the waveform of the LF generator.
The driver sets the AGESG_ATTR_LF_GENERATOR_WAVEFORM to this value.

Valid Values:
  AGESG_VAL_LF_GENERATOR_WAVEFORM_SINE       - Sine
  AGESG_VAL_LF_GENERATOR_WAVEFORM_DUAL_SINE  - Dual-Sine
  AGESG_VAL_LF_GENERATOR_WAVEFORM_SWEPT_SINE - Swept-Sine
  AGESG_VAL_LF_GENERATOR_WAVEFORM_SQUARE     - Square
  AGESG_VAL_LF_GENERATOR_WAVEFORM_TRIANGLE   - Triangle
  AGESG_VAL_LF_GENERATOR_WAVEFORM_RAMP_UP    - Ramp Up
  AGESG_VAL_LF_GENERATOR_WAVEFORM_PULSE      - Pulse
  AGESG_VAL_LF_GENERATOR_WAVEFORM_NOISE      - Noise
  AGESG_VAL_LF_GENERATOR_WAVEFORM_DC         - DC

Default Value:  AGESG_VAL_LF_GENERATOR_WAVEFORM_SINE   �*#����  �    Status                           �, 
  �  �    Instrument Handle                �2 ( � �  �    Frequency                        �� (| � �    Waveform                           	               400.0            	  �Sine AGESG_VAL_LF_GENERATOR_WAVEFORM_SINE Dual Sine AGESG_VAL_LF_GENERATOR_WAVEFORM_DUAL_SINE Swept Sine AGESG_VAL_LF_GENERATOR_WAVEFORM_SWEPT_SINE Square AGESG_VAL_LF_GENERATOR_WAVEFORM_SQUARE Triangle AGESG_VAL_LF_GENERATOR_WAVEFORM_TRIANGLE Ramp Up AGESG_VAL_LF_GENERATOR_WAVEFORM_RAMP_UP Pulse AGESG_VAL_LF_GENERATOR_WAVEFORM_PULSE Noise AGESG_VAL_LF_GENERATOR_WAVEFORM_NOISE DC AGESG_VAL_LF_GENERATOR_WAVEFORM_DC    X    This function sets alternate frequency and frequency amplitude for dual sine waveform.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Sets the frequency for the alternate signal. The alternate frequency is the second frequency of a dual-sine.
The driver sets the AGESG_ATTR_LF_ALTERNATE_FREQUENCY to this value.

Valid Range:
  0.1 Hz to 50.0 kHz

Default Value:  400.0 Hz    U    Sets the amplitude of the alternate frequency as a percentage of the total amplitude. Therefore, if the alternate frequency makes up 30% of the total amplitude, then the primary frequency is 70% of the total amplitude.
The driver sets the AGESG_ATTR_LF_ALTERNATE_AMPLITUDE to this value.

Valid Range: 0.0 to 100.0 %

Default Value: 50.0 %   �n#����  �    Status                           ��, 
  �  �    Instrument Handle                �v >  �  �    Alternate Frequency              �n > � �  �    Alternate Amplitude                	               400.0    50.0    U    This function sets start and stop frequency and sweep time for swept sine waveform.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Sets the start frequency for a dual-sine.
The driver sets the AGESG_ATTR_LF_GENERATOR_FREQUENCY to this value.

Valid Range:
  0.1 Hz to 50.0 kHz

Default Value:  400.0 Hz     �    Sets the stop frequency for the alternate signal. The alternate frequency is the stop frequency of a swept-sine.
The driver sets the AGESG_ATTR_LF_ALTERNATE_FREQUENCY to this value.

Valid Range:
  0.1 Hz to 50.0 kHz

Default Value:  400.0 Hz     �    Sets the sweep time for a swept-sine, internally-generated signal.
The driver sets the AGESG_ATTR_LF_SWEEP_TIME to this value.

Valid Range:
  1.0 milisecond to 65.535 seconds

Default Value:  100.0 miliseconds   �#����  �    Status                           �r, 
  �  �    Instrument Handle                �% D  �  �    Start Frequency                  �� D � �  �    Stop Frequency                   �� D� �  �    Sweep Time                         	               400.0    400.0    0.1    U    This function sets start and stop frequency and sweep time for swept sine waveform.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Specifies the way to start the sweep or running it continuously.
The driver sets the AGESG_ATTR_LF_SWEEP_TRIGGER_SOURCE to this value.

Valid Values:
  AGESG_VAL_LF_SWEEP_TRIGGER_SOURCE_IMMEDIATE
    - The sweep system does not wait for a trigger of               any kind, so it is running continuously

  AGESG_VAL_LF_SWEEP_TRIGGER_SOURCE_EXTERNAL
    - The sweep is started with an external signal

  AGESG_VAL_LF_SWEEP_TRIGGER_SOURCE_SOFTWARE
    - The sweep is started with a software programmable trigger

  AGESG_VAL_LF_SWEEP_TRIGGER_SOURCE_TRIGGER_KEY
    - The sweep is started with an TRIGGER hard key

Default Value:  AGESG_VAL_LF_SWEEP_TRIGGER_SOURCE_IMMEDIATE   �A#����  �    Status                           ̖, 
  �  �    Instrument Handle                �I M � � �    Trigger Source                     	                          �Immediate AGESG_VAL_LF_SWEEP_TRIGGER_SOURCE_IMMEDIATE External AGESG_VAL_LF_SWEEP_TRIGGER_SOURCE_EXTERNAL Software AGESG_VAL_LF_SWEEP_TRIGGER_SOURCE_SOFTWARE Trigger Key AGESG_VAL_LF_SWEEP_TRIGGER_SOURCE_TRIGGER_KEY    ,    This function configures pulse parameters.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Sets the pulse width for the internally-generated pulse source.
The driver sets the AGESG_ATTR_LF_GENERATOR_WIDTH to this value.

Valid Range:
  8.0 microseconds to value of the pulse period

Default Value:  40.0 microseconds     �    Sets the period for the internally-generated pulse modulation source.
The driver sets the AGESG_ATTR_LF_GENERATOR_PERIOD to this value.

Valid Range:
  16.0 microseconds to 30.0 seconds

Default Value:  80.0 microseconds   ѽ#����  �    Status                           �, 
  �  �    Instrument Handle                �� D  �  �    Width                            ٰ D � �  �    Period                             	               40.0e-6    80.0e-6    �    This function returns the specific driver defined LF generator source name that corresponds to the one-based index that the user specifies.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     H    A one-based index that defines which name to return.

Default Value: 1     Y    The number of bytes in the ViChar array that the user specifies for the Name parameter.     �    A user-allocated  buffer into which the driver stores the LFGenerator name.The caller may pass VI_NULL for this parameter if the NameBufferSize parameter is 0.   �%#����  �    Status or Required Size          �8, 
  �  �    Instrument Handle                �� (  �  �    Index                            �; ( � �  �    Name Buffer Size                 � (| �  �    Name                               	               1        	            g    This function selects one of the available LF generator sources, and makes it the active LFGenerator.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     g    LF generator source to be selected.
The driver sets the AGESG_ATTR_ACTIVE_LF_GENERATOR to this value.   ��, 
  �  �    Instrument Handle                �#����  �    Status                           �� H � �  �    Active LF Generator                    	               f    This function configures the attributes of the LF generator output (within the RF signal generator).    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Specifies the output voltage of the LF generator output signal.
The driver sets the AGESG_ATTR_LF_GENERATOR_OUTPUT_AMPLITUDE to this value.

Units: Volts peak-to-peak

Valid Range:  0.0 to 10.0 Volts peak-to-peak

Default Value:  0.0 Volts peak-to-peak        Specifies whether the LF generator applies a signal to the output.
The driver sets the AGESG_ATTR_LF_GENERATOR_OUTPUT_ENABLED to this value.

Valid Values:
   VI_TRUE (1)  - Enables LF Output
   VI_FALSE (0) - Disables LF Output

Default Value:  VI_FALSE (0)   �z#����  �    Status                           ��, 
  �  �    Instrument Handle                �� (  �  �    Amplitude                        �� ( �  �    Enabled                            	               0.0    On VI_TRUE Off VI_FALSE    �    This function configures the triggering of the pulse generator within the RF signal generator. Specifies the external trigger slope and the delay time for starting the pulse after the trigger pulse.
This function not supported.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Specifies the polarity of the trigger input to start one pulse.

Valid Values:
  AGESG_VAL_PULSE_EXTERNAL_TRIGGER_SLOPE_POSITIVE
  AGESG_VAL_PULSE_EXTERNAL_TRIGGER_SLOPE_NEGATIVE

Default Value: AGESG_VAL_PULSE_EXTERNAL_TRIGGER_SLOPE_POSITIVE     V    Specifies the delay for starting the output pulse with respect to the trigger input.   ��#����  �    Status                           �, 
  �  �    Instrument Handle                � (  � �    Trigger Slope                    � ( � �  �    Delay                              	                          rPositive AGESG_VAL_PULSE_EXTERNAL_TRIGGER_SLOPE_POSITIVE Negative AGESG_VAL_PULSE_EXTERNAL_TRIGGER_SLOPE_NEGATIVE        �    This function configures the pulse generator within the RF signal generator. Specifies the period time (repetition rate) in case of internal trigger (free run) mode.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Specifies the period (repetition rate) for the pulse.
The driver sets the AGESG_ATTR_PULSE_INTERNAL_TRIGGER_PERIOD to this value.

Units:  seconds

Valid Range:
  16 microseconds to 30 seconds

Default Value:  80 microseconds   #����  �    Status                           V, 
  �  �    Instrument Handle                	 9 � �  �    Period                             	               80.0e-6    f    This function configures the trigger source, pulse width and gating enabled for the pulse generator.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    {    Specifies the source of the signal the pulse generator uses to generate one pulse.
The driver sets the AGESG_ATTR_PULSE_TRIGGER_SOURCE to this value.

Valid Values:
  AGESG_VAL_PULSE_TRIGGER_SOURCE_INTERNAL
    - No external trigger is used. The pulse period is              specified with Pulse Internal Trigger Period.

Default Value:  AGESG_VAL_PULSE_TRIGGER_SOURCE_INTERNAL        Specifies the width of the output pulse.
The driver sets the AGESG_ATTR_PULSE_WIDTH to this value.

Units:  seconds

Valid Range:
  8 microseconds to value of the pulse period
          attribute AGESG_ATTR_PULSE_INTERNAL_TRIGGER_PERIOD

Default Value:  40 microseconds     �    Enables or disables gating.
The driver sets the AGESG_ATTR_PULSE_INTERNAL_TRIGGER_PERIOD to this value.

Valid Value:
  VI_FALSE - Disables gating

Default Value:  VI_FALSE   #����  �    Status                           q, 
  �  �    Instrument Handle                $ (  � �    Pulse Trigger Source             � ( � �  �    Pulse Width                      � (� �  �    Gating Enabled                     	                          1Internal AGESG_VAL_PULSE_TRIGGER_SOURCE_INTERNAL    40.0e-6    On 1 Off 0    i    This function configures the output and polarity of the pulse generator within the RF signal generator.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None        Specifies the polarity of the output signal.
The driver sets the AGESG_ATTR_PULSE_OUTPUT_POLARITY to this value.

Valid Values:
  AGESG_VAL_PULSE_OUTPUT_POLARITY_NORMAL
    - Specifies normal polarity

Default Value:  AGESG_VAL_PULSE_OUTPUT_POLARITY_NORMAL        Enables or disables the external output (LF Output) of the pulse generator.
The driver sets the AGESG_ATTR_PULSE_OUTPUT_ENABLED to this value.

Valid Values:
   VI_TRUE (1)  - Enables LF Output
   VI_FALSE (0) - Disables LF Output

Default Value:  VI_FALSE (0)   W#����  �    Status                           !�, 
  �  �    Instrument Handle                "_ (  � �    Polarity                         #i ( � �  �    Enabled                            	                          .Normal AGESG_VAL_PULSE_OUTPUT_POLARITY_NORMAL    On VI_TRUE Off VI_FALSE    �    This function configures the signal generator whether the RF output signal is a continuous wave or the frequency, the power level or both are swept or stepped.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    a    Specifies the sweep mode of the RF signal generator.
The driver sets the AGESG_ATTR_SWEEP_MODE to this value.

Valid Values:
  AGESG_VAL_SWEEP_MODE_NONE
    - The RF output of the signal generator is a non-swept signal (Continuous Wave). Frequency and power level settings from the base capability group are used.

  AGESG_VAL_SWEEP_MODE_FREQUENCY_STEP
    - The signal generator sweeps the RF output signal's frequency in steps.

  AGESG_VAL_SWEEP_MODE_POWER_STEP
    - The signal generator sweeps the RF output signal's power level in steps.

  AGESG_VAL_SWEEP_MODE_FREQUENCY_POWER_STEP
    - The signal generator sweeps the both RF output signal's frequency and power in steps.

  AGESG_VAL_SWEEP_MODE_LIST
    - The signal generator uses two lists with frequency and power level values to sweep the RF output signal.

Default Value:  AGESG_VAL_SWEEP_MODE_NONE    �    Specifies the way to start the sweep or running it continuously.
The driver sets the AGESG_ATTR_SWEEP_TRIGGER_SOURCE to this value.

Valid Values:
  AGESG_VAL_SWEEP_TRIGGER_SOURCE_IMMEDIATE
    - The sweep system does not wait for a trigger of any kind, so it is running continuously

  AGESG_VAL_SWEEP_TRIGGER_SOURCE_EXTERNAL
    - The sweep is started with an external signal

  AGESG_VAL_SWEEP_TRIGGER_SOURCE_SOFTWARE
    - The sweep is started with a software programmable trigger

  AGESG_VAL_SWEEP_TRIGGER_SOURCE_TRIGGER_KEY
    - The sweep is started with an TRIGGER hard key

Default Value:  AGESG_VAL_SWEEP_TRIGGER_SOURCE_IMMEDIATE   &\#����  �    Status                           ,�, 
  �  �    Instrument Handle                -d (  � �    Mode                             0� ( � � �    Trigger Source                     	                          �None AGESG_VAL_SWEEP_MODE_NONE Frequency Step AGESG_VAL_SWEEP_MODE_FREQUENCY_STEP Power Step AGESG_VAL_SWEEP_MODE_POWER_STEP Frequency&Power Step AGESG_VAL_SWEEP_MODE_FREQUENCY_POWER_STEP List AGESG_VAL_SWEEP_MODE_LIST               �Immediate AGESG_VAL_SWEEP_TRIGGER_SOURCE_IMMEDIATE External AGESG_VAL_SWEEP_TRIGGER_SOURCE_EXTERNAL Software AGESG_VAL_SWEEP_TRIGGER_SOURCE_SOFTWARE Trigger Key AGESG_VAL_SWEEP_TRIGGER_SOURCE_TRIGGER_KEY        This function configures the attributes that control the step frequencies of the generator's RF output signal. These attributes are start and stop frequency, step size and lin/log scaling. If the stop frequency is less than the start frequency, the frequency decreases during the sweep.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    1    Specifies the start frequency of the step sweep.
The driver sets the AGESG_ATTR_FREQUENCY_STEP_START to this value.

Units:  Hz

Range:  100 kHz to the signal generator's maximum specified
        output frequency.

Default Value: the signal generator's maximum specified output
               frequency    /    Specifies the stop frequency of the step sweep.
The driver sets the AGESG_ATTR_FREQUENCY_STEP_STOP to this value.

Units:  Hz

Range:  100 kHz to the signal generator's maximum specified
        output frequency.

Default Value: the signal generator's maximum specified output
               frequency     �    Specifies the scaling of the step sweep.
The driver sets the AGESG_ATTR_FREQUENCY_STEP_SCALING to this value.

Valid Values:
  AGESG_VAL_FREQUENCY_STEP_SCALING_LINEAR
    -  Enables linear scaling

Default Value:  AGESG_VAL_FREQUENCY_STEP_SCALING_LINEAR     �    Specifies the size of one step.
The driver sets the AGESG_ATTR_FREQUENCY_STEP_SIZE to this value.

Units:  Hertz

Valid Range: 
  from abs(Start Frequency - Stop Frequency) / 401
  to   abs(Start Frequency - Stop Frequency) / 2   7(#����  �    Status                           =}, 
  �  �    Instrument Handle                >0 (  �  �    Start                            ?i ( � �  �    Stop                             @� (| � �    Scaling                          A� d  �  �    StepSize                           	                                  /Linear AGESG_VAL_FREQUENCY_STEP_SCALING_LINEAR        F    This function configures the attributes that control power stepping.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None        Specifies whether the trigger initiates the next step.
The driver sets the AGESG_ATTR_FREQUENCY_STEP_SINGLE_STEP_ENABLED to this value.

Valid Values:
   VI_TRUE (1)  - Enables Single Step
   VI_FALSE (0) - Disables Single Step

Default Value:  VI_FALSE (0)     �    Specifies the duration of one power step.
The driver sets the AGESG_ATTR_FREQUENCY_STEP_DWELL to this value.

Units:  seconds

Valid Range:
   1.0 milisecond to 60 seconds

Default Value:  2.0 miliseconds   Dz#����  �    Status                           J�, 
  �  �    Instrument Handle                K� % L �  �    Single Step Enabled              L� ( � �  �    Dwell                              	               On VI_TRUE Off VI_FALSE    2.0e-3    T    This function resets the current frequency step to the frequency step start value.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None   N�#����  �    Status                           U, 
  �  �    Instrument Handle                  	                  This function configures the attributes that control the power steps of the generator's RF output signal. These attributes are start and stop power and step size. If the stop power is less than the start power, the power decreases in value during the sweep.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Specifies the start power of the stepping.
The driver sets the AGESG_ATTR_POWER_STEP_START to this value.

Units: dBm

Range: Between -136.0 (minimum) and +20.0 dBm (maximum).

Default Value: -135.0 dBm     �    Specifies the stop power of the stepping.
The driver sets the AGESG_ATTR_POWER_STEP_STOP to this value.

Units: dBm

Range: Between -136.0 (minimum) and +20.0 dBm (maximum).

Default Value: -135.0 dBm     �    Specifies the size of one step.
The driver sets the AGESG_ATTR_POWER_STEP_SIZE to this value.

Units: dBm

Range: 
  from  abs( power step start - power step stop) / 401
  to    abs( power step start - power step stop) / 2   WU#����  �    Status                           ]�, 
  �  �    Instrument Handle                ^] (  �  �    Start                            _1 ( � �  �    Stop                             ` (| �  �    Step Size                          	                           F    This function configures the attributes that control power stepping.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Specifies whether the trigger initiates the next step.
The driver sets the AGESG_ATTR_POWER_STEP_SINGLE_STEP_ENABLED to this value.

Valid Values:
   VI_TRUE (1)  - Enables Single Step
   VI_FALSE (0) - Disables Single Step

Default Value:  VI_FALSE (0)     �    Specifies the duration of one power step.
The driver sets the AGESG_ATTR_POWER_STEP_DWELL to this value.

Units:  seconds

Valid Range:
   1.0 milisecond to 60 seconds

Default Value:  2.0 miliseconds   b^#����  �    Status                           h�, 
  �  �    Instrument Handle                if & G �  �    Single Step Enabled              jm ( � �  �    Dwell                              	               On VI_TRUE Off VI_FALSE    2.0e-3    L    This function resets the current power step to the power step start value.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None   l�#����  �    Status                           r�, 
  �  �    Instrument Handle                  	               9    This function creates a named list of frequency values.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     /    Specifies the name of the list to be created.     4    Specifies the number of  values in the list array.        Specifies the array of frequency values to become elements of the list. The array must have at least as many elements as the value in the Length parameter.

Units: Hertz.

Range:  100 kHz to the signal generator's maximum specified
        output frequency.   t_#����  �    Status                           z�, 
  �  �    Instrument Handle                {g (  �  �    Name                             {� ( � �  �    Length                           {� (| �  �    Frequency                          	                           5    This function creates a named list of power values.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     /    Specifies the name of the list to be created.     4    Specifies the number of  values in the list array.     �    Specifies the array of power values to become elements of the list. The array must have at least as many elements as the value in the Length parameter.

Units: dBm

Range: Between -136.0 (minimum) and +20.0 dBm (maximum)   ~G#����  �    Status                           ��, 
  �  �    Instrument Handle                �O (  �  �    Name                             �� ( � �  �    Length                           �� (| �  �    Power                              	                           H    This function creates a named list of both frequency and power values.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     /    Specifies the name of the list to be created.     4    Specifies the number of  values in the list array.        Specifies the array of frequency values to become elements of the list. The array must have at least as many elements as the value in the Length parameter.

Units: Hertz.

Range:  100 kHz to the signal generator's maximum specified
        output frequency.     �    Specifies the array of power values to become elements of the list. The array must have at least as many elements as the value in the Length parameter.

Units: dBm

Range: Between -136.0 (minimum) and +20.0 dBm (maximum)   �#����  �    Status                           �r, 
  �  �    Instrument Handle                �% (  �  �    Name                             �\ ( � �  �    Length                           �� (| �  �    Frequency                        �� d  �  �    Power                              	                               T    This function selects one list by name to become active (out of the pool of list).    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     {    Specifies the name of the list to make this list active.
The driver sets the AGESG_ATTR_LIST_SELECTED_NAME to this value.   �C#����  �    Status                           ��, 
  �  �    Instrument Handle                �K (  �  �    Name                               	                   A    This function deletes all lists from the pool of defined lists.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None   ��#����  �    Status                           �, 
  �  �    Instrument Handle                  	               E    This function configures the attributes that control list stepping.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Specifies the duration of one list step.
The driver sets the AGESG_ATTR_LIST_DWELL to this value.

Units:  seconds

Valid Range:
   1.0 milisecond to 60 seconds

Default Value:  2.0 miliseconds     �    Specifies whether the trigger initiates the next step.
The driver sets the AGESG_ATTR_LIST_SINGLE_STEP_ENABLED to this value.

Valid Values:
   VI_TRUE (1)  - Enables Single Step
   VI_FALSE (0) - Disables Single Step

Default Value:  VI_FALSE (0)   ��#����  �    Status                           ��, 
  �  �    Instrument Handle                �� ( � �  �    Dwell                            �l & J �  �    Single Step Enabled                	               2.0e-3    On VI_TRUE Off VI_FALSE    A    This function resets the current list to the first entry value.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None   ��#����  �    Status                           �, 
  �  �    Instrument Handle                  	               @    This function sets the direction of execution of a list sweep.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Sets the direction of execution of a list sweep. Choose UP to sweep from the first point in the list to the last point, or from the step sweep start frequency and amplitude to the stop frequency and amplitude. Choose DOWN to reverse the direction of the sweep.
The driver sets the AGESG_ATTR_SWEEP_DIRECTION to this value.

Valid Values:
  AGESG_VAL_SWEEP_DIRECTION_UP
    - from first point to last point

  AGESG_VAL_SWEEP_DIRECTION_DOWN
    - reverse direction

Default Value:  AGESG_VAL_SWEEP_DIRECTION_UP   ��#����  �    Status                           ��, 
  �  �    Instrument Handle                �� ; � � �    Direction                          	                          DUp AGESG_VAL_SWEEP_DIRECTION_UP Down AGESG_VAL_SWEEP_DIRECTION_DOWN    8    This function sets the operating mode of a list sweep.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Sets the operating mode of a list sweep. When in manual mode, the selected point controls the frequency and amplitude according to the sweep type.
The driver sets the AGESG_ATTR_LIST_MODE to this value.

Valid Values:
  AGESG_VAL_LIST_MODE_AUTO
    - from first point to last point

  AGESG_VAL_LIST_MODE_MANUAL
    - selected point controls the frequency and amplitude according to the sweep type 

Default Value:  AGESG_VAL_LIST_MODE_AUTO   ��#����  �    Status                           �/, 
  �  �    Instrument Handle                �� ; � � �    Mode                               	                          @Auto AGESG_VAL_LIST_MODE_AUTO Manual AGESG_VAL_LIST_MODE_MANUAL    ?    This function sets the current element used by the list mode.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None        Sets the current element used by the list mode. If list mode is controlling frequency and/or power then the indexed element in the respective list(s) will be used. If the list mode is AUTO, then nothing will happen until the mode is changed to MANUAL. If the point selected is beyond the length of the longest enabled list, then the point will be set to the maximum possible point, and an error will be generated.
The driver sets the AGESG_ATTR_LIST_MANUAL_POINT to this value.

Valid range:  1 to number of points

Default Value:  1   ��#����  �    Status                           �>, 
  �  �    Instrument Handle                �� E � � �    Point                              	               1    �    This function initiates a single sweep if the sweep is on for either frequency or power, and the sweep is not already initiated.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None   �N#����  �    Status                           ڣ, 
  �  �    Instrument Handle                  	               a    This function configures the ALC (Automatic Level Control) of the signal generator's RF output.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    The driver sets the AGESG_ATTR_ALC_SOURCE to this value.

Valid Values:
  AGESG_VAL_ALC_SOURCE_INTERNAL
    - The ALC is controlled by an internal measurement
             source

Default Value:  AGESG_VAL_ALC_SOURCE_INTERNAL only        Toggles between ALC normal and narrow bandwidth modes. You can choose to set the signal generator to narrow bandwidth mode if you have switched on I/Q modulation, are using an external I/Q source, and the ALC circuit is set to on. Setting the external ALC bandwidth to narrow limits the bandwidth to 100 Hz, which can improve EVM. Narrow bandwidth mode may, however, also slow the settling time for frequency changes as much as 40 ms. Defaults are Normal if IQ modulation is off, Narrow if EXT IQ or HIGH BW AM is on.
The driver sets the AGESG_ATTR_ALC_BANDWIDTH to this value.

Valid Values:
  AGESG_VAL_ALC_BANDWIDTH_NORMAL (200.0) - Normal bandwidth
  AGESG_VAL_ALC_BANDWIDTH_NARROW (100.0) - Narrow bandwidth

Default Value:
  AGESG_VAL_ALC_BANDWIDTH_NORMAL (200.0)   �9#����  �    Status                           �, 
  �  �    Instrument Handle                �A (  � �    Source                           �1 ( � �  �    Bandwidth                          	                          'Internal AGESG_VAL_ALC_SOURCE_INTERNAL    AGESG_VAL_ALC_BANDWIDTH_NORMAL    O    This function toggles between the auto and manual modes of power search mode.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    togTles between the auto and manual modes of power search mode. Power search is an internal calibration routine used to achieve
calibrated output power when the ALC is off. When you turn  power search on, power search will execute automatically with each change to the RF frequency or power, and also with each change to the AM, burst, pulse, or I/Q modulation  state. You do not need to disconnect modulation inputs, however modulation is disabled  during power search. If you are using external I/Q modulation, the power search routine assumes that the I/Q input
level is sqrt(I^2 + Q^2) = 0.5 Vrms. Actual output amplitude will scale directly with sqrt(I^2 + Q^2). When power search is set to Off, the power search routine is not run unless the function agesg_DoPowerSearch is called.

The driver sets the AGESG_ATTR_ALC_SEARCH_ENABLED to this value.

Valid Values:
VI_TRUE  (1) - Automatic Search
VI_FALSE (0) - Manual Search

Default Value:  VI_FALSE (0)
   ��#����  �    Status                           �$, 
  �  �    Instrument Handle                �� Q �  �    Search Enabled                     	               On VI_TRUE Off VI_FALSE    0    This function starts the power search routine.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None   ��#����  �    Status                           ��, 
  �  �    Instrument Handle                  	               M    This function lets you set either fixed or modulated modes of power search.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Lets you set either fixed or modulated modes of power search. Power search is an internal calibration routine used to achieve calibrated power when the ALC is off. Fixed power search mode uses a 0.5 volt reference. When you set the power search mode to modulated, the current I/Q modulation remains active and the reference is the RMS value of the current I/Q modulation.
The driver sets the AGESG_ATTR_ALC_SEARCH_REFERENCE to this value.

Valid Values:
  AGESG_VAL_ALC_SEARCH_REFERENCE_FIXED
    - uses a 0.5 volt reference

  AGESG_VAL_ALC_SEARCH_REFERENCE_MODULATED
    - reference is the RMS value of the current I/Q modulation

Default Value: AGESG_VAL_ALC_SEARCH_REFERENCE_FIXED   �z#����  �    Status                           �, 
  �  �    Instrument Handle                � J � � �    Search Reference                   	                          ^Fixed AGESG_VAL_ALC_SEARCH_REFERENCE_FIXED Modulated AGESG_VAL_ALC_SEARCH_REFERENCE_MODULATED    G    This function configures the signal generator's reference oscillator.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Specifies source of reference frequency signal.
The driver sets the AGESG_ATTR_REFERENCE_OSCILLATOR_SOURCE to this value.

Valid Values:
   AGESG_VAL_REFERENCE_OSCILLATOR_SOURCE_INTERNAL
     - The internal reference oscillator is used
   
   AGESG_VAL_REFERENCE_OSCILLATOR_SOURCE_EXTERNAL - An external reference oscillator can be used

Default Value:
   AGESG_VAL_REFERENCE_OSCILLATOR_SOURCE_INTERNAL     �    Specifies the frequency of the external reference oscillator.
The driver sets the AGESG_ATTR_REFERENCE_OSCILLATOR_EXTERNAL_FREQUENCY to this value.

Valid Value:   only 10.0 MHz

Default Value: 10.0 MHz   �#����  �    Status                           �, 
  �  �    Instrument Handle                � (  � �    Source                           G ( � �  �    Frequency                          	                          pInternal AGESG_VAL_REFERENCE_OSCILLATOR_SOURCE_INTERNAL External AGESG_VAL_REFERENCE_OSCILLATOR_SOURCE_EXTERNAL    10.0e+6    h    This function configures the signal generator to apply IQ (vector) modulation to the RF output signal.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None        Enables or disables IQ (vector) modulation of the output RF signal. (Only for ESG-D and ESG-DP)

The driver sets the AGESG_ATTR_IQ_ENABLED to this value.

Valid Values:

   VI_TRUE (1)  - Enables IQ modulation
   VI_FALSE (0) - Disables IQ modulation

Default Value:  VI_FALSE (0)   �#����  �    Status                           N, 
  �  �    Instrument Handle                 @ �  �    Enabled                            	               On VI_TRUE Off VI_FALSE    �    This function configures the attributes that control the signal generator's IQ modulation. These attributes are the modulation source, impairement state and swap state.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Specifies the modulation source.
The driver sets the AGESG_ATTR_IQ_SOURCE to this value.

Valid Values:

 - AGESG_VAL_IQ_SOURCE_CDMA_BASE
       The signal generator uses the internally generated CDMA
       signal to apply IQ modulation to the output RF signal

 - AGESG_VAL_IQ_SOURCE_TDMA_BASE
       The signal generator uses the internally generated TDMA
       signal to apply IQ modulation to the output RF signal

 - AGESG_VAL_IQ_SOURCE_ARB_GENERATOR
       The signal generator uses the internally generated Arb
       signal to apply IQ modulation to the output RF signal

 - AGESG_VAL_IQ_SOURCE_EXTERNAL
       The signal generator uses data from an external source
       for IQ modulation

Default Value:  AGESG_VAL_IQ_SOURCE_EXTERNAL    1    Specifies the swap state. True swaps I and Q inputs, the result is an invers phase rotation.
The driver sets the AGESG_ATTR_IQ_SWAP_ENABLED to this value.

Valid Values:
   VI_TRUE (1)  - Enables swap
   VI_FALSE (0) - Disables swap

Default Value:  VI_FALSE (0)

Note:

  Used only for external source.   �#����  �    Status                           "�, 
  �  �    Instrument Handle                #� (  � �    Source                           &� * � �  �    Swap Enabled                       	                         �CDMA Base AGESG_VAL_IQ_SOURCE_CDMA_BASE TDMA Base AGESG_VAL_IQ_SOURCE_TDMA_BASE Arb Generator AGESG_VAL_IQ_SOURCE_ARB_GENERATOR External AGESG_VAL_IQ_SOURCE_EXTERNAL    On VI_TRUE Off VI_FALSE    V    This function configures the IQ skew correction.

Notes:
(1) Only for Agilent 4438C.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Selects the skew path.
The driver sets the AGESG_ATTR_DM_SKEW_PATH to this value.

Valid Values:

 - AGESG_VAL_DM_SKEW_PATH_RF
When RF is selected, the skew is optimized for the I/Q signal applied to the RF Output. The BB output will be functional, but the I/Q skew applied will be optimized for the RF path. When using this choice, seven symbols of latency are added to the Arb based waveform. While in real-time mode, the maximum number of user symbols for the FIR is limited to 32.

 - AGESG_VAL_DM_SKEW_PATH_BB
When BB is selected, the skew is optimized for the I/Q signal outputs on the rear panel. The RF Output will be functional, but the I/Q skew applied will be optimized for the BB path. When using this choice, seven symbols of latency are added to the Arb based waveform. While in real-time mode, the maximum number of user symbols for the FIR is limited to 32.

Default Value:  AGESG_VAL_DM_SKEW_PATH_RF     �    Enables or disables the I/Q skew correction function.
The driver sets the AGESG_ATTR_DM_SKEW_ENABLED to this value.

Valid Values:
   VI_TRUE (1)  - Enables skew
   VI_FALSE (0) - Disables skew

Default Value:  VI_TRUE (1)
   )�#����  �    Status                           0;, 
  �  �    Instrument Handle                0� (  � �    Skew Path                        4� * � �  �    Skew Enabled                       	                         :RF AGESG_VAL_DM_SKEW_PATH_RF BB AGESG_VAL_DM_SKEW_PATH_BB   On VI_TRUE Off VI_FALSE    ,    This function calibrates the IQ modulator.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None   6�#����  �    Status                           =F, 
  �  �    Instrument Handle                  	              {    This function restore the original factory calibration data for the internal I/Q modulator. The latest calibration data from the user calibration is discarded. Although the factory calibration data may not be optimized for the signal generator�s present status, the data can be used as a starting point if the current data is lost (if the I/Q calibration is unable to execute).    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None   ?�#����  �    Status                           FK, 
  �  �    Instrument Handle                  	              {    This function restore the original factory calibration data for the internal I/Q modulator. The latest calibration data from the user calibration is discarded. Although the factory calibration data may not be optimized for the signal generator�s present status, the data can be used as a starting point if the current data is lost (if the I/Q calibration is unable to execute).    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None   H�#����  �    Status                           OP, 
  �  �    Instrument Handle                  	               n    This function configures the IQ  modulation to allow controlled impairment for test or external corrections.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    True enables IQ (vector) modulation impairment.
The driver sets the AGESG_ATTR_IQ_IMPAIRMENT_ENABLED to this value.

Valid Values:

   VI_TRUE (1)  - Enables IQ impairment
   VI_FALSE (0) - Disables IQ impairment

Default Value:  VI_FALSE (0)   P�#����  �    Status                           WH, 
  �  �    Instrument Handle                W� 7 � �  �    Enabled                            	               On VI_TRUE Off VI_FALSE    �    This function configures the attributes that simulate or correct impairment for the signal generator's IQ  modulation. These attributes are only used, if IQ Impairment Enabled attribute is set to True (see Configure IQ Impairment Enabled function).    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Specifies an offset to the I-path of IQ signals.
The driver sets the AGESG_ATTR_IQ_I_OFFSET to this value.

Units: percentage (%)

Valid Range:
  -100.0 % to 100.0 %

Valid Range for Agilent 4438C:
  -50.0 % to 50.0 %

Default Value:  0.0 %     �    Specifies an offset to the Q-path of IQ signals.
The driver sets the AGESG_ATTR_IQ_Q_OFFSET to this value.

Units: percentage (%)

Valid Range:
  -100.0 % to 100.0 %

Valid Range for Agilent 4438C:
  -50.0 % to 50.0 %

Default Value:  0.0 %     �    Specifies a gain imbalance to the IQ signals.
The driver sets the AGESG_ATTR_IQ_RATIO to this value.

Units:  percentage (%)

Valid Range:
  -100.0 to 100.0 %

Default Value: 0.0 %     �    Specifies an angle offset to the IQ signals.
The driver sets the AGESG_ATTR_IQ_SKEW to this value.

Units:  degrees

Valid Range:
  -10.0 degrees to 10.0 degrees

Default Value: 0.0 degrees   Z�#����  �    Status                           a, 
  �  �    Instrument Handle                a� (  �  �    IOffset                          b� ( � �  �    QOffset                          c� (| �  �    Ratio                            d} d  �  �    Skew                               	               0.0    0.0    0.0    0.0   U    This function configures the attributes that simulate or correct impairment for the signal generator's IQ  modulation on the rear panel I and Q output connectors. These attributes are only used, if IQ Impairment Enabled attribute is set to True (see Configure IQ Impairment Enabled function).

Notes:
(1) Only for Agilent 4438c instrument.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    $    Sets the common mode offset voltage for both the in-phase (I) and quadrature-phase (Q) signals going to the rear panel I and Q output connectors.
The driver sets the AGESG_ATTR_DM_EXTERNAL_COMMON_OFFSET to this value.

Units: Voltage (V)

Valid Range:
  -3.0 to 3.0 V

Default Value:  0.0 V     �    Sets the differential offset voltage for an in-phase (I) signal routed to the I output connectors.
The driver sets the AGESG_ATTR_DM_EXTERNAL_DIFFERENTIAL_I_OFFSET to this value.

Units: Voltage (V)

Valid Range:
  -3.0 to 3.0 V

Default Value:  0.0 V        Sets the differential offset voltage for a quadrature-phase (Q) signal routed to the Q output connectors.
The driver sets the AGESG_ATTR_DM_EXTERNAL_DIFFERENTIAL_Q_OFFSET to this value.

Units:  Voltage (V)

Valid Range:
  -3.0 to 3.0 V

Default Value: 0.0 V        Sets the gain for the I signal relative to the Q signal.
The driver sets the AGESG_ATTR_DM_EXTERNAL_GAIN to this value.

Units:  percentage (%)

Valid Range:
  -100.0 to 100.0 %

Default Value: 0.0 %

Notes:
(1) -100.0 % corresponding to -4.0 dB and 100.0 % corresponding to 4.0 dB.     �    Sets the offset voltage for a signal applied to the 600 ohm I input connector.
The driver sets the AGESG_ATTR_DM_EXTERNAL_I_OFFSET to this value.

Units: Voltage (V)

Valid Range:
  -5.0 to 5.0 V

Default Value:  0.0 V     �    Sets the offset voltage for a signal applied to the 600 ohm Q input connector.
The driver sets the AGESG_ATTR_DM_EXTERNAL_Q_OFFSET to this value.

Units:  Voltage (V)

Valid Range:
  -5.0 to 5.0 V

Default Value: 0.0 V     �    Sets the I/Q output attenuation level.
The driver sets the AGESG_ATTR_DM_EXTERNAL_IQ_ATTENUATION_LEVEL to this value.

Units: decibels (dB)

Valid Range:
  0.0 to 40.0 dB

Default Value: 6.0 dB
   h#����  �    Status                           n`, 
  �  �    Instrument Handle                o (  �  �    Common Offset                    p? ( � �  �    Differential I Offset            qD (| �  �    Differential Q Offset            rP d  �  �    Gain                             st d � �  �    I Offset                         tX d| �  �    Q Offset                         u< �  �  �    Attenuation Level                  	               0.0    0.0    0.0    0.0    0.0    0.0    6.0    n    This function configures the input skew to the I and Q paths.

Notes:
(1) Only for Agilent 4438c instrument.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Changes the input skew to the I and Q paths. Equal and opposite skew is applied to both paths (RF Output path and I/Q output paths) simultaneously. A positive value delays the I signal relative to the Q signal, and a negative value delays the Q signal relative to the I signal.

If the internal I/Q correction path is set to RF or BB the I/Q signals are already optimized and adjusting I/Q skew would add an impairment to the signals. If the internal I/Q correction path is set to Off, then adjusting the I/Q skew could improve the I/Q signals. The I/Q skew adjustment cannot be performed on the MSK, FSK, and C4FM constant envelope modulations.

I/Q skew adjustments are preserved when the instrument state is saved. I/Q skew adjustment are also preserved when instrument settings are changed. If the signal generator is calibrated, the skew adjustments are added to the calibration value used for the given signal generator state. If the signal generator is uncalibrated, the skew adjustments re applied directly.

Using I/Q skew while playing a user FIR file greater than 32 symbols will generate an error.

The driver sets the AGESG_ATTR_DM_IQ_INPUT_SKEW to this value.

Valid Range:
  -5.0 to 5.0

Default Value:  0.0   x�#����  �    Status                           ~�, 
  �  �    Instrument Handle                � (  �  �    Skew                               	               0.0        This function is used to change operating conditions to accommodate IQ inputs with high crest factor. Maximum output level is reduced and power level accuracy is degraded. IQ drive levels should be reduced, dB per dB, for crest factors greater than 4 dB.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Change operating conditions to accommodate IQ inputs with high crest factor. Maximum output level is reduced and power level accuracy is degraded. IQ drive levels should be reduced, dB per dB, for crest factors greater than 4 dB. (Only  for ESG-D and ESG-DP)
The driver sets the AGESG_ATTR_HIGH_CREST_ENABLED to this value.

Valid Values:

   VI_TRUE (1)  - Enables High Crest
   VI_FALSE (0) - Disables High Crest

Default Value:  VI_FALSE (0)   �2#����  �    Status                           ��, 
  �  �    Instrument Handle                �: @ �  �    Enabled                            	               On VI_TRUE Off VI_FALSE       This function configures the Arb generator. Specified is the sample frequency the waveform is generated with together with the cut-off frequency of the low pass filter which is used for antialiasing the output waveform. The filter frequency normally is lower than the clock frequency.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None        Specifies the sample frequency. The waveform is generated with this clock frequency.
The driver sets the AGESG_ATTR_ARB_CLOCK_FREQUENCY to this value.

Units: Hertz

Valid Range:
  1.0 Hz to 40.0 MHz

Valid Range for Agilent 4438C:
  1.0 Hz to 100.0 MHz

Default Value:  6.144 MHz    �    Specifies the cut-off frequency of the low pass filter. The waveform is filtered before output with this filter for antialiasing. The filter frequency normally is lower than the clock frequency.
The driver sets the AGESG_ATTR_ARB_FILTER_FREQUENCY to this value.

Units: Hertz

Valid Value:
    AGESG_VAL_ARB_FILTER_FREQUENCY_THROUGH  - Through
    AGESG_VAL_ARB_FILTER_FREQUENCY_250_KHZ  - 250.0 kHz
    AGESG_VAL_ARB_FILTER_FREQUENCY_2_5_MHZ  -   2.5 MHz
    AGESG_VAL_ARB_FILTER_FREQUENCY_8_MHZ    -   8.0 MHz

Valid Value  for Agilent E4438C:
    AGESG_VAL_ARB_FILTER_FREQUENCY_THROUGH  - Through

Default Value:  AGESG_VAL_ARB_FILTER_FREQUENCY_2_5_MHZ   ��#����  �    Status                           �E, 
  �  �    Instrument Handle                �� (  �  �    Clock Frequency                  � ( � �  �    Filter Frequency                   	               	6.144e+6    'AGESG_VAL_ARB_FILTER_FREQUENCY_2_5_MHZ    X    This function stores the transmitted waveform in the drivers's or instrument's memory.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     9    The driver uses this value to name the stored waveform.     .    The number of samples in both I and Q array.     �    The driver uses the values of this array as I part of the waveform . The voltages are normalized to {-1, +1} to the full I range.     �    The driver uses the values of this array as Q part of the waveform . The voltages are normalized to {-1, +1} to the full Q range.        The value is set to True if more data is coming. To complete the waveform, the next data shall have the same name. False means the waveform has no more data to come.

Valid Values:
  VI_TRUE (1)  - More Data Panding
  VI_FALSE (0) - No More Data to Come

Default Value: VI_FALSE (0)   �-#����  �    Status                           ��, 
  �  �    Instrument Handle                �5 (  �  �    Name                             �v ( � �  �    Number Of Samples                �� (| �  �    IData                            �7 d  �  �    QData                            �� d � �  �    More Data Pending                  	                               On VI_TRUE Off VI_FALSE    O    This function selects a waveform from the pool of waveforms to become active.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Specifies the selected waveform from the pool of available waveforms.
The driver sets the AGESG_ATTR_ARB_SELECTED_WAVEFORM to this value.   ��#����  �    Status                           �@, 
  �  �    Instrument Handle                �� > � �  �    Name                               	                   A    This function deletes all lists from the pool of defined lists.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None   ��#����  �    Status                           ��, 
  �  �    Instrument Handle                  	               V    This function returns the capabilities of the Arb generator related to the waveform.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     1    Returns the Arb Max Number Waveforms attribute.     -    Returns the Arb Waveform Quantum attribute.     .    Returns the Arb Min Waveform Size attribute.     .    Returns the Arb Max Waveform Size attribute.   �b#����  �    Status                           ��, 
  �  �    Instrument Handle                �j (  �  �    Max Number Waveforms             �� ( � �  �    Waveform Quantum                 �� (| �  �    Min Waveform Size                � z  �  �    Max Waveform Size                  	               	            	            	            	            �    This function configures the trigger source for waveform generation. The output waveform may be generated continuously or once based on the value of the Arb Trigger Source attribute.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None        Specifies the way to start the Arb waveform or running it continuously.
The driver sets the AGESG_ATTR_ARB_TRIGGER_SOURCE to this value.

Valid Values:
  AGESG_VAL_ARB_TRIGGER_SOURCE_IMMEDIATE
    - running continuously
 
  AGESG_VAL_ARB_TRIGGER_SOURCE_EXTERNAL
    - external trigger applied to the PATTERN TRIG IN

  AGESG_VAL_ARB_TRIGGER_SOURCE_SOFTWARE
    - software trigger sent over GPIB bus

  AGESG_VAL_ARB_TRIGGER_SOURCE_TRIGGER_KEY
    - front-panel Trigger Key

Default Value:
    AGESG_VAL_ARB_TRIGGER_SOURCE_EXTERNAL   Â#����  �    Status                           ��, 
  �  �    Instrument Handle                ʊ C � � �    Source                             	                          �Immediate AGESG_VAL_ARB_TRIGGER_SOURCE_IMMEDIATE External AGESG_VAL_ARB_TRIGGER_SOURCE_EXTERNAL Software AGESG_VAL_ARB_TRIGGER_SOURCE_SOFTWARE Trigger Key AGESG_VAL_ARB_TRIGGER_SOURCE_TRIGGER_KEY    6    This function configures the external trigger slope.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    Y    Specifies whether the trigger event occurs on the rising or falling edge of the input signal.
The driver sets the AGESG_ATTR_ARB_EXTERNAL_TRIGGER_SLOPE to this value.

Valid Values:
  AGESG_VAL_ARB_EXTERNAL_TRIGGER_SLOPE_POSITIVE
  AGESG_VAL_ARB_EXTERNAL_TRIGGER_SLOPE_NEGATIVE

Default Value:
    AGESG_VAL_ARB_EXTERNAL_TRIGGER_SLOPE_POSITIVE   �f#����  �    Status                           Ի, 
  �  �    Instrument Handle                �n 7 � � �    Slope                              	                          nPositive AGESG_VAL_ARB_EXTERNAL_TRIGGER_SLOPE_POSITIVE Negative AGESG_VAL_ARB_EXTERNAL_TRIGGER_SLOPE_NEGATIVE    �    This function returns the specific driver defined CDMA standard name that corresponds to the one-based index that the user specifies.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     Y    The number of bytes in the ViChar array that the user specifies for the Name parameter.     �    A user-allocated buffer into which the driver stores the CDMA standard name.The caller may pass VI_NULL for this parameter if the NameBufferSize parameter is 0.     H    A one-based index that defines which name to return.

Default Value: 1   ؊#����  �    Status                           ��, 
  �  �    Instrument Handle                ߒ ( � �  �    Name Buffer Size                 �� (| �  �    Name                             �� (  �  �    Index                              	                   	            1   2    This function selects the actual standard used by the instrument. The standard is selected from the list of names queried with the Get CDMA Standard Names function. The modulation type, clock frequency and filter together with the according filter. parameters are set as defined in the selected standard.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None        Specifies the actual standard used by the instrument. The modulation type, bit clock frequency and filter together with the according filter. parameters are set as defined in the selected standard.
The driver sets the AGESG_ATTR_CDMA_SELECTED_STANDARD to this value.   �U#����  �    Status                           �, 
  �  �    Instrument Handle                �] < � �  �    Name                               	                   1    This function configures the CDMA clock source.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Specifies the source of the clock signal used to generate the digital modulation according to the selected standard.
The driver sets the AGESG_ATTR_CDMA_CLOCK_SOURCE to this value.

Valid Values:
  AGESG_VAL_CDMA_CLOCK_SOURCE_INTERNAL
    - The internal clock generator is used
  
  AGESG_VAL_CDMA_CLOCK_SOURCE_EXTERNAL
    - A connected external clock generator is used.

Default Value: AGESG_VAL_CDMA_CLOCK_SOURCE_INTERNAL   �]#����  �    Status                           �, 
  �  �    Instrument Handle                �e 2 � � �    Source                             	                          \Internal AGESG_VAL_CDMA_CLOCK_SOURCE_INTERNAL External AGESG_VAL_CDMA_CLOCK_SOURCE_EXTERNAL    w    This function configures the CDMA trigger source for starting or synchronising the generation of the channel codings.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Specifies the source of the trigger signal that starts the channel coding generation.
The driver sets the AGESG_ATTR_CDMA_CLOCK_SOURCE to this value.

Valid Values:

   AGESG_VAL_CDMA_TRIGGER_SOURCE_IMMEDIATE
     - The CDMA generator system does not wait for a trigger of any kind, so it is running the channel codings continuously.

   AGESG_VAL_CDMA_TRIGGER_SOURCE_EXTERNAL
     - Each channel coding is started with an external signal.

   AGESG_VAL_CDMA_TRIGGER_SOURCE_SOFTWARE
     - Each channel coding is started with a software programmable trigger.

   AGESG_VAL_CDMA_TRIGGER_SOURCE_TRIGGER_KEY
     - Each channel coding is started with an Trigger hard key.

Default Value:  AGESG_VAL_CDMA_TRIGGER_SOURCE_IMMEDIATE   ��#����  �    Status                           �, 
  �  �    Instrument Handle                �� S � � �    Source                             	                          �Immediate AGESG_VAL_CDMA_TRIGGER_SOURCE_IMMEDIATE External AGESG_VAL_CDMA_TRIGGER_SOURCE_EXTERNAL Software AGESG_VAL_CDMA_TRIGGER_SOURCE_SOFTWARE Trigger Key AGESG_VAL_CDMA_TRIGGER_SOURCE_TRIGGER_KEY    �    This function configures whether the trigger event occurs on the rising or falling edge of the input signal. This setting is used only if CDMA Trigger Source is set to External.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    `    Specifies whether the trigger event occurs on the rising or falling edge of the input signal.

Valid Values:
   AGESG_VAL_CDMA_EXTERNAL_TRIGGER_SLOPE_POSITIVE
     - Enables rising edge triggering

   AGESG_VAL_CDMA_EXTERNAL_TRIGGER_SLOPE_NEGATIVE
     - Enables falling edge triggering

Default Value:  AGESG_VAL_CDMA_EXTERNAL_TRIGGER_SLOPE_NEGATIVE   �#����  �    Status                           	-, 
  �  �    Instrument Handle                	� G � � �    Slope                              	                         pPositive AGESG_VAL_CDMA_EXTERNAL_TRIGGER_SLOPE_POSITIVE Negative AGESG_VAL_CDMA_EXTERNAL_TRIGGER_SLOPE_NEGATIVE    �    This function returns the specific driver defined CDMA test model name that corresponds to the one-based index that the user specifies.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     Y    The number of bytes in the ViChar array that the user specifies for the Name parameter.     �    A user-allocated buffer into which the driver stores the CDMA test model name. The caller may pass VI_NULL for this parameter if the NameBufferSize parameter is 0.     H    A one-based index that defines which name to return.

Default Value: 1   #����  �    Status                           \, 
  �  �    Instrument Handle                 ( � �  �    Name Buffer Size                 p (| �  �    Name                              (  �  �    Index                              	                   	            1    �    This function selects the channel coding used for the digital modulation. The channel coding is selected with one of the names in the list of names queried with the Get CDMA Test Model Names function.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Specifies the actual CDMA test model used by the instrument.
The driver sets the AGESG_ATTR_CDMA_SELECTED_TEST_MODEL to this value.
   m#����  �    Status                           �, 
  �  �    Instrument Handle                u M � �  �    Name                               	                   �    This method configures the Multi-Channel CDMA Personality pre-modulation filter parameters, including selecting user defined FIR filter stored in the instrument's memory.    �    Select the pre-modulation filter type.

Valid Values:
  AGESG_VAL_CDMA_STANDARD_FILTER_ROOT_NYQUIST
      - Root Nyquist (raised cosine) filter

  AGESG_VAL_CDMA_STANDARD_FILTER_NYQUIST
      - Nyquist (raised cosine) filter

  AGESG_VAL_CDMA_STANDARD_FILTER_GAUSSIAN
      - Gaussian filter

  AGESG_VAL_CDMA_STANDARD_FILTER_IS95
      - Standard IS-95 baseband filter

  AGESG_VAL_CDMA_STANDARD_FILTER_IS95_EQ
      - Standard IS-95 baseband filter with equalizer
Standard IS-95 baseband filter with an equalizer provided for phase compensation required by the base station. 

  AGESG_VAL_CDMA_STANDARD_FILTER_IS95_MODULATION
     - Modified IS-95 baseband filter
Standard IS-95 baseband filter modified for improved adjacent channel performance. The filter modification is done in a manner that still meets the IS-95 error function criterion.

  AGESG_VAL_CDMA_STANDARD_FILTER_IS95_MODULATION_EQ
    - Modified IS-95 baseband filter with equalizer
Standard IS-95 baseband filter modified for improved adjacent channel performance, and includes the equalizer specified for IS-95. The filter modification is done in a manner that still meets the IS-95 error function criterion.

  AGESG_VAL_CDMA_STANDARD_FILTER_IS2000_SR3
    - Modified IS-2000 spreading rate 3 direct spread filter.

  AGESG_VAL_CDMA_STANDARD_FILTER_RECTANGLE 
    - One-symbol wide rectangle filter

  AGESG_VAL_CDMA_STANDARD_FILTER_WCDMA
    - 0.22 Nyquist filter optimized for ACP

  AGESG_VAL_CDMA_STANDARD_FILTER_UN32_GSM
    - UN3/4 delay compatible, fixed 0.300 BbT, GSM Gaussian
  
  AGESG_VAL_CDMA_STANDARD_FILTER_APCO25_C4FM
    - APCO 25 specified C4FM filter.

  AGESG_VAL_CDMA_STANDARD_FILTER_USER_FILE
    - User pre-defined FIR filter
Select a pre-defined FIR filter stored in the instrument's memory. The name of the FIR filter file to use is defined in the User File parameter in this function.

Default Value:  AGESG_VAL_CDMA_STANDARD_FILTER_IS95_EQ
     �    Select the FIR filter's Alpha parameter when the filter type selected is either Root Nyquist or Nyquist.

Valid Range:  0.000 through 1.000

Default Value:  0.500 for IS-95 and CDMA2000
                0.220 for W-CDMA and W-CDMA 3GPP     �    Select the bandwidth-multiplied-by-bit time product (BbT) filter parameter when the filter type selected is Gaussian.

Valid Range: 0.000 through 1.000

Default Value: 0.500    �    Select the FIR filter optimization for either error vector magnitude (EVM) or adjacent channel power (ACP). The EVM selection provides the most ideal passband. The ACP selection improves the stopband rejection. This selection only applies to the Root Nyquist or Nyquist FIR filters.

Valid Values:
  AGESG_VAL_CDMA_OPTIMIZE_FIR_EVM
      - error vector magnitude optimization

  AGESG_VAL_CDMA_OPTIMIZE_FIR_ACP
      - adjacent channel power optimization

Default value: AGESG_VAL_CDMA_OPTIMIZE_FIR_EVM     p    Select the name of the FIR filter file in the instrument's memory to load as the pre-modulation filter to use.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    j ,   � �    Select                           ( , � �  �    Alpha Filter                     (� ,| �  �    BbT Filter                       )� {   � �    Optimize FIR                     +� { � �  �    User File                        ,)#����  �    Status                           2~, 
  �  �    Instrument Handle                           �Root Nyquist AGESG_VAL_CDMA_STANDARD_FILTER_ROOT_NYQUIST Nyquist AGESG_VAL_CDMA_STANDARD_FILTER_NYQUIST Gaussian AGESG_VAL_CDMA_STANDARD_FILTER_GAUSSIAN IS-95 AGESG_VAL_CDMA_STANDARD_FILTER_IS95 IS-95 w/EQ AGESG_VAL_CDMA_STANDARD_FILTER_IS95_EQ IS-95 Mod AGESG_VAL_CDMA_STANDARD_FILTER_IS95_MODULATION IS-95 Mod w/EQ AGESG_VAL_CDMA_STANDARD_FILTER_IS95_MODULATION_EQ IS-2000 SR3 DS AGESG_VAL_CDMA_STANDARD_FILTER_IS2000_SR3 Rectangle AGESG_VAL_CDMA_STANDARD_FILTER_RECTANGLE WCDMA AGESG_VAL_CDMA_STANDARD_FILTER_WCDMA UN3/4 GSM Gaussian   AGESG_VAL_CDMA_STANDARD_FILTER_UN32_GSM APCO 25 C4FM AGESG_VAL_CDMA_STANDARD_FILTER_APCO25_C4FM User FIR AGESG_VAL_CDMA_STANDARD_FILTER_USER_FILE    0.500    0.500               HEVM AGESG_VAL_CDMA_OPTIMIZE_FIR_EVM ACP AGESG_VAL_CDMA_OPTIMIZE_FIR_ACP    ""    	               G    This function is used to configure the CDMA waveform trigger system.      �    Select the arming (VI_TRUE) or disarming (VI_FALSE) of the external trigger delay.

Valid Values:
   VI_TRUE (1)  - Enables external trigger delay
   VI_FALSE (0) - Disables external trigger delay

Default Value:  VI_FALSE (0)    �    Set the external trigger delay. External trigger delay may be adjusted to trigger a CDMA waveform at a specified length of time after an external trigger signal has been received at the PATTERN TRIG IN connector. The range of values allowed is 2.0 microseconds through 3600 seconds.

The external trigger delay will only be set if the External Delay Enabled parameter in this function is enabled (VI_TRUE).
The driver sets the AGESG_ATTR_CDMA_EXTERNAL_DELAY_TIME to this value.

Valid Range:
   2.0 microseconds through 3600.0 seconds

Valid Range for Agilent 4438C:
  10.0 nanoseconds through 40.0 seconds

Default Value: 2.0 miliseconds        Set the operating state of the CDMA re-trigger mode. When set to On (VI_TRUE), if a trigger occurs while a waveform is playing, the waveform will re-trigger at the end and play one more time. The re-triggers do not accumulate. If several triggers are received during a waveform, it will only be replayed once. When set to Off (VI-FALSE), if a trigger occurs while a waveform is playing, it is ignored.

Valid Values:
   VI_TRUE (1)  - Enables re-trigger mode
   VI_FALSE (0) - Disables re-trigger mode

Default Value:  VI_TRUE (1)        Set the gated CDMA waveform trigger mode active state to either High or Low. Gate active low will output the CDMA waveform while the signal level is in a low state at the PATTERN TRIG IN connector. Gate active high will output the CDMA waveform while the signal level is in a high state at the PATTERN TRIG IN connector.

Valid Values:
   AGESG_VAL_CDMA_TRIGGER_GATE_ACTIVE_LOW  - low state mode
   AGESG_VAL_CDMA_TRIGGER_GATE_ACTIVE_HIGH - high state mode

Default Value:  AGESG_VAL_CDMA_TRIGGER_GATE_ACTIVE_HIGH    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None   8. 2 R �       External Delay Enabled           9 5 � �  �    External Delay Time              ;� 2� �       Retrigger Mode Enabled           =� ~  � �    Trigger Gate Active              ?�#����  �    Status                           F, 
  �  �    Instrument Handle                  On VI_TRUE Off VI_FALSE    2000e-3   On VI_TRUE Off VI_FALSE              XLow AGESG_VAL_CDMA_TRIGGER_GATE_ACTIVE_LOW High AGESG_VAL_CDMA_TRIGGER_GATE_ACTIVE_HIGH    	               7    This function is used to configure the CDMA clipping.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None        Select either IJQ or IORQ as the clipping type. If you select IJQ, the combined I and Q waveform will be clipped (circular clipping). If you select IORQ, the I and Q components of the waveform are clipped independently (rectangular clipping). In this case, you can clip I and Q to different levels.
The driver sets the AGESG_ATTR_CDMA_CLIPPING_TYPE to this value.

Valid Values:
   AGESG_VAL_CDMA_CLIPPING_TYPE_IJQ  - |I + jQ| type
   AGESG_VAL_CDMA_CLIPPING_TYPE_IORQ - |I|, |Q| type

Default Value: AGESG_VAL_CDMA_CLIPPING_TYPE_IJQ        Set clip (limit) the modulation level of the combined I and Q waveform to a percentage of full scale. A level of 100.0% equates to no clipping.
The driver sets the AGESG_ATTR_CDMA_CLIPPING_LEVEL_IJQ to this value.

Valid Range: 10.0 - 100.0 percentage

Default Value: 100.0 percentage        Set clip (limit) the modulation level of the waveform�s I component to a percentage of full scale. A level of 100.0% equates to no clipping.
The driver sets the AGESG_ATTR_CDMA_CLIPPING_LEVEL_I to this value.

Valid Range: 10.0 - 100.0 percentage

Default Value: 100.0 percentage        Set clip (limit) the modulation level of the waveform�s Q component to a percentage of full scale. A level of 100.0% equates to no clipping.
The driver sets the AGESG_ATTR_CDMA_CLIPPING_LEVEL_Q to this value.

Valid Range: 10.0 - 100.0 percentage

Default Value: 100.0 percentage    T    Select whether you want the waveform to be clipped before (PRE)
or after (POST) FIR filtering.
The driver sets the AGESG_ATTR_CDMA_CLIPPING_FIR_FILTER to this value.

Valid Values:
   AGESG_VAL_CDMA_CLIPPING_FIR_FILTER_PRE  - before
   AGESG_VAL_CDMA_CLIPPING_FIR_FILTER_POST - after

Default Value: AGESG_VAL_CDMA_CLIPPING_FIR_FILTER_PRE   I#����  �    Status                           O[, 
  �  �    Instrument Handle                P /  � �    Type                             R- / � �  �    Level | I + j Q |                SS /| �  �    Level | I |                      Tt v  �  �    Level | Q |                      U� v � � �    FIR Filter                         	                          RI + j Q AGESG_VAL_CDMA_CLIPPING_TYPE_IJQ I or Q AGESG_VAL_CDMA_CLIPPING_TYPE_IORQ    100.0    100.0    100.0               \Before AGESG_VAL_CDMA_CLIPPING_FIR_FILTER_PRE After AGESG_VAL_CDMA_CLIPPING_FIR_FILTER_POST    �    This function is used to define the Multi-Channel CDMA Personality type of CDMA or Multi-carrier CDMA channelization required for the user application.    
�    Select the CDMA or Multi-carrier CDMA channelization type.

Valid Values:

AGESG_VAL_CDMA_SELECTED_CHANNEL_PILOT
 - CDMA Pilot Channel setup
This pilot channel carries pure  short code, with no additional information content. It must be present in every station because it is both a demodulation reference for the mobile receivers and for handoff level measurements. All stations use the same short code and therefore have the same pilot waveform. The pilot waveforms are only distinguished from one another by the variations in the PN offset. 

AGESG_VAL_CDMA_SELECTED_CHANNEL_9CHFWD
 - CDMA Forward 9 Channel setup.
The signal generator will transmit a 9 channel CDMA signal for the forward transmission (base-to-mobile communication direction). Channel 1 is a pilot channel, channel 2 is a paging channel, channels 3 through 8 are traffic channels, and channel 9 is a sync channel. (These channels are not equivalent to the Walsh code number.)

AGESG_VAL_CDMA_SELECTED_CHANNEL_32CHFWD
 - CDMA Forward 32 Channel setup
The signal generator will transmit a 32 channel CDMA signal for the forward transmission (base-to-mobile communication direction). Channel 1 is a pilot channel, channel 2 is a paging channel, channels 3 through 26 and channels 28 through 32 are traffic channels, and channel 27 is a sync channel. (These channels are not equivalent to the Walsh code number.)

AGESG_VAL_CDMA_SELECTED_CHANNEL_64CHFWD
 - CDMA Forward 64 Channel setup
The signal generator will transmit a 64 channel CDMA signal for the forward transmission (base-to-mobile communication direction). Channel 1 is a pilot channel, channel 2 through 8 are paging channels, channels 9 through 32 and channels 34 through 64 are traffic channels, and channel 33 is a sync channel. (These channels are not equivalent to the Walsh code number.)

AGESG_VAL_CDMA_SELECTED_CHANNEL_REVERSE
 - CDMA Reverse traffic channel setup

AGESG_VAL_CDMA_SELECTED_CHANNEL_CUSTOM_STATE
 - Custom Single-carrier CDMA setup
Use a custom single-carrier CDMA setup that has been previous defined and stored as a file in the instrument's memory. Use the CDMACustomUserFile parameter in this function to specify the name of the stored CDMA file.

AGESG_VAL_CDMA_SELECTED_CHANNEL_3_CARRIERS
 - 3 Carriers multi-carrier predefined setup

AGESG_VAL_CDMA_SELECTED_CHANNEL_4_CARRIERS
 - 4 Carriers multi-carrier predefined setup

AGESG_VAL_CDMA_SELECTED_CHANNEL_CUSTOM_CARRIER
 - Custom Multi-carrier CDMA setup
Use a custom multi-carrier CDMA setup that has been previous defined and stored as a file in the instrument's memory. Use the CDMACustomUserFile parameter in this function to specify the name of the stored CDMA file.

Default Value:  AGESG_VAL_CDMA_SELECTED_CHANNEL_9CHFWD     �    Select the single-carrier or multi-carrier CDMA setup file for Channel Select parameter types equal to AGESG_VAL_CDMA_SELECTED_CHANNEL_CUSTOM_STATE or AGESG_VAL_CDMA_SELECTED_CHANNEL_CUSTOM_CARRIER.

Default Value: ""    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None   Y� 3 ' � �    Channel Select                   d� 3 � �  �    Custom User File                 e�#����  �    Status                           k�, 
  �  �    Instrument Handle                         	  �Pilot AGESG_VAL_CDMA_SELECTED_CHANNEL_PILOT 9 Ch Fwd  AGESG_VAL_CDMA_SELECTED_CHANNEL_9CHFWD 32 Ch Fwd AGESG_VAL_CDMA_SELECTED_CHANNEL_32CHFWD 64 Ch Fwd AGESG_VAL_CDMA_SELECTED_CHANNEL_64CHFWD Reverse AGESG_VAL_CDMA_SELECTED_CHANNEL_REVERSE Custom CDMA State AGESG_VAL_CDMA_SELECTED_CHANNEL_CUSTOM_STATE 3 Carriers AGESG_VAL_CDMA_SELECTED_CHANNEL_3_CARRIERS 4 Carriers AGESG_VAL_CDMA_SELECTED_CHANNEL_4_CARRIERS Custom CDMA Carrier AGESG_VAL_CDMA_SELECTED_CHANNEL_CUSTOM_CARRIER    ""    	               v    This function is used to define Multi-Channel CDMA Personality signal parameters for the selected CDMA channel type.        Set the CDMA chip rate.

Valid Range: 
   10.0 cps through 20.0 Mcps

Valid Range for Agilent 4438c:
   10.0 cps through 8.0 Mcps

Default Value:  1.228800 Mcps

Note:
 The maximum chip rate is the smaller of the following two values: 

20 Mcps
40 Mcps/Oversample Ratio        Set the CDMA waveform length (in short codes).

Valid Range:
  1 through 16 short codes.

Valid Range for Agilent 4438c:
  1 through 6 short codes.

Default Value: 1

Note:
 The maximum waveform length is the smaller of the following two values: 

16
32/Oversample Ratio    �    Set the oversample ratio (number of filter taps per symbol) for the CDMA modulation. Using larger oversample ratios results in more completely filtered images but also uses up more waveform memory.  The upper limit of the oversample ration will be adjusted by the instrument based on the waveform length and chip rate.

Valid Range: 2 through 8

Default Value: 5

Note:
 The maximum oversample ration is the smaller of the following three values: 

40 Mcps/Chip Rate
8
32/Waveform Length    �    Select the arbitrary waveform generator reference source as either internal or external. If external is selected then a signal must be applied to the BASEBAND GEN REF IN connector.

Valid Values:
   AGESG_VAL_ARB_REFERENCE_INTERNAL
     - internal arbitrary waveform generator reference source

   AGESG_VAL_ARB_REFERENCE_EXTERNAL
     - external BASEBAND GEN REF IN connector source

Default Value:  AGESG_VAL_ARB_REFERENCE_INTERNAL    l    Select the arbitrary waveform generator reference frequency when the reference source is set to external (by the ARB Reference parameter in this function).
The driver sets the AGESG_ATTR_ARB_REFERENCE_FREQUENCY to this value.

Valid Range:
  250.0 kHz through 20.0 MHz

Valid Range for Agilent 4438C:
  250.0 kHz through 100.0 MHz

Default Value: 10.0000000 MHz.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Specifies the cut-off frequency of the low pass filter. The waveform is filtered before output with this filter for antialiasing. The filter frequency normally is lower than the clock frequency.
The driver sets the AGESG_ATTR_ARB_FILTER_FREQUENCY to this value.

Units: Hertz

Valid Value:
    AGESG_VAL_ARB_FILTER_FREQUENCY_THROUGH  - Through
    AGESG_VAL_ARB_FILTER_FREQUENCY_250_KHZ  - 250.0 kHz
    AGESG_VAL_ARB_FILTER_FREQUENCY_2_5_MHZ  -   2.5 MHz
    AGESG_VAL_ARB_FILTER_FREQUENCY_8_MHZ    -   8.0 MHz

Valid Value  for Agilent E4438C:
    AGESG_VAL_ARB_FILTER_FREQUENCY_THROUGH  - Through

Default Value:  AGESG_VAL_ARB_FILTER_FREQUENCY_2_5_MHZ   o� 0  �  �    Chip Rate                        q 0p � �    Waveform Length                  r% {  � �    Oversample Ratio                 t | � � �    ARB Reference                    u� |w �  �    Reference Frequency              wE#����  �    Status                           }�, 
  �  �    Instrument Handle                ~M 0 � �  �    Filter Frequency                   	1.2288E6    1    5              TExternal AGESG_VAL_ARB_REFERENCE_EXTERNAL Internal AGESG_VAL_ARB_REFERENCE_INTERNAL    10e6    	               'AGESG_VAL_ARB_FILTER_FREQUENCY_2_5_MHZ    g    This function is used to select a W-CDMA channel configuration for forward and reverse link channels.    U    Select the W-CDMA or Multi-carrier W-CDMA forward or reverse link channel type.

Valid Values:

   AGESG_VAL_WCDMA_SELECT_FORWARD_DPCH1
      - a single DPCH forward link channel

   AGESG_VAL_WCDMA_SELECT_FORWARD_DPCH3
      - a three DPCH forward link channel

   AGESG_VAL_WCDMA_SELECT_FORWARD_PERCH
      - a single Perch forward link channel

   AGESG_VAL_WCDMA_SELECT_FORWARD_PDPCH1
      - a single Perch  plus one DPCH forward link channel

   AGESG_VAL_WCDMA_SELECT_FORWARD_PDPCH3
      - a single Perch plus three DPCH forward link channels

   AGESG_VAL_WCDMA_SELECT_FORWARD_PDPCH50
      - a single Perch plus fifty DPCH forward link channels

   AGESG_VAL_WCDMA_SELECT_REVERSE_DPCCH
      - a single DPCCH reverse link channel

   AGESG_VAL_WCDMA_SELECT_REVERSE_DDPDCH1
      - a single DPCCH plus one DPDCH reverse link channel

   AGESG_VAL_WCDMA_SELECT_REVERSE_DDPDCH2
      - a single DPCCH plus two DPDCH reverse link channels

   AGESG_VAL_WCDMA_SELECT_REVERSE_DDPDCH3
      - a single DPCCH plus three DPDCH reverse link channels

   AGESG_VAL_WCDMA_SELECT_FORWARD_CAR2
      - two Perch channel forward carriers with a power level of 0.00 dB, the first with a -7.25 MHz frequency offset, the second with a +7.25 MHz frequency offset.

   AGESG_VAL_WCDMA_SELECT_FORWARD_CAR3
      - three Perch channel   forward carriers with a power level of 0.00 dB, the first with a -5.00 MHz frequency offset, the second with no offset, and the third with a +5.00 MHz frequency offset.

   AGESG_VAL_WCDMA_SELECT_FORWARD_CAR4
      - four Perch channel forward carriers with a power level of 0.00 dB, the first with a -7.50 MHz frequency offset, the second with -2.50 MHz offset, the third with a +2.50 MHz frequency offset, and the fourth with a +7.50 MHz frequency offset.

   AGESG_VAL_WCDMA_SELECT_FORWARD_CUSTOM
      - Custom Single-carrier W-CDMA forward link setup

   AGESG_VAL_WCDMA_SELECT_REVERSE_CUSTOM
      - Custom Single-carrier W-CDMA reverse link setup

   AGESG_VAL_WCDMA_SELECT_FORWARD_MULTI_CUSTOM
      - Custom Multi-carrier W-CDMA forward setup
 
Default Value:  AGESG_VAL_WCDMA_SELECT_FORWARD_DPCH1    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     ~    Select the single-carrier (FWCD or RWCD file type) or multi-carrier (MFWC file type) W-CDMA file to load.

Default Value: ""   �� <   � �    WCDMA Select                     �#����  �    Status                           �j, 
  �  �    Instrument Handle                � < � �  �    Custom User File                             �Forward 1 DPCH AGESG_VAL_WCDMA_SELECT_FORWARD_DPCH1 Forward 3 DPCH AGESG_VAL_WCDMA_SELECT_FORWARD_DPCH3 Forward 1 Perch AGESG_VAL_WCDMA_SELECT_FORWARD_PERCH Forward 1 Perch + 1 DPCH AGESG_VAL_WCDMA_SELECT_FORWARD_PDPCH1 Forward 1 Perch + 3 DPCH AGESG_VAL_WCDMA_SELECT_FORWARD_PDPCH3 Forward 1 Perch + 50 DPCH AGESG_VAL_WCDMA_SELECT_FORWARD_PDPCH50 Reverse 1 DPCCH AGESG_VAL_WCDMA_SELECT_REVERSE_DPCCH Reverse 1 DPCCH + 1 DPDCH AGESG_VAL_WCDMA_SELECT_REVERSE_DDPDCH1 Reverse 1 DPCCH + 2 DPDCH AGESG_VAL_WCDMA_SELECT_REVERSE_DDPDCH2 Reverse 1 DPCCH + 3 DPDCH AGESG_VAL_WCDMA_SELECT_REVERSE_DDPDCH3 Forward 2 Perch Multi Carriers AGESG_VAL_WCDMA_SELECT_FORWARD_CAR2 Forward 3 Perch Multi Carriers AGESG_VAL_WCDMA_SELECT_FORWARD_CAR3 Forward  4  Perch  Multi carriers AGESG_VAL_WCDMA_SELECT_FORWARD_CAR4 Forward Custom File AGESG_VAL_WCDMA_SELECT_FORWARD_CUSTOM Reverse Custom File AGESG_VAL_WCDMA_SELECT_REVERSE_CUSTOM Forward Milti Carriers Custom File AGESG_VAL_WCDMA_SELECT_FORWARD_MULTI_CUSTOM    	               ""   t    This function is used to configure the W-CDMA single forward channel chip rate, TFCI field state, and the code domain power levels.

This function should only be used after a single carrier forward channel is selected by the agesg_SelectWCDMAChannel function. These instrument settings are reset each time a new single carrier forward channel is selected or configured.
    $    Select the W-CDMA forward channel chip rate.

Valid Values:
   AGESG_VAL_WCDMA_STANDARD_CHIP_RATE_4096  -  4.096 Mcps
   AGESG_VAL_WCDMA_STANDARD_CHIP_RATE_8192  -  8.192 Mcps
   AGESG_VAL_WCDMA_STANDARD_CHIP_RATE_16384 - 16.384 Mcps

Default Value:  AGESG_VAL_WCDMA_STANDARD_CHIP_RATE_4096    q    Set the W-CDMA forward channel power levels of the current channel to No Change, Equal or Scale. 

Valid Values:
AGESG_VAL_WCDMA_STANDARD_CODE_DOMAIN_NOCHANGE
  - no change is made to the channel power levels.

AGESG_VAL_WCDMA_STANDARD_CODE_DOMAIN_EQUAL
  - sets the channel power levels so that all channels are of equal energy per bit and the total power equals 0 dBm.

AGESG_VAL_WCDMA_STANDARD_CODE_DOMAIN_SCALE
  - scales all of the current channel powers so that the total power equals 0 dB while keeping the previous power ratios between the individual 

Default Value:  AGESG_VAL_WCDMA_STANDARD_CODE_DOMAIN_NOCHANGE
     �    Set the operating state of the forward channel TFCI (Transport Format Combination Indicator) field On or Off.

Valid Values:
   VI_TRUE (1)  - Enables forward channel TFCI
   VI_FALSE (0) - Disables forward channel TFCI

Default Value:  VI_TRUE (1)    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None   �� = # � �    Chip Rate                        �' =h � �    Code Domain                      �� : � �       TFCI Field Enabled               ��#����  �    Status                           ��, 
  �  �    Instrument Handle                             �4.096 Mcps AGESG_VAL_WCDMA_STANDARD_CHIP_RATE_4096 8.192 Mcps AGESG_VAL_WCDMA_STANDARD_CHIP_RATE_8192 16.384 Mcps AGESG_VAL_WCDMA_STANDARD_CHIP_RATE_16384               �No Change AGESG_VAL_WCDMA_STANDARD_CODE_DOMAIN_NOCHANGE Equal Energy AGESG_VAL_WCDMA_STANDARD_CODE_DOMAIN_EQUAL Scale to 0dB AGESG_VAL_WCDMA_STANDARD_CODE_DOMAIN_SCALE   On VI_TRUE Off VI_FALSE    	              �    This function is used to configure the W-CDMA single reverse channel chip rate, TFCI field state, scramble codes, and the secondary DPDCH channel to I or Q.

This function should only be used after a single carrier reverse channel is selected by the agesg_SelectWCDMAChannel function. These instrument settings are reset each time a new single carrier reverse channel is selected or configured.
     �    Set the W-CDMA reverse channel second DPDCH channel to I or Q. 

Valid Values:
  AGESG_VAL_WCDMA_STANDARD_SECOND_DPDCH_I
  AGESG_VAL_WCDMA_STANDARD_SECOND_DPDCH_Q

Default Value: AGESG_VAL_WCDMA_STANDARD_SECOND_DPDCH_Q     �    Sets the 41-bit reverse channel scramble code.

Valid Range:
   "00000000000" through "1FFFFFFFFFF" (hexadecimal value)

Default Value:  "1" (hexadecimal)    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    $    Select the W-CDMA reverse channel chip rate.

Valid Values:
   AGESG_VAL_WCDMA_STANDARD_CHIP_RATE_4096  -  4.096 Mcps
   AGESG_VAL_WCDMA_STANDARD_CHIP_RATE_8192  -  8.192 Mcps
   AGESG_VAL_WCDMA_STANDARD_CHIP_RATE_16384 - 16.384 Mcps

Default Value:  AGESG_VAL_WCDMA_STANDARD_CHIP_RATE_4096     �    Set the operating state of the reverse channel TFCI (Transport Format Combination Indicator) field On or Off.

Valid Values:
   VI_TRUE (1)  - Enables reverse channel TFCI
   VI_FALSE (0) - Disables reverse channel TFCI

Default Value:  VI_TRUE (1)   �� �  � �    Second DPDCH                     �� 8d �  �    Scramble Code                    �\#����  �    Status                           ��, 
  �  �    Instrument Handle                �d 8  � �    Chip Rate                        �� 5 � �       TFCI Field Enabled                           dI Channel AGESG_VAL_WCDMA_STANDARD_SECOND_DPDCH_I Q Channel AGESG_VAL_WCDMA_STANDARD_SECOND_DPDCH_Q    "1"    	                          �4.096 Mcps AGESG_VAL_WCDMA_STANDARD_CHIP_RATE_4096 8.192 Mcps AGESG_VAL_WCDMA_STANDARD_CHIP_RATE_8192 16.384 Mcps AGESG_VAL_WCDMA_STANDARD_CHIP_RATE_16384   On VI_TRUE Off VI_FALSE    �    This function is used to define W-CDMA signal parameters for the single channel W-CDMA channel type selected by the agesg_SelectWCDMAChannel function.     �    Select the I/Q outputs to be normal or inverted.

Valid Values:
  AGESG_VAL_WCDMA_STANDARD_IQ_MAPPING_NORMAL
  AGESG_VAL_WCDMA_STANDARD_IQ_MAPPING_INVERT

Default Value:  AGESG_VAL_WCDMA_STANDARD_IQ_MAPPING_NORMAL    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Specifies the cut-off frequency of the low pass filter. The waveform is filtered before output with this filter for antialiasing. The filter frequency normally is lower than the clock frequency.
The driver sets the AGESG_ATTR_ARB_FILTER_FREQUENCY to this value.

Units: Hertz

Valid Value:
    AGESG_VAL_ARB_FILTER_FREQUENCY_THROUGH  - Through
    AGESG_VAL_ARB_FILTER_FREQUENCY_250_KHZ  - 250.0 kHz
    AGESG_VAL_ARB_FILTER_FREQUENCY_2_5_MHZ  -   2.5 MHz
    AGESG_VAL_ARB_FILTER_FREQUENCY_8_MHZ    -   8.0 MHz

Valid Value  for Agilent E4438C:
    AGESG_VAL_ARB_FILTER_FREQUENCY_THROUGH  - Through

Default Value:  AGESG_VAL_ARB_FILTER_FREQUENCY_2_5_MHZ    �    Select the arbitrary waveform generator reference source as either internal or external. If external is selected then a signal must be applied to the BASEBAND GEN REF IN connector.

Valid Values:
   AGESG_VAL_ARB_REFERENCE_INTERNAL
     - internal arbitrary waveform generator reference source

   AGESG_VAL_ARB_REFERENCE_EXTERNAL
     - external BASEBAND GEN REF IN connector source

Default Value:  AGESG_VAL_ARB_REFERENCE_INTERNAL    l    Select the arbitrary waveform generator reference frequency when the reference source is set to external (by the ARB Reference parameter in this function).
The driver sets the AGESG_ATTR_ARB_REFERENCE_FREQUENCY to this value.

Valid Range:
  250.0 kHz through 20.0 MHz

Valid Range for Agilent 4438C:
  250.0 kHz through 100.0 MHz

Default Value: 10.0000000 MHz.   �� u  � �    IQ Mapping                       ��#����  �    Status                           ��, 
  �  �    Instrument Handle                �� 4  �  �    Filter Frequency                 �? 4 � � �    ARB Reference                    �� 4z �  �    Reference Frequency                           dNormal AGESG_VAL_WCDMA_STANDARD_IQ_MAPPING_NORMAL Invert AGESG_VAL_WCDMA_STANDARD_IQ_MAPPING_INVERT    	               'AGESG_VAL_ARB_FILTER_FREQUENCY_2_5_MHZ              TExternal AGESG_VAL_ARB_REFERENCE_EXTERNAL Internal AGESG_VAL_ARB_REFERENCE_INTERNAL    10e6    d    This function is used to select a W-CDMA 3GPP channel configuration for up and down link channels.    
�    Select the W-CDMA or Multi-carrier W-CDMA forward or reverse link channel type.

Valid Values:

   AGESG_VAL_WCDMA_SELECT_DOWN_DPCH1
      - a single DPCH downlink channel

   AGESG_VAL_WCDMA_SELECT_DOWN_DPCH3
      - a three DPCH downlink channel

   AGESG_VAL_WCDMA_SELECT_DOWN_PSCH
      - a single PCCPCH plus SCH downlink channel

   AGESG_VAL_WCDMA_SELECT_DOWN_PSCHDPCH1
      - a single PCCPCH plus SCH plus one DPCH downlink channel

   AGESG_VAL_WCDMA_SELECT_DOWN_PSCHDPCH3
      - a single PCCPCH plus SCH plus three DPCH downlink channel

   AGESG_VAL_WCDMA_SELECT_DOWN_MODEL1_DPCH16
      - a test model1 with 16 DPCH downlink channels

   AGESG_VAL_WCDMA_SELECT_DOWN_MODEL1_DPCH32
      - a test model1 with 32 DPCH downlink channels

   AGESG_VAL_WCDMA_SELECT_DOWN_MODEL1_DPCH64
      - a test model1 with 64 DPCH downlink channels

   AGESG_VAL_WCDMA_SELECT_DOWN_MODEL2
      - a test model2 downlink channels

   AGESG_VAL_WCDMA_SELECT_DOWN_MODEL3_DPCH16
      - a test model3 with 16 DPCH downlink channels

   AGESG_VAL_WCDMA_SELECT_DOWN_MODEL3_DPCH32
      - a test model3 with 32 DPCH downlink channels

   AGESG_VAL_WCDMA_SELECT_DOWN_MODEL4
      - a test model4 downlink channels

   AGESG_VAL_WCDMA_SELECT_UP_DPCCH
      - a single DPCCH uplink channel

   AGESG_VAL_WCDMA_SELECT_UP_DPCCH_DPDCH1
      - a DPCCH plus one DPDCH uplink channel

   AGESG_VAL_WCDMA_SELECT_UP_DPCCH_DPDCH2
      - a DPCCH plus two DPDCH uplink channels

   AGESG_VAL_WCDMA_SELECT_UP_DPCCH_DPDCH3
      - a DPCCH plus three DPDCH uplink channels

   AGESG_VAL_WCDMA_SELECT_UP_DPCCH_DPDCH4
      - a DPCCH plus four DPDCH uplink channels

   AGESG_VAL_WCDMA_SELECT_UP_DPCCH_DPDCH5
      - a DPCCH plus five DPDCH uplink channels

   AGESG_VAL_WCDMA_SELECT_DOWN_CAR2
      - two PCCPC + SCH channel downlink carriers with a power level of 0.00 dB, the first with a -7.5 MHz frequency offset, the second with a +7.5 MHz frequency offset.

   AGESG_VAL_WCDMA_SELECT_DOWN_CAR3
      - three PCCPC + SCH channel downlink carriers with a power level of 0.00 dB, the first with a -5.00 MHz frequency offset, the second with no offset, and the third with a +5.00 MHz frequency offset.

   AGESG_VAL_WCDMA_SELECT_DOWN_CAR4
      - four PCCPC + SCH channel downlink carriers with a power level of 0.00 dB, the first with a -7.50 MHz frequency offset, the second with -2.50 MHz offset, the third with a +2.50 MHz frequency offset, and the fourth with a +7.50 MHz frequency offset.

   AGESG_VAL_WCDMA_SELECT_DOWN_CUSTOM
      - Custom Single-carrier W-CDMA downlink setup

   AGESG_VAL_WCDMA_SELECT_UP_CUSTOM
      - Custom Single-carrier W-CDMA uplink setup

   AGESG_VAL_WCDMA_SELECT_DOWN_MULTI_CUSTOM
      - Custom Multi-carrier W-CDMA downlink setup
 
Default Value:  AGESG_VAL_WCDMA_SELECT_DOWN_DPCH1    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     ~    Select the single-carrier (FWCD or RWCD file type) or multi-carrier (MFWC file type) W-CDMA file to load.

Default Value: ""   �0 <   � �    WCDMA Select                     �%#����  �    Status                           �z, 
  �  �    Instrument Handle                �- < � �  �    Custom User File                             �Down 1 DPCH AGESG_VAL_WCDMA_SELECT_DOWN_DPCH1 Down 3 DPCH AGESG_VAL_WCDMA_SELECT_DOWN_DPCH3 Down PCCPCH + SCH AGESG_VAL_WCDMA_SELECT_DOWN_PSCH Down PCCPCH + SCH + 1 DPCH AGESG_VAL_WCDMA_SELECT_DOWN_PSCHDPCH1 Down PCCPCH + SCH + 3 DPCH AGESG_VAL_WCDMA_SELECT_DOWN_PSCHDPCH3 Down Test Model 1 w/16 DPCH AGESG_VAL_WCDMA_SELECT_DOWN_MODEL1_DPCH16 Down Test Model 1 w/32 DPCH AGESG_VAL_WCDMA_SELECT_DOWN_MODEL1_DPCH32 Down Test Model 1 w/64 DPCH AGESG_VAL_WCDMA_SELECT_DOWN_MODEL1_DPCH64 Down Test Model 2 AGESG_VAL_WCDMA_SELECT_DOWN_MODEL2 Down Test Model 3 w/16 DPCH AGESG_VAL_WCDMA_SELECT_DOWN_MODEL3_DPCH16 Down Test Model 3 w/32 DPCH AGESG_VAL_WCDMA_SELECT_DOWN_MODEL3_DPCH32 Down Test Model 4 AGESG_VAL_WCDMA_SELECT_DOWN_MODEL4 Up DPCCH AGESG_VAL_WCDMA_SELECT_UP_DPCCH Up DPCCH + 1 DPDCH AGESG_VAL_WCDMA_SELECT_UP_DPCCH_DPDCH1 Up DPCCH + 2 DPDCH AGESG_VAL_WCDMA_SELECT_UP_DPCCH_DPDCH2 Up DPCCH + 3 DPDCH AGESG_VAL_WCDMA_SELECT_UP_DPCCH_DPDCH3 Up DPCCH + 4 DPDCH AGESG_VAL_WCDMA_SELECT_UP_DPCCH_DPDCH4 Up DPCCH + 5 DPDCH AGESG_VAL_WCDMA_SELECT_UP_DPCCH_DPDCH5 Down PCCPCH + SCH Multi 2 Carriers AGESG_VAL_WCDMA_SELECT_DOWN_CAR2 Down PCCPCH + SCH Multi 3 Carriers AGESG_VAL_WCDMA_SELECT_DOWN_CAR3 Down PCCPCH + SCH Multi 4 Carriers AGESG_VAL_WCDMA_SELECT_DOWN_CAR4 Down Custom AGESG_VAL_WCDMA_SELECT_DOWN_CUSTOM Up Custom AGESG_VAL_WCDMA_SELECT_UP_CUSTOM Down Multi Custom AGESG_VAL_WCDMA_SELECT_DOWN_MULTI_CUSTOM    	               ""   �    This function is used to configure the W-CDMA 3GPP single downlink channel chip rate, TFCI field state, and the code domain power levels.

This function should only be used after a single carrier downlink channel is selected by the agesg_SelectWCDMA3GPPChannel function. These instrument settings are reset each time a new single carrier downlink channel is selected or configured.
         Select the W-CDMA 3GPP downlink channel chip rate.

Valid Range:
   3.456 Mcps through 4.224 Mcps

Default Value:  3.840 Mcps    v    Set the W-CDMA 3GPP downlink channel power levels of the current channel to No Change, Equal or Scale. 

Valid Values:
AGESG_VAL_WCDMA_STANDARD_CODE_DOMAIN_NOCHANGE
  - no change is made to the channel power levels.

AGESG_VAL_WCDMA_STANDARD_CODE_DOMAIN_EQUAL
  - sets the channel power levels so that all channels are of equal energy per bit and the total power equals 0 dBm.

AGESG_VAL_WCDMA_STANDARD_CODE_DOMAIN_SCALE
  - scales all of the current channel powers so that the total power equals 0 dB while keeping the previous power ratios between the individual 

Default Value: AGESG_VAL_WCDMA_STANDARD_CODE_DOMAIN_NOCHANGE
     �    Set the operating state of the downlink channel TFCI (Transport Format Combination Indicator) field On or Off.

Valid Values:
   VI_TRUE (1)  - Enables downlink channel TFCI
   VI_FALSE (0) - Disables downlink channel TFCI

Default Value:  VI_TRUE (1)    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None   � = # � �    Chip Rate                        �@ =h � �    Code Domain                      � : � �       TFCI Field Enabled               ��#����  �    Status                           �, 
  �  �    Instrument Handle                  	3.840e+6               �No Change AGESG_VAL_WCDMA_STANDARD_CODE_DOMAIN_NOCHANGE Equal Energy AGESG_VAL_WCDMA_STANDARD_CODE_DOMAIN_EQUAL Scale to 0dB AGESG_VAL_WCDMA_STANDARD_CODE_DOMAIN_SCALE   On VI_TRUE Off VI_FALSE    	              �    This function is used to configure the W-CDMA 3GPP single uplink channel chip rate, TFCI field state, scramble codes, and the secondary DPDCH channel to I or Q.

This function should only be used after a single carrier uplink channel is selected by the agesg_SelectWCDMA3GPPChannel function. These instrument settings are reset each time a new single carrier uplink channel is selected or configured.
     �    Set the W-CDMA uplink channel second DPDCH channel to I or Q. 

Valid Values:
  AGESG_VAL_WCDMA_TGPP_SECOND_DPDCH_I
  AGESG_VAL_WCDMA_TGPP_SECOND_DPDCH_Q

Default Value: AGESG_VAL_WCDMA_TGPP_SECOND_DPDCH_Q     �    Sets the 24-bit uplink channel scramble code.

Valid Range:
   "000000" through "FFFFFF" (hexadecimal value)

Default Value:  "000000" (hexadecimal)    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Set the operating state of the uplink channel TFCI (Transport Format Combination Indicator) field On or Off.

Valid Values:
   VI_TRUE (1)  - Enables uplink channel TFCI
   VI_FALSE (0) - Disables uplink channel TFCI

Default Value:  VI_TRUE (1)     }    Select the W-CDMA 3GPP uplink channel chip rate.

Valid Range:
   3.456 Mcps through 4.224 Mcps

Default Value:  3.840 Mcps    �    Set the gain unit in the uplink channel. The choices are dB, signaling indexes, or linear ratios. Uplink table power will then be set and read in the gain unit.

Valid Values:
  AGESG_VAL_WCDMA_TGPP_GAIN_UNIT_DB      - dB units
  AGESG_VAL_WCDMA_TGPP_GAIN_UNIT_LINEAR  - linear ratios
  AGESG_VAL_WCDMA_TGPP_GAIN_UNIT_INDEX   - signaling indexes

Default Value: AGESG_VAL_WCDMA_TGPP_GAIN_UNIT_DB   �] �  � �    Second DPDCH                     �4 :d �  �    Scramble Code                    ��#����  �    Status                           �', 
  �  �    Instrument Handle                �� 7 � �       TFCI Field Enabled               �� :  � �    Chip Rate                        �^ � � � �    Gain Unit                                    \I Channel AGESG_VAL_WCDMA_TGPP_SECOND_DPDCH_I Q Channel AGESG_VAL_WCDMA_TGPP_SECOND_DPDCH_Q    	"000000"    	              On VI_TRUE Off VI_FALSE    	3.840e+6               }dB AGESG_VAL_WCDMA_TGPP_GAIN_UNIT_DB Linear AGESG_VAL_WCDMA_TGPP_GAIN_UNIT_LINEAR Index AGESG_VAL_WCDMA_TGPP_GAIN_UNIT_INDEX    �    This function is used to define W-CDMA signal parameters for the single channel W-CDMA channel type selected by the agesg_SelectWCDMA3GPPChannel function.     �    Select the I/Q outputs to be normal or inverted.

Valid Values:
  AGESG_VAL_WCDMA_TGPP_IQ_MAPPING_NORMAL
  AGESG_VAL_WCDMA_TGPP_IQ_MAPPING_INVERT

Default Value:  AGESG_VAL_WCDMA_TGPP_IQ_MAPPING_NORMAL    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Specifies the cut-off frequency of the low pass filter. The waveform is filtered before output with this filter for antialiasing. The filter frequency normally is lower than the clock frequency.
The driver sets the AGESG_ATTR_ARB_FILTER_FREQUENCY to this value.

Units: Hertz

Valid Value:
    AGESG_VAL_ARB_FILTER_FREQUENCY_THROUGH  - Through
    AGESG_VAL_ARB_FILTER_FREQUENCY_250_KHZ  - 250.0 kHz
    AGESG_VAL_ARB_FILTER_FREQUENCY_2_5_MHZ  -   2.5 MHz
    AGESG_VAL_ARB_FILTER_FREQUENCY_8_MHZ    -   8.0 MHz

Valid Value  for Agilent E4438C:
    AGESG_VAL_ARB_FILTER_FREQUENCY_THROUGH  - Through

Default Value:  AGESG_VAL_ARB_FILTER_FREQUENCY_2_5_MHZ    �    Select the arbitrary waveform generator reference source as either internal or external. If external is selected then a signal must be applied to the BASEBAND GEN REF IN connector.

Valid Values:
   AGESG_VAL_ARB_REFERENCE_INTERNAL
     - internal arbitrary waveform generator reference source

   AGESG_VAL_ARB_REFERENCE_EXTERNAL
     - external BASEBAND GEN REF IN connector source

Default Value:  AGESG_VAL_ARB_REFERENCE_INTERNAL    l    Select the arbitrary waveform generator reference frequency when the reference source is set to external (by the ARB Reference parameter in this function).
The driver sets the AGESG_ATTR_ARB_REFERENCE_FREQUENCY to this value.

Valid Range:
  250.0 kHz through 20.0 MHz

Valid Range for Agilent 4438C:
  250.0 kHz through 100.0 MHz

Default Value: 10.0000000 MHz.    D u  � �    IQ Mapping                       #����  �    Status                           l, 
  �  �    Instrument Handle                 4  �  �    Filter Frequency                 
� 4 � � �    ARB Reference                    s 4z �  �    Reference Frequency                           \Normal AGESG_VAL_WCDMA_TGPP_IQ_MAPPING_NORMAL Invert AGESG_VAL_WCDMA_TGPP_IQ_MAPPING_INVERT    	               'AGESG_VAL_ARB_FILTER_FREQUENCY_2_5_MHZ              TExternal AGESG_VAL_ARB_REFERENCE_EXTERNAL Internal AGESG_VAL_ARB_REFERENCE_INTERNAL    10e6    u    This function is used to select a pre-defined CDMA2000 channel configuration for forward and reverse link channels.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     ~    Select the single-carrier (FWCD or RWCD file type) or multi-carrier (MFWC file type) W-CDMA file to load.

Default Value: ""    	{    Select the CDMA2000 or Multi-carrier CDMA2000 forward or reverse link channel type.

Valid Values:

AGESG_VAL_CDMA2000_SELECT_FORWARD_SR1_PILOT
  - forward link Pilot, Spread Rate 1

AGESG_VAL_CDMA2000_SELECT_FORWARD_SR3_DIRECT_PILOT
  - forward link Pilot, Direct Spreading, Spread Rate 3

AGESG_VAL_CDMA2000_SELECT_FORWARD_SR3_MULTICARRIER_PILOT
  - forward link Pilot, Multicarrier Spreading, Spread Rate 3

AGESG_VAL_CDMA2000_SELECT_FORWARD_SR1_9CHANNELS
  - forward link 9 Channel, Spread Rate 1

AGESG_VAL_CDMA2000_SELECT_FORWARD_SR3_DIRECT_9CHANNELS
  - forward link 9 Channel, Direct Spreading, Spread Rate 3

AGESG_VAL_CDMA2000_SELECT_FORWARD_SR3_MULTICARRIER_9CHANNELS
  - forward link 9 Channel, Multicarrier Spreading, Spread Rate 3

AGESG_VAL_CDMA2000_SELECT_REVERSE_SR1_PILOT
  - reverse link Pilot, Spread Rate 1

AGESG_VAL_CDMA2000_SELECT_REVERSE_SR3_PILOT
  - reverse link Pilot, Spread Rate 3

AGESG_VAL_CDMA2000_SELECT_REVERSE_SR1_5CHANNELS
  - reverse link 5 Channel, Spread Rate 1

AGESG_VAL_CDMA2000_SELECT_REVERSE_SR3_5CHANNELS
  - reverse link 5 Channel, Spread Rate 3

AGESG_VAL_CDMA2000_SELECT_REVERSE_SR1_8CHANNELS
  - reverse link 8 Channel, Spread Rate 1

AGESG_VAL_CDMA2000_SELECT_FORWARD_SR3_2CARRIERS
  - forward link a standard 2 carriers setup with a power level of 0.00 dB, spread rate 3, direct spread, 9 channel, the first with a -2.5 MHz frequency offset, the second with a 2.5 MHz frequency offset.

AGESG_VAL_CDMA2000_SELECT_FORWARD_3CARRIERS
  - forward link a standard 3 carriers setup with a power level of 0.00 dB, spread rate 1, direct spread, 9 channel, the first with a -1.25 MHz frequency offset, the second with no offset, and the third with a 1.25 MHz frequency offset.

AGESG_VAL_CDMA2000_SELECT_FORWARD_4CARRIERS
  - forward link a standard 4 carriers setup with a power level of 0.00 dB, spread rate 1, direct spread, 9 channel, the first with a -1.875 MHz frequency offset, the second with a -625kHz frequency offset, the third with a 625 kHz frequency offset, and fourth with a 1.875 MHz frequency offset.

AGESG_VAL_CDMA2000_SELECT_FORWARD_CUSTOM
  - Custom Single-carrier CDMA2000 forward link setup

AGESG_VAL_CDMA2000_SELECT_REVERSE_CUSTOM
  - Custom Single-carrier CDMA2000 reverse link setup

AGESG_VAL_CDMA2000_SELECT_FORWARD_MULTICARRIER_CUSTOM
  - Custom Multi-carrier CDMA2000 forward link setup

Default Value:  AGESG_VAL_CDMA2000_SELECT_FORWARD_SR1_9CHANNELS   �#����  �    Status                           , 
  �  �    Instrument Handle                � = � �  �    Custom User File                 @ =   � �    CDMA2K Select                      	               ""             �Forward Pilot,SR1 AGESG_VAL_CDMA2000_SELECT_FORWARD_SR1_PILOT Forward Pilot,DS,SR3 AGESG_VAL_CDMA2000_SELECT_FORWARD_SR3_DIRECT_PILOT Forward Pilot,MS,SR3 AGESG_VAL_CDMA2000_SELECT_FORWARD_SR3_MULTICARRIER_PILOT Forward 9 Channel ,SR1 AGESG_VAL_CDMA2000_SELECT_FORWARD_SR1_9CHANNELS Forward 9 Channel, DS,SR3 AGESG_VAL_CDMA2000_SELECT_FORWARD_SR3_DIRECT_9CHANNELS Forward  9 Channel, MS,SR3 AGESG_VAL_CDMA2000_SELECT_FORWARD_SR3_MULTICARRIER_9CHANNELS Reverse Pilot,SR1 AGESG_VAL_CDMA2000_SELECT_REVERSE_SR1_PILOT Reverse Pilot,SR3 AGESG_VAL_CDMA2000_SELECT_REVERSE_SR3_PILOT Reverse 5 Channel ,SR1 AGESG_VAL_CDMA2000_SELECT_REVERSE_SR1_5CHANNELS Reverse 5 Channel ,SR3 AGESG_VAL_CDMA2000_SELECT_REVERSE_SR3_5CHANNELS Reverse 8 Channel ,SR1 AGESG_VAL_CDMA2000_SELECT_REVERSE_SR1_8CHANNELS 2 SR3 Carriers AGESG_VAL_CDMA2000_SELECT_FORWARD_SR3_2CARRIERS 3 Carriers AGESG_VAL_CDMA2000_SELECT_FORWARD_3CARRIERS 4 Carriers AGESG_VAL_CDMA2000_SELECT_FORWARD_4CARRIERS Forward Custom AGESG_VAL_CDMA2000_SELECT_FORWARD_CUSTOM Reverse Custom AGESG_VAL_CDMA2000_SELECT_REVERSE_CUSTOM Forward Multicarrier Custom AGESG_VAL_CDMA2000_SELECT_FORWARD_MULTICARRIER_CUSTOM    �    This function is used to define CDMA2000 signal parameters for the CDMA2000 channel type selected by the agesg_SelectWCDMA2000Channel function.    2    Set the CDMA2000 multi-carrier frequency spacing. Cellular band uses 1.23 MHz and PCS bands uses 1.25 MHz.

Valid Values:
AGESG_VAL_CDMA2000_MULTICARIER_SPACING_1_23_MHZ - 1.23 MHz
AGESG_VAL_CDMA2000_MULTICARIER_SPACING_1_25_MHZ - 1.25 MHz

Default Value:  AGESG_VAL_CDMA2000_MULTICARIER_SPACING_1_25_MHZ    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Specifies the cut-off frequency of the low pass filter. The waveform is filtered before output with this filter for antialiasing. The filter frequency normally is lower than the clock frequency.
The driver sets the AGESG_ATTR_ARB_FILTER_FREQUENCY to this value.

Units: Hertz

Valid Value:
    AGESG_VAL_ARB_FILTER_FREQUENCY_THROUGH  - Through
    AGESG_VAL_ARB_FILTER_FREQUENCY_250_KHZ  - 250.0 kHz
    AGESG_VAL_ARB_FILTER_FREQUENCY_2_5_MHZ  -   2.5 MHz
    AGESG_VAL_ARB_FILTER_FREQUENCY_8_MHZ    -   8.0 MHz

Valid Value  for Agilent E4438C:
    AGESG_VAL_ARB_FILTER_FREQUENCY_THROUGH  - Through

Default Value:  AGESG_VAL_ARB_FILTER_FREQUENCY_2_5_MHZ    �    Select the arbitrary waveform generator reference source as either internal or external. If external is selected then a signal must be applied to the BASEBAND GEN REF IN connector.

Valid Values:
   AGESG_VAL_ARB_REFERENCE_INTERNAL
     - internal arbitrary waveform generator reference source

   AGESG_VAL_ARB_REFERENCE_EXTERNAL
     - external BASEBAND GEN REF IN connector source

Default Value:  AGESG_VAL_ARB_REFERENCE_INTERNAL    l    Select the arbitrary waveform generator reference frequency when the reference source is set to external (by the ARB Reference parameter in this function).
The driver sets the AGESG_ATTR_ARB_REFERENCE_FREQUENCY to this value.

Valid Range:
  250.0 kHz through 20.0 MHz

Valid Range for Agilent 4438C:
  250.0 kHz through 100.0 MHz

Default Value: 10.0000000 MHz.     �    Select the I/Q outputs to be normal or inverted.

Valid Values:
  AGESG_VAL_CDMA2000_IQ_MAPPING_NORMAL
  AGESG_VAL_CDMA2000_IQ_MAPPING_INVERT

Default Value:  AGESG_VAL_CDMA2000_IQ_MAPPING_NORMAL   '� �  � �    Multi-carrier Spacing            )#����  �    Status                           /h, 
  �  �    Instrument Handle                0 3  �  �    Filter Frequency                 2� 3 � � �    ARB Reference                    4o 3v �  �    Reference Frequency              5� � � � �    IQ Mapping                         0AGESG_VAL_CDMA2000_MULTICARIER_SPACING_1_25_MHZ    	               'AGESG_VAL_ARB_FILTER_FREQUENCY_2_5_MHZ              TExternal AGESG_VAL_ARB_REFERENCE_EXTERNAL Internal AGESG_VAL_ARB_REFERENCE_INTERNAL    10e6               XNormal AGESG_VAL_CDMA2000_IQ_MAPPING_NORMAL Invert AGESG_VAL_CDMA2000_IQ_MAPPING_INVERT    �    This function returns the specific driver defined TDMA standard name that corresponds to the one-based index that the user specifies.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     Y    The number of bytes in the ViChar array that the user specifies for the Name parameter.     �    A user-allocated buffer into which the driver stores the TDMA standard name.The caller may pass VI_NULL for this parameter if the NameBufferSize parameter is 0.     H    A one-based index that defines which name to return.

Default Value: 1   9�#����  �    Status                           @F,   �  �    Instrument Handle                @� ( � �  �    Name Buffer Size                 AZ (| �  �    Name                             B (  �  �    Index                              	                   	            1   �    This function selects the actual standard used by the instrument. The standard is selected from the list of names queried with the Get TDMA Standard Names function. The coding, mapping, symbol rate or bit clock frequency, filter together with the according filter. parameters, FSK deviation or ASK depth (in case of FSK or ASK modulation) are set as defined in the selected standard.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    W    Specifies the actual standard used by the instrument. The coding, mapping, symbol rate or bit clock frequency, filter together with the according filter. parameters, FSK deviation or ASK depth (in case of FSK or ASK modulation) are set as defined in the selected standard.
The driver sets the AGESG_ATTR_TDMA_SELECTED_STANDARD to this value.   E#����  �    Status                           K`, 
  �  �    Instrument Handle                L 4 � �  �    Name                               	                   1    This function configures the TDMA clock source.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Specifies the source of the clock signal used to generate the digital modulation according to the selected standard.
The driver sets the AGESG_ATTR_TDMA_CLOCK_SOURCE to this value.

Valid Values:
  AGESG_VAL_TDMA_CLOCK_SOURCE_INTERNAL
    - The internal clock generator is used

  AGESG_VAL_TDMA_CLOCK_SOURCE_EXTERNAL
    - A connected external clock generator (bit or symbol clock frequency) is used.

Default Value: AGESG_VAL_TDMA_CLOCK_SOURCE_INTERNAL    s    Type is ignored if Source is set to Internal.
Specifies the type of the external clock signal used to generate the digital modulation. This value is used only if TDMA Clock Source is set to External.
The driver sets the AGESG_ATTR_TDMA_EXTERNAL_CLOCK_TYPE to this value.

Valid Values:
  AGESG_VAL_TDMA_EXTERNAL_CLOCK_TYPE_BIT
    - The external clock frequency is equal to the bit clock frequency of the digital modulation.

  AGESG_VAL_TDMA_EXTERNAL_CLOCK_TYPE_SYMBOL
    - The external clock frequency is equal to the symbol clock frequency of the digital modulation.

Default Value: AGESG_VAL_TDMA_EXTERNAL_CLOCK_TYPE_BIT   N^#����  �    Status                           T�, 
  �  �    Instrument Handle                Uf (  � �    Source                           W6 ( � � �    Type                               	                          \Internal AGESG_VAL_TDMA_CLOCK_SOURCE_INTERNAL External AGESG_VAL_TDMA_CLOCK_SOURCE_EXTERNAL               \Bit AGESG_VAL_TDMA_EXTERNAL_CLOCK_TYPE_BIT Symbol AGESG_VAL_TDMA_EXTERNAL_CLOCK_TYPE_SYMBOL    t    This function configures the TDMA trigger source for starting or synchronising the generation of the frames/slots.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Specifies the source of the trigger signal that starts the frame/slot generation.
The driver sets the AGESG_ATTR_TDMA_TRIGGER_SOURCE to this value.

Valid Values:
  AGESG_VAL_TDMA_TRIGGER_SOURCE_IMMEDIATE
    - The TDMA generator system does not wait for a trigger of any kind, so it is running the frames continuously

  AGESG_VAL_TDMA_TRIGGER_SOURCE_EXTERNAL
    - Each frame is started with an external signal

  AGESG_VAL_TDMA_TRIGGER_SOURCE_SOFTWARE
    - Each frame is started with a software programmable trigger

  AGESG_VAL_TDMA_TRIGGER_SOURCE_TRIGGER_KEY
    - Each frame is started with a soft key TRIGGER on front panel

Default Value: AGESG_VAL_TDMA_TRIGGER_SOURCE_IMMEDIATE
     [�#����  �    Status                           b<, 
  �  �    Instrument Handle                b� 9 � � �    Source                             	                          �Immediate AGESG_VAL_TDMA_TRIGGER_SOURCE_IMMEDIATE External AGESG_VAL_TDMA_TRIGGER_SOURCE_EXTERNAL Software AGESG_VAL_TDMA_TRIGGER_SOURCE_SOFTWARE Trigger Key AGESG_VAL_TDMA_TRIGGER_SOURCE_TRIGGER_KEY    �    This function configures whether the trigger event occurs on the rising or falling edge of the input signal. This setting is used only if the TDMA Trigger Source attribute is set to External.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Specifies whether the trigger event occurs on the rising or falling edge of the input signal.
The driver sets the AGESG_ATTR_TDMA_EXTERNAL_TRIGGER_SLOPE to this value.

Valid Values:
  AGESG_VAL_TDMA_EXTERNAL_TRIGGER_SLOPE_POSITIVE
    - Enables rising edge triggering

  AGESG_VAL_TDMA_EXTERNAL_TRIGGER_SLOPE_NEGATIVE
    - Enables falling edge triggering

Default Value: AGESG_VAL_TDMA_EXTERNAL_TRIGGER_SLOPE_POSITIVE   g�#����  �    Status                           nO, 
  �  �    Instrument Handle                o : � � �    Slope                              	                          pPositive AGESG_VAL_TDMA_EXTERNAL_TRIGGER_SLOPE_POSITIVE Negative AGESG_VAL_TDMA_EXTERNAL_TRIGGER_SLOPE_NEGATIVE    �    This function returns the specific driver defined TDMA frame name that corresponds to the one-based index that the user specifies.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     Y    The number of bytes in the ViChar array that the user specifies for the Name parameter.     �    A user-allocated buffer into which the driver stores the TDMA frame name.The caller may pass VI_NULL for this parameter if the NameBufferSize parameter is 0.     H    A one-based index that defines which name to return.

Default Value: 1   ri#����  �    Status                           x�, 
  �  �    Instrument Handle                yq ( � �  �    Name Buffer Size                 y� (| �  �    Name                             zy (  �  �    Index                              	                   	            1    �    This function selects the frame used for the framed digital modulation. The frame is selected from the list of names queried with the Get TDMA Framed Names function.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Specifies the actual frame used by the instrument. It is selected from the list queried with the function Get TDMA Frame Names.
The driver sets the AGESG_ATTR_TDMA_SELECTED_FRAME to this value.

Note:
  Instrument support only one frame.   |�#����  �    Status                           ��, 
  �  �    Instrument Handle                �� 4 � �  �    Name                               	                   �    This function enables and disables the burst function. Activating the burst transmits framed data. This means that you will be bursting the timeslots that are on and there will be no RF carrier during the off timeslots.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Enables and disables the burst function. Activating the burst transmits framed data. This means that you will be bursting the timeslots that are on and there will be no RF carrier during the off timeslots.

The driver sets the AGESG_ATTR_TDMA_BURST_ENABLED to this value.

Valid Values:

   VI_TRUE (1)  - Enables burst
   VI_FALSE (0) - Disables burst

Default Value:  VI_FALSE (0)   �=#����  �    Status                           ��, 
  �  �    Instrument Handle                �E @ �  �    Enabled                            	               On VI_TRUE Off VI_FALSE    b    This function is used to configure TDMA standards Digital Modulation Format pattern data format.    �    Select the modulation data source, either internal data generation, custom data, or external data input (I/Q data inputs).

Valid Values:

  AGESG_VAL_TDMA_UNFRAMED_DATA_PN9
      PN9 pseudo-random bit pattern

  AGESG_VAL_TDMA_UNFRAMED_DATA_PN11
      PN11 pseudo-random bit pattern
  
  AGESG_VAL_TDMA_UNFRAMED_DATA_PN15
      PN15 pseudo-random bit pattern
  
  AGESG_VAL_TDMA_UNFRAMED_DATA_PN20
      PN20 pseudo-random bit pattern
  
  AGESG_VAL_TDMA_UNFRAMED_DATA_PN23
      PN23 pseudo-random bit pattern
  
  AGESG_VAL_TDMA_UNFRAMED_DATA_FIX4
      4-bit repeating sequence data pattern

  AGESG_VAL_TDMA_UNFRAMED_DATA_USERFILE
      external data input data pattern

  AGESG_VAL_TDMA_UNFRAMED_DATA_EXTERNAL
      data pattern supplied by external data inputs

  AGESG_VAL_TDMA_UNFRAMED_DATA_P4
      4 1's & 4 0's binary data pattern

  AGESG_VAL_TDMA_UNFRAMED_DATA_P8
      8 1's & 8 0's binary data pattern

  AGESG_VAL_TDMA_UNFRAMED_DATA_P16
      16 1's & 16 0's binary data pattern

  AGESG_VAL_TDMA_UNFRAMED_DATA_P32
      32 1's & 32 0's binary data pattern

  AGESG_VAL_TDMA_UNFRAMED_DATA_P64
      64 1's & 64 0's binary data pattern

Default Value: AGESG_VAL_TDMA_UNFRAMED_DATA_PN23     �    Sets the 4-bit repeating data pattern if "AGESG_VAL_TDMA_UNFRAMED_DATA_FIX4" is selected for the pattern data source.

Default Range:
      0x0 to  0xF (hexadecimal)
  or 0000 to 1111 (binary)

Default Value: 0000 (binary)
                   �    Selects user file name to load from the instrument memory if "AGESG_VAL_TDMA_UNFRAMED_DATA_USERFILE" is selected for the pattern data source.    �    Sets the external trigger delay on or off. When external delay is turned on, the transmission of the triggered data will be delayed after the external trigger event by the number of bits specified by the DECT PatternExtDelayBits parameter in this function.

This parameter will only be used if the trigger source is external.

Valid Values:
  VI_TRUE (1)  - Enabled External Delay
  VI_FALSE (0) - Disabled External Delay

Default Value: VI_FALSE (0)    R    Sets the number of bits for the external trigger delay. When the external delay is enabled, a value greater than 0 will delay the transmission of the triggered data after the external trigger event by the number of bits specified.

Valid Range:
  0 to 65,535 bits

Valid Range for Agilent 4438C:
  0 to 1,048,576 bits

Default Value:  0     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    r    Specifies the source of the trigger signal that starts the frame/slot generation.

Valid Values:
  AGESG_VAL_TDMA_TRIGGER_SOURCE_IMMEDIATE
    - The TDMA generator system does not wait for a trigger of any kind, so it is running the frames continuously

  AGESG_VAL_TDMA_TRIGGER_SOURCE_EXTERNAL
    - Each frame is started with an external signal

  AGESG_VAL_TDMA_TRIGGER_SOURCE_SOFTWARE
    - Each frame is started with a software programmable trigger

  AGESG_VAL_TDMA_TRIGGER_SOURCE_TRIGGER_KEY
    - Each frame is started with a soft key TRIGGER on front panel

Default Value: AGESG_VAL_TDMA_TRIGGER_SOURCE_IMMEDIATE
     � 2  � �    Pattern Data                     �� 2 � � �    Pattern FIX4 Data                �� 2| �  �    Pattern User File                �J y � �       Pattern External Delay Enabled   � || � �    Pattern Ext Delay Bits           �p, 
  �  �    Instrument Handle                �##����  �    Status                           �x |  � �    Trigger Source                              1PN9 AGESG_VAL_TDMA_UNFRAMED_DATA_PN9 PN11 AGESG_VAL_TDMA_UNFRAMED_DATA_PN11 PN15 AGESG_VAL_TDMA_UNFRAMED_DATA_PN15 PN20 AGESG_VAL_TDMA_UNFRAMED_DATA_PN20 PN23 AGESG_VAL_TDMA_UNFRAMED_DATA_PN23 FIX4 AGESG_VAL_TDMA_UNFRAMED_DATA_FIX4 User File AGESG_VAL_TDMA_UNFRAMED_DATA_USERFILE Ext AGESG_VAL_TDMA_UNFRAMED_DATA_EXTERNAL 4 1's & 4 0's AGESG_VAL_TDMA_UNFRAMED_DATA_P4 8 1's & 8 0's AGESG_VAL_TDMA_UNFRAMED_DATA_P8 16 1's & 16 0's AGESG_VAL_TDMA_UNFRAMED_DATA_P16 32 1's & 32 0's AGESG_VAL_TDMA_UNFRAMED_DATA_P32 64 1's & 64 0's AGESG_VAL_TDMA_UNFRAMED_DATA_P64    0    ""    On VI_TRUE Off VI_FALSE    0        	                      �Immediate AGESG_VAL_TDMA_TRIGGER_SOURCE_IMMEDIATE External AGESG_VAL_TDMA_TRIGGER_SOURCE_EXTERNAL Software AGESG_VAL_TDMA_TRIGGER_SOURCE_SOFTWARE Trigger Key AGESG_VAL_TDMA_TRIGGER_SOURCE_TRIGGER_KEY    W    This function is used to configure DECT Digital Modulation Format framed data format.     �    Set the PN9 Mode.

Valid Values:
  AGESG_VAL_TDMA_PN9_MODE_NORMAL -  Normal   
  AGESG_VAL_TDMA_PN9_MODE_QUICK  -  Quick

Default Value: AGESG_VAL_TDMA_PN9_MODE_QUICK
    �    Sets the secondary frame operating state (On or Off). The secondary frame is a data pattern that coexists with the primary. The secondary frame is a copy of the selected primary pattern. It cannot be modified; it can only be turned on or off. This file is named using the format (DECT) as the prefix and SECONDARY_STATE as the suffix. When the secondary frame is activated, the secondary pattern is generated from the specification saved in the instrument state file and moved to the end of the data generator memory. For more information, refer to the instrument's user manual for this format (DECT).

Valid Values:
  VI_TRUE (1)  - Enables secondary frame
  VI_FALSE (0) - Disables secondary frame

Default Value: VI_FALSE (0)    W    Select the trigger source for triggering the secondary frame data pattern.

Valid Values:
  AGESG_VAL_TDMA_SECONDARY_FRAME_TRIGGER_TRIGGER_KEY
     Trigger an armed sweep when the user presses the Trigger
     hardkey.

  AGESG_VAL_TDMA_SECONDARY_FRAME_TRIGGER_SOFTWARE
     Trigger an armed sweep via GPIB (*TRG command or
     agesg_SendSoftwareTrigger function).

  AGESG_VAL_TDMA_SECONDARY_FRAME_TRIGGER_EXTERNAL
     Trigger an armed sweep on the positive or negative edge of 
     a signal applied to the TRIGGER IN connector.

Default Value:  AGESG_VAL_TDMA_SECONDARY_FRAME_TRIGGER_EXTERNAL     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    �    Sets the external trigger delay on or off. When external delay is turned on, the transmission of the triggered data will be delayed after the external trigger event by the number of bits specified by the DECT PatternExtDelayBits parameter in this function.

This parameter will only be used if the trigger source is external.

Valid Values:
  VI_TRUE (1)  - Enabled External Delay
  VI_FALSE (0) - Disabled External Delay

Default Value: VI_FALSE (0)    R    Sets the number of bits for the external trigger delay. When the external delay is enabled, a value greater than 0 will delay the transmission of the triggered data after the external trigger event by the number of bits specified.

Valid Range:
  0 to 65,535 bits

Valid Range for Agilent 4438C:
  0 to 1,048,576 bits

Default Value:  0    o    Specifies the source of the trigger signal that starts the frame/slot generation.

Valid Values:
  AGESG_VAL_TDMA_TRIGGER_SOURCE_IMMEDIATE
    - The TDMA generator system does not wait for a trigger of any kind, so it is running the frames continuously

  AGESG_VAL_TDMA_TRIGGER_SOURCE_EXTERNAL
    - Each frame is started with an external signal

  AGESG_VAL_TDMA_TRIGGER_SOURCE_SOFTWARE
    - Each frame is started with a software programmable trigger

  AGESG_VAL_TDMA_TRIGGER_SOURCE_TRIGGER_KEY
    - Each frame is started with a soft key TRIGGER on front panel

Default Value: AGESG_VAL_TDMA_TRIGGER_SOURCE_IMMEDIATE   �K 4  � �    PN9 Mode                         �� 1 � �       Secondary Frame Enabled          �� 4~ � �    Secondary Frame Trigger          �=, 
  �  �    Instrument Handle                ��#����  �    Status                           �E � � �       External Delay Enabled           � �~ � �    External Delay Bits              �k �  � �    Trigger Source                               JNormal AGESG_VAL_TDMA_PN9_MODE_NORMAL Quick AGESG_VAL_TDMA_PN9_MODE_QUICK    On VI_TRUE Off VI_FALSE              �Trigger Key AGESG_VAL_TDMA_SECONDARY_FRAME_TRIGGER_TRIGGER_KEY Software AGESG_VAL_TDMA_SECONDARY_FRAME_TRIGGER_SOFTWARE External AGESG_VAL_TDMA_SECONDARY_FRAME_TRIGGER_EXTERNAL        	           On VI_TRUE Off VI_FALSE    0               �Immediate AGESG_VAL_TDMA_TRIGGER_SOURCE_IMMEDIATE External AGESG_VAL_TDMA_TRIGGER_SOURCE_EXTERNAL Software AGESG_VAL_TDMA_TRIGGER_SOURCE_SOFTWARE Trigger Key AGESG_VAL_TDMA_TRIGGER_SOURCE_TRIGGER_KEY   �    This method is used to configure DECT Digital Modulation Format Sync Out parameters, which configures a 1-bit synchronization signal to the EVENT 1 rear panel connector. The user will be able to set the synchronization signal to occur at the beginning of the data pattern (automatic for data format "Pattern" and not a choice for data format "Framed"), at the beginning of a frame, at the beginning of a selected timeslot, or at the beginning of each timeslot in a frame.

This function is used to configure the Sync Out parameters for the data format selected "Framed". It is not required to configure the Sync Out parameters if the data format selected is "Pattern".
    �    Set the synchronization signal to occur at the beginning of the selected event.

Valid Values:
   AGESG_VAL_TDMA_SYNC_OUT_TYPE_FRAME
       beginning of a frame

   AGESG_VAL_TDMA_SYNC_OUT_TYPE_BEGIN_TIMESLOT
       beginning of a selected timeslot (DECTSyncOutBegTimeslot
       parameter)

   AGESG_VAL_TDMA_SYNC_OUT_TYPE_ALL_TIMESLOTS
       beginning of each timeslot in a frame

Default Value:  AGESG_VAL_TDMA_SYNC_OUT_TYPE_FRAME    �    Set the number of bits of offset that the synchronization signal is moved forward or backwards from the beginning of the data frame, or timeslot.

Valid Range:

   NADC                      -323 through +323 bits
   EDGE,GMS                  -155 through +155 bits
   DECT                      -479 through +479 bits
   PDC                       -279 through +279 bits
   PHS                       -239 through +239 bits
   TETRA                     -509 through +509 bits

Default Value: 0 bit    �    Set the timeslot number for the synchronization to occur at, if Begin Timeslot mode is selected.
For DECT parameter values 0 - 11 correspond to radio fixed part (RFP) timeslots 0 - 11, while parameter values 12 - 23 correspond to portable part (PP) timeslots 0 - 11.
For PHS parameter values 1 - 4 correspond to downlink timeslots 1 - 4, while parameter values 5 - 8 correspond to uplink timeslots 1 - 4.

Valid Ranges:

  NADC      1 through 3  for Full-Rate
            1 through 6  for Half-Rate

  EDGE&GSM  0 through 7

  DECT      0 through 23  (0-11 RFP 0-11, 12-23 PP 0-11)

  PDC       0 through 2  for Full-Rate
            0 through 5  for Half-Rate

  PHS       1 through 8   (1-4 Downlink, 5-8 Uplink)

  TETRA     1 through 4

Default Value:  1     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors   �l F  � �    Snyc Out Type                    �( F � � �    Sync Out Offset                  �  Fh � �    Sync Out Begin Timeslot          � , 
  �  �    Instrument Handle                ��#����  �    Status                                        �Begin Frame AGESG_VAL_TDMA_SYNC_OUT_TYPE_FRAME Begin Timeslot AGESG_VAL_TDMA_SYNC_OUT_TYPE_BEGIN_TIMESLOT All Timeslots AGESG_VAL_TDMA_SYNC_OUT_TYPE_ALL_TIMESLOTS    0    1        	           b    This function is used to configure TDMA Digital Modulation Format frequency channels parameters.    �    Selects whether the instrument's RF output will be determined by the frequency channel and frequency band parameters selected by this function or by the instrument front panel Frequency hardkey and agesg_ConfigureRF function.

Valid Values:
  VI_TRUE (1)  - Frequency channel and frequency band
  VI_FALSE (0) - Frequency set by agesg_ConfigureRF function

Default Value:  VI_FALSE (0)    �    Select the frequency channel based on the frequency channels defined in the TDMA standards for the selected band. The output frequency depends on the both the channel band and channel number selected.

Valid Values:
  
  DECT   
    - 0 throught 9

  PHS    
    - 1 throught 255

  EDGE & GSM
    - 1 throught 124 for P-GSM Base and Mobile
    - 0 - 124 and 975 - 1023 for E-GSM Base and Mobile
    - 0 - 124 and 955 - 1023 for R-GSM Base and Mobile
    - 512 throught 885 for DCS Base and Mobile
    - 512 throught 810 for PCS Base and Mobile
    - 259 throught 293 for GSM 450 Base and Mobile
    - 306 throught 340 for GSM 480 Base and Mobile
    - 128 throught 251 for GSM 850 Base and Mobile

  NADC
    - 1 throught 1023
 
  PDC
    - 0 throught 640 for 800 MHz Base and Mobile
    - 0 throught 960 for 1500 MHz Base and Mobile

  TETRA
    - 3600 throught 4000 for Base 390/400 and Mobile 380/390
    -  800 throught 1200 for Base 420/430 and Mobile 410/420
    - 2400 throught 2800 for Base 460/470 and Mobile 450/460
    -  600 throught  840 for Base 915/921 and Mobile 870/876

Default Value:
  DECT            - 0
  TETRA           - 3600
  other standards - 1    	�    Select the frequency band based on the TDMA standards. The output frequency depends on both the channel band and channel number selected.

Valid Values:

DECT & PHS
  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_STANDARD only

EDGE & GSM
  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_P_GSM_BASE
    - P-GSM Base
  
  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_P_GSM_MOBILE
    - P-GSM Mobile

  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_E_GSM_BASE
    - E-GSM Base

  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_E_GSM_MOBILE
    - E-GSM Mobile

  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_R_GSM_BASE
    - R-GSM Base

  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_E_GSM_MOBILE
    - R-GSM Mobile

  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_DCS_BASE
    - DCS Base

  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_DCS_MOBILE
    - DCS Mobile

  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_PCS_BASE
    - PCS Base

  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_PCS_MOBILE
    - PCS Mobile

  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_GSM_450_BASE
    - GSM 450 Base

  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_GSM_450_MOBILE
    - GSM 450 Mobile

  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_GSM_480_BASE
    - GSM 480 Base
     
  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_GSM_480_MOBILE
    - GSM 480 Mobile

  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_GSM_850_BASE
    - GSM 850 Base
  
  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_GSM_850_MOBILE
    - GSM 850 Mobile

NADC
  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_BASE
    - Base

  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_MOBILE
    - Mobile

PDC
  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_800_MHZ_BASE
    - 800 MHz Base

  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_800_MHZ_MOBILE
    - 800 MHz Mobile

  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_1500_MHZ_BASE
    - 1500 MHz Base

  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_1500_MHZ_MOBILE
    - 1500 MHz Mobile

TETRA
  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_BASE_390_400
    - Base 390/400

  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_BASE_420_430
    - Base 420/430

  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_BASE_460_470
    - Base 460/470

  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_BASE_915_921
    - Base 915/921

  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_MOBILE_380_390
    - Mobile 380/390

  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_MOBILE_410_420
    - Mobile 410/420

  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_MOBILE_450_460
    - Mobile 450/460

  AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_MOBILE_870_876
    - Mobile 870/876

Default Value:  Standard     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors   �g 7 P �       Frequency Channel Enabled        �� : � � �    Frequency Channel Number         א :| � �    Frequency Channel Band           �', 
  �  �    Instrument Handle                ��#����  �    Status                             On VI_TRUE Off VI_FALSE    1              �Standard AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_STANDARD P-GSM Base AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_P_GSM_BASE P-GSM Mobile AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_P_GSM_MOBILE E-GSM Base AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_E_GSM_BASE E-GSM Mobile AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_E_GSM_MOBILE R-GSM Base AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_R_GSM_BASE R-GSM Mobile AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_R_GSM_MOBILE DCS Base AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_DCS_BASE DCS Mobile AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_DCS_MOBILE PCS Base AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_PCS_BASE PCS Mobile AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_PCS_MOBILE GSM 450 Base AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_GSM_450_BASE GSM 450 Mobile AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_GSM_450_MOBILE GSM 480 Base AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_GSM_480_BASE GSM 480 Mobile AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_GSM_480_MOBILE GSM 850 Base AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_GSM_850_BASE GSM 850 Mobile AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_GSM_850_MOBILE Base AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_BASE Mobile AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_MOBILE 800 MHz Base AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_800_MHZ_BASE 800 MHz Mobile AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_800_MHZ_MOBILE 1500 MHz Base AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_1500_MHZ_BASE 1500 MHz Mobile AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_1500_MHZ_MOBILE Base 390/400 AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_BASE_390_400 Base 420/430 AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_BASE_420_430 Base 460/470 AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_BASE_460_470 Base 915/921 AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_BASE_915_921 Mobile 380/390 AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_MOBILE_380_390 Mobile 410/420 AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_MOBILE_410_420 Mobile 450/460 AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_MOBILE_450_460 Mobile 870/876 AGESG_VAL_TDMA_FREQUENCY_CHANNEL_BAND_MOBILE_870_876        	           �    This function is used to configure TDMA Digital Modulation Format Modify Standard parameters, modifying the following aspects of the standard transmission: phase polarity, symbol rate, and bursted RF signal shape.    	    Set the direction of rotation of the phase modulation vector. Select Normal and the in-phase component will lead the quadrature-phase component by 90 degrees in the resulting modulation. Select Invert and the in-phase component will lag the quadrature-phase component by 90 degrees in the resulting modulation. The selection also applies to the I OUT and Q OUT signals.

Valid Values:
   AGESG_VAL_TDMA_PHASE_POLARITY_NORMAL
   AGESG_VAL_TDMA_PHASE_POLARITY_INVERTED

Default Value: AGESG_VAL_TDMA_PHASE_POLARITY_NORMAL    s    Set the transmission symbol rate. The instrument preset value is 1.152 Msps. The values range from 47.684 sps through 12.500000000 Msps but will vary depending on the modulation type.

Valid Range:
  47.684 sps through 12.5 Msps

Valid Range for Agilent 4438c:
  45.0 sps through 50.0 Msps

Default Value: none

Notes:
(1) The upper limit is depends on Modulation Type.    �    Set the bursted RF signal rising edge time. The minimum and maximum range of values allowed depends upon the modulation type and the symbol rate.
The driver sets the AGESG_ATTR_TDMA_BURST_RISE_TIME to this value.

Units: bits

Valid Range:
   0.0 to 1000.0 bits

Valid Range for Agilent 4438c:
   0.0625 to  10.625  bits  - for DECT standard
   0.2    to  16.4    bits  - for EDGE standard
   0.0625 to  11.1875 bits  - for GSM standard
   0.125  to  22.5    bits  - for NADC standard
   0.125  to  22.5    bits  - for PDC standard
   0.125  to  22.5    bits  - for PHS standard
   0.125  to  22.5    bits  - for TETRA standard
   0.125  to 121.5    bits  - for Custom standard    n    Set the bursted RF signal rising edge delay. The minimum and maximum range of values allowed depends upon the modulation type and the symbol rate.
The driver sets the AGESG_ATTR_TDMA_BURST_RISE_DELAY to this value.

Units: bits

Valid Range:
  -10000.0 to 10000.0 bits

Valid Range for Agilent 4438c:
   -0.5625 to 99.0  - for DECT standard
   -7.2    to 99.0  - for EDGE standard
   -8.0625 to 99.0  - for GSM standard
  -17.375  to 99.0  - for NADC standard
  -18.375  to 99.0  - for PDC standard
  -18.125  to 99.0  - for PHS standard
  -14.375  to 99.0  - for TETRA standard
  -17.375  to 99.0  - for Custom standard    �    Set the bursted RF signal falling edge time. The minimum and maximum range of values allowed depends upon the modulation type and the symbol rate.
The driver sets the AGESG_ATTR_TDMA_BURST_FALL_TIME to this value.

Units: bits

Valid Range:
   0.0 to 1000.0 bits

Valid Range for Agilent 4438c:
   0.0625 to 127.9375 bits  - for DECT standard
   0.2    to 409.2    bits  - for EDGE standard
   0.0625 to 127.9375 bits  - for GSM standard
   0.125  to 255.875  bits  - for NADC standard
   0.125  to 255.875  bits  - for PDC standard
   0.125  to 255.875  bits  - for PHS standard
   0.125  to  50.0    bits  - for TETRA standard
   0.125  to 255.875  bits  - for Custom standard    o    Set the bursted RF signal falling edge delay. The minimum and maximum range of values allowed depends upon the modulation type and the symbol rate.
The driver sets the AGESG_ATTR_TDMA_BURST_FALL_DELAY to this value.

Units: bits

Valid Range:
  -10000.0 to 10000.0 bits

Valid Range for Agilent 4438c:
  -10.5625 to 99.0  - for DECT standard
  -16.2    to 99.0  - for EDGE standard
  -11.0625 to 99.0  - for GSM standard
  -22.375  to 99.0  - for NADC standard
  -22.375  to 99.0  - for PDC standard
  -22.125  to 99.0  - for PHS standard
  -22.375  to 99.0  - for TETRA standard
  -22.375  to 99.0  - for Custom standard     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors   �� &  � �    Phase Polarity                   � & � �  �    Symbol Rate                      �� f  �  �    Burst Rise Time                  �1 f � �  �    Burst Rise Delay                 �� �  �  �    Burst Fall Time                  �W � � �  �    Burst Fall Delay                 ��, 
  �  �    Instrument Handle                 �#����  �    Status                                        \Normal AGESG_VAL_TDMA_PHASE_POLARITY_NORMAL Inverted AGESG_VAL_TDMA_PHASE_POLARITY_INVERTED                            	           p    This method configures the TDMA Digital Modulation Format hardware parameter I/Q Amplitude Scaling percentage.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    Sets the amplitude of the I/Q outputs (for better ACP). This adjustment is not used with MSK or FSK modulation.

Valid Range:
  1 % through 9999 %

Valid Range for Agilent 4438c:
  1 % through 200 %

Default Value: 100 %   	�, 
  �  �    Instrument Handle                
8#����  �    Status                           � b � �  �    IQ Scaling                             	           100    �    This function configures the TDMA Digital Modulation Format pre-modulation filter parameters, including selecting user defined FIR filter stored in the instrument's memory.        Select the pre-modulation filter type.

Valid Values:
   AGESG_VAL_TDMA_FILTER_TYPE_ROOT_NYQUIST
       - Root Nyquist (raised cosine) filter

   AGESG_VAL_TDMA_FILTER_TYPE_NYQUIST
       - Nyquist (raised cosine) filter

   AGESG_VAL_TDMA_FILTER_TYPE_GAUSSIAN
       - Gaussian filter

   AGESG_VAL_TDMA_FILTER_TYPE_RECTANGLE
       - One-symbol wide rectangle filter

   AGESG_VAL_TDMA_FILTER_TYPE_APCO_C4FM
       - APCO specified C4FM filter

   AGESG_VAL_TDMA_FILTER_TYPE_EDGE
       - Linearized Gaussian

   AGESG_VAL_TDMA_FILTER_TYPE_USER_FIR
       - Use a pre-defined FIR filter stored in the instrument's memory. The name of the FIR filter file to use is defined in the NADCFIRUserFile parameter in this function.

Default Value: AGESG_VAL_TDMA_FILTER_TYPE_ROOT_NYQUIST     �    Select the FIR filter's Alpha parameter when the filter type selected is either Root Nyquist or Nyquist. 

Valid Range: 0.000 through 1.000

Default Value:  0.500     �    Select the bandwidth-multiplied-by-bit time product (BbT) filter parameter when the filter type selected is Gaussian.

Valid Range: 0.100 through 1.000

Default Value: 0.500    �    Select the FIR filter optimization for either error vector magnitude (EVM) or adjacent channel power (ACP). The EVM selection provides the most ideal passband. The ACP selection improves the stopband rejection. This selection only applies to the Root Nyquist or Nyquist FIR filters.

Valid Values:
   AGESG_VAL_TDMA_OPTIMIZE_FIR_EVM
      - error vector magnitude

   AGESG_VAL_TDMA_OPTIMIZE_FIR_ACP
      - adjacent channel power

Default Value: AGESG_VAL_TDMA_OPTIMIZE_FIR_EVM     �    Select the name of the FIR filter file in the instrument's memory to load as the pre-modulation filter to use.

Default Value: ""     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors   � -  � �    Filter Select                    � y  �  �    Filter Alpha                     � y � �  �    Filter BbT                       X yw � �    Optimize FIR                     @ - � �  �    FIR User File                    �, 
  �  �    Instrument Handle                ~#����  �    Status                                       @Root Nyquist AGESG_VAL_TDMA_FILTER_TYPE_ROOT_NYQUIST Nyquist AGESG_VAL_TDMA_FILTER_TYPE_NYQUIST Gaussian AGESG_VAL_TDMA_FILTER_TYPE_GAUSSIAN Rectangle AGESG_VAL_TDMA_FILTER_TYPE_RECTANGLE APCO 25 C4FM AGESG_VAL_TDMA_FILTER_TYPE_APCO_C4FM EDGE AGESG_VAL_TDMA_FILTER_TYPE_EDGE User FIR AGESG_VAL_TDMA_FILTER_TYPE_USER_FIR    0.500    0.500               HEVM AGESG_VAL_TDMA_OPTIMIZE_FIR_EVM ACP AGESG_VAL_TDMA_OPTIMIZE_FIR_ACP    ""        	           V    This function customizes the TDMA Digital Modulation Format current modulation type.     �    Set the MSK phase deviation. This instrument parameter is only set when a MSK modulation type is selected.

Valid Range: 0.0 through 100.0 degrees

Default Value: 90.0 degrees    %    Select modulation type.

Valid Values:
  AGESG_VAL_TDMA_MODULATION_TYPE_QPSK
     - Quadrature Phase Shift Keying. Data rate is 2   bits/symbol.

  AGESG_VAL_TDMA_MODULATION_TYPE_IS95QPSK
     - IS95 Quadrature Phase Shift Keying. Data rate is 2 bits/symbol.

  AGESG_VAL_TDMA_MODULATION_TYPE_GRAYQPSK
    - Grey Coded Quadrature Phase Shift Keying. Data rate is 2 bits/symbol.

  AGESG_VAL_TDMA_MODULATION_TYPE_OQPSK
    - Offset Quadrature Phase Shift Keying. Data rate is 2 bits/symbol.

  AGESG_VAL_TDMA_MODULATION_TYPE_IS95OQPSK
    - IS95 Offset Quadrature Phase Shift Keying. Data rate is 2 bits/symbol.

  AGESG_VAL_TDMA_MODULATION_TYPE_BPSK
    -  Binary Phase Shift Keying. Data rate is 1 bit/symbol.

  AGESG_VAL_TDMA_MODULATION_TYPE_P4DQPSK
    - PI/4 Differential Quadrature Phase Shift Keying. Data rate is 2 bits/symbol.

  AGESG_VAL_TDMA_MODULATION_TYPE_PSK8
    - 8-state Phase Shift Keying. Data rate is 3 bits/symbol.

  AGESG_VAL_TDMA_MODULATION_TYPE_PSK16
    - 16-state Phase Shift Keying. Data rate is 4 bits/symbol.

  AGESG_VAL_TDMA_MODULATION_TYPE_D8PSK
    - Differential 8-state Phase Shift Keying. Data rate is 3 bits/symbol.

  AGESG_VAL_TDMA_MODULATION_TYPE_MSK
    - Minimum Shift Keying. Data rate is 1 bit/symbol.

  AGESG_VAL_TDMA_MODULATION_TYPE_FSK2
    - 2 Level Frequency Shift Keying. Data rate is 1 bit/symbol.

  AGESG_VAL_TDMA_MODULATION_TYPE_FSK4
    - 4 Level Frequency Shift Keying. Data rate is 2 bits/symbol.

  AGESG_VAL_TDMA_MODULATION_TYPE_FSK8
    - 8 Level Frequency Shift Keying. Data rate is 3 bits/symbol.

  AGESG_VAL_TDMA_MODULATION_TYPE_FSK16
    - 16 Level Frequency Shift Keying. Data rate is 4 bits/symbol.

  AGESG_VAL_TDMA_MODULATION_TYPE_C4FM
    - C4FM Frequency Shift Keying. Data rate is 2 bits/symbol.

  AGESG_VAL_TDMA_MODULATION_TYPE_QAM4
    - 4-state quadrature Amplitude Modulation. Data rate is 2 bits/symbol.

  AGESG_VAL_TDMA_MODULATION_TYPE_QAM8
    - 8-state quadrature Amplitude Modulation. Data rate is 3 bits/symbol.

  AGESG_VAL_TDMA_MODULATION_TYPE_QAM16
    - 16-state quadrature Amplitude Modulation. Data rate is 4 bits/symbol.

  AGESG_VAL_TDMA_MODULATION_TYPE_QAM32
    - 32-state quadrature Amplitude Modulation. Data rate is 5 bits/symbol.

  AGESG_VAL_TDMA_MODULATION_TYPE_QAM64
    - 64-state quadrature Amplitude Modulation. Data rate is 6 bits/symbol.

  AGESG_VAL_TDMA_MODULATION_TYPE_QAM256
    - 256-state quadrature Amplitude Modulation. Data rate is 8 bits/symbol.

  AGESG_VAL_TDMA_MODULATION_TYPE_USER_IQ
    - Select a I/Q pre-stored configuration file for the modulation type.

  AGESG_VAL_TDMA_MODULATION_TYPE_USER_FSK
    - Select a FSK pre-stored configuration file for the modulation type.

  AGESG_VAL_TDMA_MODULATION_TYPE_EDGE
    - Select a 3*PI/8 retating 8-state phase shift keying.

Default Value:  AGESG_VAL_TDMA_MODULATION_TYPE_P4DQPSK        Set the FSK phase deviation. This instrument parameter is only set when a FSK modulation type is selected (2-Lvl FSK, 4-Lvl FSK, 8-Lvl FSK, 16-Lvl FSK, and C4FM).

Valid Range: 
     0.0 to a maximum that is dependent on the symbol rate

Default Value: 28.8 kHz     {    Select the name of the user I/Q or FSK pre-stored configuration file for the modulation type selected.

Default Value: ""     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors   $r 1 � �  �    Phase MSK                        %+ 1  � �    Modulation Type                  0X 1w �  �    Frequency Deviation FSK          1g w  �  �    Modulation User File             1�, 
  �  �    Instrument Handle                2�#����  �    Status                             90.0             `QPSK AGESG_VAL_TDMA_MODULATION_TYPE_QPSK IS95 QPSK AGESG_VAL_TDMA_MODULATION_TYPE_IS95QPSK Gray Coded QPSK AGESG_VAL_TDMA_MODULATION_TYPE_GRAYQPSK OQPSK AGESG_VAL_TDMA_MODULATION_TYPE_OQPSK IS95 OQPSK AGESG_VAL_TDMA_MODULATION_TYPE_IS95OQPSK BPSK AGESG_VAL_TDMA_MODULATION_TYPE_BPSK PI/4 DQPSK AGESG_VAL_TDMA_MODULATION_TYPE_P4DQPSK 8PSK AGESG_VAL_TDMA_MODULATION_TYPE_PSK8 16PSK AGESG_VAL_TDMA_MODULATION_TYPE_PSK16 D8PSK AGESG_VAL_TDMA_MODULATION_TYPE_D8PSK MSK AGESG_VAL_TDMA_MODULATION_TYPE_MSK 2-Lvl FSK AGESG_VAL_TDMA_MODULATION_TYPE_FSK2 4-Lvl FSK AGESG_VAL_TDMA_MODULATION_TYPE_FSK4 8-Lvl FSK AGESG_VAL_TDMA_MODULATION_TYPE_FSK8 16-Lvl FSK AGESG_VAL_TDMA_MODULATION_TYPE_FSK16 C4FM AGESG_VAL_TDMA_MODULATION_TYPE_C4FM 4QAM AGESG_VAL_TDMA_MODULATION_TYPE_QAM4 8QAM AGESG_VAL_TDMA_MODULATION_TYPE_QAM8 16QAM AGESG_VAL_TDMA_MODULATION_TYPE_QAM16 32QAM AGESG_VAL_TDMA_MODULATION_TYPE_QAM32 64QAM AGESG_VAL_TDMA_MODULATION_TYPE_QAM64 256QAM AGESG_VAL_TDMA_MODULATION_TYPE_QAM256 User I/Q AGESG_VAL_TDMA_MODULATION_TYPE_USER_IQ User FSK AGESG_VAL_TDMA_MODULATION_TYPE_USER_FSK EDGE AGESG_VAL_TDMA_MODULATION_TYPE_EDGE    
288000.00    ""        	           �    This function configures the specified timeslot as a traffic bearer (TB) type when the DECT Digital Modulation Format is set to Framed.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    �    Select between the twelve radio fixed part (RFP) timeslots and the twelve portable part (PP) timeslots. Any timeslot number, type, or configuration settings will then apply to the chosen RFP or PP timeslot selection. RFP and PP timeslots can be active concurrently. 

Valid Values:
  AGESG_VAL_TDMA_DECT_RFP - radio fixed part (RFP) timeslots
  AGESG_VAL_TDMA_DECT_PP  - portable part (PP) timeslots

Default Value:
  AGESG_VAL_TDMA_DECT_RFP - radio fixed part (RFP) timeslots     K    Select the timeslot to configure.

Valid Range: 0 to 11

Default Value: 0     �    Sets the operating state of the specified timeslot (On or Off).

Valid Values:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value: VI_TRUE (1)    	    Sets the 16-bit preamble data pattern. The instrument preset value represents the DECT standard and is (hex) AAAA when transmit link is RFP and (hex) 5555 when transmit link is PP.

Valid Range:  0x0000 to 0xFFFF (hexadecimal)

Default Value: 0xAAAA (hexadecimal)    
    Sets the 16-bit synchronization word. The instrument preset value represents the DECT standard and is (hex) E98A when transmit link is RFP and (hex) 1675 when transmit link is PP.

Default Range:  0x0000 to 0xFFFF (hexadecimal)

Default Value: 0xE98A (hexadecimal)    �    Sets the 64-bit A field. The instrument preset value represents the PHS standard and is (hex) 0000FFFF0000FFFF.

This parameter has to be a string type, therefore the user must enter the 64-bit sequence as an ASCII string. Care must be given to make sure that the ASCII characters used are valid hexadecimal alphanumerics.

Valid Range: 
    0000000000000000 to FFFFFFFFFFFFFFFF (hexadecimal)

Default Value: "0000FFFF0000FFFF" (hexadecimal)        Selects the B field data pattern for the specified timeslot for framed data transmissions.

Valid Values:
  AGESG_VAL_TDMA_DECT_TB_B_FIELD_PN9 
      - PN9 pseudo-random bit pattern
  
  AGESG_VAL_TDMA_DECT_TB_B_FIELD_PN15
      - PN15 pseudo-random bit pattern

  AGESG_VAL_TDMA_DECT_TB_B_FIELD_FIX4
      - 4-bit repeating sequence data pattern

  AGESG_VAL_TDMA_DECT_TB_B_FIELD_USERFILE
      - external data input data pattern

  AGESG_VAL_TDMA_DECT_TB_B_FIELD_EXT
      - data pattern supplied by external data inputs

  AGESG_VAL_TDMA_DECT_TB_B_FIELD_P4
      - 4 1's & 4 0's binary data pattern

  AGESG_VAL_TDMA_DECT_TB_B_FIELD_P8
      - 8 1's & 8 0's binary data pattern

  AGESG_VAL_TDMA_DECT_TB_B_FIELD_P16
      - 16 1's & 16 0's binary data pattern

  AGESG_VAL_TDMA_DECT_TB_B_FIELD_P32
      - 32 1's & 32 0's binary data pattern

  AGESG_VAL_TDMA_DECT_TB_B_FIELD_P64
      - 64 1's & 64 0's binary data pattern

  AGESG_VAL_TDMA_DECT_TB_B_FIELD_FDEV1_HS
      - frequency deviation half-slot binary data pattern

  AGESG_VAL_TDMA_DECT_TB_B_FIELD_FDEV1_FS
      - frequency deviation full-slot binary data pattern

  AGESG_VAL_TDMA_DECT_TB_B_FIELD_FDEV2_FS
      - frequency deviation full-slot binary data pattern

  AGESG_VAL_TDMA_DECT_TB_B_FIELD_FACC
      - frequency accuracy binary data pattern

  AGESG_VAL_TDMA_DECT_TB_B_FIELD_DM0
      - all zeros binary data pattern

  AGESG_VAL_TDMA_DECT_TB_B_FIELD_DM1
      - all ones binary data pattern

Default Value:
  AGESG_VAL_TDMA_DECT_TB_B_FIELD_PN9 
      - PN9 pseudo-random bit pattern
       �    Sets the 4-bit repeating data pattern if Fix4 is selected for the pattern data source.

Valid Range:  
     0x0 to  0xF (hexadecimal)
or  0000 to 1111 (binary)

Default Value: 0x0 (hexadecimal)     �    Selects user file name to load from the instrument memory if User File is selected for the pattern data source.

Default Value: ""   ?[, 
  �  �    Instrument Handle                @#����  �    Status                           Fc %  � �    Transmit Link                    HI % � � �    Timeslot Number                  H� "� �       Timeslot Enabled                 IW m  � �    Timeslot Preamble                Jh m � � �    Synchronization Word             Kz mn �  �    A Field                          M= �  � �    B Field Data                     S` � � � �    FIX4 Data                        T+ �x 	�  �    User File                              	                      YRadio Fixed Part (RFP) AGESG_VAL_TDMA_DECT_RFP Portable Part (PP) AGESG_VAL_TDMA_DECT_PP    0   On VI_TRUE Off VI_FALSE    0xAAAA    0xE98A    "0000FFFF0000FFFF"              �PN9 AGESG_VAL_TDMA_DECT_TB_B_FIELD_PN9 PN15 AGESG_VAL_TDMA_DECT_TB_B_FIELD_PN15 FIX4 AGESG_VAL_TDMA_DECT_TB_B_FIELD_FIX4 User File AGESG_VAL_TDMA_DECT_TB_B_FIELD_USERFILE Ext AGESG_VAL_TDMA_DECT_TB_B_FIELD_EXT 4 1's & 4 0's AGESG_VAL_TDMA_DECT_TB_B_FIELD_P4 8 1's & 8 0's AGESG_VAL_TDMA_DECT_TB_B_FIELD_P8 16 1's & 16 0's AGESG_VAL_TDMA_DECT_TB_B_FIELD_P16 32 1's & 32 0's AGESG_VAL_TDMA_DECT_TB_B_FIELD_P32 64 1's & 64 0's AGESG_VAL_TDMA_DECT_TB_B_FIELD_P64 FDEV1_HS AGESG_VAL_TDMA_DECT_TB_B_FIELD_FDEV1_HS FDEV1_FS AGESG_VAL_TDMA_DECT_TB_B_FIELD_FDEV1_FS FDEV2_FS AGESG_VAL_TDMA_DECT_TB_B_FIELD_FDEV2_FS FACC AGESG_VAL_TDMA_DECT_TB_B_FIELD_FACC DM0 AGESG_VAL_TDMA_DECT_TB_B_FIELD_DM0 DM1 AGESG_VAL_TDMA_DECT_TB_B_FIELD_DM1    0x0    ""    �    This function configures the specified timeslot as a traffic bearer with Z field (TBZ) type when the DECT Digital Modulation Format is set to Framed.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    �    Select between the twelve radio fixed part (RFP) timeslots and the twelve portable part (PP) timeslots. Any timeslot number, type, or configuration settings will then apply to the chosen RFP or PP timeslot selection. RFP and PP timeslots can be active concurrently. 

Valid Values:
  AGESG_VAL_TDMA_DECT_RFP - radio fixed part (RFP) timeslots
  AGESG_VAL_TDMA_DECT_PP  - portable part (PP) timeslots

Default Value:
  AGESG_VAL_TDMA_DECT_RFP - radio fixed part (RFP) timeslots     K    Select the timeslot to configure.

Valid Range: 0 to 11

Default Value: 0     �    Sets the operating state of the specified timeslot (On or Off).

Valid Values:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value: VI_TRUE (1)    	    Sets the 16-bit preamble data pattern. The instrument preset value represents the DECT standard and is (hex) AAAA when transmit link is RFP and (hex) 5555 when transmit link is PP.

Valid Range:  0x0000 to 0xFFFF (hexadecimal)

Default Value: 0xAAAA (hexadecimal)    
    Sets the 16-bit synchronization word. The instrument preset value represents the DECT standard and is (hex) E98A when transmit link is RFP and (hex) 1675 when transmit link is PP.

Default Range:  0x0000 to 0xFFFF (hexadecimal)

Default Value: 0xE98A (hexadecimal)    �    Sets the 64-bit A field. The instrument preset value represents the PHS standard and is (hex) 0000FFFF0000FFFF.

This parameter has to be a string type, therefore the user must enter the 64-bit sequence as an ASCII string. Care must be given to make sure that the ASCII characters used are valid hexadecimal alphanumerics.

Valid Range: 
    0000000000000000 to FFFFFFFFFFFFFFFF (hexadecimal)

Default Value: "0000FFFF0000FFFF" (hexadecimal)    .    Selects the B field data pattern for the specified timeslot for framed data transmissions.

Valid Values:
  AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_PN9 
      - PN9 pseudo-random bit pattern
  
  AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_PN15
      - PN15 pseudo-random bit pattern

  AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_FIX4
      - 4-bit repeating sequence data pattern

  AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_USERFILE
      - external data input data pattern

  AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_EXT
      - data pattern supplied by external data inputs

  AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_P4
      - 4 1's & 4 0's binary data pattern

  AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_P8
      - 8 1's & 8 0's binary data pattern

  AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_P16
      - 16 1's & 16 0's binary data pattern

  AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_P32
      - 32 1's & 32 0's binary data pattern

  AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_P64
      - 64 1's & 64 0's binary data pattern

  AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_FDEV1_HS
      - frequency deviation half-slot binary data pattern

  AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_FDEV1_FS
      - frequency deviation full-slot binary data pattern

  AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_FDEV2_FS
      - frequency deviation full-slot binary data pattern

  AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_FACC
      - frequency accuracy binary data pattern

  AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_DM0
      - all zeros binary data pattern

  AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_DM1
      - all ones binary data pattern



Default Value:
  AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_PN9 
      - PN9 pseudo-random bit pattern
       �    Sets the 4-bit repeating data pattern if Fix4 is selected for the pattern data source.

Valid Range:  
     0x0 to  0xF (hexadecimal)
or  0000 to 1111 (binary)

Default Value: 0x0 (hexadecimal)     �    Selects user file name to load from the instrument memory if User File is selected for the pattern data source.

Default Value: ""   [P, 
  �  �    Instrument Handle                \#����  �    Status                           bX %  � �    Transmit Link                    d> % � � �    Timeslot Number                  d� "� �       Timeslot Enabled                 eL m  � �    Timeslot Preamble                f] m � � �    Synchronization Word             go mn �  �    A Field                          i2 �  � �    B Field Data                     oh � � � �    FIX4 Data                        p3 �x 	�  �    User File                              	                      YRadio Fixed Part (RFP) AGESG_VAL_TDMA_DECT_RFP Portable Part (PP) AGESG_VAL_TDMA_DECT_PP    0   On VI_TRUE Off VI_FALSE    0xAAAA    0xE98A    "0000FFFF0000FFFF"              �PN9 AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_PN9 PN15 AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_PN15 FIX4 AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_FIX4 User File AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_USERFILE Ext AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_EXT 4 1's & 4 0's AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_P4 8 1's & 8 0's AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_P8 16 1's & 16 0's AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_P16 32 1's & 32 0's AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_P32 64 1's & 64 0's AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_P64 FDEV1_HS AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_FDEV1_HS FDEV1_FS AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_FDEV1_FS FDEV2_FS AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_FDEV2_FS FACC AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_FACC DM0 AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_DM0 DM1 AGESG_VAL_TDMA_DECT_TBZ_B_FIELD_DM1    0x0    ""    �    This function configures the specified timeslot as a low capacity (LC) type when the DECT Digital Modulation Format is set to Framed.    �    Select between the twelve radio fixed part (RFP) timeslots and the twelve portable part (PP) timeslots. Any timeslot number, type, or configuration settings will then apply to the chosen RFP or PP timeslot selection. RFP and PP timeslots can be active concurrently. 

Valid Values:
  AGESG_VAL_TDMA_DECT_RFP - radio fixed part (RFP) timeslots
  AGESG_VAL_TDMA_DECT_PP  - portable part (PP) timeslots

Default Value:
  AGESG_VAL_TDMA_DECT_RFP - radio fixed part (RFP) timeslots     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    Sets the operating state of the specified timeslot (On or Off).

Valid Values:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value: VI_TRUE (1)        Selects the B field data pattern for the specified timeslot for framed data transmissions.

Valid Values:
  AGESG_VAL_TDMA_DECT_LC_B_FIELD_PN9 
      - PN9 pseudo-random bit pattern
  
  AGESG_VAL_TDMA_DECT_LC_B_FIELD_PN15
      - PN15 pseudo-random bit pattern

  AGESG_VAL_TDMA_DECT_LC_B_FIELD_FIX4
      - 4-bit repeating sequence data pattern

  AGESG_VAL_TDMA_DECT_LC_B_FIELD_USERFILE
      - external data input data pattern

  AGESG_VAL_TDMA_DECT_LC_B_FIELD_EXT
      - data pattern supplied by external data inputs

  AGESG_VAL_TDMA_DECT_LC_B_FIELD_P4
      - 4 1's & 4 0's binary data pattern

  AGESG_VAL_TDMA_DECT_LC_B_FIELD_P8
      - 8 1's & 8 0's binary data pattern

  AGESG_VAL_TDMA_DECT_LC_B_FIELD_P16
      - 16 1's & 16 0's binary data pattern

  AGESG_VAL_TDMA_DECT_LC_B_FIELD_P32
      - 32 1's & 32 0's binary data pattern

  AGESG_VAL_TDMA_DECT_LC_B_FIELD_P64
      - 64 1's & 64 0's binary data pattern

  AGESG_VAL_TDMA_DECT_LC_B_FIELD_FDEV1_HS
      - frequency deviation half-slot binary data pattern

  AGESG_VAL_TDMA_DECT_LC_B_FIELD_FDEV1_FS
      - frequency deviation full-slot binary data pattern

  AGESG_VAL_TDMA_DECT_LC_B_FIELD_FDEV2_FS
      - frequency deviation full-slot binary data pattern

  AGESG_VAL_TDMA_DECT_LC_B_FIELD_FACC
      - frequency accuracy binary data pattern

  AGESG_VAL_TDMA_DECT_LC_B_FIELD_DM0
      - all zeros binary data pattern

  AGESG_VAL_TDMA_DECT_LC_B_FIELD_DM1
      - all ones binary data pattern



Default Value:
  AGESG_VAL_TDMA_DECT_LC_B_FIELD_PN9 
      - PN9 pseudo-random bit pattern
       �    Sets the 4-bit repeating data pattern if Fix4 is selected for the pattern data source.

Valid Range:  
     0x0 to  0xF (hexadecimal)
or  0000 to 1111 (binary)

Default Value: 0x0 (hexadecimal)     �    Selects user file name to load from the instrument memory if User File is selected for the pattern data source.

Default Value: ""    	    Sets the 16-bit preamble data pattern. The instrument preset value represents the DECT standard and is (hex) AAAA when transmit link is RFP and (hex) 5555 when transmit link is PP.

Valid Range:  0x0000 to 0xFFFF (hexadecimal)

Default Value: 0xAAAA (hexadecimal)    
    Sets the 16-bit synchronization word. The instrument preset value represents the DECT standard and is (hex) E98A when transmit link is RFP and (hex) 1675 when transmit link is PP.

Default Range:  0x0000 to 0xFFFF (hexadecimal)

Default Value: 0xE98A (hexadecimal)     K    Select the timeslot to configure.

Valid Range: 0 to 11

Default Value: 0    �    Sets the 64-bit A field. The instrument preset value represents the PHS standard and is (hex) 0000FFFF0000FFFF.

This parameter has to be a string type, therefore the user must enter the 64-bit sequence as an ASCII string. Care must be given to make sure that the ASCII characters used are valid hexadecimal alphanumerics.

Valid Range: 
    0000000000000000 to FFFFFFFFFFFFFFFF (hexadecimal)

Default Value: "0000FFFF0000FFFF" (hexadecimal)   wX 0  � �    Transmit Link                    y>, 
  �  �    Instrument Handle                y�#����  �    Status                           �F -� �       Timeslot Enabled                 � �  � �    B Field Data                     �& � � � �    FIX4 Data                        �� �q 	�  �    User File                        �} r  � �    Timeslot Preamble                �� r � � �    Synchronization Word             �� 0 � � �    Timeslot Number                  �� rg �  �    A Field                                       YRadio Fixed Part (RFP) AGESG_VAL_TDMA_DECT_RFP Portable Part (PP) AGESG_VAL_TDMA_DECT_PP        	          On VI_TRUE Off VI_FALSE              �PN9 AGESG_VAL_TDMA_DECT_LC_B_FIELD_PN9 PN15 AGESG_VAL_TDMA_DECT_LC_B_FIELD_PN15 FIX4 AGESG_VAL_TDMA_DECT_LC_B_FIELD_FIX4 User File AGESG_VAL_TDMA_DECT_LC_B_FIELD_USERFILE Ext AGESG_VAL_TDMA_DECT_LC_B_FIELD_EXT 4 1's & 4 0's AGESG_VAL_TDMA_DECT_LC_B_FIELD_P4 8 1's & 8 0's AGESG_VAL_TDMA_DECT_LC_B_FIELD_P8 16 1's & 16 0's AGESG_VAL_TDMA_DECT_LC_B_FIELD_P16 32 1's & 32 0's AGESG_VAL_TDMA_DECT_LC_B_FIELD_P32 64 1's & 64 0's AGESG_VAL_TDMA_DECT_LC_B_FIELD_P64 FDEV1_HS AGESG_VAL_TDMA_DECT_LC_B_FIELD_FDEV1_HS FDEV1_FS AGESG_VAL_TDMA_DECT_LC_B_FIELD_FDEV1_FS FDEV2_FS AGESG_VAL_TDMA_DECT_LC_B_FIELD_FDEV2_FS FACC AGESG_VAL_TDMA_DECT_LC_B_FIELD_FACC DM0 AGESG_VAL_TDMA_DECT_LC_B_FIELD_DM0 DM1 AGESG_VAL_TDMA_DECT_LC_B_FIELD_DM1    0x0    ""    0xAAAA    0xE98A    0    "0000FFFF0000FFFF"    �    This function configures the specified timeslot as a low capacity with Z field (LCZ) type when the DECT Digital Modulation Format is set to Framed.    �    Select between the twelve radio fixed part (RFP) timeslots and the twelve portable part (PP) timeslots. Any timeslot number, type, or configuration settings will then apply to the chosen RFP or PP timeslot selection. RFP and PP timeslots can be active concurrently. 

Valid Values:
  AGESG_VAL_TDMA_DECT_RFP - radio fixed part (RFP) timeslots
  AGESG_VAL_TDMA_DECT_PP  - portable part (PP) timeslots

Default Value:
  AGESG_VAL_TDMA_DECT_RFP - radio fixed part (RFP) timeslots     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    Sets the operating state of the specified timeslot (On or Off).

Valid Values:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value: VI_TRUE (1)    .    Selects the B field data pattern for the specified timeslot for framed data transmissions.

Valid Values:
  AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_PN9 
      - PN9 pseudo-random bit pattern
  
  AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_PN15
      - PN15 pseudo-random bit pattern

  AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_FIX4
      - 4-bit repeating sequence data pattern

  AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_USERFILE
      - external data input data pattern

  AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_EXT
      - data pattern supplied by external data inputs

  AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_P4
      - 4 1's & 4 0's binary data pattern

  AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_P8
      - 8 1's & 8 0's binary data pattern

  AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_P16
      - 16 1's & 16 0's binary data pattern

  AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_P32
      - 32 1's & 32 0's binary data pattern

  AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_P64
      - 64 1's & 64 0's binary data pattern

  AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_FDEV1_HS
      - frequency deviation half-slot binary data pattern

  AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_FDEV1_FS
      - frequency deviation full-slot binary data pattern

  AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_FDEV2_FS
      - frequency deviation full-slot binary data pattern

  AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_FACC
      - frequency accuracy binary data pattern

  AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_DM0
      - all zeros binary data pattern

  AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_DM1
      - all ones binary data pattern



Default Value:
  AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_PN9 
      - PN9 pseudo-random bit pattern
       �    Sets the 4-bit repeating data pattern if Fix4 is selected for the pattern data source.

Valid Range:  
     0x0 to  0xF (hexadecimal)
or  0000 to 1111 (binary)

Default Value: 0x0 (hexadecimal)     �    Selects user file name to load from the instrument memory if User File is selected for the pattern data source.

Default Value: ""    	    Sets the 16-bit preamble data pattern. The instrument preset value represents the DECT standard and is (hex) AAAA when transmit link is RFP and (hex) 5555 when transmit link is PP.

Valid Range:  0x0000 to 0xFFFF (hexadecimal)

Default Value: 0xAAAA (hexadecimal)    
    Sets the 16-bit synchronization word. The instrument preset value represents the DECT standard and is (hex) E98A when transmit link is RFP and (hex) 1675 when transmit link is PP.

Default Range:  0x0000 to 0xFFFF (hexadecimal)

Default Value: 0xE98A (hexadecimal)     K    Select the timeslot to configure.

Valid Range: 0 to 11

Default Value: 0    �    Sets the 64-bit A field. The instrument preset value represents the PHS standard and is (hex) 0000FFFF0000FFFF.

This parameter has to be a string type, therefore the user must enter the 64-bit sequence as an ASCII string. Care must be given to make sure that the ASCII characters used are valid hexadecimal alphanumerics.

Valid Range: 
    0000000000000000 to FFFFFFFFFFFFFFFF (hexadecimal)

Default Value: "0000FFFF0000FFFF" (hexadecimal)   �M 0  � �    Transmit Link                    �3, 
  �  �    Instrument Handle                ��#����  �    Status                           �; -� �       Timeslot Enabled                 �� �  � �    B Field Data                     �, � � � �    FIX4 Data                        �� �q 	�  �    User File                        �� r  � �    Timeslot Preamble                �� r � � �    Synchronization Word             �� 0 � � �    Timeslot Number                  �� rg �  �    A Field                                       YRadio Fixed Part (RFP) AGESG_VAL_TDMA_DECT_RFP Portable Part (PP) AGESG_VAL_TDMA_DECT_PP        	          On VI_TRUE Off VI_FALSE              �PN9 AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_PN9 PN15 AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_PN15 FIX4 AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_FIX4 User File AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_USERFILE Ext AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_EXT 4 1's & 4 0's AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_P4 8 1's & 8 0's AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_P8 16 1's & 16 0's AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_P16 32 1's & 32 0's AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_P32 64 1's & 64 0's AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_P64 FDEV1_HS AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_FDEV1_HS FDEV1_FS AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_FDEV1_FS FDEV2_FS AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_FDEV2_FS FACC AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_FACC DM0 AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_DM0 DM1 AGESG_VAL_TDMA_DECT_LCZ_B_FIELD_DM1    0x0    ""    0xAAAA    0xE98A    0    "0000FFFF0000FFFF"    �    This function configures the specified timeslot as a dummy bearer (DB) type when the DECT Digital Modulation Format is set to Framed.        Selects either the Dummy Bearer 1 or 2 timeslot type.

Valid Values:
    AGESG_VAL_TDMA_DECT_DB_DUMMY_1 - Dummy Bearer 1 timeslot
    AGESG_VAL_TDMA_DECT_DB_DUMMY_2 - Dummy Bearer 2 timeslot

Default Value:
    AGESG_VAL_TDMA_DECT_DB_DUMMY_1 - Dummy Bearer 1 timeslot     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     K    Select the timeslot to configure.

Valid Range: 0 to 11

Default Value: 0     �    Sets the operating state of the specified timeslot (On or Off).

Valid Values:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value: VI_TRUE (1)    	    Sets the 16-bit preamble data pattern. The instrument preset value represents the DECT standard and is (hex) AAAA when transmit link is RFP and (hex) 5555 when transmit link is PP.

Valid Range:  0x0000 to 0xFFFF (hexadecimal)

Default Value: 0xAAAA (hexadecimal)    
    Sets the 16-bit synchronization word. The instrument preset value represents the DECT standard and is (hex) E98A when transmit link is RFP and (hex) 1675 when transmit link is PP.

Default Range:  0x0000 to 0xFFFF (hexadecimal)

Default Value: 0xE98A (hexadecimal)    �    Sets the 64-bit A field. The instrument preset value represents the PHS standard and is (hex) 0000FFFF0000FFFF.

This parameter has to be a string type, therefore the user must enter the 64-bit sequence as an ASCII string. Care must be given to make sure that the ASCII characters used are valid hexadecimal alphanumerics.

Valid Range: 
    0000000000000000 to FFFFFFFFFFFFFFFF (hexadecimal)

Default Value: "0000FFFF0000FFFF" (hexadecimal)   �U 1  � �    Dummy Type                       �j, 
  �  �    Instrument Handle                �"����  �    Status                           �r 1 � � �    Timeslot Number                  �� .� �       Timeslot Enabled                 �� s  � �    Timeslot Preamble                �� s � � �    Synchronization Word             �� sw �  �    A Field                                       \Dummy Bearer 1 AGESG_VAL_TDMA_DECT_DB_DUMMY_1 Dummy Bearer 2 AGESG_VAL_TDMA_DECT_DB_DUMMY_2        	           0   On VI_TRUE Off VI_FALSE    0xAAAA    0xE98A    "0000FFFF0000FFFF"    |    This function configures the specified timeslot as a custom type when the DECT Digital Modulation Format is set to Framed.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    �    Select between the twelve radio fixed part (RFP) timeslots and the twelve portable part (PP) timeslots. Any timeslot number, type, or configuration settings will then apply to the chosen RFP or PP timeslot selection. RFP and PP timeslots can be active concurrently. 

Valid Values:
  AGESG_VAL_TDMA_DECT_RFP - radio fixed part (RFP) timeslots
  AGESG_VAL_TDMA_DECT_PP  - portable part (PP) timeslots

Default Value:
  AGESG_VAL_TDMA_DECT_RFP - radio fixed part (RFP) timeslots     �    Sets the operating state of the specified timeslot (On or Off).

Valid Values:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value: VI_TRUE (1)     K    Select the timeslot to configure.

Valid Range: 0 to 11

Default Value: 0    &    Selects the data pattern for the specified timeslot for framed data transmissions.

Valid Values:
  AGESG_VAL_TDMA_DECT_CUSTOM_DATA_PN9 
      - PN9 pseudo-random bit pattern
  
  AGESG_VAL_TDMA_DECT_CUSTOM_DATA_PN15
      - PN15 pseudo-random bit pattern

  AGESG_VAL_TDMA_DECT_CUSTOM_DATA_FIX4
      - 4-bit repeating sequence data pattern

  AGESG_VAL_TDMA_DECT_CUSTOM_DATA_USERFILE
      - external data input data pattern

  AGESG_VAL_TDMA_DECT_CUSTOM_DATA_EXT
      - data pattern supplied by external data inputs

  AGESG_VAL_TDMA_DECT_CUSTOM_DATA_P4
      - 4 1's & 4 0's binary data pattern

  AGESG_VAL_TDMA_DECT_CUSTOM_DATA_P8
      - 8 1's & 8 0's binary data pattern

  AGESG_VAL_TDMA_DECT_CUSTOM_DATA_P16
      - 16 1's & 16 0's binary data pattern

  AGESG_VAL_TDMA_DECT_CUSTOM_DATA_P32
      - 32 1's & 32 0's binary data pattern

  AGESG_VAL_TDMA_DECT_CUSTOM_DATA_P64
      - 64 1's & 64 0's binary data pattern

  AGESG_VAL_TDMA_DECT_CUSTOM_DATA_FDEV1_HS
      - frequency deviation half-slot binary data pattern

  AGESG_VAL_TDMA_DECT_CUSTOM_DATA_FDEV1_FS
      - frequency deviation full-slot binary data pattern

  AGESG_VAL_TDMA_DECT_CUSTOM_DATA_FDEV2_FS
      - frequency deviation full-slot binary data pattern

  AGESG_VAL_TDMA_DECT_CUSTOM_DATA_FACC
      - frequency accuracy binary data pattern

  AGESG_VAL_TDMA_DECT_CUSTOM_DATA_DM0
      - all zeros binary data pattern

  AGESG_VAL_TDMA_DECT_CUSTOM_DATA_DM1
      - all ones binary data pattern



Default Value:
  AGESG_VAL_TDMA_DECT_CUSTOM_DATA_PN9 
      - PN9 pseudo-random bit pattern
       �    Sets the 4-bit repeating data pattern if Fix4 is selected for the pattern data source.

Valid Range:  
     0x0 to  0xF (hexadecimal)
or  0000 to 1111 (binary)

Default Value: 0x0 (hexadecimal)     �    Selects user file name to load from the instrument memory if User File is selected for the pattern data source.

Default Value: ""   �W, 
  �  �    Instrument Handle                �
#����  �    Status                           �_ -  � �    Transmit Link                    �E *� �       Timeslot Enabled                 �  - � � �    Timeslot Number                  �S v  � �    Custom Data                      ρ v � � �    FIX4 Data                        �L v} �  �    User File                              	                      YRadio Fixed Part (RFP) AGESG_VAL_TDMA_DECT_RFP Portable Part (PP) AGESG_VAL_TDMA_DECT_PP   On VI_TRUE Off VI_FALSE    0              �PN9 AGESG_VAL_TDMA_DECT_CUSTOM_DATA_PN9 PN15 AGESG_VAL_TDMA_DECT_CUSTOM_DATA_PN15 FIX4 AGESG_VAL_TDMA_DECT_CUSTOM_DATA_FIX4 User File AGESG_VAL_TDMA_DECT_CUSTOM_DATA_USERFILE Ext AGESG_VAL_TDMA_DECT_CUSTOM_DATA_EXT 4 1's & 4 0's AGESG_VAL_TDMA_DECT_CUSTOM_DATA_P4 8 1's & 8 0's AGESG_VAL_TDMA_DECT_CUSTOM_DATA_P8 16 1's & 16 0's AGESG_VAL_TDMA_DECT_CUSTOM_DATA_P16 32 1's & 32 0's AGESG_VAL_TDMA_DECT_CUSTOM_DATA_P32 64 1's & 64 0's AGESG_VAL_TDMA_DECT_CUSTOM_DATA_P64 FDEV1_HS AGESG_VAL_TDMA_DECT_CUSTOM_DATA_FDEV1_HS FDEV1_FS AGESG_VAL_TDMA_DECT_CUSTOM_DATA_FDEV1_FS FDEV2_FS AGESG_VAL_TDMA_DECT_CUSTOM_DATA_FDEV2_FS FACC AGESG_VAL_TDMA_DECT_CUSTOM_DATA_FACC DM0 AGESG_VAL_TDMA_DECT_CUSTOM_DATA_DM0 DM1 AGESG_VAL_TDMA_DECT_CUSTOM_DATA_DM1    0x0    ""    �    This function configures the specified timeslot as a normal type (Up Normal, Down Normal Continuous, Down Normal Discontinuous) when the TETRA Digital Modulation Format is set to Framed.     O    Select the timeslot to configure.

Valid Range: 1 through 4

Default Value: 1     �    Sets the operating state of the specified timeslot (On or Off).

Valid Values:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value:  VI_TRUE (1)    �    Select control timeslot type (uplink normal, downlink normal continuous, and downlink normal discontinuous). 

Downlink timeslots cannot be mixed with uplink timeslots. If any timeslots are already designated as uplink, and a downlink timeslot type is selected, the uplink timeslot wills be changed to downlink types, and vice versa. 

Valid Values:

   AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_UP_NORMAL
       - uplink normal timeslot

   AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_DOWN_NORMAL_CONT
       - downlink normal continuous timeslot

   AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_DOWN_NORMAL_DISCONT
       - downlink normal discontinuous timeslot

Default Value:  AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_UP_NORMAL
        Selects the data pattern for the specified timeslot for framed data transmissions.

Valid Values:
   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_PN9
       - PN9 pseudo-random bit pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_PN15
       - PN15 pseudo-random bit pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_FIX4
       - 4-bit repeating sequence data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_USER_FILE
       - external data input data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_EXTERNAL
       - data pattern supplied by external data inputs

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P4
       - 4 1's & 4 0's binary data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P8
       - 8 1's & 8 0's binary data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P16
       - 16 1's & 16 0's binary data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P32
       - 32 1's & 32 0's binary data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P64
       - 64 1's & 64 0's binary data pattern

Default Value: AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_PN9     �    Sets the 4-bit repeating data pattern if Fix4 is selected for the pattern data source.

Valid Range:
    0x0 through  0xF (hexadecimal)
   0000 through 1111 (binary)

Default Value:  0     �    Selects user file name to load from the instrument memory if User File is selected for the pattern data source.

Default Value: ""     �    Sets the 30-bit training sequence (TS).

Valid Range: 0x000000 through 0x3FFFFF (hexadecimal)

Default Value: 0x343A74 (hexadecimal)     �    Sets the 14-bit broadcast bits (B1). B1 is not set for uplink normal timeslot type.

Valid Range:  0x0000 through 0x101A (hexadecimal)

Default Value: 0x0000 (hexadecimal)     �    Sets the 16-bit broadcast bits (B2). B2 is not set for uplink normal timeslot type.

Valid Range: 0x0000 through 0x1FFF (hexadecimal)

Default Value: 0x0000 (hexadecimal)     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors   �� )  � �    Timeslot Number                  �4 & � �       Timeslot Enabled                 �� )u � �    Timeslot Type                    ڷ g  � �    Timeslot Data                    �� g � � �    FIX4 Data                        ߏ gu �  �    User File                        � �  � �    Training Sequence                � � � � �    Leading Broadcast bit (B1)       �^ �u 	� �    Trailing Broadcast Bit (B2)      �, 
  �  �    Instrument Handle                ��#����  �    Status                             1   On VI_TRUE Off VI_FALSE               �Up Normal AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_UP_NORMAL Down Normal Cont AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_DOWN_NORMAL_CONT Down Normal Disc AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_DOWN_NORMAL_DISCONT            
  �PN9 AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_PN9 PN15 AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_PN15 FIX4 AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_FIX4 User File AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_USER_FILE Ext AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_EXTERNAL 4 1's & 4 0's AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P4 8 1's & 8 0's AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P8 16 1's & 16 0's AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P16 32 1's & 32 0's AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P32 64 1's & 64 0's AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P64    0    ""    	0x343A74    0    0        	           �    This function configures the specified timeslot as a control type (Up Control 1 & 2) when the TETRA Digital Modulation Format is set to Framed.        Select control timeslot type (uplink control 1 or 2). 

Downlink timeslots cannot be mixed with uplink timeslots. If any timeslots are already designated as uplink, and a downlink timeslot type is selected, the uplink timeslot wills be changed to downlink types, and vice versa. 

Valid Values:
   AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_UP_CONTROL1
       - uplink control 1 timeslot

   AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_UP_CONTROL2
       - uplink control 2 timeslot

Default Value: AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_UP_CONTROL1     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     O    Select the timeslot to configure.

Valid Range: 1 through 4

Default Value: 1     �    Sets the operating state of the specified timeslot (On or Off).

Valid Values:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value:  VI_TRUE (1)        Selects the data pattern for the specified timeslot for framed data transmissions.

Valid Values:
   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_PN9
       - PN9 pseudo-random bit pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_PN15
       - PN15 pseudo-random bit pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_FIX4
       - 4-bit repeating sequence data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_USER_FILE
       - external data input data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_EXTERNAL
       - data pattern supplied by external data inputs

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P4
       - 4 1's & 4 0's binary data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P8
       - 8 1's & 8 0's binary data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P16
       - 16 1's & 16 0's binary data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P32
       - 32 1's & 32 0's binary data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P64
       - 64 1's & 64 0's binary data pattern

Default Value: AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_PN9     �    Sets the 4-bit repeating data pattern if Fix4 is selected for the pattern data source.

Valid Range:
    0x0 through  0xF (hexadecimal)
   0000 through 1111 (binary)

Default Value:  0     �    Selects user file name to load from the instrument memory if User File is selected for the pattern data source.

Default Value: ""     �    Sets the 30-bit training sequence (TS).

Valid Range: 0x000000 through 0x3FFFFFFF (hexadecimal)

Default Value: 0x2743A743 (hexadecimal)   �& ,v � �    Timeslot Type                    �@, 
  �  �    Instrument Handle                ��#����  �    Status                           �H ,  � �    Timeslot Number                  �� ) �       Timeslot Enabled                 �[ m  � �    Timeslot Data                    �q m � � �    FIX4 Data                        �3 mv �  �    User File                        �� �  � �    Training Sequence                             xUp Control 1 AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_UP_CONTROL1 Up Control 2 AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_UP_CONTROL2        	           1   On VI_TRUE Off VI_FALSE            
  �PN9 AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_PN9 PN15 AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_PN15 FIX4 AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_FIX4 User File AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_USER_FILE Ext AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_EXTERNAL 4 1's & 4 0's AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P4 8 1's & 8 0's AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P8 16 1's & 16 0's AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P16 32 1's & 32 0's AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P32 64 1's & 64 0's AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P64    0    ""    0x2743A743    �    This function configures the specified timeslot as a synchronization type (Down Synchronization Continuous, Down Synchronization Discontinuous) when the TETRA Digital Modulation Format is set to Framed.    �    Sets the 80-bit frequency correction bits (FCOR) value.

This parameter has to be a string type, therefore the user must enter the 80-bit sequence as an ASCII string. Care must be given to make sure that the ASCII characters used are valid hexadecimal alphanumerics.

Default Range:
  from 
     "00000000000000000000" (80 bits hexadecimal value)
  to
     "FFFFFFFFFFFFFFFFFFFF" (80 bits hexadecimal value)

Default Value:
    "FF0000000000000000FF" (80 bits hexadecimal value)    �    Sets the 120-bit synchronization block bits (SSB) value.

This parameter has to be a string type, therefore the user must enter the 120-bit sequence as an ASCII string. Care must be given to make sure that the ASCII characters used are valid hexadecimal alphanumerics.

Valid Range:
  from
    "000000000000000000000000000000" (120 bits hexadecimal)
  to
    "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF" (120 bits hexadecimal)

Default Value:
    "000000000000000000000000000000" (120 bits hexadecimal)    �    Sets the 38-bit synchronization training sequence bits (STS) value.

This parameter has to be a string type, therefore the user must enter the 38-bit sequence as an ASCII string. Care must be given to make sure that the ASCII characters used are valid hexadecimal alphanumerics.

Valid Range:
  from
    "0000000000"  (38 bits hexadecimal value)
  to
    "3FFFFFFFFF"  (38 bits hexadecimal value)

Default Value:
   "30673A7067"  (38 bits hexadecimal value)     z    Sets the 30-bit broadcast bits (B).

Valid Range: 0x0 through 0x3FFFFFFF (hexadecimal)

Default Value: 0x0 (hexadecimal)     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    s    Select control timeslot type (downlink synchronization continuous, and downlink synchronization discontinuous). 

Downlink timeslots cannot be mixed with uplink timeslots. If any timeslots are already designated as uplink, and a downlink timeslot type is selected, the uplink timeslot wills be changed to downlink types, and vice versa. 

Valid Values:
   AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_DOWN_SYNC_CONT
       - downlink normal continuous timeslot

   AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_DOWN_SYNC_DISCONT
       - downlink normal discontinuous timeslot

Default Value: 
   AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_DOWN_SYNC_CONT     O    Select the timeslot to configure.

Valid Range: 1 through 4

Default Value: 1     �    Sets the operating state of the specified timeslot (On or Off).

Valid Values:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value:  VI_TRUE (1)        Selects the data pattern for the specified timeslot for framed data transmissions.

Valid Values:
   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_PN9
       - PN9 pseudo-random bit pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_PN15
       - PN15 pseudo-random bit pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_FIX4
       - 4-bit repeating sequence data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_USER_FILE
       - external data input data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_EXTERNAL
       - data pattern supplied by external data inputs

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P4
       - 4 1's & 4 0's binary data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P8
       - 8 1's & 8 0's binary data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P16
       - 16 1's & 16 0's binary data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P32
       - 32 1's & 32 0's binary data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P64
       - 64 1's & 64 0's binary data pattern

Default Value: AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_PN9     �    Sets the 4-bit repeating data pattern if Fix4 is selected for the pattern data source.

Valid Range:
    0x0 through  0xF (hexadecimal)
   0000 through 1111 (binary)

Default Value:  0     �    Selects user file name to load from the instrument memory if User File is selected for the pattern data source.

Default Value: ""   � �  � �    Frequency Correction (FCOR)      � � � �,    Synchronization Block Bits       � �  	� �    Sinchronization Training Bits    
� � � 
� �    Breadcast Bits                   , 
  �  �    Instrument Handle                �#����  �    Status                            .r � �    Timeslot Type                    � .  � �    Timeslot Number                  � + � �       Timeslot Enabled                 � m  � �    Timeslot Data                    � m � � �    FIX4 Data                        y mp �  �    User File                          "FF0000000000000000FF"    !"000000000000000000000000000000"    "30673A7067"    0x0        	                      �Down Sync Cont AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_DOWN_SYNC_CONT Down Sync Disc AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_DOWN_SYNC_DISCONT    1   On VI_TRUE Off VI_FALSE            
  �PN9 AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_PN9 PN15 AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_PN15 FIX4 AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_FIX4 User File AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_USER_FILE Ext AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_EXTERNAL 4 1's & 4 0's AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P4 8 1's & 8 0's AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P8 16 1's & 16 0's AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P16 32 1's & 32 0's AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P32 64 1's & 64 0's AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P64    0    ""    �    This function configures the specified timeslot as a custom type (Up Custom, Down Custom Continuous, Down Custom Discontinuous) when the TETRA Digital Modulation Format is set to Framed.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     O    Select the timeslot to configure.

Valid Range: 1 through 4

Default Value: 1     �    Sets the operating state of the specified timeslot (On or Off).

Valid Values:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value:  VI_TRUE (1)    o    Select custom timeslot type. 

Downlink timeslots cannot be mixed with uplink timeslots. If any timeslots are already designated as uplink, and a downlink timeslot type is selected, the uplink timeslot wills be changed to downlink types, and vice versa. 

Valid Values:

   AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_UP_CUSTOM
       - uplink custom timeslot

   AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_DOWN_CUSTOM_CONT
       - downlink custom continuous timeslot

   AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_DOWN_CUSTOM_DISCONT
       - downlink custom discontinuous timeslot

Default Value:  AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_UP_CUSTOM
        Selects the data pattern for the specified timeslot for framed data transmissions.

Valid Values:
   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_PN9
       - PN9 pseudo-random bit pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_PN15
       - PN15 pseudo-random bit pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_FIX4
       - 4-bit repeating sequence data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_USER_FILE
       - external data input data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_EXTERNAL
       - data pattern supplied by external data inputs

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P4
       - 4 1's & 4 0's binary data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P8
       - 8 1's & 8 0's binary data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P16
       - 16 1's & 16 0's binary data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P32
       - 32 1's & 32 0's binary data pattern

   AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P64
       - 64 1's & 64 0's binary data pattern

Default Value: AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_PN9     �    Sets the 4-bit repeating data pattern if Fix4 is selected for the pattern data source.

Valid Range:
    0x0 through  0xF (hexadecimal)
   0000 through 1111 (binary)

Default Value:  0     �    Selects user file name to load from the instrument memory if User File is selected for the pattern data source.

Default Value: ""   !q, 
  �  �    Instrument Handle                "$#����  �    Status                           (y 2  � �    Timeslot Number                  (� / � �       Timeslot Enabled                 )� 2s � �    Timeslot Type                    , �  � �    Timeslot Data                    0 � � � �    FIX4 Data                        0� �s �  �    User File                              	           1   On VI_TRUE Off VI_FALSE               �Up Custom AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_UP_CUSTOM Down Custom Cont AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_DOWN_CUSTOM_CONT Down Custom Disc AGESG_VAL_TDMA_TETRA_TIMESLOT_TYPE_DOWN_CUSTOM_DISCONT            
  �PN9 AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_PN9 PN15 AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_PN15 FIX4 AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_FIX4 User File AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_USER_FILE Ext AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_EXTERNAL 4 1's & 4 0's AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P4 8 1's & 8 0's AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P8 16 1's & 16 0's AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P16 32 1's & 32 0's AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P32 64 1's & 64 0's AGESG_VAL_TDMA_TETRA_TIMESLOT_DATA_P64    0    ""    N    This function is used to configure TETRA Digital Modulation Format scramble.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors        Set the scramble capability. When set to on (VI_TRUE), the data in the related fields will be scrambled using the seed value set with the Scramble Seed parameter.

Valid Values:
  VI_TRUE (1)  - Enables scramble
  VI_FALSE (0) - Disables scramble

Default Value: VI_FALSE (0)    �    Set the scramble seed value. The scramble seed specifies the starting point in the PRBS generator for the scramble.

This parameter has to be a string type, therefore the user must enter the 32-bit sequence as an ASCII string. Care must be given to make sure that the ASCII characters used are valid hexadecimal alphanumerics.

Valid Range:
   "00000000" through "FFFFFFFF" (hexadecimal value)

Default Value: "FFFFFFFF" (hexadecimal value)   6{, 
  �  �    Instrument Handle                7.#����  �    Status                           =� 5 J �       Scramble Enabled                 >� 8 � � �    Scramble Seed                          	           On VI_TRUE Off VI_FALSE    "FFFFFFFF"    �    This function configures the specified timeslot as a traffic channel (TCH) type when the PHS Digital Modulation Format is set to Framed.     �    Select the timeslot to configure.  Your selection will apply to any of the four timeslots in either the uplink or the downlink channel depending on which you have activated with Timeslot Type.

Valid Range: 1 through 4

Default Value: 1     �    Sets the operating state of the specified timeslot (On or Off).

Valid Range:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value: VI_TRUE (1)    4    Sets the channel type to be an uplink or a downlink timeslot.
   
Valid Values:
  AGESG_VAL_TDMA_PHS_CHANNEL_UPLINK
     - Uplink Traffic channel (mobile station to base).

  AGESG_VAL_TDMA_PHS_CHANNEL_DOWNLINK
     - Downlink Traffic channel (base station to mobile).

  AGESG_VAL_TDMA_PHS_CHANNEL_UPLINK_TCH_ALL
     - Uplink Traffic channel (mobile station to base) for all timeslots.

  AGESG_VAL_TDMA_PHS_CHANNEL_DOWNLINK_TCH_ALL
     - Downlink Traffic channel (base station to mobile) for all timeslots.

Default Value: AGESG_VAL_TDMA_PHS_CHANNEL_DOWNLINK    �    Selects the data pattern for the specified timeslot for framed data transmissions.

Valid Values:

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_PN9
       - PN9 pseudo-random bit pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_PN15
       - PN15 pseudo-random bit pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_FIX4
       - 4-bit repeating sequence data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_USER_FILE
       - external data input data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_EXTERNAL
       - data pattern supplied by external data inputs

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P4
       - 4 1's & 4 0's binary data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P8
       - 8 1's & 8 0's binary data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P16
       - 16 1's & 16 0's binary data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P32
       - 32 1's & 32 0's binary data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P64
       - 64 1's & 64 0's binary data pattern

Default Value: AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_PN9     �    Sets the 4-bit repeating data pattern if Fix4 is selected for the pattern data source.

Default Range:
    0x0 through  0xF (hexadecimal)
   0000 through 1111 (binary)

Default Value: 0000 (binary)     �    Selects user file name to load from the instrument memory if User File is selected for the pattern data source.

Default Value: ""     w    Sets the 16-bit unique word (UW).

Valid Range: 0x0 through 0xFFFF (hexadecimal)

Default Value: 0x3D4C (hexadecimal)     �    Sets the 16-bit slow associated control channel (SACCH).

Valid Range: 0x0 through 0xFFFF (hexadecimal)

Default Value: 0x8000 (hexadecimal)     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors   B 0  � �    Timeslot  Number                 B� - �       Timeslot Enabled                 C� 0v � �    Timeslot  Type                   E� q  � �    Data                             I� q � � �    FIX4 Data                        J� qw �  �    User File                        KI �  � �    Unique Word                      K� � � � �    SACCH                            L^, 
  �  �    Instrument Handle                M#����  �    Status                             1   On VI_TRUE Off VI_FALSE              �Uplink Channel AGESG_VAL_TDMA_PHS_CHANNEL_UPLINK Downlink Channel AGESG_VAL_TDMA_PHS_CHANNEL_DOWNLINK Up TCH All AGESG_VAL_TDMA_PHS_CHANNEL_UPLINK_TCH_ALL Down TCH All AGESG_VAL_TDMA_PHS_CHANNEL_DOWNLINK_TCH_ALL            
  �PN9 AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_PN9 PN15 AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_PN15 FIX4 AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_FIX4 User File AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_USER_FILE External AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_EXTERNAL 4 1's & 4 0's AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P4 8 1's & 8 0's AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P8 16 1's & 16 0's AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P16 32 1's & 32 0's AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P32 64 1's & 64 0's AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P64    0    ""    0x3D4C    0x8000        	           �    This function configures the specified timeslot as a synchronization burst (SYNC) type when the PHS Digital Modulation Format is set to Framed.    �    Sets the 32-bit unique word (UW). The instrument preset value represents the PHS standard.

This parameter has to be a string type, therefore the user must enter the 32-bit sequence as an ASCII string. Care must be given to make sure that the ASCII characters used are valid hexadecimal alphanumerics.

Valid Range:
  000000000 through 0FFFFFFFF  (hexadecimal)

Default Value: "050EF2993" (hexadecimal)    y    Sets the 42-bit cell station identification code (CSID).

This parameter has to be a string type, therefore the user must enter the 42-bit sequence as an ASCII string. Care must be given to make sure that the ASCII characters used are valid HEXADECIMAL alphanumerics.

Valid Range:
   00000000000 through 3FFFFFFFFFF (hexadecimal)

Default Value:  "20200020001" (hexadecimal)     �    Sets the 28-bit personal station identification code (PSID). 

Valid Range:
  0x0000000 through 0xFFFFFFF (hexadecimal)

Default Value: 0x0000001 (hexadecimal)    _    Sets the 34-bit idle message (IDLE).

This parameter has to be a string type, therefore the user must enter the 34-bit sequence as an ASCII string. Care must be given to make sure that the ASCII characters used are valid HEXADECIMAL alphanumerics.

Valid Range:
   000000000 through 3FFFFFFFF (hexadecimal)

Default Value:  "000000000" (hexadecimal)     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    Select the timeslot to configure.  Your selection will apply to any of the four timeslots in either the uplink or the downlink channel depending on which you have activated with Timeslot Type.

Valid Range: 1 through 4

Default Value: 1     �    Sets the operating state of the specified timeslot (On or Off).

Valid Range:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value: VI_TRUE (1)    2    Sets the channel type to be an uplink or a downlink timeslot.
   
Valid Values:
  AGESG_VAL_TDMA_PHS_CHANNEL_UPLINK
     - Uplink Channel (mobile station to base).

  AGESG_VAL_TDMA_PHS_CHANNEL_DOWNLINK
     - Downlink Channel (base station to mobile).

Default Value: AGESG_VAL_TDMA_PHS_CHANNEL_DOWNLINK   Y< v  � �    Unique Word                      Z� v � � �    Cell Station ID                  \Y v| � �    Personal Station ID              ] �  � �    IDLE Field                       ^i, 
  �  �    Instrument Handle                _#����  �    Status                           eq 2  � �    Timeslot  Number                 fg / �       Timeslot Enabled                 g! 2w � �    Timeslot  Type                     "50EF2993"    "20200020001"    1    "000000000"        	           1   On VI_TRUE Off VI_FALSE              fUplink Channel AGESG_VAL_TDMA_PHS_CHANNEL_UPLINK Downlink Channel AGESG_VAL_TDMA_PHS_CHANNEL_DOWNLINK    {    This function configures the specified timeslot as a custom type when the PHS Digital Modulation Format is set to Framed.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    Select the timeslot to configure.  Your selection will apply to any of the four timeslots in either the uplink or the downlink channel depending on which you have activated with Timeslot Type.

Valid Range: 1 through 4

Default Value: 1     �    Sets the operating state of the specified timeslot (On or Off).

Valid Range:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value: VI_TRUE (1)    B    Sets the channel type to be an uplink or a downlink timeslot.
   
Valid Values:
  AGESG_VAL_TDMA_PHS_CHANNEL_UPLINK
     - Uplink Traffic channel (mobile station to base).

  AGESG_VAL_TDMA_PHS_CHANNEL_DOWNLINK
     - Downlink Traffic channel (base station to mobile).

Default Value: AGESG_VAL_TDMA_PHS_CHANNEL_DOWNLINK     �    Sets the 4-bit repeating data pattern if Fix4 is selected for the pattern data source.

Default Range:
    0x0 through  0xF (hexadecimal)
   0000 through 1111 (binary)

Default Value: 0000 (binary)     �    Selects user file name to load from the instrument memory if User File is selected for the pattern data source.

Default Value: ""    �    Selects the data pattern for the specified timeslot for framed data transmissions.

Valid Values:
   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_PN9
       - PN9 pseudo-random bit pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_PN15
       - PN15 pseudo-random bit pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_FIX4
       - 4-bit repeating sequence data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_USER_FILE
       - external data input data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_EXTERNAL
       - data pattern supplied by external data inputs

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P4
       - 4 1's & 4 0's binary data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P8
       - 8 1's & 8 0's binary data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P16
       - 16 1's & 16 0's binary data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P32
       - 32 1's & 32 0's binary data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P64
       - 64 1's & 64 0's binary data pattern

Default Value: AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_PN9   k�, 
  �  �    Instrument Handle                lF#����  �    Status                           r� 6  � �    Timeslot  Number                 s� 3 � �       Timeslot Enabled                 tK 6n � �    Timeslot  Type                   u� w � � �    FIX4 Data                        vd wo �  �    User File                        v� w  � �    Data                                   	           1   On VI_TRUE Off VI_FALSE              �Uplink Channel AGESG_VAL_TDMA_PHS_CHANNEL_UPLINK Downlink Channel AGESG_VAL_TDMA_PHS_CHANNEL_DOWNLINK Up TCH All AGESG_VAL_TDMA_PHS_CHANNEL_UPLINK_TCH_ALL Down TCH All AGESG_VAL_TDMA_PHS_CHANNEL_DOWNLINK_TCH_ALL    0    ""            
  �PN9 AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_PN9 PN15 AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_PN15 FIX4 AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_FIX4 User File AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_USER_FILE External AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_EXTERNAL 4 1's & 4 0's AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P4 8 1's & 8 0's AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P8 16 1's & 16 0's AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P16 32 1's & 32 0's AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P32 64 1's & 64 0's AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P64    L    This function is used to configure PHS Digital Modulation Format scramble.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors        Set the scramble capability. When set to on (VI_TRUE), the data in the related fields will be scrambled using the seed value set with the Scramble Seed parameter.

Valid Values:
  VI_TRUE (1)  - Enables scramble
  VI_FALSE (0) - Disables scramble

Default Value: VI_FALSE (0)    �    Set the scramble seed value. The scramble seed specifies the starting point in the PRBS generator for the scramble.

This parameter has to be a string type, therefore the user must enter the 16-bit sequence as an ASCII string. Care must be given to make sure that the ASCII characters used are valid hexadecimal alphanumerics.

Valid Range:
   "000" through "3FF" (hexadecimal value)

Default Value: "3FF" (hexadecimal value)   �, 
  �  �    Instrument Handle                ��#����  �    Status                           � 5 J �       Scramble Enabled                 �( 8 � � �    Scramble Seed                          	           On VI_TRUE Off VI_FALSE    "3FF"    �    This method configures a traffic channel (TCH) type timeslot for the specified timeslot number when the NADC Digital Modulation Format is set to Framed.     �    Sets the 28-bit synchronization word.

Valid Range:
   0x0000000 through 0xFFFFFFF (hexadecimal)

Default Value:  0xA91DE4A (hexadecimal)     �    Sets the 12-bit slow associated control channel (SACCH).

Valid Range:  0x000 through 0xFFF (hexadecimal)

Default Value: 0x000 (hexadecimal)     �    Sets the 12-bit coded digital verification color code (CDVCC). Applicable only to TCH timeslot types (not custom timeslots). 

Valid Range:  0x000 through 0xFFF (hexadecimal)

Default Value: 0x000 (hexadecimal)     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors         Select the timeslot to configure.  Your selection will apply to any of the four timeslots in either the uplink or the downlink channel depending on which you have activated with Timeslot Type.

Valid Range:
    1 through 3  for Full-Rate
    1 through 6  for Half-Rate

Default Value: 1     �    Sets the operating state of the specified timeslot (On or Off).

Valid Range:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value: VI_TRUE (1)    �    Sets the traffic channel timeslot type for the specified timeslot.

Uplink timeslots cannot be mixed with downlink timeslots. If any timeslots are designated as downlink, they will be changed to uplink when any other timeslot is designated as uplink, and visa versa. An instrument warning message (which will manifest itself as an instrument error) will occur whenever an uplink/downlink change occurs.
   
Valid Values:
  AGESG_VAL_TDMA_NADC_CHANNEL_UPLINK
     - Uplink Traffic channel (mobile station to base).

  AGESG_VAL_TDMA_NADC_CHANNEL_DOWNLINK
     - Downlink Traffic channel (base station to mobile).

  AGESG_VAL_TDMA_NADC_CHANNEL_UPLINK_TCH_ALL
     - All timeslots set to Uplink Traffic channel (mobile station to base).

  AGESG_VAL_TDMA_NADC_CHANNEL_DOWNLINK_TCH_ALL
     - All timeslots set to Downlink Traffic channel (base station to mobile).

Default Value: AGESG_VAL_TDMA_NADC_CHANNEL_DOWNLINK        Selects the data pattern for the specified timeslot for framed data transmissions.

Valid Values:

   AGESG_VAL_TDMA_NADC_TIMESLOT_DATA_PN9
       - PN9 pseudo-random bit pattern

   AGESG_VAL_TDMA_NADC_TIMESLOT_DATA_PN15
       - PN15 pseudo-random bit pattern

   AGESG_VAL_TDMA_NADC_TIMESLOT_DATA_FIX4
       - 4-bit repeating sequence data pattern

   AGESG_VAL_TDMA_NADC_TIMESLOT_DATA_USER_FILE
       - external data input data pattern

   AGESG_VAL_TDMA_NADC_TIMESLOT_DATA_EXTERNAL
       - data pattern supplied by external data inputs

   AGESG_VAL_TDMA_NADC_TIMESLOT_DATA_P4
       - 4 1's & 4 0's binary data pattern

   AGESG_VAL_TDMA_NADC_TIMESLOT_DATA_P8
       - 8 1's & 8 0's binary data pattern

   AGESG_VAL_TDMA_NADC_TIMESLOT_DATA_P16
       - 16 1's & 16 0's binary data pattern

   AGESG_VAL_TDMA_NADC_TIMESLOT_DATA_P32
       - 32 1's & 32 0's binary data pattern

   AGESG_VAL_TDMA_NADC_TIMESLOT_DATA_P64
       - 64 1's & 64 0's binary data pattern

Default Value: AGESG_VAL_TDMA_NADC_TIMESLOT_DATA_PN9     �    Sets the 4-bit repeating data pattern if Fix4 is selected for the pattern data source.

Default Range:
    0x0 through  0xF (hexadecimal)
   0000 through 1111 (binary)

Default Value: 0000 (binary)     �    Selects user file name to load from the instrument memory if User File is selected for the pattern data source.

Default Value: ""     �    Sets the 11-bit coded digital control channel locator (CDL). Applicable only to Downlink TCH timeslot type (not custom timeslots). 

Valid Range:  0x000 through 0x7FF (hexadecimal)

Default Value: 0x000 (hexadecimal)   �� �  � �    Synchronization Word             � � � � �    SACCH                            �� �v 	� �    CDVCC                            ��, 
  �  �    Instrument Handle                �>#����  �    Status                           �� -  � �    Timeslot  Number                 �� * �       Timeslot Enabled                 �u -u � �    Timeslot  Type                   � l  � �    Data                             � l � � �    FIX4 Data                        �� lv �  �    User File                        �x �  
� �    CDL                                
0xA91DE4A    0x000    0x000        	           1   On VI_TRUE Off VI_FALSE              �Uplink Channel AGESG_VAL_TDMA_NADC_CHANNEL_UPLINK Downlink Channel AGESG_VAL_TDMA_NADC_CHANNEL_DOWNLINK Up TCH All AGESG_VAL_TDMA_NADC_CHANNEL_UPLINK_TCH_ALL Down TCH All AGESG_VAL_TDMA_NADC_CHANNEL_DOWNLINK_TCH_ALL            
  �PN9 AGESG_VAL_TDMA_NADC_TIMESLOT_DATA_PN9 PN15 AGESG_VAL_TDMA_NADC_TIMESLOT_DATA_PN15 FIX4 AGESG_VAL_TDMA_NADC_TIMESLOT_DATA_FIX4 User File AGESG_VAL_TDMA_NADC_TIMESLOT_DATA_USER_FILE External AGESG_VAL_TDMA_NADC_TIMESLOT_DATA_EXTERNAL 4 1's & 4 0's AGESG_VAL_TDMA_NADC_TIMESLOT_DATA_P4 8 1's & 8 0's AGESG_VAL_TDMA_NADC_TIMESLOT_DATA_P8 16 1's & 16 0's AGESG_VAL_TDMA_NADC_TIMESLOT_DATA_P16 32 1's & 32 0's AGESG_VAL_TDMA_NADC_TIMESLOT_DATA_P32 64 1's & 64 0's AGESG_VAL_TDMA_NADC_TIMESLOT_DATA_P64    0    ""    0x000    r    This function configures the custom specified timeslot when the NADC Digital Modulation Format is set to Framed.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors         Select the timeslot to configure.  Your selection will apply to any of the four timeslots in either the uplink or the downlink channel depending on which you have activated with Timeslot Type.

Valid Range:
    1 through 3  for Full-Rate
    1 through 6  for Half-Rate

Default Value: 1     �    Sets the operating state of the specified timeslot (On or Off).

Valid Range:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value: VI_TRUE (1)    �    Sets the custom timeslot type for the specified timeslot.

Uplink timeslots cannot be mixed with downlink timeslots. If any timeslots are designated as downlink, they will be changed to uplink when any other timeslot is designated as uplink, and visa versa. An instrument warning message (which will manifest itself as an instrument error) will occur whenever an uplink/downlink change occurs.
   
Valid Values:
  AGESG_VAL_TDMA_NADC_CHANNEL_UPLINK
     - Uplink Traffic channel (mobile station to base).

  AGESG_VAL_TDMA_NADC_CHANNEL_DOWNLINK
     - Downlink Traffic channel (base station to mobile).

Default Value: AGESG_VAL_TDMA_NADC_CHANNEL_DOWNLINK     �    Sets the 4-bit repeating data pattern if Fix4 is selected for the pattern data source.

Default Range:
    0x0 through  0xF (hexadecimal)
   0000 through 1111 (binary)

Default Value: 0000 (binary)     �    Selects user file name to load from the instrument memory if User File is selected for the pattern data source.

Default Value: ""    �    Selects the data pattern for the specified timeslot for framed data transmissions.

Valid Values:

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_PN9
       - PN9 pseudo-random bit pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_PN15
       - PN15 pseudo-random bit pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_FIX4
       - 4-bit repeating sequence data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_USER_FILE
       - external data input data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_EXTERNAL
       - data pattern supplied by external data inputs

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P4
       - 4 1's & 4 0's binary data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P8
       - 8 1's & 8 0's binary data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P16
       - 16 1's & 16 0's binary data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P32
       - 32 1's & 32 0's binary data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P64
       - 64 1's & 64 0's binary data pattern

Default Value: AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_PN9   ��, 
  �  �    Instrument Handle                �P#����  �    Status                           �� 5  � �    Timeslot  Number                 �� 2 � �       Timeslot Enabled                 �� 5s � �    Timeslot  Type                   �   � � �    FIX4 Data                        �� t �  �    User File                        �{   � �    Data                                   	           1   On VI_TRUE Off VI_FALSE              �Uplink Channel AGESG_VAL_TDMA_NADC_CHANNEL_UPLINK Downlink Channel AGESG_VAL_TDMA_NADC_CHANNEL_DOWNLINK Up TCH All AGESG_VAL_TDMA_NADC_CHANNEL_UPLINK_TCH_ALL Down TCH All AGESG_VAL_TDMA_NADC_CHANNEL_DOWNLINK_TCH_ALL    0    ""            
  �PN9 AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_PN9 PN15 AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_PN15 FIX4 AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_FIX4 User File AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_USER_FILE External AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_EXTERNAL 4 1's & 4 0's AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P4 8 1's & 8 0's AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P8 16 1's & 16 0's AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P16 32 1's & 32 0's AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P32 64 1's & 64 0's AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P64    3    This function set the frame rate to full or half.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    n    Set the frame rate to full or half. When set to full-rate the timeslots 1, 2, and 3 are paired with timeslots 4, 5, and 6, respectively. Select half-rate for 6 individual timeslots.

Valid Values:
   AGESG_VAL_TDMA_NADC_FRAME_RATE_FULL
      - Full-Rate

   AGESG_VAL_TDMA_NADC_FRAME_RATE_HALF
      - Half-Rate

Default Value:  AGESG_VAL_TDMA_NADC_FRAME_RATE_FULL   �z, 
  �  �    Instrument Handle                �-#����  �    Status                           Â R � � �    Frame Rate                             	                      RFull AGESG_VAL_TDMA_NADC_FRAME_RATE_FULL Half AGESG_VAL_TDMA_NADC_FRAME_RATE_HALF    �    This function configures the specified timeslot as a traffic channel (TCH) type when the PDC Digital Modulation Format is set to Framed.     �    Sets the 20-bit synchronization word.

Valid Range:  0x00000 through 0xFFFFF (hexadecimal)

Default Value:  0x785B4 (hexadecimal)     �    Sets the slow associated control channel (SACCH).

Valid Range:
   0x0000 through 0x7FFF (hexadecimal) for Up TCH

   0x000000 through 0x1FFFFF (hexadecimal) for Down TCH

Default Value: 0x0000 (hexadecimal)     r    Sets the 8-bit color code (CC).

Valid Range: 0x00 through 0xFF (hexadecimal)

Default Value: 0x00 (hexadecimal)     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors         Select the timeslot to configure.  Your selection will apply to any of the four timeslots in either the uplink or the downlink channel depending on which you have activated with Timeslot Type.

Valid Range:
    0 through 2  for Full-Rate
    0 through 5  for Half-Rate

Default Value: 0     �    Sets the operating state of the specified timeslot (On or Off).

Valid Range:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value: VI_TRUE (1)    �    Sets the traffic channel timeslot type for the specified timeslot.

Uplink timeslots cannot be mixed with downlink timeslots. If any timeslots are designated as downlink, they will be changed to uplink when any other timeslot is designated as uplink, and visa versa. An instrument warning message (which will manifest itself as an instrument error) will occur whenever an uplink/downlink change occurs.
   
Valid Values:
  AGESG_VAL_TDMA_PDC_CHANNEL_UPLINK
     - Uplink Traffic channel (mobile station to base).

  AGESG_VAL_TDMA_PDC_CHANNEL_DOWNLINK
     - Downlink Traffic channel (base station to mobile).

  AGESG_VAL_TDMA_PDC_CHANNEL_UPLINK_TCH_ALL
     - All timeslots set to Uplink Traffic channel (mobile station to base).

  AGESG_VAL_TDMA_PDC_CHANNEL_DOWNLINK_TCH_ALL
     - All timeslots set to Downlink Traffic channel (base station to mobile).

Default Value: AGESG_VAL_TDMA_PDC_CHANNEL_UPLINK    �    Selects the data pattern for the specified timeslot for framed data transmissions.

Valid Values:

   AGESG_VAL_TDMA_PDC_TIMESLOT_DATA_PN9
       - PN9 pseudo-random bit pattern

   AGESG_VAL_TDMA_PDC_TIMESLOT_DATA_PN15
       - PN15 pseudo-random bit pattern

   AGESG_VAL_TDMA_PDC_TIMESLOT_DATA_FIX4
       - 4-bit repeating sequence data pattern

   AGESG_VAL_TDMA_PDC_TIMESLOT_DATA_USER_FILE
       - external data input data pattern

   AGESG_VAL_TDMA_PDC_TIMESLOT_DATA_EXTERNAL
       - data pattern supplied by external data inputs

   AGESG_VAL_TDMA_PDC_TIMESLOT_DATA_P4
       - 4 1's & 4 0's binary data pattern

   AGESG_VAL_TDMA_PDC_TIMESLOT_DATA_P8
       - 8 1's & 8 0's binary data pattern

   AGESG_VAL_TDMA_PDC_TIMESLOT_DATA_P16
       - 16 1's & 16 0's binary data pattern

   AGESG_VAL_TDMA_PDC_TIMESLOT_DATA_P32
       - 32 1's & 32 0's binary data pattern

   AGESG_VAL_TDMA_PDC_TIMESLOT_DATA_P64
       - 64 1's & 64 0's binary data pattern

Default Value: AGESG_VAL_TDMA_PDC_TIMESLOT_DATA_PN9     �    Sets the 4-bit repeating data pattern if Fix4 is selected for the pattern data source.

Default Range:
    0x0 through  0xF (hexadecimal)
   0000 through 1111 (binary)

Default Value: 0000 (binary)     �    Selects user file name to load from the instrument memory if User File is selected for the pattern data source.

Default Value: ""   ƚ �  � �    Synchronization Word             �% � � � �    SACCH                            �� �w 	� �    Color Code                       �x, 
  �  �    Instrument Handle                �+#����  �    Status                           π /  � �    Timeslot  Number                 Ш , �       Timeslot Enabled                 �b /v � �    Timeslot  Type                   �� u  � �    Data                             �� u � � �    FIX4 Data                        �� uw �  �    User File                          0x785B4    0x0000    0x00        	           0   On VI_TRUE Off VI_FALSE               �Uplink Channel AGESG_VAL_TDMA_PDC_CHANNEL_UPLINK Downlink Channel AGESG_VAL_TDMA_PDC_CHANNEL_DOWNLINK Up TCH All AGESG_VAL_TDMA_PDC_CHANNEL_UPLINK_TCH_ALL Down TCH All AGESG_VAL_TDMA_PDC_CHANNEL_DOWNLINK_TCH_ALL            
  �PN9 AGESG_VAL_TDMA_PDC_TIMESLOT_DATA_PN9 PN15 AGESG_VAL_TDMA_PDC_TIMESLOT_DATA_PN15 FIX4 AGESG_VAL_TDMA_PDC_TIMESLOT_DATA_FIX4 User File AGESG_VAL_TDMA_PDC_TIMESLOT_DATA_USER_FILE External AGESG_VAL_TDMA_PDC_TIMESLOT_DATA_EXTERNAL 4 1's & 4 0's AGESG_VAL_TDMA_PDC_TIMESLOT_DATA_P4 8 1's & 8 0's AGESG_VAL_TDMA_PDC_TIMESLOT_DATA_P8 16 1's & 16 0's AGESG_VAL_TDMA_PDC_TIMESLOT_DATA_P16 32 1's & 32 0's AGESG_VAL_TDMA_PDC_TIMESLOT_DATA_P32 64 1's & 64 0's AGESG_VAL_TDMA_PDC_TIMESLOT_DATA_P64    0    ""    �    This function configures the specified timeslot as a voice activated transmission channel (VOX) type when the PDC Digital Modulation Format is set to Framed.         Select the timeslot to configure.  Your selection will apply to any of the four timeslots in either the uplink or the downlink channel depending on which you have activated with Timeslot Type.

Valid Range:
    0 through 2  for Full-Rate
    0 through 5  for Half-Rate

Default Value: 0     �    Sets the operating state of the specified timeslot (On or Off).

Valid Range:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value: VI_TRUE (1)        Sets the VOX timeslot type for the specified timeslot. VOX timeslot type selection is only uplink.

Valid Values:
  AGESG_VAL_TDMA_PDC_CHANNEL_UPLINK
     - Uplink Traffic channel (mobile station to base).

Default Value: AGESG_VAL_TDMA_PDC_CHANNEL_UPLINK     �    Sets the 20-bit synchronization word.

Valid Range:  0x00000 through 0xFFFFF (hexadecimal)

Default Value:  0x785B4 (hexadecimal)     �    Sets the slow associated control channel (SACCH).

Valid Range:
   0x0000 through 0x7FFF (hexadecimal)

Default Value: 0x0000 (hexadecimal)     r    Sets the 8-bit color code (CC).

Valid Range: 0x00 through 0xFF (hexadecimal)

Default Value: 0x00 (hexadecimal)     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors   �u 4 # � �    Timeslot  Number                 � 1 �       Timeslot Enabled                 �W 4z � �    Timeslot  Type                   �` } # � �    Synchronization Word             �� } � � �    SACCH                            � }{ � �    Color Code                       ��, 
  �  �    Instrument Handle                �#����  �    Status                             0   On VI_TRUE Off VI_FALSE               1Uplink Channel AGESG_VAL_TDMA_PDC_CHANNEL_UPLINK    0x785B4    0x0000    0x00        	           {    This function configures the specified timeslot as a custom type when the PDC Digital Modulation Format is set to Framed.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors         Select the timeslot to configure.  Your selection will apply to any of the four timeslots in either the uplink or the downlink channel depending on which you have activated with Timeslot Type.

Valid Range:
    0 through 2  for Full-Rate
    0 through 5  for Half-Rate

Default Value: 0     �    Sets the operating state of the specified timeslot (On or Off).

Valid Range:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value: VI_TRUE (1)    �    Sets the custom timeslot type for the specified timeslot.

Uplink timeslots cannot be mixed with downlink timeslots. If any timeslots are designated as downlink, they will be changed to uplink when any other timeslot is designated as uplink, and visa versa. An instrument warning message (which will manifest itself as an instrument error) will occur whenever an uplink/downlink change occurs.
   
Valid Values:
  AGESG_VAL_TDMA_PDC_CHANNEL_UPLINK
     - Uplink Traffic channel (mobile station to base).

  AGESG_VAL_TDMA_PDC_CHANNEL_DOWNLINK
     - Downlink Traffic channel (base station to mobile).

  AGESG_VAL_TDMA_PDC_CHANNEL_UPLINK_TCH_ALL
     - All timeslots set to Uplink Traffic channel (mobile station to base).

  AGESG_VAL_TDMA_PDC_CHANNEL_DOWNLINK_TCH_ALL
     - All timeslots set to Downlink Traffic channel (base station to mobile).

Default Value: AGESG_VAL_TDMA_PDC_CHANNEL_UPLINK     �    Sets the 4-bit repeating data pattern if Fix4 is selected for the pattern data source.

Default Range:
    0x0 through  0xF (hexadecimal)
   0000 through 1111 (binary)

Default Value: 0000 (binary)     �    Selects user file name to load from the instrument memory if User File is selected for the pattern data source.

Default Value: ""    �    Selects the data pattern for the specified timeslot for framed data transmissions.

Valid Values:

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_PN9
       - PN9 pseudo-random bit pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_PN15
       - PN15 pseudo-random bit pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_FIX4
       - 4-bit repeating sequence data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_USER_FILE
       - external data input data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_EXTERNAL
       - data pattern supplied by external data inputs

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P4
       - 4 1's & 4 0's binary data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P8
       - 8 1's & 8 0's binary data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P16
       - 16 1's & 16 0's binary data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P32
       - 32 1's & 32 0's binary data pattern

   AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P64
       - 64 1's & 64 0's binary data pattern

Default Value: AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_PN9   �, 
  �  �    Instrument Handle                �m#����  �    Status                           �� /  � �    Timeslot  Number                 �� , �       Timeslot Enabled                 �� /v � �    Timeslot  Type                   �0 u � � �    FIX4 Data                        �� uw �  �    User File                        �� u  � �    Data                                   	           0   On VI_TRUE Off VI_FALSE               fUplink Channel AGESG_VAL_TDMA_PDC_CHANNEL_UPLINK Downlink Channel AGESG_VAL_TDMA_PDC_CHANNEL_DOWNLINK    0    ""            
  �PN9 AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_PN9 PN15 AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_PN15 FIX4 AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_FIX4 User File AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_USER_FILE External AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_EXTERNAL 4 1's & 4 0's AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P4 8 1's & 8 0's AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P8 16 1's & 16 0's AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P16 32 1's & 32 0's AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P32 64 1's & 64 0's AGESG_VAL_TDMA_PHS_TIMESLOT_DATA_P64    3    This function set the frame rate to full or half.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    k    Set the frame rate to full or half. When set to full-rate the timeslots 1, 2, and 3 are paired with timeslots 4, 5, and 6, respectively. Select half-rate for 6 individual timeslots.

Valid Values:
   AGESG_VAL_TDMA_PDC_FRAME_RATE_FULL
      - Full-Rate

   AGESG_VAL_TDMA_PDC_FRAME_RATE_HALF
      - Half-Rate

Default Value:  AGESG_VAL_TDMA_PDC_FRAME_RATE_FULL   	, 
  �  �    Instrument Handle                	�#����  �    Status                           	  K � � �    Frame Rate                             	                      PFull AGESG_VAL_TDMA_PDC_FRAME_RATE_FULL Half AGESG_VAL_TDMA_PDC_FRAME_RATE_HALF    �    This function configures a normal timeslot type for the specified timeslot when the GSM Digital Modulation Format is set to Framed.     S    Select the timeslot to configure.

Valid Range:
    0 through 7

Default Value: 0     �    Sets the timeslot type for the specified timeslot.

Valid Values:
  AGESG_VAL_TDMA_GSM_TIMESLOT_TYPE_NORMAL
    - Normal timeslot type

  AGESG_VAL_TDMA_GSM_TIMESLOT_TYPE_NORMAL_ALL
    - Normal timeslot type for all timeslots.     �    Sets the 1-bit binary stealing (S) flag for both the stealing flag fields in the normal burst timeslot.

Valid Range:  0x0 through 0x1 (hexadecimal)

Default Value: 0x0 (hexadecimal)    4    Sets the 26-bit training sequence (TS).

This parameter has to be a string type, therefore the user must enter the 26-bit sequence as an ASCII string. Care must be given to make sure that the ASCII characters used are valid hexadecimal alphanumerics.

Dafined Range:
  "0000000" through "3FFFFFF" (hexadecimal)

Predefined Values:
  AGESG_VAL_TDMA_GSM_TRAINING_SEQUENCE_TSC0 - "0970897"
  AGESG_VAL_TDMA_GSM_TRAINING_SEQUENCE_TSC1 - "0B778B7"
  AGESG_VAL_TDMA_GSM_TRAINING_SEQUENCE_TSC2 - "10EE90E"
  AGESG_VAL_TDMA_GSM_TRAINING_SEQUENCE_TSC3 - "11ED11E"
  AGESG_VAL_TDMA_GSM_TRAINING_SEQUENCE_TSC4 - "06B906B"
  AGESG_VAL_TDMA_GSM_TRAINING_SEQUENCE_TSC5 - "13AC13A"
  AGESG_VAL_TDMA_GSM_TRAINING_SEQUENCE_TSC6 - "29F629F"
  AGESG_VAL_TDMA_GSM_TRAINING_SEQUENCE_TSC7 - "3BC4BBC"

Default Value: "0970897" (hexadecimal)     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    Sets the operating state of the specified timeslot (On or Off).

Valid Range:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value: VI_TRUE (1)    U    Selects the data pattern for the specified timeslot for framed data transmissions.

Valid Values:

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_PN9
       - PN9 pseudo-random bit pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_PN15
       - PN15 pseudo-random bit pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_FIX4
       - 4-bit repeating sequence data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_USER_FILE
       - external data input data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_EXTERNAL
       - data pattern supplied by external data inputs

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P4
       - 4 1's & 4 0's binary data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P8
       - 8 1's & 8 0's binary data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P16
       - 16 1's & 16 0's binary data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P32
       - 32 1's & 32 0's binary data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P64
       - 64 1's & 64 0's binary data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_TCHFS_PN9
       - PN9 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_TCHFS_PN15
       - PN15 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_CS1_PN9
       - PN9 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_CS1_PN15
       - PN15 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_DMCS1_PN9
       - PN9 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_DMCS1_PN15
       - PN15 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_UMCS1_PN9
       - PN9 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_UMCS1_PN15
       - PN15 pseudo-random bit pattern into multiframe slot

Default Value: AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_PN9     �    Sets the 4-bit repeating data pattern if Fix4 is selected for the pattern data source.

Default Range:
    0x0 through  0xF (hexadecimal)
   0000 through 1111 (binary)

Default Value: 0000 (binary)     �    Selects user file name to load from the instrument memory if User File is selected for the pattern data source.

Default Value: ""   	. -  � �    Timeslot Number                  	� -s � �    Timeslot Type                    	v �  � �    Steal Bit                        	6 � � �  �    Training Sequence                	r, 
  �  �    Instrument Handle                	%#����  �    Status                           	z * � �       Timeslot Enabled                 	4 w  � �    Data                             	#� w � � �    FIX4 Data                        	$` ws �  �    User File                          0               fNormal AGESG_VAL_TDMA_GSM_TIMESLOT_TYPE_NORMAL Normal All AGESG_VAL_TDMA_GSM_TIMESLOT_TYPE_NORMAL_ALL    0x0    
"0970897"        	          On VI_TRUE Off VI_FALSE              �PN9 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_PN9 PN15 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_PN15 FIX4 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_FIX4 User File AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_USER_FILE External AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_EXTERNAL 4 1's & 4 0's AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P4 8 1's & 8 0's AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P8 16 1's & 16 0's AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P16 32 1's & 32 0's AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P32 64 1's & 64 0's AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P64 TCH/FS PN9 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_TCHFS_PN9 TCH/FS PN15 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_TCHFS_PN15 CS-1 PN9 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_CS1_PN9 CS-1 PN15 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_CS1_PN15 Downlink MCS-1 PN9 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_DMCS1_PN9 Downlink MCS-1 PN15 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_DMCS1_PN15 Uplink MCS-1 PN9 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_UMCS1_PN9 Uplink MCS-1 PN15 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_UMCS1_PN15    0    ""   +    This function configures a frequency correction (FCorr) timeslot type for the specified timeslot when the GSM Digital Modulation Format is set to Framed. Frequency correction is a burst where all of the bits are set to zero. The burst is used for synchronizing the mobile to the correct frequency.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     S    Select the timeslot to configure.

Valid Range:
    0 through 7

Default Value: 0     �    Sets the operating state of the specified timeslot (On or Off).

Valid Range:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value: VI_TRUE (1)   	,�, 
  �  �    Instrument Handle                	-m#����  �    Status                           	3� 8 ! � �    Timeslot Number                  	4 4 �       Timeslot Enabled                       	           0   On VI_TRUE Off VI_FALSE    �    This function configures a sync timeslot type for the specified timeslot when the GSM Digital Modulation Format is set to Framed. Synchronization is a downlink burst that allows the mobile to synchronize in time with the base station.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     S    Select the timeslot to configure.

Valid Range:
    0 through 7

Default Value: 0     �    Sets the operating state of the specified timeslot (On or Off).

Valid Range:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value: VI_TRUE (1)     �    Sets the 4-bit repeating data pattern if Fix4 is selected for the pattern data source.

Default Range:
    0x0 through  0xF (hexadecimal)
   0000 through 1111 (binary)

Default Value: 0000 (binary)     �    Selects user file name to load from the instrument memory if User File is selected for the pattern data source.

Default Value: ""    �    Sets the 64-bit training sequence (TS).

This parameter has to be a string type, therefore the user must enter the 64-bit sequence as an ASCII string. Care must be given to make sure that the ASCII characters used are valid hexadecimal alphanumerics.

Valid Range:
  "0000000000000000"
   through
  "FFFFFFFFFFFFFFFF" (hexadecimal)

Default Value:
  "B962040F2D45761B" (hexadecimal)    U    Selects the data pattern for the specified timeslot for framed data transmissions.

Valid Values:

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_PN9
       - PN9 pseudo-random bit pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_PN15
       - PN15 pseudo-random bit pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_FIX4
       - 4-bit repeating sequence data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_USER_FILE
       - external data input data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_EXTERNAL
       - data pattern supplied by external data inputs

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P4
       - 4 1's & 4 0's binary data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P8
       - 8 1's & 8 0's binary data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P16
       - 16 1's & 16 0's binary data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P32
       - 32 1's & 32 0's binary data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P64
       - 64 1's & 64 0's binary data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_TCHFS_PN9
       - PN9 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_TCHFS_PN15
       - PN15 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_CS1_PN9
       - PN9 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_CS1_PN15
       - PN15 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_DMCS1_PN9
       - PN9 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_DMCS1_PN15
       - PN15 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_UMCS1_PN9
       - PN9 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_UMCS1_PN15
       - PN15 pseudo-random bit pattern into multiframe slot

Default Value: AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_PN9   	6�, 
  �  �    Instrument Handle                	7�#����  �    Status                           	=� 6  � �    Timeslot Number                  	>2 3 � �       Timeslot Enabled                 	>� { � � �    FIX4 Data                        	?� {u �  �    User File                        	@G �  �  �    Training Sequence                	A� {  � �    Data                                   	           0   On VI_TRUE Off VI_FALSE    0    ""    "B962040F2D45761B"              �PN9 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_PN9 PN15 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_PN15 FIX4 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_FIX4 User File AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_USER_FILE External AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_EXTERNAL 4 1's & 4 0's AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P4 8 1's & 8 0's AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P8 16 1's & 16 0's AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P16 32 1's & 32 0's AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P32 64 1's & 64 0's AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P64 TCH/FS PN9 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_TCHFS_PN9 TCH/FS PN15 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_TCHFS_PN15 CS-1 PN9 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_CS1_PN9 CS-1 PN15 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_CS1_PN15 Downlink MCS-1 PN9 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_DMCS1_PN9 Downlink MCS-1 PN15 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_DMCS1_PN15 Uplink MCS-1 PN9 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_UMCS1_PN9 Uplink MCS-1 PN15 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_UMCS1_PN15    �    This function configures a dummy timeslot type for the specified timeslot when the GSM Digital Modulation Format is set to Framed. The dummy burst is used as filler information for unused timeslots in the forward link.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     S    Select the timeslot to configure.

Valid Range:
    0 through 7

Default Value: 0     �    Sets the operating state of the specified timeslot (On or Off).

Valid Range:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value: VI_TRUE (1)    �    Sets the 26-bit training sequence (TS).

This parameter has to be a string type, therefore the user must enter the 26-bit sequence as an ASCII string. Care must be given to make sure that the ASCII characters used are valid hexadecimal alphanumerics.

Dafined Range:
  "0000000" through "3FFFFFF" (hexadecimal)

Predefined Values:
  AGESG_VAL_TDMA_GSM_TRAINING_SEQUENCE_TSC0 - "0970897"
  AGESG_VAL_TDMA_GSM_TRAINING_SEQUENCE_TSC1 - "0B778B7"
  AGESG_VAL_TDMA_GSM_TRAINING_SEQUENCE_TSC2 - "10EE90E"
  AGESG_VAL_TDMA_GSM_TRAINING_SEQUENCE_TSC3 - "11ED11E"
  AGESG_VAL_TDMA_GSM_TRAINING_SEQUENCE_TSC4 - "06B906B"
  AGESG_VAL_TDMA_GSM_TRAINING_SEQUENCE_TSC5 - "13AC13A"
  AGESG_VAL_TDMA_GSM_TRAINING_SEQUENCE_TSC6 - "29F629F"
  AGESG_VAL_TDMA_GSM_TRAINING_SEQUENCE_TSC7 - "3BC4BBC"

Default Value: "0970897" (hexadecimal)

Note:
  Bug in instrument firmware. When you set this parameter to correct value instrument will return error "Data out of range".   	O�, 
  �  �    Instrument Handle                	P�#����  �    Status                           	V� C " � �    Timeslot Number                  	W1 @ � �       Timeslot Enabled                 	W� Cc �  �    Training Sequence                      	           0   On VI_TRUE Off VI_FALSE    
"0970897"    �    This function configures an access timeslot type for the specified timeslot when the GSM Digital Modulation Format is set to Framed. Now is the time. Access is a short, uplink burst for the mobile to access service from a base station.     {    Sets the 8-bit extended tail field (ET).

Valid Range: 0x00 through 0xFF (hexadecimal)

Default Value: 0x3A (hexadecimal)    �    Sets the 41-bit synchronization sequence (SS) in the access burst timeslot.

This parameter has to be a string type, therefore the user must enter the 41-bit sequence as an ASCII string. Care must be given to make sure that the ASCII characters used are valid hexadecimal alphanumerics.

Valid Range:
   "00000000000" through "1FFFFFFFFFF" (hexadecimal)

Default Value:  "096FF335478" (hexadecimal)     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     S    Select the timeslot to configure.

Valid Range:
    0 through 7

Default Value: 0     �    Sets the operating state of the specified timeslot (On or Off).

Valid Range:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value: VI_TRUE (1)     �    Sets the 4-bit repeating data pattern if Fix4 is selected for the pattern data source.

Default Range:
    0x0 through  0xF (hexadecimal)
   0000 through 1111 (binary)

Default Value: 0000 (binary)     �    Selects user file name to load from the instrument memory if User File is selected for the pattern data source.

Default Value: ""    U    Selects the data pattern for the specified timeslot for framed data transmissions.

Valid Values:

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_PN9
       - PN9 pseudo-random bit pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_PN15
       - PN15 pseudo-random bit pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_FIX4
       - 4-bit repeating sequence data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_USER_FILE
       - external data input data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_EXTERNAL
       - data pattern supplied by external data inputs

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P4
       - 4 1's & 4 0's binary data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P8
       - 8 1's & 8 0's binary data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P16
       - 16 1's & 16 0's binary data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P32
       - 32 1's & 32 0's binary data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P64
       - 64 1's & 64 0's binary data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_TCHFS_PN9
       - PN9 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_TCHFS_PN15
       - PN15 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_CS1_PN9
       - PN9 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_CS1_PN15
       - PN15 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_DMCS1_PN9
       - PN9 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_DMCS1_PN15
       - PN15 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_UMCS1_PN9
       - PN9 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_UMCS1_PN15
       - PN15 pseudo-random bit pattern into multiframe slot

Default Value: AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_PN9   	]� �  � �    Extended Tail                    	^i � � �  �    Synchronization Sequence         	`, 
  �  �    Instrument Handle                	`�#����  �    Status                           	g	 4  � �    Timeslot Number                  	gd 1 � �       Timeslot Enabled                 	h w � � �    FIX4 Data                        	h� wt �  �    User File                        	iy w  � �    Data                               0x3A    "096FF335478"        	           0   On VI_TRUE Off VI_FALSE    0    ""              �PN9 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_PN9 PN15 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_PN15 FIX4 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_FIX4 User File AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_USER_FILE External AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_EXTERNAL 4 1's & 4 0's AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P4 8 1's & 8 0's AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P8 16 1's & 16 0's AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P16 32 1's & 32 0's AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P32 64 1's & 64 0's AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P64 TCH/FS PN9 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_TCHFS_PN9 TCH/FS PN15 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_TCHFS_PN15 CS-1 PN9 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_CS1_PN9 CS-1 PN15 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_CS1_PN15 Downlink MCS-1 PN9 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_DMCS1_PN9 Downlink MCS-1 PN15 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_DMCS1_PN15 Uplink MCS-1 PN9 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_UMCS1_PN9 Uplink MCS-1 PN15 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_UMCS1_PN15    �    This function configures a custom timeslot type for the specified timeslot when the GSM Digital Modulation Format is set to Framed. The custom timeslot is provided for user's flexibility but is not a standard GSM timeslot type.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     S    Select the timeslot to configure.

Valid Range:
    0 through 7

Default Value: 0     �    Sets the operating state of the specified timeslot (On or Off).

Valid Range:
   VI_TRUE (1)  - Enables timeslot
   VI_FALSE (0) - Disables timeslot

Default Value: VI_TRUE (1)     �    Sets the 4-bit repeating data pattern if Fix4 is selected for the pattern data source.

Default Range:
    0x0 through  0xF (hexadecimal)
   0000 through 1111 (binary)

Default Value: 0000 (binary)     �    Selects user file name to load from the instrument memory if User File is selected for the pattern data source.

Default Value: ""    U    Selects the data pattern for the specified timeslot for framed data transmissions.

Valid Values:

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_PN9
       - PN9 pseudo-random bit pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_PN15
       - PN15 pseudo-random bit pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_FIX4
       - 4-bit repeating sequence data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_USER_FILE
       - external data input data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_EXTERNAL
       - data pattern supplied by external data inputs

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P4
       - 4 1's & 4 0's binary data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P8
       - 8 1's & 8 0's binary data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P16
       - 16 1's & 16 0's binary data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P32
       - 32 1's & 32 0's binary data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P64
       - 64 1's & 64 0's binary data pattern

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_TCHFS_PN9
       - PN9 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_TCHFS_PN15
       - PN15 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_CS1_PN9
       - PN9 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_CS1_PN15
       - PN15 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_DMCS1_PN9
       - PN9 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_DMCS1_PN15
       - PN15 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_UMCS1_PN9
       - PN9 pseudo-random bit pattern into multiframe slot

   AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_UMCS1_PN15
       - PN15 pseudo-random bit pattern into multiframe slot

Default Value: AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_PN9   	w�, 
  �  �    Instrument Handle                	xl#����  �    Status                           	~� 3  � �    Timeslot Number                  	 0 � �       Timeslot Enabled                 	� v � � �    FIX4 Data                        	�� vt �  �    User File                        	�1 v  � �    Data                                   	           0   On VI_TRUE Off VI_FALSE    0    ""              �PN9 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_PN9 PN15 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_PN15 FIX4 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_FIX4 User File AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_USER_FILE External AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_EXTERNAL 4 1's & 4 0's AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P4 8 1's & 8 0's AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P8 16 1's & 16 0's AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P16 32 1's & 32 0's AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P32 64 1's & 64 0's AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_P64 TCH/FS PN9 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_TCHFS_PN9 TCH/FS PN15 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_TCHFS_PN15 CS-1 PN9 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_CS1_PN9 CS-1 PN15 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_CS1_PN15 Downlink MCS-1 PN9 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_DMCS1_PN9 Downlink MCS-1 PN15 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_DMCS1_PN15 Uplink MCS-1 PN9 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_UMCS1_PN9 Uplink MCS-1 PN15 AGESG_VAL_TDMA_GSM_TIMESLOT_DATA_UMCS1_PN15    K    This function sets the operating state of the differential data encoding.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    This command sets the operating state of the differential data encoding.

Valid Values:
  VI_TRUE (1)  - Enables differential data encoding
  VI_FALSE (0) - Disables differential data encoding

Default Value: VI_TRUE (1)   	�T, 
  �  �    Instrument Handle                	�#����  �    Status                           	�\ Q �       Enabled                                	          On VI_TRUE Off VI_FALSE    K    This function sets the operating state of the differential data encoding.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    This command sets the operating state of the differential data encoding.

Valid Values:
  VI_TRUE (1)  - Enables differential data encoding
  VI_FALSE (0) - Disables differential data encoding

Default Value: VI_TRUE (1)   	�_, 
  �  �    Instrument Handle                	�#����  �    Status                           	�g Q �       Enabled                                	          On VI_TRUE Off VI_FALSE    ^    This function specifies the polarity of the TTL input signal at the BURST GATE IN connector.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Specifies the polarity of the TTL input signal at the BURST GATE IN connector.
The driver sets the AGESG_ATTR_BURST_GATE_INPUT_POLARITY to this value.

Valid Values:
  AGESG_VAL_BURST_GATE_INPUT_POLARITY_POSITIVE
    - refers to the rising edge
  
  AGESG_VAL_BURST_GATE_INPUT_POLARITY_NEGATIVE
    - refers to the falling edge

Default Value:  AGESG_VAL_BURST_GATE_INPUT_POLARITY_POSITIVE   	�}#����  �    Status                           	��, 
  �  �    Instrument Handle                	�� [ � � �    Polarity                           	                          lPositive AGESG_VAL_BURST_GATE_INPUT_POLARITY_POSITIVE Negative AGESG_VAL_BURST_GATE_INPUT_POLARITY_NEGATIVE    [    This function specifies the polarity of the TTL input signal at the DATA CLOCK connector.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Specifies the polarity of the TTL input signal at the DATA CLOCK connector.
The driver sets the AGESG_ATTR_DATA_CLOCK_INPUT_POLARITY to this value.

Valid Values:
  AGESG_VAL_DATA_CLOCK_INPUT_POLARITY_POSITIVE
    - refers to the rising edge

  AGESG_VAL_DATA_CLOCK_INPUT_POLARITY_NEGATIVE
    - refers to the falling edge

Default Value:  AGESG_VAL_DATA_CLOCK_INPUT_POLARITY_POSITIVE   	��#����  �    Status                           	��, 
  �  �    Instrument Handle                	�� [ � � �    Polarity                           	                          lPositive AGESG_VAL_DATA_CLOCK_INPUT_POLARITY_POSITIVE Negative AGESG_VAL_DATA_CLOCK_INPUT_POLARITY_NEGATIVE    `    This function specifies the polarity of the TTL output signal at the DATA CLOCK OUT connector.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Specifies the polarity of the TTL output signal at the DATA CLOCK OUT connector.
The driver sets the AGESG_ATTR_DATA_CLOCK_OUTPUT_POLARITY to this value.

Valid Values:
  AGESG_VAL_DATA_CLOCK_OUTPUT_POLARITY_POSITIVE
    - refers to the rising edge

  AGESG_VAL_DATA_CLOCK_OUTPUT_POLARITY_NEGATIVE
    - refers to the falling edge

Default Value:  AGESG_VAL_DATA_CLOCK_OUTPUT_POLARITY_POSITIVE   	��#����  �    Status                           	�, 
  �  �    Instrument Handle                	�� [ � � �    Polarity                           	                          nPositive AGESG_VAL_DATA_CLOCK_OUTPUT_POLARITY_POSITIVE Negative AGESG_VAL_DATA_CLOCK_OUTPUT_POLARITY_NEGATIVE    U    This function specifies the polarity of the TTL input signal at the DATA connector.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    _    Specifies the polarity of the TTL input signal at the DATA connector.
The driver sets the AGESG_ATTR_DATA_INPUT_POLARITY to this value.

Valid Values:
  AGESG_VAL_DATA_INPUT_POLARITY_POSITIVE
    - refers to normal logic

  AGESG_VAL_DATA_INPUT_POLARITY_NEGATIVE
    - refers to inverted logic

Default Value:  AGESG_VAL_DATA_INPUT_POLARITY_POSITIVE   	��#����  �    Status                           	�>, 
  �  �    Instrument Handle                	�� [ � � �    Polarity                           	                          `Positive AGESG_VAL_DATA_INPUT_POLARITY_POSITIVE Negative AGESG_VAL_DATA_INPUT_POLARITY_NEGATIVE    Z    This function specifies the polarity of the TTL output signal at the DATA OUT connector.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    h    Specifies the polarity of the TTL output signal at the DATA OUT connector.
The driver sets the AGESG_ATTR_DATA_OUTPUT_POLARITY to this value.

Valid Values:
  AGESG_VAL_DATA_OUTPUT_POLARITY_POSITIVE
    - refers to normal logic

  AGESG_VAL_DATA_OUTPUT_POLARITY_NEGATIVE
    - refers to inverted logic

Default Value:  AGESG_VAL_DATA_OUTPUT_POLARITY_POSITIVE   	��#����  �    Status                           	�-, 
  �  �    Instrument Handle                	�� [ � � �    Polarity                           	                          bPositive AGESG_VAL_DATA_OUTPUT_POLARITY_POSITIVE Negative AGESG_VAL_DATA_OUTPUT_POLARITY_NEGATIVE    d    This function specifies the polarity of the TTL output signal at the EVENT 1 or EVENT 2 connector.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    v    Specifies the polarity of the TTL output signal at the EVENT 1 or EVENT 2 connector.
The driver sets the AGESG_ATTR_EVENT_OUTPUT_POLARITY to this value.

Valid Values:
  AGESG_VAL_EVENT_OUTPUT_POLARITY_POSITIVE
    - refers to normal logic

  AGESG_VAL_EVENT_OUTPUT_POLARITY_NEGATIVE
    - refers to inverted logic

Default Value:  AGESG_VAL_EVENT_OUTPUT_POLARITY_POSITIVE     *    Selects the EVENT 1 or EVENT 2 conector.   	��#����  �    Status                           	�1, 
  �  �    Instrument Handle                	�� 2 � � �    Polarity                         	�b 2  � �    Event                              	                          dPositive AGESG_VAL_EVENT_OUTPUT_POLARITY_POSITIVE Negative AGESG_VAL_EVENT_OUTPUT_POLARITY_NEGATIVE                Event 1 "EVEN1" Event 2 "EVEN2"    q    This function specifies the polarity of the TTL signal at the PATTERN TRIG IN connector that triggers an event.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Specifies the polarity of the TTL signal at the PATTERN TRIG IN connector that triggers an event.
The driver sets the AGESG_ATTR_PATTERN_TRIGGER_INPUT_POLARITY to this value.

Valid Values:
  AGESG_VAL_PATTERN_TRIGGER_INPUT_POLARITY_POSITIVE
    - refers to the rising edge

  AGESG_VAL_PATTERN_TRIGGER_INPUT_POLARITY_NEGATIVE
    - refers to the falling edge

Default Value:  AGESG_VAL_PATTERN_TRIGGER_INPUT_POLARITY_POSITIVE   	ݓ#����  �    Status                           	��, 
  �  �    Instrument Handle                	� [ � � �    Polarity                           	                          vPositive AGESG_VAL_PATTERN_TRIGGER_INPUT_POLARITY_POSITIVE Negative AGESG_VAL_PATTERN_TRIGGER_INPUT_POLARITY_NEGATIVE    \    This function specifies the polarity of the TTL input signal at the SYMBOL SYNC connector.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Specifies the polarity of the TTL input signal at the SYMBOL SYNC connector.
The driver sets the AGESG_ATTR_SYMBOL_SYNC_INPUT_POLARITY to this value.

Valid Values:
  AGESG_VAL_SYMBOL_SYNC_INPUT_POLARITY_POSITIVE
    - refers to normal logic

  AGESG_VAL_SYMBOL_SYNC_INPUT_POLARITY_NEGATIVE
    - refers to inverted logic

Default Value:  AGESG_VAL_SYMBOL_SYNC_INPUT_POLARITY_POSITIVE   	��#����  �    Status                           	�<, 
  �  �    Instrument Handle                	�� [ � � �    Polarity                           	                          nPositive AGESG_VAL_SYMBOL_SYNC_INPUT_POLARITY_POSITIVE Negative AGESG_VAL_SYMBOL_SYNC_INPUT_POLARITY_NEGATIVE    a    This function specifies the polarity of the TTL output signal at the SYMBOL SYNC OUT connector.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Specifies the polarity of the TTL output signal at the SYMBOL SYNC OUT connector.
The driver sets the AGESG_ATTR_SYMBOL_SYNC_OUTPUT_POLARITY to this value.

Valid Values:
  AGESG_VAL_SYMBOL_SYNC_OUTPUT_POLARITY_POSITIVE
    - refers to normal logic

  AGESG_VAL_SYMBOL_SYNC_OUTPUT_POLARITY_NEGATIVE
    - refers to inverted logic

Default Value:  AGESG_VAL_SYMBOL_SYNC_OUTPUT_POLARITY_POSITIVE   	�#����  �    Status                           	�c, 
  �  �    Instrument Handle                	� [ � � �    Polarity                           	                          pPositive AGESG_VAL_SYMBOL_SYNC_OUTPUT_POLARITY_POSITIVE Negative AGESG_VAL_SYMBOL_SYNC_OUTPUT_POLARITY_NEGATIVE   B    This function is used to disconnect the output signals from the rear panel DATA OUT, DATA CLK OUT, and SYMBOL SYNC OUT connectors. Normally, these output signals should be connected (On). However, disconnecting these outputs will decrease the spurs that are sometimes present when you are operating at high symbol rates.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    `    Disconnect the output signals from the rear panel DATA OUT, DATA CLK OUT, and SYMBOL SYNC OUT connectors. Normally, these output signals should be connected (On). However, disconnecting these outputs will decrease the spurs that are sometimes present when you are operating at high symbol rates.
The driver sets the AGESG_ATTR_CONNECTORS_ENABLED to this value.

Valid Values:

   VI_TRUE (1)  - Enables DATA OUT, DATA CLK OUT, and 
                   SYMBOL SYNC OUT connectors
   VI_FALSE (0) - Disables DATA OUT, DATA CLK OUT, and
                   SYMBOL SYNC OUTconnectors

Default Value:  VI_TRUE (1)   	�!#����  �    Status                           
v, 
  �  �    Instrument Handle                
) @ �  �    Enabled                            	              On VI_TRUE Off VI_FALSE    Y    This function sets the polarity of the TTL signal present at the TRIGGER OUT connector.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    @    Sets the polarity of the TTL signal present at the TRIGGER OUT connector. The Trigger out is asserted (after the frequency and/or power is set) while the sweep is waiting for its step trigger. Also, the swept-sine sends a pulse to the TRIGGER OUT at the beginning of each sweep.
The driver sets the AGESG_ATTR_TRIGGER_OUTPUT_POLARITY to this value.

Valid Values:
  AGESG_VAL_TRIGGER_OUTPUT_POLARITY_POSITIVE
    - refers to normal logic

  AGESG_VAL_TRIGGER_OUTPUT_POLARITY_NEGATIVE
    - refers to inverted logic

Default Value:  AGESG_VAL_TRIGGER_OUTPUT_POLARITY_POSITIVE   
�#����  �    Status                           
, 
  �  �    Instrument Handle                
� [ � � �    Polarity                           	                          hPositive AGESG_VAL_TRIGGER_OUTPUT_POLARITY_POSITIVE Negative AGESG_VAL_TRIGGER_OUTPUT_POLARITY_NEGATIVE   �    This function sets the value of a ViInt32 attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors        Pass the value to which you want to set the attribute.

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
    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Repeated Capability Names:
  CH1
  AM1,AM2,FM1,FM2,PM1,PM2,FUNCGEN
  CDMA,WCDMA_STANDARD,WCDMA_TGPP,CDMA2000
  DECT,EDGE,GSM,NADC,PDC,PHS,TETRA,Custom
  SLOT0 through SLOT11
  

Default Value:  ""
   
-   �  �    Instrument Handle                
�#����  �    Status                           
 � � �  �    Attribute Value                 ���� � ���                                          
 ) = � � �    Attribute ID                     
%t =  �  �    Repeat Capability Name                 	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViReal64 attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors        Pass the value to which you want to set the attribute.

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
    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Repeated Capability Names:
  CH1
  AM1,AM2,FM1,FM2,PM1,PM2,FUNCGEN
  CDMA,WCDMA_STANDARD,WCDMA_TGPP,CDMA2000
  DECT,EDGE,GSM,NADC,PDC,PHS,TETRA,Custom
  SLOT0 through SLOT11
  

Default Value:  ""
   
-�-   �  �    Instrument Handle                
.:#����  �    Status                           
4� � � �  �    Attribute Value                 ���� � ���                                          
6� = � � �    Attribute ID                     
;� =  �  �    Repeat Capability Name                 	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViString attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors        Pass the value to which you want to set the attribute.

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
    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Repeated Capability Names:
  CH1
  AM1,AM2,FM1,FM2,PM1,PM2,FUNCGEN
  CDMA,WCDMA_STANDARD,WCDMA_TGPP,CDMA2000
  DECT,EDGE,GSM,NADC,PDC,PHS,TETRA,Custom
  SLOT0 through SLOT11
  

Default Value:  ""
   
D-   �  �    Instrument Handle                
D�#����  �    Status                           
K � � �  �    Attribute Value                 ���� � ���                                          
M* = � � �    Attribute ID                     
Rs =  �  �    Repeat Capability Name                 	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViBoolean attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors        Pass the value to which you want to set the attribute.

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
    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Repeated Capability Names:
  CH1
  AM1,AM2,FM1,FM2,PM1,PM2,FUNCGEN
  CDMA,WCDMA_STANDARD,WCDMA_TGPP,CDMA2000
  DECT,EDGE,GSM,NADC,PDC,PHS,TETRA,Custom
  SLOT0 through SLOT11
  

Default Value:  ""
   
Z�-   �  �    Instrument Handle                
[:#����  �    Status                           
a� � � �  �    Attribute Value                 ���� � ���                                          
c� = � � �    Attribute ID                     
h� =  �  �    Repeat Capability Name                 	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViSession attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors        Pass the value to which you want to set the attribute.

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
    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Repeated Capability Names:
  CH1
  AM1,AM2,FM1,FM2,PM1,PM2,FUNCGEN
  CDMA,WCDMA_STANDARD,WCDMA_TGPP,CDMA2000
  DECT,EDGE,GSM,NADC,PDC,PHS,TETRA,Custom
  SLOT0 through SLOT11
  

Default Value:  ""
   
q-   �  �    Instrument Handle                
q�#����  �    Status                           
x � � �  �    Attribute Value                  
z, = � � �    Attribute ID                    ���� � ���                                          
w =  �  �    Repeat Capability Name                 	                           0    .Press <ENTER> for a list of 
value constants.    ""   �    This function queries the value of a ViInt32 attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    �    Returns the current value of the attribute.  Pass the address of a ViInt32 variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
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
    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Repeated Capability Names:
  CH1
  AM1,AM2,FM1,FM2,PM1,PM2,FUNCGEN
  CDMA,WCDMA_STANDARD,WCDMA_TGPP,CDMA2000
  DECT,EDGE,GSM,NADC,PDC,PHS,TETRA,Custom
  SLOT0 through SLOT11
  

Default Value:  ""
   
�r-   �  �    Instrument Handle                
�&#����  �    Status                           
�{ � � �  �    Attribute Value                  
�9 = � � �    Attribute ID                     
�� =  �  �    Repeat Capability Name                 	           	                        0    ""   �    This function queries the value of a ViReal64 attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    �    Returns the current value of the attribute.  Pass the address of a ViReal64 variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
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
    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Repeated Capability Names:
  CH1
  AM1,AM2,FM1,FM2,PM1,PM2,FUNCGEN
  CDMA,WCDMA_STANDARD,WCDMA_TGPP,CDMA2000
  DECT,EDGE,GSM,NADC,PDC,PHS,TETRA,Custom
  SLOT0 through SLOT11
  

Default Value:  ""
   
�w-   �  �    Instrument Handle                
�+#����  �    Status                           
�� � � �  �    Attribute Value                  
�? = � � �    Attribute ID                     
�� =  �  �    Repeat Capability Name                 	           	                       0    ""   4    This function queries the value of a ViString attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

You must provide a ViChar array to serve as a buffer for the value.  You pass the number of bytes in the buffer as the Buffer Size parameter.  If the current value of the attribute, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you want to call this function just to get the required buffer size, you can pass 0 for the Buffer Size and VI_NULL for the Attribute Value buffer.  

If you want the function to fill in the buffer regardless of the   number of bytes in the value, pass a negative number for the Buffer Size parameter.  


     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    &    The buffer in which the function returns the current value of the attribute.  The buffer must be of type ViChar and have at least as many bytes as indicated in the Buffer Size parameter.

If the current value of the attribute, including the terminating NUL byte, contains more bytes that you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you specify 0 for the Buffer Size parameter, you can pass VI_NULL for this parameter.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
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
    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Repeated Capability Names:
  CH1
  AM1,AM2,FM1,FM2,PM1,PM2,FUNCGEN
  CDMA,WCDMA_STANDARD,WCDMA_TGPP,CDMA2000
  DECT,EDGE,GSM,NADC,PDC,PHS,TETRA,Custom
  SLOT0 through SLOT11
  

Default Value:  ""
   
��-   �  �    Instrument Handle                
��#����  �    Status or Required Size          
�� � L � �    Attribute Value                  
�� =� �  �    Buffer Size                      
�� = � � �    Attribute ID                     
�� =  �  �    Repeat Capability Name                 	           	            512                0    ""   �    This function queries the value of a ViBoolean attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    �    Returns the current value of the attribute.  Pass the address of a ViBoolean variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
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
    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Repeated Capability Names:
  CH1
  AM1,AM2,FM1,FM2,PM1,PM2,FUNCGEN
  CDMA,WCDMA_STANDARD,WCDMA_TGPP,CDMA2000
  DECT,EDGE,GSM,NADC,PDC,PHS,TETRA,Custom
  SLOT0 through SLOT11
  

Default Value:  ""
   
�c-   �  �    Instrument Handle                
�#����  �    Status                           
�l � � �  �    Attribute Value                  
�, = � � �    Attribute ID                     
�� =  �  �    Repeat Capability Name                 	           	                        0    ""   �    This function queries the value of a ViSession attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    �    Returns the current value of the attribute.  Pass the address of a ViSession variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
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
    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Repeated Capability Names:
  CH1
  AM1,AM2,FM1,FM2,PM1,PM2,FUNCGEN
  CDMA,WCDMA_STANDARD,WCDMA_TGPP,CDMA2000
  DECT,EDGE,GSM,NADC,PDC,PHS,TETRA,Custom
  SLOT0 through SLOT11
  

Default Value:  ""
   
�n-   �  �    Instrument Handle                
�"#����  �    Status                           
�w � � �  �    Attribute Value                  
�7 = � � �    Attribute ID                     
�� =  �  �    Repeat Capability Name                 	           	                        0    ""    S    This function checks the validity of a value you specify for a ViInt32 attribute.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    (    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    @    Pass the ID of an attribute.

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
    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Repeated Capability Names:
  CH1
  AM1,AM2,FM1,FM2,PM1,PM2,FUNCGEN
  CDMA,WCDMA_STANDARD,WCDMA_TGPP,CDMA2000
  DECT,EDGE,GSM,NADC,PDC,PHS,TETRA,Custom
  SLOT0 through SLOT11
  

Default Value:  ""
   
�-   �  �    Instrument Handle                
��#����  �    Status                           
� � � �  �    Attribute Value                 ���� � ���                                          
�N = � � �    Attribute ID                     
�� =  �  �    Repeat Capability Name                 	               .Press <ENTER> for a list of 
value constants.                0    ""    T    This function checks the validity of a value you specify for a ViReal64 attribute.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    (    Pass the value which you want to verify as a valid value for the attribute.

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
  Attributes with data types other than ViReal64 are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Repeated Capability Names:
  CH1
  AM1,AM2,FM1,FM2,PM1,PM2,FUNCGEN
  CDMA,WCDMA_STANDARD,WCDMA_TGPP,CDMA2000
  DECT,EDGE,GSM,NADC,PDC,PHS,TETRA,Custom
  SLOT0 through SLOT11
  

Default Value:  ""
   
�0-   �  �    Instrument Handle                
��#����  �    Status                           9 � � �  �    Attribute Value                 ���� � ���                                          i = � � �    Attribute ID                     � =  �  �    Repeat Capability Name                 	               .Press <ENTER> for a list of 
value constants.                0    ""    T    This function checks the validity of a value you specify for a ViString attribute.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    (    Pass the value which you want to verify as a valid value for the attribute.

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
    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Repeated Capability Names:
  CH1
  AM1,AM2,FM1,FM2,PM1,PM2,FUNCGEN
  CDMA,WCDMA_STANDARD,WCDMA_TGPP,CDMA2000
  DECT,EDGE,GSM,NADC,PDC,PHS,TETRA,Custom
  SLOT0 through SLOT11
  

Default Value:  ""
   M-   �  �    Instrument Handle                #����  �    Status                           V � � �  �    Attribute Value                 ���� � ���                                          � = � � �    Attribute ID                     � =  �  �    Repeat Capability Name                 	               .Press <ENTER> for a list of 
value constants.                0    ""    U    This function checks the validity of a value you specify for a ViBoolean attribute.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    (    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    D    Pass the ID of an attribute.

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
    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Repeated Capability Names:
  CH1
  AM1,AM2,FM1,FM2,PM1,PM2,FUNCGEN
  CDMA,WCDMA_STANDARD,WCDMA_TGPP,CDMA2000
  DECT,EDGE,GSM,NADC,PDC,PHS,TETRA,Custom
  SLOT0 through SLOT11
  

Default Value:  ""
   k-   �  �    Instrument Handle                #����  �    Status                           %t � � �  �    Attribute Value                 ���� � ���                                          '� = � � �    Attribute ID                     ,� =  �  �    Repeat Capability Name                 	               .Press <ENTER> for a list of 
value constants.                0    ""    U    This function checks the validity of a value you specify for a ViSession attribute.     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    (    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    D    Pass the ID of an attribute.

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
    �    If the attribute is channel-based, this parameter specifies the name of the channel on which to set the value of the attribute. If the attribute is not channel-based, then pass VI_NULL or an empty string.

Valid Repeated Capability Names:
  CH1
  AM1,AM2,FM1,FM2,PM1,PM2,FUNCGEN
  CDMA,WCDMA_STANDARD,WCDMA_TGPP,CDMA2000
  DECT,EDGE,GSM,NADC,PDC,PHS,TETRA,Custom
  SLOT0 through SLOT11
  

Default Value:  ""
   0�-   �  �    Instrument Handle                1?#����  �    Status                           7� � � �  �    Attribute Value                 ���� � ���                                          9� = � � �    Attribute ID                     ? =  �  �    Repeat Capability Name                 	               .Press <ENTER> for a list of 
value constants.                0    ""   	    This function sets the multiplier for the signal generator�s carrier frequency. You can multiply the frequency shown on the display without changing the frequency output at the RF OUTPUT connector (simulating the frequency at the output of a harmonic multiplier).    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    c    Sets the multiplier for the signal generator�s carrier frequency. You can multiply the frequency shown on the display without changing the frequency output at the RF OUTPUT connector (simulating the frequency at the output of a harmonic multiplier).
For example, set the output frequency to 1 MHz. Then set the multiplier to 3. The display will now show an output frequency of 3 MHz but the actual output frequency will remain at 1 MHz. For any multiplier greater than 1, the MULT indicator is shown in the frequency area of the display.
The driver sets the AGESG_ATTR_FREQUENCY_MULTIPLIER to this value.

Valid Range:  1 to 50

Valid Range for E4438C:
  -1000 to -1, 1 to 1000

Default Value: 1

Notes:
(1) This function is obsolete. It used only for backward compatibility with previous version of driver. Better use agesg_ConfigureFrequencyMultiplierCW function.   C_#����  �    Status                           I�, 
  �  �    Instrument Handle                Jg @ � �  �    Multiplier                         	               1    l    This function disables all currently enabled modulations (e.g. analog, pulse, IQ, and digital modulation).    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None   N�#����  �    Status                           UO, 
  �  �    Instrument Handle                  	               E    This function queries if the RF output signal is currently settled.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     C    Returns True if the output signal is in settled, False otherwise.   V�#����  �    Status                           ], 
  �  �    Instrument Handle                ]� (  �  �    Done                               	               	           J    This function waits until the state of the RF output signal has settled.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Defines the maximum time the function waits for the output to be settled. If the maximum time is exceeded, this function returns the Max Time Exceeded error.The units are milliseconds.   _)#����  �    Status                           e~, 
  �  �    Instrument Handle                f1 (  �  �    MaxTimeMilliseconds                	                  �    This function sends a software-generated trigger to the instrument. It is only applicable for instruments using interfaces or protocols which support an explicit trigger function. For example, with GPIB this function could send a group execute trigger to the instrument. Other implementations might send a *TRG command.
If the trigger source is not set to Software Trigger, this function does nothing and returns the error Trigger Not Software.
    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None   im#����  �    Status                           o�, 
  �  �    Instrument Handle                  	               W    This function runs the instrument's self test routine and returns the test result(s).    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    $    This control contains the value returned from the instrument self test.  Zero means success.  For any other code, see the device's operator's manual.

Self-Test Code    Description
---------------------------------------
   0              Passed self test
   1              Self test failed     �    Returns the self-test response string from the instrument. See the device's operation manual for an explanation of the string's contents.

You must pass a ViChar array with at least 256 bytes.   qN#����  �    Status                           w�-   �  �    Instrument Handle                xV =  �  �    Self Test Result                 y� = � � ,    Self-Test Message                  	               	           	           %    This function resets the instrument to a known state and sends initialization commands to the instrument.  The initialization commands set instrument settings such as Headers Off, Short Command form, and Data Transfer Binary to the state necessary for the operation of the instrument driver.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None   |u#����  �    Status                           ��-   �  �    Instrument Handle                  	               �    This function resets the instrument and applies initial user specified settings from the Logical Name which was used to initialize the session.  If the session was created without a Logical Name, this function is equivalent to the agesg_reset function.    .    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
None
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   ��#����  �    Status                           �3-   �  �    Instrument Handle                  	               �    This function places the instrument in a quiescent state where it has minimal or no impact on the system to which it is connected.    .    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
None
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   ��#����  �    Status                           �#-   �  �    Instrument Handle                  	               ^    This function returns the revision numbers of the instrument driver and instrument firmware.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Returns the instrument driver software revision numbers in the form of a string.

You must pass a ViChar array with at least 256 bytes.     �    Returns the instrument firmware revision numbers in the form of a string.

You must pass a ViChar array with at least 256 bytes.   ��#����  �    Status                           �-   �  �    Instrument Handle                �� = 3 �  �    Instrument Driver Revision       �P =6 �  �    Firmware Revision                  	               	            	            T    This function reads an error code and a message from the instrument's error queue.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     @    Returns the error code read from the instrument's error queue.     �    Returns the error message string read from the instrument's error message queue.

You must pass a ViChar array with at least 256 bytes.   �2#����  �    Status                           ��-   �  �    Instrument Handle                �: =  �  �    Error Code                       �� = � � ,    Error Message                      	               	            	            m    This function converts a status code returned by an instrument driver function into a user-readable string.    N    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.

          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors        The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

You can pass VI_NULL for this parameter.  This is useful when one of the initialize functions fail.

Default Value:  VI_NULL    $�    Pass the Status parameter that is returned from any of the instrument driver functions.
          
Default Value:  0  (VI_SUCCESS)
          
agesg Status Codes:
Status    Description
-------------------------------------------------
ERRORS:
BFFA1001  The trigger source is not software trigger.

IVI Engine Status Codes:
Status    Description
-------------------------------------------------
ERRORS:
BFFA0001  Instrument error. Call agesg_error_query.
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

You must pass a ViChar array with at least 256 bytes.   ��#����  �    Status                           ��-   �  �    Instrument Handle                �� =  �  h    Error Code                       Ӕ = � � �    Error Message                      	           VI_NULL    0    	            P    This function invalidates the cached values of all attributes for the session.    .    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
None
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   Ղ#����  �    Status                           ۸-   �  �    Instrument Handle                  	              (    This function returns the error information associated with an IVI session or with the current execution thread.  If you specify a valid IVI session for the Instrument Handle parameter, this function retrieves and then clears the error information for the session.  If you pass VI_NULL for the Instrument Handle parameter, this function retrieves and then clears the error information for the current execution thread.  

The error information includes a primary error, secondary error, and an error elaboration string.  For a particular session, this information is the same as the values held in the following attributes:

AGESG_ATTR_PRIMARY_ERROR
AGESG_ATTR_SECONDARY_ERROR
AGESG_ATTR_ERROR_ELABORATION

The IVI Library also maintains this error information separately for each thread.  This is useful if you do not have a session handle to pass to agesg_GetError or agesg_ClearError, which
occurs when a call to agesg_init or agesg_InitWithOptions fails.

You can call agesg_error_message to obtain a text description of the primary or secondary error value.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  VI_NULL     �    Returns the error code for the session or execution thread.

If you pass 0 for the Buffer Size, you can pass VI_NULL for this parameter.    �    Returns the error description for the IVI session or execution thread.  If there is no description, the function returns an empty string.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter.  If the error description, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass 0 for the Buffer Size, you can pass VI_NULL for this parameter.    �    Pass the number of bytes in the ViChar array you specify for the Description parameter.

If the error description, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies BufferSize - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Description buffer parameter.

Default Value:  None   �#����  �    Status                           �k-   �  �    Instrument Handle                �! 5 R �  �    Code                             � � Q � �    Description                      � 6d �  �    BufferSize                         	               	           	               �    This function clears the error information for the current execution thread and the IVI session you specify.  If you pass VI_NULL for the Instrument Handle parameter, this function clears the error information only for the current execution thread. 

The error information includes a primary error code, secondary error code, and an error elaboration string.  For a particular session, this information is the same as the values held in the following attributes:

AGESG_ATTR_PRIMARY_ERROR
AGESG_ATTR_SECONDARY_ERROR
AGESG_ATTR_ERROR_ELABORATION

This function sets the primary and secondary error codes to VI_SUCCESS (0), and sets the error elaboration string to "".

The IVI Library also maintains this error information separately for each thread.  This is useful if you do not have a session handle to pass to agesg_ClearError or agesg_GetError, which occurs when a call to agesg_init or agesg_InitWithOptions fails.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None   �e#����  �    Status                           ��-   �  �    Instrument Handle                  	              C    This function returns the interchangeability warnings associated with the IVI session.  It retrieves and clears the oldest instance in which the class driver recorded an interchangeability warning.  Interchangeability warnings indicate that using your application with a different instrument might cause different behavior.  If the AGESG_ATTR_SPY attribute is set to VI_FALSE, you use this function to retrieve interchangeability warnings.  If the AGESG_ATTR_SPY attribute is set to VI_TRUE, you use the NI Spy utility to view interchangeability warnings.

The class driver performs interchangeability checking when the AGESG_ATTR_INTERCHANGE_CHECK attribute is set to VI_TRUE and you call one of the following functions:

agesg_IsSettled ()
agesg_WaitUntilSettled ()

If the next interchangeability warning string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number for the buffer size, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0 for the buffer size, you can pass VI_NULL for the Interchange Warning buffer parameter.

The function returns an empty string in the Interchange Warning parameter if no interchangeability warnings remain for the session.

Interchangeability checking examines the attributes in a capability group only if you specify a value for at least one attribute within that group.  In general, the class driver generates interchangeability warnings when it encounters one of the following conditions:

(1) An attribute that affects the behavior of the instrument is in a state that you did not specify.

(2) You set a class-defined attribute to an instrument-specific value.

(3) You set the value of an attribute that the class driver defines as read-only.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Pass the number of bytes in the ViChar array you specify for the Interchange Warning parameter.

If the next interchangeability warning string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Interchange Warning buffer parameter.

Default Value:  None        Returns the next interchange warning for the IVI session.  If there are no interchange warnings, the function returns an empty  string.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter.  If the next interchangeability warning string, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

This parameter returns an empty string if no interchangeability
warnings remain for the session.   2#����  �    Status or Required Size          E-   �  �    Instrument Handle                � = � �  �    Buffer Size                      � � Q � �    Interchange Warning                	                   	            �    The specific driver performs interchangeability checking if the AGESG_ATTR_INTERCHANGE_CHECK attribute is set to VI_TRUE.  This function clears the list of current interchange warnings.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None   �#����  �    Status                           .-   �  �    Instrument Handle                  	              �    When developing a complex test system that consists of multiple test modules, it is generally a good idea to design the test modules so that they can run in any order.  To do so requires ensuring that each test module completely configures the state of each instrument it uses.  If a particular test module does not completely configure the state of an instrument, the state of the instrument depends on the configuration from a previously executed test module.  If you execute the test modules in a different order, the behavior of the instrument and therefore the entire test module is likely to change.  This change in behavior is generally instrument specific and represents an interchangeability problem.

You can use this function to test for such cases.  After you call this function, the interchangeability checking algorithms in the specific driver ignore all previous configuration operations.  By calling this function at the beginning of a test module, you can determine whether the test module has dependencies on the operation of previously executed test modules.

This function does not clear the interchangeability warnings from the list of previously recorded interchangeability warnings.  If you want to guarantee that the agesg_GetNextInterchangeWarning function only returns those interchangeability warnings that are generated after calling this function, you must clear the list of interchangeability warnings.  You can clear the interchangeability warnings list by repeatedly calling the agesg_GetNextInterchangeWarning function until no more interchangeability warnings are returned.  If you are not interested in the content of those warnings, you can call the agesg_ClearInterchangeWarnings function.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None   "##����  �    Status                           (x-   �  �    Instrument Handle                  	              �    This function returns the coercion information associated with the IVI session.  This function retrieves and clears the oldest instance in which the instrument driver coerced a value you specified to another value.

If you set the AGESG_ATTR_RECORD_COERCIONS attribute to VI_TRUE, the instrument driver keeps a list of all coercions it makes on ViInt32 or ViReal64 values you pass to instrument driver functions.  You use this function to retrieve information from that list.

If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Coercion Record buffer parameter.

The function returns an empty string in the Coercion Record parameter if no coercion records remain for the session.        Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the return buffer, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    Pass the number of bytes in the ViChar array you specify for the Coercion Record parameter.

If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Coercion Record buffer parameter.

Default Value:  None    �    Returns the next coercion record for the IVI session.  If there are no coercion records, the function returns an empty string.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter.  If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

This parameter returns an empty string if no coercion records remain for the session.   .x#����  �    Status or Required Size          6�-   �  �    Instrument Handle                7> = � �  �    Buffer Size                      :1 � Q � �    Coercion Record                    	                   	               This function obtains a multithread lock on the instrument session.  Before it does so, it waits until all other execution threads have released their locks on the instrument session.

Other threads might have obtained a lock on this session in the following ways:

- The user's application called agesg_LockSession.

- A call to the instrument driver locked the session.

- A call to the IVI engine locked the session.

After your call to agesg_LockSession returns successfully, no other threads can access the instrument session until you call agesg_UnlockSession.

Use agesg_LockSession and agesg_UnlockSession around a sequence of calls to instrument driver functions if you require that the instrument retain its settings through the end of the sequence.

You can safely make nested calls to agesg_LockSession within the same thread.  To completely unlock the session, you must balance each call to agesg_LockSession with a call to agesg_UnlockSession.  If, however, you use the Caller Has Lock parameter in all calls to agesg_LockSession and agesg_UnlockSession within a function, the IVI Library locks the session only once within the function regardless of the number of calls you make to agesg_LockSession.  This allows you to call agesg_UnlockSession just once at the end of the function.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    This parameter serves as a convenience.  If you do not want to use this parameter, pass VI_NULL. 

Use this parameter in complex functions to keep track of whether you obtain a lock and therefore need to unlock the session.  Pass the address of a local ViBoolean variable.  In the declaration of the local variable, initialize it to VI_FALSE.  Pass the address of the same local variable to any other calls you make to agesg_LockSession or agesg_UnlockSession in the same function.

The parameter is an input/output parameter.  agesg_LockSession and agesg_UnlockSession each inspect the current value and take the following actions:

- If the value is VI_TRUE, agesg_LockSession does not lock the session again.  If the value is VI_FALSE, agesg_LockSession obtains the lock and sets the value of the parameter to VI_TRUE.

- If the value is VI_FALSE, agesg_UnlockSession does not attempt to unlock the session.  If the value is VI_TRUE, agesg_UnlockSession releases the lock and sets the value of the parameter to VI_FALSE.
 
Thus, you can, call agesg_UnlockSession at the end of your function without worrying about whether you actually have the lock.  

Example:

ViStatus TestFunc (ViSession vi, ViInt32 flags)
{
    ViStatus error = VI_SUCCESS;
    ViBoolean haveLock = VI_FALSE;

    if (flags & BIT_1)
        {
        viCheckErr( agesg_LockSession(vi, &haveLock));
        viCheckErr( TakeAction1(vi));
        if (flags & BIT_2)
            {
            viCheckErr( agesg_UnlockSession(vi, &haveLock));
            viCheckErr( TakeAction2(vi));
            viCheckErr( agesg_LockSession(vi, &haveLock);
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
    agesg_UnlockSession(vi, &haveLock);
    return error;
}   CF#����  �    Status                           I�-   �  �    Instrument Handle                JN H � �  �    Caller Has Lock                    	               	            �    This function releases a lock that you acquired on an instrument session using agesg_LockSession.  Refer to agesg_LockSession for additional information on session locks.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None    �    This parameter serves as a convenience.  If you do not want to use this parameter, pass VI_NULL. 

Use this parameter in complex functions to keep track of whether you obtain a lock and therefore need to unlock the session. 
Pass the address of a local ViBoolean variable.  In the declaration of the local variable, initialize it to VI_FALSE.  Pass the address of the same local variable to any other calls you make to agesg_LockSession or agesg_UnlockSession in the same function.

The parameter is an input/output parameter.  agesg_LockSession and agesg_UnlockSession each inspect the current value and take the following actions:

- If the value is VI_TRUE, agesg_LockSession does not lock the session again.  If the value is VI_FALSE, agesg_LockSession obtains the lock and sets the value of the parameter to VI_TRUE.

- If the value is VI_FALSE, agesg_UnlockSession does not attempt to unlock the session.  If the value is VI_TRUE, agesg_UnlockSession releases the lock and sets the value of the parameter to VI_FALSE.
 
Thus, you can, call agesg_UnlockSession at the end of your function without worrying about whether you actually have the lock.  

Example:

ViStatus TestFunc (ViSession vi, ViInt32 flags)
{
    ViStatus error = VI_SUCCESS;
    ViBoolean haveLock = VI_FALSE;

    if (flags & BIT_1)
        {
        viCheckErr( agesg_LockSession(vi, &haveLock));
        viCheckErr( TakeAction1(vi));
        if (flags & BIT_2)
            {
            viCheckErr( agesg_UnlockSession(vi, &haveLock));
            viCheckErr( TakeAction2(vi));
            viCheckErr( agesg_LockSession(vi, &haveLock);
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
    agesg_UnlockSession(vi, &haveLock);
    return error;
}   Sf#����  �    Status                           Y�-   �  �    Instrument Handle                Zn H � �  �    Caller Has Lock                    	               	            �    This function writes a user-specified string to the instrument.

Note:  This function bypasses IVI attribute state caching.  Therefore, when you call this function, the cached values for all attributes will be invalidated.     2    Pass the string to be written to the instrument.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None   c� A � �  �    Write Buffer                     c�#����  �    Status                           jI-   �  �    Instrument Handle                      	               /    This function reads data from the instrument.     c    After this function executes, this parameter contains the data that was read from the instrument.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None     �    Pass the maximum number of bytes to read from the instruments.  

Valid Range:  0 to the number of elements in the Read Buffer.

Default Value:  0

     ^    Returns the number of bytes actually read from the instrument and stored in the Read Buffer.   k� @ �  �    Read Buffer                      lQ#����  �    Status                           r�-   �  �    Instrument Handle                sY @ C �  �    Number of Bytes To Read          s� �' �  �    Num Bytes Read                     	            	               0    	           �    This function performs the following operations:

- Closes the instrument I/O session.

- Destroys the instrument driver session and all of its attributes.

- Deallocates any memory resources the driver uses.

Notes:

(1) You must unlock the session before calling agesg_close.

(2) After calling agesg_close, you cannot use the instrument driver again until you call agesg_init or agesg_InitWithOptions.    M    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the agesg_error_message function.  To obtain additional information about the error condition, call the agesg_GetError function.  To clear the error information from the driver, call the agesg_ClearError function.
          
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
BFFA1001  The trigger source is not software trigger.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI      Warnings
3FFF0000 to 3FFFFFFF     VISA     Warnings
3FFC0000 to 3FFCFFFF     VXIPnP   Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI      Errors
BFFF0000 to BFFFFFFF     VISA     Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the agesg_init or agesg_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None   w1#����  �    Status                           }�, 
  �  �    Instrument Handle                  	            ����         =�  U�             K.        init                                                                                                                                    ����         W�  �             K.        InitWithOptions                                                                                                                         ����         �x  ��             K.        ConfigureRF                                                                                                                             ����         ��  ��             K.        ConfigureALCEnabled                                                                                                                     ����         ��  �             K.        ConfigureOutputEnabled                                                                                                                  ����         ��  �(             K.        ConfigureOutputModulationEnabled                                                                                                        ����         ��  ��             K.        ConfigureFrequencyMultiplierCW                                                                                                          ����         ��  ��             K.        ConfigureFrequencyOffset                                                                                                                ����         ƀ  ��             K.        ConfigureFrequencyOffsetEnabled                                                                                                         ����         ϋ  �             K.        ConfigureFrequencyReference                                                                                                             ����         �5  ��             K.        ConfigureFrequencyReferenceEnabled                                                                                                      ����         �  ��             K.        ConfigurePhaseAdjustment                                                                                                                ����         �Y  ��             K.        SetPhaseReference                                                                                                                       ����         �h  ��             K.        ConfigureFrequencyOptimization                                                                                                          ����         � 	}             K.        ConfigureAlternateAmplitudeEnabled                                                                                                      ����        
G M             K.        ConfigureAlternateAmplitude                                                                                                             ����         "�             K.        ConfigureAlternateTriggerSource                                                                                                         ����        $� .0             K.        ConfigureAutomaticAttenuationEnabled                                                                                                    ����        .� 9�             K.        ConfigurePowerOffset                                                                                                                    ����        :G B�             K.        ConfigurePowerReference                                                                                                                 ����        C6 N�             K.        ConfigurePowerReferenceEnabled                                                                                                          ����        O� [�             K.        ConfigureALCSearchSpan                                                                                                                  ����        ]� f             K.        ConfigureAMEnabled                                                                                                                      ����        f� o�             K.        ConfigureAMExternalCoupling                                                                                                             ����        q {}             K.        ConfigureAM                                                                                                                             ����        |� �&             K.        ConfigureAMDepthCoupling                                                                                                                ����        �� �O             K.        ConfigureAM2Enabled                                                                                                                     ����        � �1             K.        ConfigureAM2ExternalCoupling                                                                                                            ����        �; ��             K.        ConfigureAM2                                                                                                                            ����        � �             K.        ConfigureWideAMEnabled                                                                                                                  ����        �� �@             K.        ConfigureFMEnabled                                                                                                                      ����        �
 �             K.        ConfigureFMExternalCoupling                                                                                                             ����        � �j             K.        ConfigureFM                                                                                                                             ����        �V ځ             K.        ConfigureFMDeviationCoupling                                                                                                            ����        �K �             K.        ConfigureFM2Enabled                                                                                                                     ����        �t �z             K.        ConfigureFM2ExternalCoupling                                                                                                            ����        � ��             K.        ConfigureFM2                                                                                                                            ����        ��              K.        ConfigurePMEnabled                                                                                                                      ����        � 
�             K.        ConfigurePMExternalCoupling                                                                                                             ����        � i             K.        ConfigurePM                                                                                                                             ����        X              K.        ConfigurePMDeviationCoupling                                                                                                            ����         I (�             K.        ConfigurePMBandwidth                                                                                                                    ����        )� 2J             K.        ConfigurePM2Enabled                                                                                                                     ����        3 <�             K.        ConfigurePM2                                                                                                                            ����        =� F�             K.        ConfigurePM2ExternalCoupling                                                                                                            ����        G� Q�             K.        SetActiveExternalSource                                                                                                                 ����        R� ]V             K.        GetAnalogModulationSourceName                                                                                                           ����        ^� g�             K.        CalibrateDCFM                                                                                                                           ����        h pc             K.        ConfigurePulseModulationEnabled                                                                                                         ����        q- zR             K.        ConfigurePulseModulationSource                                                                                                          ����        {x ��             K.        ConfigurePulseModulationExternalPolarity                                                                                                ����        �� ��             K.        ConfigureFastPulseModulationEnabled                                                                                                     ����        �� ��             K.        ConfigurePulseWaveform                                                                                                                  ����        �� �             K.        ConfigurePulseModulationFrequency                                                                                                       ����        �� �p             K.        ConfigureLFGenerator                                                                                                                    ����        � ��             K.        ConfigureDualSine                                                                                                                       ����        �� Ĳ             K.        ConfigureSweptSine                                                                                                                      ����        �� ��             K.        ConfigureSweepTrigger                                                                                                                   ����        щ ږ             K.        ConfigureFunctionGeneratorPulse                                                                                                         ����        ې �E             K.        GetLFGeneratorName                                                                                                                      ����        �s �Y             K.        SetActiveLFGenerator                                                                                                                    ����        � ��             K.        ConfigureLFGeneratorOutput                                                                                                              ����        �� �             K.        ConfigurePulseExternalTrigger                                                                                                           ����        R �             K.        ConfigurePulseInternalTrigger                                                                                                           ����        � t             K.        ConfigurePulse                                                                                                                          ����        � $w             K.        ConfigurePulseOutput                                                                                                                    ����        %� 3W             K.        ConfigureSweep                                                                                                                          ����        6  B�             K.        ConfigureFrequencyStepStartStop                                                                                                         ����        D, Mc             K.        ConfigureFrequencyStepDwell                                                                                                             ����        Nl U�             K.        ResetFrequencyStep                                                                                                                      ����        VJ `�             K.        ConfigurePowerStepStartStop                                                                                                             ����        b k?             K.        ConfigurePowerStepDwell                                                                                                                 ����        lH s�             K.        ResetPowerStep                                                                                                                          ����        t |�             K.        CreateFrequencyList                                                                                                                     ����        ~
 ��             K.        CreatePowerList                                                                                                                         ����        �� ��             K.        CreateFrequencyPowerList                                                                                                                ����        �� ��             K.        SelectList                                                                                                                              ����        �� ��             K.        ClearAllLists                                                                                                                           ����        �L �m             K.        ConfigureListDwell                                                                                                                      ����        �v ��             K.        ResetList                                                                                                                               ����        �A ��             K.        ConfigureSweepDirection                                                                                                                 ����        �� Ȥ             K.        ConfigureListMode                                                                                                                       ����        ɢ �             K.        SelectManualPoint                                                                                                                       ����        �� �V             K.        DoSingleSweep                                                                                                                           ����        �� �<             K.        ConfigureALC                                                                                                                            ����        �x �             K.        ConfigureAlcSearchEnabled                                                                                                               ����        �k ��             K.        DoPowerSearch                                                                                                                           ����        �% 8             K.        ConfigureALCSearchReference                                                                                                             ����        T              K.        ConfigureReferenceOscillator                                                                                                            ����        � #             K.        ConfigureIQEnabled                                                                                                                      ����        � '�             K.        ConfigureIQ                                                                                                                             ����        )� 5u             K.        ConfigureIQSkew                                                                                                                         ����        6� =�             K.        CalibrateIQ                                                                                                                             ����        >s F�             K.        DefaultCalibrateIQ                                                                                                                      ����        Gx P             K.        CalibrateIQRange                                                                                                                        ����        P} X�             K.        ConfigureIQImpairmentEnabled                                                                                                            ����        Y� eD             K.        ConfigureIQImpairment                                                                                                                   ����        f� v         	    K.        ConfigureIQExternalImpairment                                                                                                           ����        x& �t             K.        ConfigureIQInputSkew                                                                                                                    ����        �* �              K.        ConfigureHighCrestEnabled                                                                                                               ����        �� ��             K.        ConfigureArb                                                                                                                            ����        �� ��             K.        WriteArbWaveform                                                                                                                        ����        �� ��             K.        SelectArbWaveform                                                                                                                       ����        �9 ��             K.        ClearAllArbWaveforms                                                                                                                    ����        � �D             K.        QueryArbWaveformCapabilities                                                                                                            ����        �� ̦             K.        ConfigureArbTriggerSource                                                                                                               ����        �( ��             K.        ConfigureArbExternalTriggerSlope                                                                                                        ����        �� ��             K.        GetCDMAStandardName                                                                                                                     ����        � �q             K.        SelectCDMAStandard                                                                                                                      ����        �$ �             K.        ConfigureCDMAClockSource                                                                                                                ����        �1  �             K.        ConfigureCDMATriggerSource                                                                                                              ����         H             K.        ConfigureCDMAExternalTriggerSlope                                                                                                       ����        v m             K.        GetCDMATestModelName                                                                                                                    ����        �              K.        SelectCDMATestModel                                                                                                                     ����        � 31             K.        ConfigureCDMAFilter                                                                                                                     ����        7� F�             K.        ConfigureCDMATriggerAdvanced                                                                                                            ����        H� V�             K.        ConfigureCDMAClipping                                                                                                                   ����        Y[ l�             K.        SelectCDMAChannel                                                                                                                       ����        ox ��             K.        DefineCDMAChannel                                                                                                                       ����        �I ��             K.        SelectWCDMAChannel                                                                                                                      ����        � ��             K.        ConfigureWCDMAForwardChannel                                                                                                            ����        �? ��             K.        ConfigureWCDMAReverseChannel                                                                                                            ����        � �n             K.        DefineWCDMAChannel                                                                                                                      ����        �� ڳ             K.        SelectWCDMA3GPPChannel                                                                                                                  ����        �1 ��             K.        ConfigureWCDMA3GPPDownChannel                                                                                                           ����        �� ��             K.        ConfigureWCDMA3GPPUpChannel                                                                                                             ����        �� �             K.        DefineWCDMA3GPPChannel                                                                                                                  ����        5 !�             K.        SelectWCDMA2000Channel                                                                                                                  ����        '@ 6�             K.        DefineCDMA2000Channel                                                                                                                   ����        9b BT             K.        GetTDMAStandardName                                                                                                                     ����        C� Mr             K.        SelectTDMAStandard                                                                                                                      ����        N% Y�             K.        ConfigureTDMAClockSource                                                                                                                ����        [k e�             K.        ConfigureTDMATriggerSource                                                                                                              ����        g1 p�             K.        ConfigureTDMAExternalTriggerSlope                                                                                                       ����        q� z�             K.        GetTDMAFrameName                                                                                                                        ����        {� ��             K.        SelectTDMAFrame                                                                                                                         ����        �X ��             K.        ConfigureTDMABurstEnabled                                                                                                               ����        �� ��             K.        ConfigureTDMAPattern                                                                                                                    ����        �� ��             K.        ConfigureTDMAFrame                                                                                                                      ����        �� �(             K.        ConfigureTDMASyncOut                                                                                                                    ����        �� �/             K.        ConfigureTDMAFrequencyChannels                                                                                                          ����        � �             K.        ModifyTDMAStandard                                                                                                                      ����        	 s             K.        ConfigureTDMAIQScaling                                                                                                                  ����        )  �             K.        ConfigureTDMAFilter                                                                                                                     ����        $ 8�             K.        ConfigureTDMAModulationType                                                                                                             ����        >� T�             K.        ConfigureDECTTimeslotTB                                                                                                                 ����        Z� p�             K.        ConfigureDECTTimeslotTBZ                                                                                                                ����        v� ��             K.        ConfigureDECTTimeslotLC                                                                                                                 ����        �� ��             K.        ConfigureDECTTimeslotLCZ                                                                                                                ����        �� �f             K.        ConfigureDECTTimeslotDB                                                                                                                 ����        �� ��             K.        ConfigureDECTTimeslotCustom                                                                                                             ����        � �             K.        ConfigureTETRATimeslotNormal                                                                                                            ����        � �Q         	    K.        ConfigureTETRATimeslotControl                                                                                                           ����                      K.        ConfigureTETRATimeslotSync                                                                                                              ����         � 1g             K.        ConfigureTETRATimeslotCustom                                                                                                            ����        6% @b             K.        ConfigureTETRAScramble                                                                                                                  ����        Ao Sf         
    K.        ConfigurePHSTimeslotTCH                                                                                                                 ����        X� h[         	    K.        ConfigurePHSTimeslotSYNC                                                                                                                ����        k z�             K.        ConfigurePHSTimeslotCustom                                                                                                              ����        � ��             K.        ConfigurePHSScramble                                                                                                                    ����        �� �Z             K.        ConfigureNADCTimeslotTCH                                                                                                                ����        �# �|             K.        ConfigureNADCTimeslotCustom                                                                                                             ����        �? ��             K.        ConfigureNADCTransmissionRate                                                                                                           ����        � �S             K.        ConfigurePDCTimeslotTCH                                                                                                                 ����        �� �             K.        ConfigurePDCTimeslotVOX                                                                                                                 ����        �7 	 �             K.        ConfigurePDCTimeslotCustom                                                                                                              ����        	� 	�             K.        ConfigurePDCTransmissionRate                                                                                                            ����        	� 	$�         
    K.        ConfigureGSMTimeslotNormal                                                                                                              ����        	+� 	4�             K.        ConfigureGSMTimeslotFCorr                                                                                                               ����        	5� 	I,             K.        ConfigureGSMTimeslotSync                                                                                                                ����        	N� 	[�             K.        ConfigureGSMTimeslotDummy                                                                                                               ����        	\� 	p�         	    K.        ConfigureGSMTimeslotAccess                                                                                                              ����        	v� 	��             K.        ConfigureGSMTimeslotCustom                                                                                                              ����        	� 	�B             K.        ConfigureGSMDifferentialData                                                                                                            ����        	� 	�M             K.        ConfigureCustomDifferentialData                                                                                                         ����        	� 	�             K.        ConfigureBurstGateInputPolarity                                                                                                         ����        	�> 	�3             K.        ConfigureDataClockInputPolarity                                                                                                         ����        	�] 	�`             K.        ConfigureDataClockOutputPolarity                                                                                                        ����        	�� 	�X             K.        ConfigureDataInputPolarity                                                                                                              ����        	�v 	�P             K.        ConfigureDataOutputPolarity                                                                                                             ����        	�p 	۔             K.        ConfigureEventOutputPolarity                                                                                                            ����        	� 	�O             K.        ConfigurePatternTriggerInputPolarity                                                                                                    ����        	� 	�y             K.        ConfigureSymbolSyncInputPolarity                                                                                                        ����        	� 	��             K.        ConfigureSymbolSyncOutputPolarity                                                                                                       ����        	�� 
�             K.        ConfigureConnectorsEnabled                                                                                                              ����        
[ 
             K.        ConfigureTriggerOutputPolarity                                                                                                          ����        
2 
'             K.        SetAttributeViInt32                                                                                                                     ����        
(� 
=�             K.        SetAttributeViReal64                                                                                                                    ����        
?2 
T             K.        SetAttributeViString                                                                                                                    ����        
U� 
j�             K.        SetAttributeViBoolean                                                                                                                   ����        
l3 
�             K.        SetAttributeViSession                                                                                                                   ����        
�� 
�|             K.        GetAttributeViInt32                                                                                                                     ����        
�� 
��             K.        GetAttributeViReal64                                                                                                                    ����        
�� 
�+             K.        GetAttributeViString                                                                                                                    ����        
ä 
�r             K.        GetAttributeViBoolean                                                                                                                   ����        
կ 
�}             K.        GetAttributeViSession                                                                                                                   ����        
� 
�9             K.        CheckAttributeViInt32                                                                                                                   ����        
�� 
V             K.        CheckAttributeViReal64                                                                                                                  ����        � s             K.        CheckAttributeViString                                                                                                                  ����         .�             K.        CheckAttributeViBoolean                                                                                                                 ����        0. @�             K.        CheckAttributeViSession                                                                                                                 ����        BN M�             K.        ConfigureFrequencyMultiplier                                                                                                            ����        N� V             K.        DisableAllModulation                                                                                                                    ����        V| ^             K.        IsSettled                                                                                                                               ����        ^� f�             K.        WaitUntilSettled                                                                                                                        ����        g� pu             K.        SendSoftwareTrigger                                                                                                                     ����        p� zL             K.        self_test                                                                                                                               ����        {H �}             K.        reset                                                                                                                                   ����        �� ��             K.        ResetWithDefaults                                                                                                                       ����        �a ��             K.        Disable                                                                                                                                 ����        �Q ��             K.        revision_query                                                                                                                          ����        �� �             K.        error_query                                                                                                                             ����        � �.             K.        error_message                                                                                                                           ����        �* �l             K.        InvalidateAllAttributes                                                                                                                 ����        �� �             K.        GetError                                                                                                                                ����        �� �m             K.        ClearError                                                                                                                              ����        �� "             K.        GetNextInterchangeWarning                                                                                                               ����         �             K.        ClearInterchangeWarnings                                                                                                                ����        [ )+             K.        ResetInterchangeCheck                                                                                                                   ����        )� =6             K.        GetNextCoercionRecord                                                                                                                   ����        >* Q�             K.        LockSession                                                                                                                             ����        R� b             K.        UnlockSession                                                                                                                           ����        b� j�             K.        WriteInstrData                                                                                                                          ����        k� t]             K.        ReadInstrData                                                                                                                           ����        u� ~9             K.        close                                                                                                                                         (                                                                                     �Initialize                                                                           �Initialize With Options                                                             tConfiguration                                                                       �RF                                                                                   �Configure RF                                                                         �Configure ALC Enabled                                                                �Configure Output Enabled                                                             �Configure Output  Modulation Enabled                                                :Frequency                                                                            �Configure Multiplier CW                                                              �Configure Offset                                                                     �Configure Offset Enabled (4438C Only)                                                �Configure Reference                                                                  �Configure Reference Enabled                                                          �Configure Phase Adjustment                                                           �Set Phase Reference                                                                  �Configure Optimization                                                              zPower                                                                                �Configure Alternate Amplitude Enabled                                                �Configure Alternate Amplitude                                                        �Configure Alternate Amplitude Trigger Source                                         �Configure Automatic Attenuation Enabled                                              �Configure Offset                                                                     �Configure Reference                                                                  �Configure Reference Enabled                                                          �Configure ALC Search Span (4438C Only)                                              �Analog Modulation                                                                    �Configure AM Enabled                                                                 �Configure AM External Coupling                                                       �Configure AM                                                                         �Configure AM Depth Coupling                                                          �Configure AM2 Enabled                                                                �Configure AM2 External Coupling                                                      �Configure AM2                                                                        �Configure Wideband AM Enabled                                                        �Configure FM Enabled                                                                 �Configure FM External Coupling                                                       �Configure FM                                                                         �Configure FM Deviation Coupling                                                      �Configure FM2 Enabled                                                                �Configure FM2 External Coupling                                                      �Configure FM2                                                                        �Configure PM Enabled                                                                 �Configure PM External Coupling                                                       �Configure PM                                                                         �Configure PM Deviation Coupling                                                      �Configure PM Bandwidth                                                               �Configure PM2 Enabled                                                                �Configure PM2                                                                        �Configure PM2 External Coupling                                                      �Set Active External Source                                                           �Get Analog Modulation Source Name                                                    �Calibrate DCFM / DCPM                                                                Pulse Modulation                                                                     �Configure Pulse Modulation Enabled                                                   �Configure Pulse Modulation Source                                                    �Configure Pulse Modulation External Polarity                                         �Configure Fast Pulse Modulation Enabled                                              �Configure Pulse Waveform                                                             �Configure Pulse Modulation Frequency                                                �LF Generator                                                                         �Configure LFGenerator                                                                �Configure Dual Sine                                                                  �Configure Swept Sine                                                                 �Configure Sweep Trigger                                                              �Configure Function Generator Pulse                                                   �Get LF Generator Name                                                                �Set Active LFGenerator                                                               �Configure LFGenerator Output                                                        �Pulse Generator                                                                      �Configure Pulse External Trigger                                                     �Configure Pulse Internal Trigger                                                     �Configure Pulse                                                                      �Configure Pulse Output                                                              �Sweep                                                                                �Configure Sweep                                                                      �Configure Frequency Step Start Stop                                                  �Configure Frequency Step Dwell                                                       �Reset Frequency Step                                                                 �Configure Power Step Start Stop                                                      �Configure Power Step Dwell                                                           �Reset Power Step                                                                     �Create Frequency List                                                                �Create Power List                                                                    �Create Frequency Power List                                                          �Select List                                                                          �Clear All Lists                                                                      �Configure List Dwell                                                                 �Reset List                                                                           �Configure Sweep Direction                                                            �Configure List Mode                                                                  �Select Manual Point                                                                  �Do Single Sweep                                                                     	'ALC                                                                                  �Configure ALC                                                                        �Configure ALC Search Enabled                                                         �Do Power Search                                                                      �Configure ALC Search Reference                                                      	jReference Oscillator                                                                 �Configure Reference Oscillator                                                      	�IQ                                                                                   �Configure IQ Enabled                                                                 �Configure IQ                                                                         �Configure IQ Skew (4438C Only)                                                       �Calibrate IQ                                                                         �Default Calibrate IQ                                                                 �Calibrate IQ Range                                                                   �Configure IQ Impairment Enabled                                                      �Configure IQ Impairment                                                              �Configure IQ External Impairment (4438C Only)                                        �Configure IQ Imput Skew (4438C Only)                                                 �Configure High Crest Enabled                                                        GARB Generator                                                                        �Configure Arb                                                                        �Write Arb Waveform                                                                   �Select Arb Waveform                                                                  �Clear All Arb Waveforms                                                              �Query Arb Waveform Capabilities                                                      �Configure Arb Trigger Source                                                         �Configure Arb External Trigger Slope                                                	CDMA                                                                                 �Get CDMA Standard Name                                                               �Select CDMA Standard                                                                 �Configure CDMA Clock Source                                                          �Configure CDMA Trigger Source                                                        �Configure CDMA External Trigger Slope                                                �Get CDMA Test Model Name                                                             �Select CDMA Test Model                                                               �Configure CDMA Filter                                                                �Configure CDMA Trigger Advanced                                                      �Configure CDMA Clipping                                                             CDMA (IS-95A)                                                                        �Select CDMA Channel                                                                  �Define CDMA Channel                                                                 5W-CDMA (Rev. 1.0 - 1.2)                                                              �Select W-CDMA Channel                                                                �Configure W-CDMA Forward Channel                                                     �Configure W-CDMA Reverse Channel                                                     �Define W-CDMA Channel                                                               �W-CDMA (3GPP 3.4 12-00)                                                              �Select W-CDMA 3GPP Channel                                                           �Configure W-CDMA 3GPP Down Channel                                                   �Configure W-CDMA 3GPP Up Channel                                                     �Define W-CDMA 3GPP Channel                                                          �CDMA2000                                                                             �Select CDMA2000 Channel                                                              �Define CDMA2000 Channel                                                             TDMA                                                                                 �Get TDMA Standard Name                                                               �Select TDMA Standard                                                                 �Configure TDMA Clock Source                                                          �Configure TDMA Trigger Source                                                        �Configure TDMA External Trigger Slope                                                �Get TDMA Frame Name                                                                  �Select TDMA Frame                                                                    �Configure TDMA Burst Enabled                                                         �Configure TDMA Pattern                                                               �Configure TDMA Frame                                                                 �Configure TDMA Sync Out                                                              �Configure TDMA Frequency Channels                                                    �Modify TDMA Standard                                                                 �Configure TDMA I/Q Scaling                                                           �Configure TDMA Filter                                                                �Configure TDMA Modulation Type                                                      �DECT                                                                                 �Configure DECT Traffic Bearer Timeslot                                               �Configure DECT Traffic Bearer With Z Field Timeslot                                  �Configure DECT Low Capacity Timeslot                                                 �Configure DECT Low Capacity With Z Field Timeslot                                    �Configure DECT Dummy Timeslot                                                        �Configure DECT Custom Timeslot                                                      0TETRA                                                                                �Configure TETRA Normal Timeslot                                                      �Configure TETRA Control Timeslot                                                     �Configure TETRA Sync Timeslot                                                        �Configure TETRA Custom Timeslot                                                      �Configure TETRA Scramble                                                            [PHS                                                                                  �Configure PHS TCH Timeslot                                                           �Configure PHS SYNC Timeslot                                                          �Configure PHS Custom Timeslot                                                        �Configure PHS Scramble                                                              "�NADC                                                                                 �Configure NADC TCH Timeslot                                                          �Configure NADC Custom Timeslot                                                       �Configure NADC Frame Transmission Rate                                              '�PDC                                                                                  �Configure PDC TCH Timeslot                                                           �Configure PDC VOX Timeslot                                                           �Configure PDC Custom Timeslot                                                        �Configure PDC Frame Transmission Rate                                               -nGSM                                                                                  �Configure GSM Normal Timeslot                                                        �Configure GSM Frequency Correction Timeslot                                          �Configure GSM Sync Timeslot                                                          �Configure GSM Dummy Timeslot                                                         �Configure GSM Access Timeslot                                                        �Configure GSM Custom Timeslot                                                        �Configure GSM Differential Data                                                     4�CUSTOM                                                                               �Configure Custom Differential Data                                                  8HRoute Subsystem                                                                      �Configure Burst Gate Input Polarity                                                  �Configure Data Clock Input Polarity                                                  �Configure Data Clock Output Polarity                                                 �Configure Data Input Polarity                                                        �Configure Data Output Polarity                                                       �Configure Event Output Polarity                                                      �Configure Pattern Trigger Input Polarity                                             �Configure Symbol Sync Input Polarity                                                 �Configure Symbol Sync Output Polarity                                                �Configure Connectors Enabled                                                         �Configure Trigger Output Polarity                                                   8�Set/Get/Check Attribute                                                             9 Set Attribute                                                                        �Set Attribute ViInt32                                                                �Set Attribute ViReal64                                                               �Set Attribute ViString                                                               �Set Attribute ViBoolean                                                              �Set Attribute ViSession                                                             9�Get Attribute                                                                        �Get Attribute ViInt32                                                                �Get Attribute ViReal64                                                               �Get Attribute ViString                                                               �Get Attribute ViBoolean                                                              �Get Attribute ViSession                                                             :Check Attribute                                                                      �Check Attribute ViInt32                                                              �Check Attribute ViReal64                                                             �Check Attribute ViString                                                             �Check Attribute ViBoolean                                                            �Check Attribute ViSession                                                         ����Obsolete                                                                             �Configure Multiplier                                                                :�Action/Status Functions                                                              �Disable All Modulation                                                               �Is Settled                                                                           �Wait Until Settled                                                                   �Send Software Trigger                                                               :�Utility                                                                              �Self-Test                                                                            �Reset                                                                                �Reset With Defaults                                                                  �Disable                                                                              �Revision Query                                                                       �Error-Query                                                                          �Error Message                                                                        �Invalidate All Attributes                                                           <Error                                                                                �Get Error                                                                            �Clear Error                                                                         <uInterchangeability Info                                                              �Get Next Interchange Warning                                                         �Clear Interchange Warnings                                                           �Reset Interchange Check                                                             <�Coercion Info                                                                        �Get Next Coercion Record                                                            =Locking                                                                              �Lock Session                                                                         �Unlock Session                                                                      =�Instrument I/O                                                                       �Write Instrument Data                                                                �Read Instrument Data                                                                 �Close                                                                           