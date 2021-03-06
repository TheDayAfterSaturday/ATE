s��        �   c ��  �   �   ����                               ag875x      ag875x                                        � � ��ViInt16  �  � ��ViInt32  � � ��ViReal64     
�  	ViInt16 []     
�  	ViInt32 []     �  
ViReal64 []     � ��ViRsrc     	� 	��ViSession     	�  ViChar []     � ��ViStatus     	� 	��ViBoolean     � 	 ViBoolean []     � ��ViString     �  ViChar[]  (    Agilent Technologies ag875x Network Analyzer 
VXIplug&play Universal Instrument Driver 
Revision A.01.01.

This instrument driver supports the following 
Agilent Technologies network analyzer model numbers:

8753D
8753E
8753ES
8753ET
8719D
8719ES
8719ET
8720D
8720ES
8720ET
8722D
8722ES
8722ET
     b    Functions which provide access to system-related features of the instrument can be found here.

     0    The functions related to Averaging are here.

     2    The functions related to Calibration are here.

     /    The functions related to Stimulus are here.

     5    The functions related to Sweep settings are here.

     .    The functions related to Display are here.

     .    The functions related to Markers are here.

     6    The functions related to the Measurement are here.

     K    The functions related to the instrument state Save and Recall are here.

     6    The functions related to Scale Reference are here.

     1    The functions related to Array Data are here.

     -    The functions related to Limits are here.

     ;    The functions related to User Interface (I/O) are here.

     _    Functions which perform tasks that do not require communication with the instrument are here.     �    Utility functions perform a variety of standard P&P tasks and HP specific tasks such as passthroughs for instrument commands.      =    These functions pass commands directly to the instrument.

    W    The initialize function initializes the software connection to the instrument and optionally verifies that instrument is in the system. In addition, it may perform any necessary actions to place the instrument in its reset state.

If the ag875x_init() function encounters an error, then the value of the vi output parameter will be VI_NULL.      �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     9    The Instrument Description. Examples:GPIB0::16::INSTR.      �    If VI_TRUE, perform a revision query to verify that the instrument is the one expected by the driver.

If VI_FALSE, do not perform a revision query.     z    If VI_TRUE, perform a reset operation while initializing the instrument.

If VI_FALSE, do not perform a reset operation.     K    Instrument Handle. This is VI_NULL if an error occurred during the init.     �r���  �    Error                             	@ $ (  �  �    Instr Desc                        	� $0 �       ID Query                          
 $� �       Do Reset                          
� ( �  �    vi                                 	           "GPIB0::16::INSTR"   On VI_TRUE Off VI_FALSE   On VI_TRUE Off VI_FALSE    	            �    Allows setting or reading of time or date on the instrument clock, or allows user to synchronize the instrument clock with computer's clock.     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     �    Contains date or time as requested.  Always returns data in following format (with spaces):

HH:MM:SS - "23:59:59" for example
DD MMM YYYY - "01 JAN 2000" for example

Required Parameter:  Only when performing query    �    Selects desired action. When performing a query, all parameters must be passed even if they are not used; dummy values can be used.

ag875x_CLK_DATE     Sets date (requires 3 parms)
ag875x_CLK_DATE_Q   Queries date (requires 4 parms)
ag875x_CLK_TIME     Sets time (requires 3 parms)
ag875x_CLK_TIME_Q   Queries time (requires 4 parms)
ag875x_CLK_SYNC     Synchronizes analyzer to PC's internal clock (requires 2 parms)

Required Parameter:  YES     �    Contains the desired date or time as needed by request.  Time is in 24 hour format. Format is: 

HH:MM:SS - "23:59:59" for example
DD MMM YYYY - "01 JAN 2000" for example

Required Parameter:  NO

Default Value:  ""    �r���  �    Error                             � (  �  �    vi                                � $r �  �    Current Clock                     � $ ( � �    Clock Request                     u ` ( �  �    Clock Data                         	           0    	                       �Set Date ag875x_CLK_DATE Query Date ag875x_CLK_DATE_Q Set Time ag875x_CLK_TIME Query Time ag875x_CLK_TIME_Q Synchronize Clock ag875x_CLK_SYNC    ""   �    This function reads the model number, serial number, or revision of the analyzer.  The user may request any one of these parameters.  In addition, the firmware revision may be read as a numeric value so that numeric comparisons can easily be made.  This is useful if using a particular feature that is only in firmware X.XX or above.

This function can also read if selected options or components are installed, such as time domain measurement capability or a high stability frequency reference.     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     �    Returns the current ID string.  

Example: If IDRequest = ag875x_MODEL_Q - 8753ES

Example: If IDRequest = ag875x_REVISION_Q - 7.64
plus the numeric value of the firmware revision is also returned in IDStatus.

Required Parameter:  YES    A    Selects requested parameter.

This option requires 2 params:

ag875x_MODEL_Q - Returns Model number

Each option below requires 3 params:

ag875x_SERIAL_Q - Returns Serial number
ag875x_REVISION_Q - "REV?" Returns Firmware Revision number

Each option below requires 4 params:

ag875x_REV_VALUE_Q - Returns Firmware Rev #  as a numeric value
ag875x_MAXFREQ_Q - Returns maximum freq capability of analyzer
ag875x_MINFREQ_Q - Returns minimum freq capability of analyzer
ag875x_OPT_002_Q - Harmonic Meas. Capability? (8753 Opt. 002)
ag875x_OPT_004_Q - Step Attenuator? (8753ET/8719ET/8720ET/8722ET)
ag875x_OPT_006_Q - 6 GHz Freq. Extension? (8753 Opt. 006)
ag875x_OPT_007_Q  - Mechanical Transfer Switch? (8719/20/22 Opt. 007)
ag875x_OPT_010_Q - Time Domain Capability? (Opt. 010)
ag875x_OPT_011_Q - No Built-in S-parameter Test Set? (8753 Opt. 011)
ag875x_OPT_012_Q - Direct Sampler Access? (8719/20/22 Opt. 012)
ag875x_OPT_014_Q - Configurable Test Set? (8753ES)
ag875x_OPT_075_Q - 75 Ohm Impedance Built-in Test Set? (8753 Opt. 075)
ag875x_OPT_085_Q - High Power Test Capability? (8719/20/22 Opt. 085)
ag875x_OPT_089_Q - Freq. Offset Mode Capability? (8719/20/22 Opt. 089)
ag875x_OPT_1D5_Q - High Stability Freq. Reference? (Opt. 1D5)
ag875x_OPT_400_Q - 4th Sampler/TRL? (8719/20/22 Opt. 400)

Required Parameter:  NO
Default Value:  "MODEL?"
     �    Returns the numeric value of the firmware revision, minimum frequency, maximum frequency, or status.

Status Range:

0 = Option not present
1 = Option is present

Required Parameter:  NO    r���  �    Error                             � (  �  �    vi                                � `r �  �    Current ID                        � $ ( �^    ID Request                        - �r �  �    ID Status                          	           0    	                      Model Number? ag875x_MODEL_Q Serial Number ag875x_SERIAL_Q Firmware Revision? ag875x_REVISION_Q Firmware Revision Number? ag875x_REV_VALUE_Q Analyzer Maximum Frequency? ag875x_MAXFREQ_Q Analyzer Minimum Frequency? ag875x_MINFREQ_Q Harmonic Meas Capability? (8753 Opt. 002) ag875x_OPT_002_Q Attenuator? (Opt. 004 on 8753ET/8719ET/8720ET/8722ET) ag875x_OPT_004_Q 6 GHz Frequency Extension? (8753 Opt. 006) ag875x_OPT_006_Q Mechanical Transfer Switch? (8719/20/22 Opt. 007) ag875x_OPT_007_Q Time Domain Capability? (Opt. 010) ag875x_OPT_010_Q No Built-in S-Parameter Test Set? (8753D/E/ES Opt. 011) ag875x_OPT_011_Q Configurable Test Set? (8753ES Opt. 014) ag875x_OPT_014_Q Direct Sampler Access? (8719/20/22 Opt. 012) ag875x_OPT_012_Q 75 Ohm Impedance Built-in Test Set? (8753 Opt. 075) ag875x_OPT_075_Q High Power Test Capability? (8719/20/22 Opt. 085) ag875x_OPT_085_Q Freq Offset Mode Capability? (8719/20/22 Opt. 089) ag875x_OPT_089_Q High Stability Freq Reference?  (Opt. 1D5) ag875x_OPT_1D5_Q 4TH Sampler/Trl? (8719/20/22 Opt. 400) ag875x_OPT_400_Q    	           �    Sets or returns current averaging factor or ON/OFF status, smoothing aperture (as a percent of the trace) or ON/OFF status, or restarts averaging.

Optional Parameters:  YES     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    W    Sets Averaging Factor or Smoothing Aperture to specified value.

Averaging Factor Range:

ag875x_AVG_FACTOR_MIN   0
ag875x_AVG_FACTOR_MAX   999
A value of 0 sets Averaging Factor off

Smoothing Aperture Range:
 
ag875x_SMOOTH_APERTURE_MIN  0
ag875x_SMOOTH_APERTURE_MAX  20.0
A value of 0 sets Smoothing Aperture off

Required Parameter:  YES    �    Returns a value when averageSmoothRequest is a query.

Query Type:

ag875x_AVG_FACTOR_Q - returns the averaging factor
ag875x_SMOOTH_APERTURE_Q - returns the smoothing aperture

ag875x_AVG_FACTOR_Q - returns the averaging factor on/off status
ag875x_SMOOTH_APERTURE_Q - returns the smoothing aperture on/off status

Status Range:

0 = Off
1 = On

Required Parameter:  Only when performing a query

Default Value: 0    5    Selects desired action:

ag875x_AVG_FACTOR - Set averaging factor (requires 2 parms)
ag875x_AVG_FACTOR_Q - Query averaging factor (requires 5 parms)
ag875x_AVG_STATUS_Q - Query averaging factor on/off status (requires 5 parms)
ag875x_AVG_RESTART - Averaging restart (requires 3 parms)
ag875x_SMOOTH_APERTURE - Set smoothing aperture (requires 3 parms)
ag875x_SMOOTH_APERTURE_Q - Query smoothing aperture (requires 5 parms)
ag875x_SMOOTH_STATUS_Q - Query smoothing aperture on/off status (requires 5 parms)

Required Parameter:  NO
Default Value: ag875x_AVG_FACTOR    �    Selects the channel number.  

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4


Required Parameter:  NO

Default Value: ag875x_CH1    #r���  �    Error                             #� (  �  �    vi                                #� $ K �      Average Smooth Set                %< $r �  �    Current Average Smooth            &� ` ( � �    Average Smooth Request            )! � ( � �    Average Smooth Channel             	           0 ?�      @�8             @0                    	                     >Set Averaging Factor ag875x_AVG_FACTOR Query Averaging Factor ag875x_AVG_FACTOR_Q Query Averaging On/Off Status ag875x_AVG_STATUS_Q Averaging Restart ag875x_AVG_RESTART Set Smoothing Aperture ag875x_SMOOTH_APERTURE Query Smoothing Aperture ag875x_SMOOTH_APERTURE_Q Query Smoothing On/Off Status ag875x_SMOOTH_STATUS_Q               TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4    .    Sets or returns value of IF bandwidth in Hz.     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().        Sets the bandwidth in Hz.

Range:

ag875x_IF_BW_10 - 10 Hz
ag875x_IF_BW_30 - 30 Hz
ag875x_IF_BW_100 - 100 Hz
ag875x_IF_BW_300 - 300 Hz
ag875x_IF_BW_1000 - 1000 Hz
ag875x_IF_BW_3000 - 3000 Hz
ag875x_IF_BW_3700 - 3700 Hz
ag875x_IF_BW_6000 - 6000 Hz


Required Parameter:  YES     �    Returns the current IF BW in Hz when bandwidthRequest = ag875x_Q.

Required Parameter:  Only when performing a query

Default Value: 0     �    Selects desired action.

ag875x_SET - Set IF BW (requires 2 parms)
ag875x_Q - Query IF BW (requires 5 parms)

Required Parameter:  NO

Default Value: ag875x_SET    �    Selects the channel number.

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4


Required Parameter:  NO

Default Value: ag875x_CH1    .�r���  �    Error                             /3 (  �  �    vi                                /k $ ( � �    Bandwidth                         0� $r �  �    Current Bandwidth                 1 ` ( � �    Bandwidth Request                 1� � ( � �    Bandwidth Channel                  	           0              �10 Hz ag875x_IF_BW_10 30 Hz ag875x_IF_BW_30 100 Hz ag875x_IF_BW_100 300 Hz ag875x_IF_BW_300 1000 Hz ag875x_IF_BW_1000 3000 Hz ag875x_IF_BW_3000 3700 Hz ag875x_IF_BW_3700 6000 Hz ag875x_IF_BW_6000    	                      *Set IF BW ag875x_SET Query IF BW ag875x_Q               TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4    �    Sets or reads the active calibration kit.

The instrument's softkey does not update automatically, but the change may be seen after selecting Local mode, then button Cal.     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().        Returns a string which designates the current calibration kit, when calkitRequest = ag875x_Q.

Range:

"2.4MM" = ag875x_CALKIT_2_4_MM
"2.92MM" = ag875x_CALKIT_2_92_MM
"2.92MM STAR" = ag875x_CALKIT_2_92_MM_STAR
"3.5MM TRL" = ag875x_CALKIT_3_5_MM_TRL
"3.5MM C" = ag875x_CALKIT_3_5_MM_C
"3.5MM D" = ag875x_CALKIT_3_5_MM_D
"7-16" = ag875x_CALKIT_716
"7MM" = ag875x_CALKIT_7_MM
"N50" = ag875x_CALKIT_N50
"N75" = ag875x_CALKIT_N75
"USER DEFINED" = ag875x_CALKIT_USER_DEFINED

Required Parameter:  Only when performing query

Default:  ""    #    Selects desired calkit definition or queries current calkit.  

The instrument's softkey does not update automatically, but the change may be seen after selecting Local mode, then button Cal.

The following require 2 parms:

ag875x_CALKIT_2_4_MM - Selects 2.4 mm (85056A/D) cal kit definition.
ag875x_CALKIT_2_92_MM - Selects 2.92 mm cal kit definition.
ag875x_CALKIT_2_92_MM_STAR - Selects 2.92 mm* (85056K) cal kit definition.
ag875x_CALKIT_3_5_MM_TRL - Selects 3.5 mm TRL (85052C) cal kit definition.
ag875x_CALKIT_3_5_MM_C - Selects 3.5 mm (85033C) cal kit definition.
ag875x_CALKIT_3_5_MM_D - Selects 3.5 mm (85033D on 8753 analyzers, 85052B/D on 8719/20/22 analyzers) cal kit definition.
ag875x_CALKIT_716 - Selects 7-16 (85038A/F/M) cal kit definition.
ag875x_CALKIT_7_MM - Selects 7 mm (85031B on 8753 analyzers, 85050B/C/D on 8719/20/22 analyzers) cal kit definition.
ag875x_CALKIT_N50 - Selects Type-N 50 ohm (85032B/E on 8753 analyzers, 85054B/D on 8719/20/22 analyzers) cal kit definition.
ag875x_CALKIT_N75 - Selects Type-N 75 ohm (85036B/E) cal kit definition.

The following require 1 parm:

ag875x_CALKIT_USER_DEFINED - Selects whichever user-defined cal kit definition is currently loaded in the 'User Kit' memory of the analyzer.
ag875x_Q - Queries cal kit definition.

Required Parameter:  YES
    7Cr���  �    Error                             7� (  �  �    vi                                8 $r �  �    Current Calkit                    :7 $ ( � �    Calkit Request                     	           0    	                     p2.4 mm ag875x_CALKIT_2_4_MM 2.92 mm ag875x_CALKIT_2_92_MM 2.92 mm * ag875x_CALKIT_2_92_MM_STAR 3.5 mmC ag875x_CALKIT_3_5_MM_C 3.5 mmD ag875x_CALKIT_3_5_MM_D TRL 3.5 mm ag875x_CALKIT_3_5_MM_TRL 7-16 ag875x_CALKIT_716 7 mm ag875x_CALKIT_7_MM N 50 ohm ag875x_CALKIT_N50 N 75 ohm ag875x_CALKIT_N75 User Defined Kit ag875x_CALKIT_USER_DEFINED Query Active Cal Kit ag875x_Q    S    This function sets Calibration Error Correction On or Off for the active channel.     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     \    Set calibration correction state on/off.

Range:

0 = ag875x_CALIB_OFF
1 = ag875x_CALIB_ON    B-r���  �    Error                             B� (  �  �    vi                                C ` �       Calib State                        	           0  (  On ag875x_CALIB_ON Off ag875x_CALIB_OFF    �    This function queries the type of calibration that is active on the specified channel.

NOTE:  If all necessary calibration steps have not been completed properly on the instrument, this function will time out.     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().        Returns a string which designates the type of active calibration.

ag875x_CAL_NONE = "NONE"
ag875x_CAL_RESPONSE = "RESPONSE"
ag875x_CAL_RESP_ISOL = "RESP & ISOL"
ag875x_CAL_ENH_RESP = "ENHANCED RESPONSE"
ag875x_CAL_REV_ENH_RESP = "REVERSE ENHANCED RESPONSE"
ag875x_CAL_S11_1_PORT = "S11 1-PORT"
ag875x_CAL_S22_1_PORT = "S22 1-PORT"
ag875x_CAL_FULL_2_PORT = "FULL 2-PORT"
ag875x_CAL_1_PATH_2_PORT = "ONE PATH 2-PORT"
ag875x_CAL_TRL_LRM = "TRL/LRM 2-PORT"
ag875x_CHANNEL_NOT_ENABLED = "CHANNEL NOT ENABLED"

Required Parameter:  YES        Selects the channel number to be tested for a calibration. 

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4


Required Parameter:  YES

Default Value: ag875x_CH1    Er���  �    Error                             E� (  �  �    vi                                E� $r �  �    Current Cal Type Q                H $ ( � �    Cal Type Q Channel                 	           0    	                       TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4    <    Sets or returns ON/OFF state of calibration interpolation.     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     �    Returns the current cal interpolation state when calInterpolationRequest = ag875x_Q.

0 = ag875x_CAL_INTERP_OFF
1 = ag875x_CAL_INTERP_ON

Required Parameter:  Only when performing a query

Default Value: 0     �    Sets or returns ON/OFF state of calibration interpolation.

Range:

ag875x_SET - Set cal interpolation state
ag875x_Q - Query cal interpolation state

Required Parameter:  NO

Default Value: ag875x_SET    �    Selects the channel number.  

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4


Required Parameter:  NO

Default Value: ag875x_CH1     �    Sets the ON/OFF state of cal interpolation when CalInterpolationRequest = ag875x_SET.

Required Parameter:  NO

Default Value: ag875x_CAL_INTERP_ON    K�r���  �    Error                             Lo (  �  �    vi                                L� $r �  �    Get Cal Interpolation State       M~ $ ( � �    Cal Interpolation Request         NQ � ( � �    Cal Interpolation Channel         PX ` d �       Set Cal Interpolation State        	           0    	                       FSet Interpolation State ag875x_SET Query Interpolation State ag875x_Q               TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4  2 On ag875x_CAL_INTERP_ON Off ag875x_CAL_INTERP_OFF    =    Sets or returns current number of measurement trace points.     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    �    Sets the number of points in the measurement trace if request = ag875x_SET.  

If request = ag875x_Q, the points parameter is not used (but must be passed).

Range:

SWEEP_POINTS_03 - 3 points
SWEEP_POINTS_11 - 11 points
SWEEP_POINTS_21 - 21 points
SWEEP_POINTS_26 - 26 points
SWEEP_POINTS_51 - 51 points
SWEEP_POINTS_101 - 101 points
SWEEP_POINTS_201 - 201 points
SWEEP_POINTS_401 - 401 points
SWEEP_POINTS_801 - 801 points
SWEEP_POINTS_1601 - 1601 points

Required Parameter:  YES    �    Selects the channel number.  

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4

Required Parameter:  NO

Default Value: ag875x_CH1     Y    Returns the current number of measurement points when pointsRequest = ag875x_Q (query).     �    Sets or queries the number of measurement points.

Range:

ag875x_SET - Sets number of points
ag875x_Q - Queries number of points

Required Parameter:  NO

Default Value:  ag875x_SET
    S�r���  �    Error                             T! (  �  �    vi                                TY $ ( � �    Points                            VE � ( � �    Points Channel                    XK $r �  �    Current Points                    X� ` ( � �    Points Request                     	           0           
   �3 ag875x_PNTS_03 11 ag875x_PNTS_11 21 ag875x_PNTS_21 26 ag875x_PNTS_26 51 ag875x_PNTS_51 101 ag875x_PNTS_101 201 ag875x_PNTS_201 401 ag875x_PNTS_401 801 ag875x_PNTS_801 1601 ag875x_PNTS_1601               TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4    	                       @Set Number of Points ag875x_SET Query Number of Points ag875x_Q    C    This function will activate the selected type of frequency sweep.     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     �    Selects the type of sweep

Range:

0 = ag875x_SWP_LINF - Linear frequency
1 = ag875x_SWP_LOGF - Log frequency
2 = ag875x_SWP_CWTIME - CW Time
3 = ag875x_SWP_LISTF - List frequency


Required Parameter:  YES    \�r���  �    Error                             ]2 (  �  �    vi                                ]j ` � � �    Freq Sweep Type                    	           0               jLinear Freq ag875x_SWP_LINF Log Freq ag875x_SWP_LOGF CW Time ag875x_SWP_CWTIME List Freq ag875x_SWP_LISTF    �    This function queries the type of sweep that is currently enabled:  Linear Frequency, Log Frequency, CW Time, List Frequency or Power Sweep.

Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     �    Returns the type of sweep.

Range:
    
0 = ag875x_SWP_LINF 0 - Linear Frequency
1 = ag875x_SWP_LOGF 1 - Log Frequency
2 = ag875x_SWP_CWTIME - CW Time
3 = ag875x_SWP_LISTF  - Frequency List
4 = ag875x_SWP_POWER  - Power Sweep    `r���  �    Error                             `� (  �  �    vi                                `� ` � �  �    Current Sweep Type                 	           0    	            �    This function is for setting or reading of frequency stimulus parameters.  

NOTE:  If you want to set or read a frequency list, use function  ag875x_freqListSet and/or ag875x_freqListQuery.     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    �    Sets the start or center frequency value in Hz.

Sets start frequency - when frequencyRequest = ag875x_FREQ_STRT_STOP

Sets center frequency - when frequencyRequest = ag875x_FREQ_CENT_SPAN

Range:  Limited to the frequency specifications of your particular network analyzer.

Required Parameter:  YES

Note:  If frequencyRequest is a query, some value must be passed to this parameter simply as a placeholder.    �    Sets the stop or span frequency value in Hz.

Sets stop frequency - when frequencyRequest = ag875x_FREQ_STRT_STOP

Sets span frequency - when frequencyRequest = ag875x_FREQ_CENT_SPAN

Range:  Limited to the frequency specifications of your particular network analyzer.

Required Parameter:  YES

Note:  If frequencyRequest is a query, some value must be passed to this parameter simply as a placeholder.    ]    Sets or queries the desired frequency.
 
Range:
       
ag875x_FREQ_STRT_STOP - Set the start and stop frequencies.
ag875x_FREQ_CENT_SPAN - Set the center frequency and frequency span.
ag875x_FREQ_STRT_STOP_Q - Query the start and stop frequencies.
ag875x_FREQ_CENT_SPAN_Q - Query the center frequency and frequency span.

Required Parameter:  YES    l    Returns the start or center frequency value in Hz.

Returns start frequency - when frequencyRequest = ag875x_FREQ_STRT_STOP

Returns center frequency - when frequencyRequest = ag875x_FREQ_CENT_SPAN

Range:  Limited to the frequency specifications of your particular network analyzer.

Required Parameter:  Only when performing a query.

Default return value:  0
    car���  �    Error                             d  (  �  �    vi                                d8 ` P �      Set Start Or Center               e� � P �      Set Stop Or Span                  gx $ ( � �    Frequency Request                 h� $r �  �    Get Start Or Center             ���� `r �  �    Get Stop Or Span                   	           0 ?�      B"�_    @�L     A|�8               ?�      B"�_            A�ׄ                             �SET START AND STOP ag875x_FREQ_STRT_STOP QUERY START AND STOP ag875x_FREQ_STRT_STOP_Q SET CENTER AND SPAN ag875x_FREQ_CENT_SPAN QUERY CENTER AND SPAN ag875x_FREQ_CENT_SPAN_Q    	           	               Sets up a frequency list table on the network analyzer, but does not specifically activate the frequency list sweep mode.  

To activate frequency list sweep mode, use the ag875x_freqSweepType function.  

Note that coupled/uncoupled power settings are available on ES instruments only.     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    �    64 bit Real one-dimensional input array to contain the data for setting up the frequency list.  The array format is dependent upon the freqListSetRequest.

freqListSetRequest - [  segment format  ]

ag875x_FREQ_LIST_STEPPED - [ Start, Stop, Points ]

ag875x_FREQ_LIST_SWEPT - [ Start, Stop, Points ]

ag875x_FREQ_LIST_SWEPT_IF - [ Start, Stop, Points, IF Bandwidth ]

ag875x_FREQ_LIST_SWEPT_CPLD_PWR - [ Start, Stop, Points, Port Power ]

ag875x_FREQ_LIST_SWEPT_CPLD_PWR_IF - [ Start, Stop, Points, Port Power, IF Bandwidth ]

ag875x_FREQ_LIST_SWEPT_UNCPLD_PWR - [ Start, Stop, Points, Port 1 Power, Port 2 Power ]

ag875x_FREQ_LIST_SWEPT_UNCPLD_PWR_IF - [ Start, Stop, Points, Port 1 Power, Port 2 Power, IF Bandwidth ]

Repeat the format X number of times in the array where X equals the number of segments.  Number of segments for the frequency list can range from 1 to 30.

Required Parameter:  YES
        Contains the total number of frequency list segments to be set.   Make sure that the freqListSetList array contains at least this number of segments worth of data.

Range:  

ag875x_FREQ_LIST_MIN_SEGS = 1
ag875x_FREQ_LIST_MAX_SEGS = 30

Required Parameter:  YES    �    Defines the type of frequency list that will be set up on the network analyzer based upon the data contained in the list array that is passed to this function.

ag875x_FREQ_LIST_STEPPED - Stepped list

ag875x_FREQ_LIST_SWEPT - Swept list (common power, common IF BW)

ag875x_FREQ_LIST_SWEPT_IF - Swept list (common power, var IF BW)

ag875x_FREQ_LIST_SWEPT_CPLD_PWR - Swept list (var port-coupled power, common IF BW)

ag875x_FREQ_LIST_SWEPT_CPLD_PWR_IF - Swept list (var port-coupled power, var IF BW)

ag875x_FREQ_LIST_SWEPT_UNCPLD_PWR - Swept list (var port-uncoupled power, common IF BW)

ag875x_FREQ_LIST_SWEPT_UNCPLD_PWR_IF - Swept list (var port-uncoupled power, var IF BW)

Required Parameter:  NO

Default Value:  ag875x_FREQ_LIST_SWEPT    �    Selects the channel number.  

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4

Required Parameter:  NO

Default Value:  ag875x_CH1    4    Indicates whether to append these list segments to the existing frequency list table if one exists, or whether to clear the existing table first.

Range:

VI_TRUE = ag875x_APPEND_TO_EXISTING_TABLE
VI_FALSE = ag875x_CLEAR_EXISTING_TABLE

Required Parameter:  NO

Default Value:  ag875x_CLEAR_EXISTING_TABLE
    n(r���  �    Error                             n� (  �  �    vi                                n� ` ( � �    Freq List Set List                r� $ F �      Freq List Set Segments            s� � ( �,    Freq List Set Request             v� � ( � �    Freq List Set Channel             x� $ � � �    Freq List Set Append Mode          	           0    0                                 Stepped List ag875x_FREQ_LIST_STEPPED Swept List (common power, common IF BW) ag875x_FREQ_LIST_SWEPT Swept List (common power, variable IF BW) ag875x_FREQ_LIST_SWEPT_IF Swept List  (variable port-coupled power, common IF BW) ag875x_FREQ_LIST_SWEPT_CPLD_PWR Swept List (variable port-coupled power, variable IF BW) ag875x_FREQ_LIST_SWEPT_CPLD_PWR_IF Swept List (variable port-uncoupled power, common IF BW) ag875x_FREQ_LIST_SWEPT_UNCPLD_PWR Swept List (variable port-uncoupled power, variable IF BW) ag875x_FREQ_LIST_SWEPT_UNCPLD_PWR_IF               TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4              jAppend to Existing Table ag875x_APPEND_TO_EXISTING_TABLE Clear Existing Table ag875x_CLEAR_EXISTING_TABLE   /    Returns the existing frequency list values (if any).

If the power and/or the IF bandwidth is varying from segment-to-segment in swept list mode, those values will be returned as part of the freqListQueryList array.  

Swept list mode is available on analyzers having Firmware Revision 7.10 or higher.     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    �    Selects the channel number.  

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4

Required Parameter:  NO

Default Value: ag875x_CH1     Q    Returns the number of segments in the frequency list.

Required Parameter:  YES    U    Returns a 64 bit Real one-dimensional array containing the frequency list. Number of segments returned by the frequency list can range from 1 to 30.

The maximum possible number of values this function will write into the array is 180 (Maximum of 30 segments  *  Maximum of 6 values per segment).  So it is recommended that the array passed into this function should always be at least of size 180.

The array format is dependent upon the type of active frequency list.

ag875x_FREQ_LIST_STEPPED = [ Start, Stop, Points ]

ag875x_FREQ_LIST_SWEPT = [ Start, Stop, Points ]

ag875x_FREQ_LIST_SWEPT_IF = [ Start, Stop, Points, IF Bandwidth ]

ag875x_FREQ_LIST_SWEPT_CPLD_PWR = [ Start, Stop, Points, Port Power ]

ag875x_FREQ_LIST_SWEPT_CPLD_PWR_IF = [ Start, Stop, Points, Port Power, IF Bandwidth ]

ag875x_FREQ_LIST_SWEPT_UNCPLD_PWR = [ Start, Stop, Points, Port 1 Power, Port 2 Power ]

ag875x_FREQ_LIST_SWEPT_UNCPLD_PWR_IF = [ Start, Stop, Points, Port 1 Power, Port 2 Power, IF Bandwidth ]

Repeat the format X number of times in the array where X equals the number of segments.

Required Parameter:  YES    �    Returns a string describing the type of frequency list being read from the network analyzer.

ag875x_FREQ_LIST_STEPPED = "STEPPED LIST"
ag875x_FREQ_LIST_SWEPT = "SWEPT LIST"
ag875x_FREQ_LIST_SWEPT_IF = "SWEPT LIST IF"
ag875x_FREQ_LIST_SWEPT_CPLD_PWR = "SWEPT LIST CPLD PWR"
ag875x_FREQ_LIST_SWEPT_CPLD_PWR_IF = "SWEPT LIST CPLD PWR IF"
ag875x_FREQ_LIST_SWEPT_UNCPLD_PWR = "SWEPT LIST UNCPLD PWR"
ag875x_FREQ_LIST_SWEPT_UNCPLD_PWR_IF = "SWEPT LIST UNCPLD PWR IF"

Required Parameter:  YES    �r���  �    Error                             �N (  �  �    vi                                �� $ ( � �    Freq List Query Channel           �� $r �  �    Freq List Query Segments          �� jr �  �    Freq List Query List              �B � �  �    Freq List Query List Type          	           0               TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4    	            	            	           �    This causes the analyzer to begin sweeping the desired segment/segments from the pre-defined Frequency List.

Selection of segment 1 to 30 will select that particular segment. 

Selection of segment 31 will select all segments in the frequency list.

NOTE:  If there is no frequency list in the instrument, a timing problem may prevent parameter error from return the correct error number.  The next function run will catch the error.


Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().        Specify the Sweep Segment Number. 


Selection of segment 1 to 30 will select that particular segment. 

Selection of segment 31 will select all segments in the frequency list.

Range:

 1 = ag875x_SEGMENT_NUM_MIN
31 = ag875x_SEGMENT_NUM_MAX

Required Parameter:  YES
    ��r���  �    Error                             � (  �  �    vi                                �� ` � �      Freq List Sweep Seg Num            	           0                       �    Sets or returns current power range.

Option 004 provides 8753ET/8719ET/8720ET/8722ET analyzers with a programmable attenuator, so this function requires that those analyzers have Option 004.

Note:  This function does not apply to an 8753D/8753E/8753ES having Option 011.  For Option 011 instruments, use the ag875x_portAttenuation function with the ag875x_powerSet function to achieve necessary power level at the desired test port.

Optional Parameters:  YES     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    �    Contains the power range to be set.  To place instrument in auto mode select ag875x_PWR_RANGE_AUTO.

Valid Power Ranges on 8753 analyzers:

ag875x_PWR_RANGE_0 through ag875x_PWR_RANGE_7
ag875x_PWR_RANGE_AUTO

Valid Power Ranges on 8719/8720/8722 analyzers:

ag875x_PWR_RANGE_0 through ag875x_PWR_RANGE_11
ag875x_PWR_RANGE_AUTO

Range:                 
 0 = ag875x_PWR_RANGE_0
 1 = ag875x_PWR_RANGE_1   
 2 = ag875x_PWR_RANGE_2   
 3 = ag875x_PWR_RANGE_3   
 4 = ag875x_PWR_RANGE_4 
 5 = ag875x_PWR_RANGE_5 
 6 = ag875x_PWR_RANGE_6   
 7 = ag875x_PWR_RANGE_7   
 8 = ag875x_PWR_RANGE_8   
 9 = ag875x_PWR_RANGE_9   
10 = ag875x_PWR_RANGE_10  
11 = ag875x_PWR_RANGE_11  
12 = ag875x_PWR_RANGE_AUTO

Required Parameter:  YES
     �    When request = ag875x_Q, this parameter will return the power range currently in use.  Return value will equal one of the valid input values for the range parameter (shown above).

If powerRangeRequest is a query (ag875x_Q), this parameter will return the power range currently in use.

Range: 
                
 0 = ag875x_PWR_RANGE_0
 1 = ag875x_PWR_RANGE_1   
 2 = ag875x_PWR_RANGE_2   
 3 = ag875x_PWR_RANGE_3   
 4 = ag875x_PWR_RANGE_4 
 5 = ag875x_PWR_RANGE_5 
 6 = ag875x_PWR_RANGE_6   
 7 = ag875x_PWR_RANGE_7   
 8 = ag875x_PWR_RANGE_8   
 9 = ag875x_PWR_RANGE_9   
10 = ag875x_PWR_RANGE_10  
11 = ag875x_PWR_RANGE_11  
12 = ag875x_PWR_RANGE_AUTO

Required Parameter:  Only when performing a query.

Default Value:  0
     �    Selects desired action.

Values:         

ag875x_SET - Set power range
ag875x_Q - Query power range

Required Parameter:  NO

Default Value:  ag875x_SET    �    Selects the channel number.  

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4

Required Parameter:  NO

Default Value: ag875x_CH1    �kr���  �    Error                             �
 (  �  �    vi                                �B $ ( � �    Range                             � `r �  �    Current Power Range               �  ` ( � �    Power Range Request               �� � ( � �    Power Range Channel                	           0             iRange 0 ag875x_PWR_RANGE_0 Range 1 ag875x_PWR_RANGE_1 Range 2 ag875x_PWR_RANGE_2 Range 3 ag875x_PWR_RANGE_3 Range 4 ag875x_PWR_RANGE_4 Range 5 ag875x_PWR_RANGE_5 Range 6 ag875x_PWR_RANGE_6 Range 7 ag875x_PWR_RANGE_7 Range 8 ag875x_PWR_RANGE_8 Range 9 ag875x_PWR_RANGE_9 Range 10 ag875x_PWR_RANGE_10 Range 11 ag875x_PWR_RANGE_11 Range Auto ag875x_PWR_RANGE_AUTO    	                       6Set Power Range ag875x_SET Query Power Range ag875x_Q               TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4   �    Sets the power level (dBm) for the specified channel, or can be used to turn the source power ON or OFF.

For the 8753D/8753E/8753ES Option 011, the power level is specified as the power supplied by the source; the power at the test port will be less due to loss through the test set.

For the 8719D/ES/ET, 8720D/ES/ET, 8722D/ES/ET, 8753ET and standard 8753D/E/ES, the power level is specified as the power at the test port.     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().        When powerSetRequest = ag875x_PWR_LEVEL, this parameter sets the power level in dBm.

When powerSetRequest = ag875x_PWR_SOURCE_OFF or ag875x_PWR_SOURCE_ON, this parameter does nothing.  However a dummy value still must to be passed to the function.

Required Parameter:  YES     �    Selects desired action.

Range:         

ag875x_PWR_LEVEL - Set power level
ag875x_PWR_SOURCE_OFF - Turn source power off
ag875x_PWR_SOURCE_ON - Turn source power on

Required Parameter:  NO

Default Value:  ag875x_PWR_LEVEL    �    Selects the channel number.  

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4

Required Parameter:  NO

Default Value: ag875x_CH1    >    For the 8719D/ES, 8720D/ES, 8722D/ES and standard 8753D/E/ES, this parameter selects the test port at which to set the specified power level.  If port power coupling is currently enabled (see ag875x_powerCoupling function), then powerSetPortNum will not matter; the specified power level will be set for both ports.

Note:  For the 8719/20/22ET, 8753D/E/ES Option 011, and 8753ET, powerSetPortNum is passed to the function, but has no effect for the following reasons:

8753D/E/ES Option 011 - Power level is specified at the source, not the test ports.  To set differing power levels for the two test ports, use the ag875x_portAttenuation function.

8719/20/22ET and 8753ET - Source power is always applied at the Reflection port of a Transmission/Reflection Test Set.

Required Parameter:  NO

Default Value:  ag875x_PORT_NUM1    ��r���  �    Error                             �u (  �  �    vi                                �� $ P �      Power                             �� ` ( � �    Power Set Request                 �� � ( � �    Power Set Channel                 �� � ( � �    Power Set Port Num                 	           0 ?�      @>      �V�                                      mSet Power Level ag875x_PWR_LEVEL Source Power Off ag875x_PWR_SOURCE_OFF Source Power On ag875x_PWR_SOURCE_ON               TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4               0Port 1 ag875x_PORT_NUM1 Port 2 ag875x_PORT_NUM2   "    Returns the power level (dBm) for the specified channel, or can be used to return source power ON/OFF status.  To change the power level or source ON/OFF status, see the ag875x_powerSet function.

For the 8753D/8753E/8753ES Option 011, the power level is specified as the power supplied by the source; the power at the test port will be less due to loss through the test set.

For the 8719D/ES/ET, 8720D/ES/ET, 8722D/ES/ET, 8753ET and standard 8753D/E/ES, the power level is specified as the power at the test port.

Optional Parameters:  YES
      �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     �    Selects desired action.

Range:
        
ag875x_PWR_LEVEL_Q - Query source power level.
ag875x_PWR_SOURCE_ON_Q - Query source power on/off status.

Required Parameter:  NO

Default Value:  ag875x_PWR_LEVEL_Q    �    Selects the channel number.  

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4


Required Parameter:  NO

Default Value: ag875x_CH1    (    For the 8719D/ES, 8720D/ES, 8722D/ES and standard 8753D/E/ES, this parameter selects the test port to query the power level at.

Note:  For the 8719/20/22ET, 8753D/E/ES Option 011, and 8753ET, powerQueryPortNum may be passed to the function, but has no effect for the following reasons:

8753D/E/ES Option 011 - Power level is specified at the source, not the test ports.

8719/20/22ET and 8753ET - Source power is always applied at the Reflection port of a Transmission/Reflection Test Set.

Required Parameter:  NO

Default Value:  ag875x_PORT_NUM1     n    Returns queried power level or source power On/Off status.

Range:

0 = Off
1 = On

Required Parameter:  YES    ��r���  �    Error                             �a (  �  �    vi                                �� $ ( � �    Power Query Request               �r ` ( � �    Power Query Channel               �y � ( � �    Power Query Port Num              �� $r �  �    Current Power Query                	           0               dQuery Source Power Level ag875x_PWR_LEVEL_Q Query Source Power On/Off Status ag875x_PWR_SOURCE_ON_Q               TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4               0Port 1 ag875x_PORT_NUM1 Port 2 ag875x_PORT_NUM2    	           �    Sets or returns On/Off status of power coupling between the channels or the On/Off status between the ports for a specified channel.

Optional Parameters:  YES     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    
    Selects desired action.

Range:

ag875x_CHAN_POWER_UNCPLD - Disables coupling of power level between channels.

ag875x_CHAN_POWER_CPLD - Enables coupling of power level between channels.

ag875x_CHAN_POWER_CPLD_Q - Queries the On/Off status of channel power coupling.

ag875x_PORT_POWER_UNCPLD - Disables coupling of power level between ports.

ag875x_PORT_POWER_CPLD - Enables coupling of power level between ports.

ag875x_PORT_POWER_CPLD_Q - Queries the On/Off status of port power coupling.

Required Parameter:  YES    �    Selects the channel number.  

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4


Required Parameter:  NO

Default Value: ag875x_CH1     �    When powerCouplingRequest is a query, this parameter returns the requested coupling status.

Range:

0 = Uncoupled
1 = Coupled

Required Parameter:  Only when performing a query.    �8r���  �    Error                             �� (  �  �    vi                                � $ ( �    Power Coupling Request            �! ` ( � �    Power Coupling Channel            �( $r �  �    Power Coupling State               	           0              )Channel Power Coupled ag875x_CHAN_POWER_CPLD Channel Power Uncoupled ag875x_CHAN_POWER_UNCPLD Query Channel Power Coupling Mode ag875x_CHAN_POWER_CPLD_Q Port Power Coupled ag875x_PORT_POWER_CPLD Port Power Uncoupled ag875x_PORT_POWER_UNCPLD Query Port Power Coupling Mode ag875x_PORT_POWER_CPLD_Q               TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4    	           �    In the case of an Agilent Technologies 8753 Option 011 or 8719/8720/8722 Option 085 Network Analyzer, this function sets the required attenuation at the selected test port.

Attenuation   Compatibility

ATTEN_0_DB    Both
ATTEN_5_DB    Agilent 8719/8720/8722 Option 085
ATTEN_10_DB   Both
ATTEN_15_DB   Agilent 8719/8720/8722 Option 085
ATTEN_20_DB   Both
ATTEN_25_DB   Agilent 8719/8720/8722 Option 085
ATTEN_30_DB   Both
ATTEN_35_DB   Agilent 8719/8720/8722 Option 085
ATTEN_40_DB   Both
ATTEN_45_DB   Agilent 8719/8720/8722 Option 085
ATTEN_50_DB   Both
ATTEN_60_DB   Agilent 8753 Option 011
ATTEN_70_DB   Agilent 8753 Option 011

Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     �    Select the port number for attenuation selection 

Range:

0 = ag875x_PORT_NUM1 - Port1
1 = ag875x_PORT_NUM2 - Port2

Required Parameter:  YES    �    Set attenuation in dB for Port 1 or Port 2.

The Agilent 8753 Option 011 has a different set of allowed attenuation values than the 8719/8720/8722 Option 085. The Compatibility column below indicates which attenuation values are valid for one or the other and which are common to both.

Value Enumeration Description  Compatibility

 0 = ag875x_ATTEN_00 -  0 dB  Both
 1 = ag875x_ATTEN_05 -  5 dB  8719/8720/8722 Option 085
 2 = ag875x_ATTEN_10 - 10 dB  Both
 3 = ag875x_ATTEN_15 - 15 dB  8719/8720/8722 Option 085
 4 = ag875x_ATTEN_20 - 20 dB  Both
 5 = ag875x_ATTEN_25 - 25 dB  8719/8720/8722 Option 085
 6 = ag875x_ATTEN_30 - 30 dB  Both
 7 = ag875x_ATTEN_35 - 35 dB  8719/8720/8722 Option 085
 8 = ag875x_ATTEN_40 - 40 dB  Both
 9 = ag875x_ATTEN_45 - 45 dB  8719/8720/8722 Option 085
10 = ag875x_ATTEN_50 - 50 dB  Both
12 = ag875x_ATTEN_70 - 70 dB  8753 Option 011

Required Parameter:  YES    �Ar���  �    Error                             �� (  �  �    vi                                � $ ( � �    Port Attenuation Port Num         ° ` ( � �    Attenuation                        	           0               .Port1 ag875x_PORT_NUM1 Port2 ag875x_PORT_NUM2              0 dB ag875x_ATTEN_00 5 dB ag875x_ATTEN_05 10 dB ag875x_ATTEN_10 15 dB ag875x_ATTEN_15 20 dB ag875x_ATTEN_20 25 dB ag875x_ATTEN_25 30 dB ag875x_ATTEN_30 35 dB ag875x_ATTEN_35 40 dB ag875x_ATTEN_40 45 dB ag875x_ATTEN_45 50 dB ag875x_ATTEN_50 60 dB ag875x_ATTEN_60 70 dB ag875x_ATTEN_70    e    Sets or returns current sweep time, or sets sweep time Auto/Manual mode.

Optional Parameters:  YES     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     �    When parameter sweepTimeRequest = ag875x_SET, sets sweep time in ms.  

Note:  Setting sweep time = 0 will activate Auto mode. A nonzero sweep time sets analyzer to manual mode.  

Required Parameter:  YES     �    When sweepTimeRequest = ag875x_Q, this parameter returns the current sweep time in ms.

Required Parameter:  Only when performing a query.    	    Selects desired action.

Range:

ag875x_SET - Set sweep time.
ag875x_SWEEP_TIME_AUTO - Set sweep time to Auto mode.
ag875x_SWEEP_TIME_MANUAL - Set sweep time to Manual mode.
ag875x_Q - Query current sweep time.

Required Parameter:  NO

Default Value:  ag875x_SET    �    Selects the channel number.  

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4

Required Parameter:  NO

Default Value: ag875x_CH1    ��r���  �    Error                             ɑ (  �  �    vi                                �� $ ( � �    Sweep Time                        ʠ $r �  �    Current Sweep Time                �4 ` ( � �    Sweep Time Request                �E � ( � �    Sweep Time Channel                 	           0    0.00    	                      �Set Sweep Time ag875x_SET Query Sweep Time ag875x_Q Sweep Time Auto Mode ag875x_SWEEP_TIME_AUTO Sweep Time Manual Mode ag875x_SWEEP_TIME_MANUAL               TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4    @    Sets or returns sweep trigger mode.

Optional Parameters:  YES     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     �    When triggerRequest = ag875x_Q, this parameter returns a value indicating the current trigger mode.

Range:

0 = Hold
1 = Continuous

Required Parameter:  Only when performing a query.     �    Selects desired action.

Range:

ag875x_TRIG_HOLD - Sets trigger to Hold mode.
ag875x_TRIG_CONT - Sets trigger to Continuous mode.
ag875x_Q - Queries the current trigger mode.

Required Parameter:  NO

Default Value:  ag875x_TRIG_HOLD    �    Selects the channel number.  

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4


Required Parameter:  NO

Default Value: ag875x_CH1    ��r���  �    Error                             ї (  �  �    vi                                �� $r �  �    Trigger Mode                      ґ $ ( � �    Trigger Request                   Ӆ ` ( � �    Trigger Channel                    	           0    	                       NHold ag875x_TRIG_HOLD Continuous ag875x_TRIG_CONT Query Trigger Mode ag875x_Q               TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4    �    Sets or returns power sweep start/stop levels in dBm, or can be used to set power sweep On/Off status.

Optional Parameters:  YES     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     �    Start power level in dBm. 

This parameter is not used when performing a query, however a dummy value still must to be passed to the function.

Required Parameter:  Only when performing query.

Default Value:  0.00     z    When powerSweepRequest is a query, returns start power level in dBm.

Required Parameter:  Only when performing a query.    n    Selects desired action.

When performing a query, all other parameters must be passed even if they are not used; 'dummy' values can be used.

Range:

ag875x_PWRSWP_START_STOP - Sets start/stop power levels.
ag875x_PWRSWP_START_STOP_Q - Queries start/stop power levels.
ag875x_ON - Turns power sweep on.
ag875x_OFF - Turns power sweep off.

Required Parameter:  YES     �    Stop power level in dBm. 

This parameter is not used when performing a query, however a dummy value still must to be passed to the function.

Required Parameter:  Only when performing query.

Default Value:  0.00     y    When powerSweepRequest is a query, returns stop power level in dBm.

Required Parameter:  Only when performing a query.    �    Selects the channel number.  

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4


Required Parameter:  NO

Default Value: ag875x_CH1    ��r���  �    Error                             ؜ (  �  �    vi                                �� ` ( � �    Set Start Power                   ٴ  r �  �    Get Start Power                   �6 $ ( � �    Power Sweep Request               ۬ � ( � �    Set Stop Power                    ܋ kr �  �    Get Stop Power                    � � ( � �    Power Sweep Channel                	           0    0.00    	                      �Power Sweep On ag875x_ON Power Sweep Off ag875x_OFF Set Start and Stop Power Levels ag875x_PWRSWP_START_STOP Query Start and Stop Power Levels ag875x_PWRSWP_START_STOP_Q    0.00    	                      TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4    N    Sets or returns the alternate or chop sweep mode.

Optional Parameters:  YES     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     �    Selects desired action.

Range:

ag875x_SWEEP_ALT - Turns alternate mode on.
ag875x_SWEEP_CHOP - Turns chop mode on.
ag875x_Q - Queries if mode is alternate or chop.

Required Parameter:  YES     �    When sweepAltOrChopRequest = ag875x_Q, this parameter returns the current alternate or chop sweep mode.  Otherwise parameter  does nothing.

Range:

0 = chop
1 = alternate

Required Parameter:  Only when performing a query.    �fr���  �    Error                             � (  �  �    vi                                �= $ ( � �    Sweep Alt Or Chop Request         � $r �  �    Sweep Alt Or Chop Mode             	           0              FAlternate ag875x_SWEEP_ALT Chop ag875x_SWEEP_CHOP Query Mode ag875x_Q    	           %    Sets or returns ON/OFF status of step sweep (8719/8720/8722 analyzers only!).

NOTE : 8753 analyzers cannot explicitly be set to step (or ramp) sweep.  The 8753 uses an algorithm based upon the current instrument state and goes into ramp or step sweep accordingly.

Optional Parameters:  YES     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     �    Selects desired action.

Range:
         
ag875x_ON - Set sweep step on.
ag875x_OFF - Set sweep step off.
ag875x_Q - Query sweep step on/off state.

Required Parameter:  YES     �    Returns sweep step on/off state when sweepStepRequest = ag875x_Q (query).  Otherwise, this parameter does nothing.

Range: 

0 = Off
1 = On

Required Parameter:  Only when performing a query.    �    Selects the channel number.  

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4

Required Parameter:  NO

Default Value: ag875x_CH1    �br���  �    Error                             � (  �  �    vi                                �9 $ ( � �    Sweep Step Request                �� $r �  �    Sweep Step State                  � ` ( � �    Sweep Step Channel                 	           0               8On ag875x_ON Off ag875x_OFF Query On/Off State ag875x_Q    	                       TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4       This function takes the number of sweeps specified by the sweeps parameter.  If analyzer is in alternate sweep, it takes the specified number of sweeps on each channel.

Note:  User may need to increase timeout value to 10 seconds or more by calling ag875x_timeOut to allow sufficient time for sweeps to complete.

If this function is called without passing the sweeps parameter to it (C++ or Visual Basic), or if sweeps is assigned the value of zero, the function will automatically take the required number of sweeps necessary to satisfy any averaging factor that is currently active on either channel, even if in alternate sweep.  Averaging is re-started before taking the required number of sweeps in order to assure proper results.  If no averaging is active, the function will take only one sweep (one sweep for each channel if in alternate sweep). 
 
This function waits for all sweeps to be completed.  In general, it is best to pass the value of zero to the sweeps parameter (or in C++ or Visual Basic, can just omit the sweeps parameter) and let the function determine what is required. 

Note: If averaging is on, the number of sweeps taken is equal to 1.5 times the averaging factor.  This is a compromise between accuracy and speed.   e.g.  For an averaging factor of 16 and a noisy trace, the trace will not be fully settled after only 16 sweeps, however, it will be essentially settled by the end of 24 sweeps.  This effect is most noticeable at low power levels or for noisy traces.  If speed is a major consideration and low power levels are not an issue, then it may be beneficial to manually supply this function with the desired number of sweeps to take. Again, this only applies if averaging is on, and has little effect at higher power levels.

Optional Parameters:  YES     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     �    Sets the number of sweeps to be taken. 

If sweeps = 0, the number of sweeps taken then depends upon averaging on/off status and the averaging factor.

Required Parameter:  NO

Default Value:  0    ��r���  �    Error                             �8 (  �  �    vi                                �p ` � �      Sweeps                             	           0      �                   �    This function is for selection of what measurement trace modes will be displayed on the specified channel, and what format they will be displayed in.

Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    �    Sets the combination of data and trace memory to be displayed on the specified channel.

Range:
         
0 = ag875x_DISP_DATA - Display data.
1 = ag875x_DISP_MEMO - Display trace memory.
2 = ag875x_DISP_DATAM - Display data and trace memory.
3 = ag875x_DISP_DDM 3 - Display data divided by memory.
4 = ag875x_DISP_DMM 4 - Display data minus memory.
5 = ag875x_DISP_DATI - Store trace in channel memory.    �    Set the Display Format such as Log Magnitude, Phase, Delay, Smith Chart, Polar, Linear Magnitude, Real, Imaginary, SWR for the selected channel & selected display mode.

Range:
       
0 = ag875x_DISP_LOGM - Log magnitude
1 = ag875x_DISP_PHAS - Phase
2 = ag875x_DISP_DELA - Delay
3 = ag875x_DISP_SMIC - Smith chart
4 = ag875x_DISP_POLA - Polar
5 = ag875x_DISP_LINM - Line magnitude
6 = ag875x_DISP_REAL - Real
7 = ag875x_DISP_IMAG - Imaginary
8 = ag875x_DISP_SWR - Standing wave ratio (SWR)    �    Selects the channel number.  

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4


Required Parameter:  NO

Default Value: ag875x_CH1    ��r���  �    Error                             �[ (  �  �    vi                                �� ` ( � �    Display Select Mode               �0 � ( � �    Display Select Format             �$ $ ( � �    Display Select Channel             	           0               �Data ag875x_DISP_DATA Memory ag875x_DISP_MEMO Data and Memory ag875x_DISP_DATAM Data / Memory ag875x_DISP_DDM Data - Memory ag875x_DISP_DMM Store Trace In Channel Memory ag875x_DISP_DATI            	   �Log Magnitude ag875x_DISP_LOGM Phase ag875x_DISP_PHAS Delay ag875x_DISP_DELA Smith Chart ag875x_DISP_SMIC Polar ag875x_DISP_POLA Line Magnitude ag875x_DISP_LINM Real ag875x_DISP_REAL Imaginary ag875x_DISP_IMAG Standing Wave Ratio ag875x_DISP_SWR               TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4    _    This function returns the selected channel display mode and format.

Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    �    Selects the channel number.  

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4


Required Parameter:  NO

Default Value: ag875x_CH1    �    Returns a value indicating data and/or trace memory display mode for the selected channel, and if trace math is applied.

Range:
         
0 = ag875x_DISP_DATA - Display data.
1 = ag875x_DISP_MEMO - Display trace memory.
2 = ag875x_DISP_DATAM - Display data and trace memory.
3 = ag875x_DISP_DDM 3 - Display data divided by memory.
4 = ag875x_DISP_DMM 4 - Display data minus memory.    �    Returns the Display Format such as Log Magnitude, Phase, Delay, Smith Chart, Polar, Linear Magnitude, Real, Imaginary, SWR for the selected channel & selected display mode.

Range:
       
0 = ag875x_DISP_LOGM - Log magnitude
1 = ag875x_DISP_PHAS - Phase
2 = ag875x_DISP_DELA - Delay
3 = ag875x_DISP_SMIC - Smith chart
4 = ag875x_DISP_POLA - Polar
5 = ag875x_DISP_LINM - Line magnitude
6 = ag875x_DISP_REAL - Real
7 = ag875x_DISP_IMAG - Imaginary
8 = ag875x_DISP_SWR - Standing wave ratio (SWR)   �r���  �    Error                            } (  �  �    vi                               � $ ( � �    Display Q Channel                � $r �  �    Display Q Mode                   D `r �  �    Display Q Format                   	           0               TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4    	            	            �    This function is for selection of Dual Channel Display on/off state and/or Split Channel Display modes.

Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     �    Select the Dual Channel On/Off

Range:
      
0 = ag875x_DUAL_CHAN_OFF - Dual channel off.
1 = ag875x_DUAL_CHAN_ON - Dual channel on.     �    Select the Split Display mode.

Range:
        
0 = ag875x_SPLIT_CHAN_OFF - Split display off (1X display).
1 = ag875x_SPLIT_CHAN_ON - Split display on (2X display).   
\r���  �    Error                            
� (  �  �    vi                               3 $ d �       Dual Channel State               � ` ( � �    Split Display Mode                 	           0  0  On ag875x_DUAL_CHAN_ON Off ag875x_DUAL_CHAN_OFF               iSplit Display On (2X display) ag875x_SPLIT_CHAN_ON Split Display  Off (1X display) ag875x_SPLIT_CHAN_OFF    �    This function is for selection of Dual Channel Display and/or Split Display modes on instruments having "4 S-parameter Display" firmware (Firmware Revision 7.40 or higher).

Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    ,    Select the Split Display mode.

Range:

0 = ag875x_DISP_1_GRAT - Display all active channels in 1 full size graticule.

1 = ag875x_DISP_2_GRAT - Display all active channels between 2 half size graticules.

2 = ag875x_DISP_4_GRAT - Display each active channel in a separate graticule (4 graticules).        Select channel positioning for when four graticules are to be displayed.

Range:

0 = ag875x_DISP_4_CHAN3_UPR - Display channel 3 in upper right graticule (if channel 3 is active).

1 = ag875x_DISP_4_CHAN2_UPR - Display channel 2 in upper right graticule (if channel 2 is active).         Set the Dual Channel on/off.

Range:

0 = ag875x_DUAL_CHAN_OFF - Dual channel off.
1 = ag875x_DUAL_CHAN_ON - Dual channel on.    	    Select channel positioning for when two graticules are to be displayed.

Range:

0 = ag875x_DISP_2_CHAN3_TOP - Display channel 3 in top graticule (if channel 3 is active).

1 = ag875x_DISP_2_CHAN2_TOP - Display channel 2 in top graticule (if channel 2 is active).   �r���  �    Error                            p (  �  �    vi                               � ` ( � �    Split Display 4 Parm Mode        � � ( � �    Channel Position 4x Display      � $ X �       Dual Channel 4 Parm State        � � ( � �    Channel Position 2x Display        	           0              lSplit Display 1X ag875x_DISP_1_GRAT Split Display 2X ag875x_DISP_2_GRAT Split Display 4X ag875x_DISP_4_GRAT               rDisplay Channel 3 In Upper Right ag875x_DISP_4_CHAN3_UPR Display Channel 2 In Upper Right ag875x_DISP_4_CHAN2_UPR  0  On ag875x_DUAL_CHAN_ON Off ag875x_DUAL_CHAN_OFF               bDisplay Channel 3 On Top ag875x_DISP_2_CHAN3_TOP Display Channel 2 On Top ag875x_DISP_2_CHAN2_TOP    �    This function is used to display a user-specified title for the specified channel, or query the last title that was written to the instrument regardless of channel.

Optional Parameters:  YES     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().        Selects desired action.

Range:

ag875x_TITLE_SET_PADDED - Set title, padding with spaces if the title contains linefeeds.
ag875x_TITLE_SET_NO_PAD - Set title without padding.
ag875x_Q - Query current title.

Required Parameter:  NO

Default Value:  ag875x_TITLE_SET_PADDED     �    When titleRequest = ag875x_Q, returns whichever title was most recently written to the instrument.

Required Parameter:  Only when performing a query.     �    Displays the title on the analyzer when titleRequest = ag875x_TITLE_SET_PADDED or ag875x_TITLE_SET_NO_PAD.

Maximum number of characters = 50.

Required Parameter:  YES    �    Selects the channel number.  

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4

Required Parameter:  NO

Default Value: ag875x_CH1   Nr���  �    Error                            � (  �  �    vi                               % ` ( � �    Title Request                    @ $r �  �    Current Title                    � $ ( �  �    Title                            � � ( � �    Title Channel                      	           0               ~Set Title With Padding ag875x_TITLE_SET_PADDED Set Title Without Padding ag875x_TITLE_SET_NO_PAD Query Current Title ag875x_Q    	            ""               TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4   �    Writes a message to the instrument's display using a subset of HPGL commands.  The message is written below the title area of the display, and can be used to prompt a user to do something such as to connect a specific calibration standard to the test port(s). The function can be used to clear an existing message; just pass an empty (i.e., null, "") string as the message.

Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     1    Message to be sent to the instrument's display.    �r���  �    Error                            !! (  �  �    vi                               !Y `  � �    Message                            	           0    ""   m    Activates a specific marker, or performs an instrument function related to that marker number including position, searches, and other functions.

Note:   Upon exiting, this function will always leave the specified marker as the active marker, regardless of the value of request.

See ag875x_markerQuery to read marker-related settings. 

Optional Parameters:  YES     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    �    Selects desired action.  

Required Parameter:  YES

Range:

ag875x_ON - Turn specified marker on (location is arbitrary) and makes it active. (Requires 1 parm)

ag875x_MKR_STIM - Sets marker to stimulus value (not point #) specified by setMarkerValue. (Requires 4 parms)

ag875x_MKR_POINT - Sets marker to specified trace point number. (Requires 4 parms)

ag875x_MKR_MIN - Sets marker to trace minimum.  If marker tracking is currently turned on, the analyzer will continuously set this marker to the minimum measurement value as the trace changes from sweep-to-sweep. (Requires 2 parms)

ag875x_MKR_MAX - Sets marker to trace maximum.  If marker tracking is currently turned on, the analyzer will continuously set this marker to the maximum measurement value as the trace changes from sweep-to-sweep. (Requires 2 parms)

ag875x_MKR_SEARCH_LEFT - Searches for target amplitude value specified by setMarkerValue in the measurement trace to the left of the current position of the specified marker.  Places the specified marker there if found.  If marker tracking is currently turned on, the analyzer will continuously perform this search as the measurement trace changes from sweep-to-sweep. (Requires 4 parms)

ag875x_MKR_SEARCH_RIGHT - Searches for target amplitude value specified by setMarkerValue in the measurement trace to the right of the current position of the specified marker.  Places the specified marker there if found.  If marker tracking is currently turned on, the analyzer will continuously perform this search as the measurement trace changes from sweep-to-sweep. (Requires 4 parms)

ag875x_MKR_SEARCH OFF - Turns off the target value search mode. (Requires 2 parms)

ag875x_MKR_WIDTHS - Activates a bandwidth search for the BW target specified by setMarkerValue.  The analyzer then continuously performs this search as the measurement trace changes from sweep-to-sweep, no matter whether marker tracking is turned on or off. (Requires 4 parms)

ag875x_MKR_WIDTHS_OFF - Turns bandwidth search off. (Requires 2 parms)

ag875x_MKR_TRACK_ON - Turns marker tracking on. (Requires 2 parms)

ag875x_MKR_TRACK_OFF - Turns marker tracking off. (Requires 2 parms)

ag875x_MKR_DELTA_TO_MKR - Sets the specified marker to be the delta reference. (Requires 2 parms)

ag875x_MKR_DELTA_TO_FIXED - Sets the fixed marker to be the delta reference. (Requires 2 parms)

ag875x_MKR_DELTA_ZERO - Places the fixed marker at the position of the specified marker and makes it the delta reference. (Requires 2 parms)

ag875x_MKR_DELTA_OFF - Turns the delta marker mode off. (Requires 2 parms)

ag875x_MKR_STATS_ON - Turns trace statistics on. (Requires 2 parms)

ag875x_MKR_STATS_OFF - Turns trace statistics off. (Requires 2 parms)

ag875x_MKR_CONTINUOUS - Places the markers continuously on the trace, not on discrete points (interpolates the marker values between discrete points). (Requires 2 parms)

ag875x_MKR_DISCRETE - Places the markers on the discrete measurement points. (Requires 2 parms)

ag875x_MKR_COUPLED - Makes the markers stimulus coupled between Channels 1 and 2. (Requires 2 parms)

ag875x_MKR_UNCOUPLED - Disables stimulus coupling of markers between Channels 1 and 2. (Requires 2 parms)

ag875x_MKR_START_TO_MKR - Changes the start stimulus to that of the specified marker. (Requires 2 parms)

ag875x_MKR_STOP_TO_MKR - Changes the stop stimulus to that of the specified marker. (Requires 2 parms)

ag875x_MKR_CENTER_TO_MKR - Changes the center stimulus value to that of the specified marker. (Requires 2 parms)

ag875x_MKR_SPAN_TO_MKR - Sets the span for the entire trace to that of the span between the specified marker and the delta reference marker. (Requires 2 parms)

ag875x_MKR_CW_TO_MKR - Sets the CW frequency to the frequency of the specified marker. (Requires 2 parms)

ag875x_MKR_REF_TO_MKR - Sets the reference value to the amplitude of the specified marker. (Requires 2 parms)

ag875x_MKR_DELAY_TO_MKR - Sets electrical length so group delay is zero at the stimulus of the specified marker. (Requires 2 parms)

ag875x_MKR_FIXED_MKR_STIM - Sets the stimulus position of the fixed marker. (Requires 4 parms)

ag875x_MKR_FIXED_MKR_VALUE - Sets the amplitude value of the fixed marker. (Requires 4 parms)

ag875x_MKR_FIXED_MKR_AUX_VAL - Sets the auxiliary amplitude value of the fixed marker. (Requires 4 parms)

ag875x_MKR_ANNOTATE_ALL_MKRS - Response and stimulus values for all markers that are currently turned on will be displayed on the analyzer. (Requires 2 parms)

ag875x_MKR_ANNOTATE_ONE_MKR - Only the specified marker's response and stimulus value will be displayed on the analyzer. (Requires 2 parms)

ag875x_MKR_POLAR_LIN_MAG - Sets display format of marker response values to show linear magnitude and phase when the analyzer is in polar display mode. (Requires 2 parms)

ag875x_MKR_POLAR_LOG_MAG - Sets display format of marker response values to show log magnitude and phase when the analyzer is in polar display mode. (Requires 2 parms)

ag875x_MKR_POLAR_RI - Sets display format of marker response values to show real and imaginary when the analyzer is in polar display mode. (Requires 2 parms)

ag875x_MKR_SMITH_LIN_MAG - Sets display format of marker response values to show linear magnitude and phase when the analyzer is in Smith Chart display mode. (Requires 2 parms)

ag875x_MKR_SMITH_LOG_MAG - Sets display format of marker response values to show log magnitude and phase when the analyzer is in Smith Chart display mode. (Requires 2 parms)

ag875x_MKR_SMITH_RI - Sets display format of marker response values to show real and imaginary when the analyzer is in Smith Chart display mode. (Requires 2 parms)

ag875x_MKR_SMITH_IMPEDANCE - Sets display format of marker response values to show impedance when the analyzer is in Smith Chart display mode. (Requires 2 parms)

ag875x_MKR_SMITH_ADMITTANCE - Sets display format of marker response values to show admittance when the analyzer is in Smith Chart display mode. (Requires 2 parms)

ag875x_MKR_ALL_OFF - Turns all markers off. (Requires 2 parms)
    S    Specifies which marker number this function will activate.

Note:   8753D analyzers having Firmware 5.48 or lower have only 4 markers.

Range:

0 = ag875x_MKR_1 - Marker 1
1 = ag875x_MKR_2 - Marker 2
2 = ag875x_MKR_3 - Marker 3
3 = ag875x_MKR_4 - Marker 4
4 = ag875x_MKR_5 - Marker 5

Required Parameter:  NO

Default Value: ag875x_MKR_1     �    Specifies a marker-related value.  The interpretation of this value depends upon the value of markerRequest.

Required Parameter:  NO

Default Value: ag875x_MKR_1    �    Selects the channel number.  

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4


Required Parameter:  NO

Default Value: ag875x_CH1   #�r���  �    Error                            $\ (  �  �    vi                               $� $ ( � �    Marker Request                   <@ ` ( � �    Set Marker                       =� � ( � �    Set Marker Value                 >G � ( � �    Marker Channel                     	           0            +  /Marker On ag875x_ON Stimulus ag875x_MKR_STIM Trace Point ag875x_MKR_POINT Marker Search - Min ag875x_MKR_MIN Marker Search - Max ag875x_MKR_MAX Marker Search - Left ag875x_MKR_SEARCH_LEFT Marker Search - Right ag875x_MKR_SEARCH_RIGHT Marker Search - Off ag875x_MKR_SEARCH_OFF Widths Search - On ag875x_MKR_WIDTHS Widths Search  - Off ag875x_MKR_WIDTHS_OFF Tracking - On ag875x_MKR_TRACK_ON Tracking - Off ag875x_MKR_TRACK_OFF Delta Ref ag875x_MKR_DELTA_TO_MKR Delta Ref - Fixed Marker ag875x_MKR_DELTA_TO_FIXED Delta Ref - Zero ag875x_MKR_DELTA_ZERO Delta Mode - Off ag875x_MKR_DELTA_OFF Marker Stats - On ag875x_MKR_STATS_ON Marker Stats - Off ag875x_MKR_STATS_OFF Continuous Mode ag875x_MKR_CONTINUOUS Discrete Mode ag875x_MKR_DISCRETE Markers Coupled ag875x_MKR_COUPLED Markers Uncoupled ag875x_MKR_UNCOUPLED Set Start Stimulus To Marker ag875x_MKR_START_TO_MKR Set Stop Stimulus To Marker ag875x_MKR_STOP_TO_MKR Set Center Stimulus To Marker ag875x_MKR_CENTER_TO_MKR Set Span to Marker VS. Delta Ref ag875x_MKR_SPAN_TO_MKR Set CW Freq to Marker Freq ag875x_MKR_CW_TO_MKR Set Reference To Marker Amp ag875x_MKR_REF_TO_MKR Set Zero Group Delay To Marker Stimulus ag875x_MKR_DELAY_TO_MKR Fixed Marker Stimulus ag875x_MKR_FIXED_MKR_STIM Fixed Marker Value ag875x_MKR_FIXED_MKR_VALUE Fixed Marker Aux Value ag875x_MKR_FIXED_MKR_AUX_VAL Display Markers - On ag875x_MKR_ANNOTATE_ALL_MKRS Display Markers - Off ag875x_MKR_ANNOTATE_ONE_MKR Polar Marker - Lin ag875x_MKR_POLAR_LIN_MAG Polar Marker - Log ag875x_MKR_POLAR_LOG_MAG Polar Marker - Re/Im ag875x_MKR_POLAR_RI Smith Marker - Lin ag875x_MKR_SMITH_LIN_MAG Smith Marker - Log ag875x_MKR_SMITH_LOG_MAG Smith Marker - Re/Im ag875x_MKR_SMITH_RI Smith Marker - Impedance ag875x_MKR_SMITH_IMPEDANCE Smith Marker - Admittance ag875x_MKR_SMITH_ADMITTANCE Turn All Markers Off ag875x_MKR_ALL_OFF               nMarker 1 ag875x_MKR_1 Marker 2 ag875x_MKR_2 Marker 3 ag875x_MKR_3 Marker 4 ag875x_MKR_4 Marker 5 ag875x_MKR_5    0.00               TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4       Depending upon the value of the request parameter, this function will query one of the following:

     Values associated with the specified marker.
     Settings affecting all markers.
     Values related to a marker search function.

Note:   Upon exiting, this function will always leave the specified marker as the active marker, regardless of the value of request.  The exception is when querying if all markers are off.

See ag875x_markerSet to set up markers or marker-related values on the instrument.

Optional Parameters:  YES     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    1    Specifies what type of marker-related or search-related values will be read from the network analyzer.

Required Parameter:  YES

Query and corresponding returned values are:

ag875x_MKR_VALUE_STIM_Q - Response value and stimulus of specified marker.  

   markerQueryResult1 = Response value
   markerQueryResult2 = Response value
   markerQueryResult3 = Stimulus value

ag875x_MKR_POINT_Q - Trace point (bucket) position of specified marker. (Requires 6 parms)

   markerQueryResult1 = 0 to (number of points - 1)

ag875x_MKR_SEARCH_MODE_Q - Marker search mode.  (Requires 6 parms)

   markerQueryResult1 = 1 to 3

   Where:
   1 = ag875x_MKR_SEARCH_IS_MAX
   2 = ag875x_MKR_SEARCH_IS_MIN
   3 = ag875x_MKR_SEARCH_IS_TARGET

ag875x_MKR_TARGET_Q - Returns marker target search value.  (Requires 6 parms)

   markerQueryResult1 = Returned value

ag875x_MKR_SEARCH_WIDTH_Q - Returns width value for bandwidths search.  (Requires 6 parms)

   markerQueryResult1 = Returned value

ag875x_MKR_WIDTHS_RESULTS_Q - Returns results of bandwidths search.  (Requires 6 parms) 

   markerQueryResult1 = Bandwidth
   markerQueryResult2 = Center
   markerQueryResult3 = Q
   markerQueryResult4 = Loss

ag875x_MKR_TRACK_ON_Q - Returns marker tracking On/Off state.  (Requires 6 parms)

   markerQueryResult1 = 0 to 1

   Where:
   0 = Off
   1 = On

ag875x_MKR_DELTA_MODE_Q - Returns marker delta mode (off or fixed), or the active delta marker number. (Requires 6 parms)
              
   markerQueryResult1 = 0 to 6

   Where:                         
   0 = ag875x_MKR_DELTA_IS_OFF
   1 = ag875x_MKR_DELTA_IS_MKR_1
   2 = ag875x_MKR_DELTA_IS_MKR_2
   3 = ag875x_MKR_DELTA_IS_MKR_3
   4 = ag875x_MKR_DELTA_IS_MKR_4
   5 = ag875x_MKR_DELTA_IS_MKR_5
   6 = ag875x_MKR_DELTA_IS_FIXED

ag875x_MKR_STATS_RESULTS_Q - Returns results of marker statistics.  (Requires 6 parms)

   markerQueryResult1 = Mean
   markerQueryResult2 = Standard Deviation
   markerQueryResult3 = Peak-to-Peak Variation

ag875x_MKR_STATS_ON_Q  - Returns On/Off state of marker statistics display.  (Requires 6 parms)

   markerQueryResult1 = 0 to 1

   Where:
   0 = Off
   1 = On

ag875x_MKR_CONTINUOUS_Q - Returns mode indicating if markers are currently being placed on the measurement trace in a Continuous fashion, or only on the Discrete measurement points. (Requires 6 parms)

   markerQueryResult1 = 0 to 1

   Where:
   0 = Discrete
   1 = Continuous

ag875x_MKR_COUPLED_Q - Returns mode of marker channel coupling.  (Requires 6 parms)

   markerQueryResult1 = 0 to 1

   Where:
   0 = Uncoupled
   1 = Coupled

ag875x_MKR_FIXED_MKR_STIM_Q - Returns fixed marker stimulus. (Requires 6 parms)

   markerQueryResult1 = Stimulus

ag875x_MKR_FIXED_MKR_VALUE_Q - Returns fixed marker amplitude value.  (Requires 6 parms)

   markerQueryResult1 = Amplitude value

ag875x_MKR_FIXED_MKR_AUX_VAL_Q - Returns fixed marker auxiliary  value offset. (Requires 6 parms)

   markerQueryResult1 = Auxiliary value

ag875x_MKR_ANNOTATE_ALL_MKRS_Q - Returns On/Off status of marker function Display Markers.  If on, the analyzer displays data for all active markers on the selected channel.  If off, only the active marker's data is displayed.  (Requires 6 parms)

   markerQueryResult1 = 0 to 1
   
   Where:
   0 = ag875x_MKR_ANNOTATE_ONE (off)
   1 = ag875x_MKR_ANNOTATE_ALL (on)

ag875x_MKR_POLAR_FORMAT_Q - Format of marker data when the analyzer display is in Polar mode.  (Requires 6 parms)

   markerQueryResult1 = 1 to 3
   
   Where:
   1 = ag875x_MKR_POLAR_IS_LIN_MAG (Linear)
   2 = ag875x_MKR_POLAR_IS_LOG_MAG (Log)
   3 = ag875x_MKR_POLAR_IS_RI (Real/Imaginary)

ag875x_MKR_SMITH_FORMAT_Q - Format of marker data when the analyzer display is in Smith Chart mode.  (Requires 6 parms)

   markerQueryResult1 = 1 to 5
   
   Where:
   1 = ag875x_MKR_SMITH_IS_LIN_MAG ( Linear)
   2 = ag875x_MKR_SMITH_IS_LOG_MAG (Log)
   3 = ag875x_MKR_SMITH_IS_RI (Real/Imaginary)
   4 = ag875x_MKR_SMITH_IS_IMPEDANCE (Impedance)
   5 = ag875x_MKR_SMITH_IS_ADMITTANCE (Admittance)

ag875x_MKR_ALL_OFF_Q - Returns state indicating if all markers are turned off or at least one marker is on.   NOTE:  As of firmware version 7.64, following a preset the instrument will return markerQueryResult = 1 when in fact no markers are on.  (Requires 6 parms)

   markerQueryResult1 = 0 to 1
   
   Where:
   0 = ag875x_MKR_AT_LEAST_ONE_ON
   1 = ag875x_MKR_ALL_ARE_OFF     �    Specifies the marker number used for certain queries in markerQueryRequest.

Range:

0 = ag875x_MKR_1 - Marker 1
1 = ag875x_MKR_2 - Marker 2
2 = ag875x_MKR_3 - Marker 3
3 = ag875x_MKR_4 - Marker 4
4 = ag875x_MKR_5 - Marker 5

Required Parameter:  YES    +    Depending upon the value of markerQueryRequest, this parameter  may return a value associated with the selected marker, a value associated with all markers, a marker search-related value, a marker mode, or a marker state.  See markerQueryRequest for detailed information.

Required Parameter:  YES     �    Depending upon the value of markerQueryRequest, this parameter  may return a value associated with the selected marker, a value associated with all markers, or a marker search-related value.

Required Parameter:  YES     �    Depending upon the value of markerQueryRequest, this parameter  may return a value associated with the selected marker, a value associated with all markers, or a marker search-related value.

Required Parameter:  YES     �    When markerQueryRequest = ag875x_MKR_WIDTHS_RESULTS_Q, this parameter returns the loss value read from the bandwidth search.  Otherwise this parameter does nothing.

Required Parameter:  NO    �    Selects the channel number.  

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4

Required Parameter:  NO

Default Value: ag875x_CH1   K�r���  �    Error                            L� (  �  �    vi                               L� $ ( � �    Marker Query Request             ]� ` ( � �    Get Marker                       ^� $r �  �    Marker Query Result 1            `+ `r �  �    Marker Query Result 2            a �r �  �    Marker Query Result 3            a� �r �  �    Marker Query Result 4            b� � ( � �    Marker Query Channel               	           0              jMarker Value and Stimulus ag875x_MKR_VALUE_STIM_Q Trace Point ag875x_MKR_POINT_Q Marker Search Mode ag875x_MKR_SEARCH_MODE_Q Target Value ag875x_MKR_TARGET_Q Marker Width Value ag875x_MKR_SEARCH_WIDTH_Q Widths Results ag875x_MKR_WIDTHS_RESULTS_Q Tracking On/Off State ag875x_MKR_TRACK_ON_Q Marker Delta Mode ag875x_MKR_DELTA_MODE_Q Marker Statistics ag875x_MKR_STATS_RESULTS_Q Marker Statistics On/Off State ag875x_MKR_STATS_ON_Q Marker Discrete/Continuous Mode ag875x_MKR_CONTINUOUS_Q Marker Coupled/Uncoupled Mode ag875x_MKR_COUPLED_Q Fixed Marker Stimulus ag875x_MKR_FIXED_MKR_STIM_Q Fixed Marker Value ag875x_MKR_FIXED_MKR_VALUE_Q Fixed Marker Aux Value ag875x_MKR_FIXED_MKR_AUX_VAL_Q Display Markers On/Off State ag875x_MKR_ANNOTATE_ALL_MKRS_Q Polar Marker Mode ag875x_MKR_POLAR_FORMAT_Q Smith Marker Mode ag875x_MKR_SMITH_FORMAT_Q All Markers Off ag875x_MKR_ALL_OFF_Q               nMarker 1 ag875x_MKR_1 Marker 2 ag875x_MKR_2 Marker 3 ag875x_MKR_3 Marker 4 ag875x_MKR_4 Marker 5 ag875x_MKR_5    	           	           	           	                      TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4    �    This function specifies the type of measurement for the active channel and allows selection of data conversion.

Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    �    This parameter specifies whether the measurement type for the active channel is an Input port, Input port ratio, Reflection, Transmission or S-Parameter.  

Input Ports are A, B and R.  Input Port Ratios are A/R, B/R and A/B.  

Reflection and Transmission apply to the non S-parameter instruments (8719ET/8720ET/8722ET/8753ET).  Reflection is essentially the same measurement as A/R, but is handled as a separate parameter.  Transmission is essentially the same measurement as B/R, but is handled as a separate parameter.  

The 8719D/ES, 8720D/ES, 8722D/ES and 8753D/E/ES are S-Parameter capable.  S-Parameters are S11, S21, S12 and S22.  These S-Parameter instruments will interpret Reflection as S11 and Transmission as S21.  

Conversely, the 8719ET/8720ET/8722ET/8753ET analyzers will interpret S11 as Reflection and S21 as Transmission.

Range:

 0 = ag875x_IN_AR - Import port ratio A/R on active channel
 1 = ag875x_IN_BR - Import port ratio B/R on active channel
 2 = ag875x_IN_AB - Import port ratio A/B on active channel
 3 = ag875x_IN_MA - Input port A on active channel
 4 = ag875x_IN_MB - Input port B on active channel
 5 = ag875x_IN_MR - Input port R on active channel
 6 = ag875x_S_PAR11 - Refl: Fwd S11 (A/R) on active channel
 7 = ag875x_S_PAR21 - Trans: Fwd S21 (B/R) on active channel
 8 = ag875x_S_PAR12 - Trans: Rev S12 (A/R) on active channel
 9 = ag875x_S_PAR22 - Refl: Rev S22 (B/R) on active channel
10 = ag875x_TRANS - Transmission on active channel
11 = ag875x_REFL - Reflection on active channel
    �    This parameter allows conversion of measured reflection or transmission data into equivalent impedance or admittance values, or inverse S-parameter values.

Range:

0 = ag875x_CONV_OFF - No conversion
1 = ag875x_CONV_ZREF - Z:Reflection
2 = ag875x_CONV_ZTRA - Z:Transmission
3 = ag875x_CONV_YREF - Y:Reflection
4 = ag875x_CONV_YTRA - Y:Transmission
5 = ag875x_CONV_IDS - Inverted S param ( 1/S)   k�r���  �    Error                            le (  �  �    vi                               l� $ ( � �    Input S Param                    r� ` ( � �    Conversion Param                   	           0             Input Port A/R ag875x_IN_AR Input Port B/R ag875x_IN_BR Input Port A/B ag875x_IN_AB Input Port A ag875x_IN_MA Input Port B ag875x_IN_MB Input Port R ag875x_IN_MR S11 ag875x_S_PAR11 S21 ag875x_S_PAR21 S12 ag875x_S_PAR12 S22 ag875x_S_PAR22 Trans ag875x_TRANS Refl ag875x_REFL               �Off ag875x_CONV_OFF Z:Refl ag875x_CONV_ZREF Z:Trans ag875x_CONV_ZTRA Y:Refl ag875x_CONV_YREF Y:Trans ag875x_CONV_YTRA 1/S ag875x_CONV_IDS    �    This function queries the type of measurement on the active channel and queries the presence of any data conversion.  See ag875x_measType function.

Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    �    This parameter returns the measurement type on the active channel: whether it is an Input port, Input port ratio, Reflection, Transmission or S-Parameter. 

Input Ports are A, B and R. Input Port Ratios are A/R, B/R and A/B.  

Reflection and Transmission apply to the non S-parameter instruments (8719ET/8720ET/8722ET/8753ET).  Reflection is essentially the same measurement as A/R, but is handled as a separate parameter.  Transmission is essentially the same measurement as B/R, but is handled as a separate parameter.  

The 8719D/ES, 8720D/ES, 8722D/ES and 8753D/E/ES are S-Parameter capable.  S-Parameters are S11, S21, S12 and S22.

Range:

 0 = ag875x_IN_AR - Import port ratio A/R on active channel
 1 = ag875x_IN_BR - Import port ratio B/R on active channel
 2 = ag875x_IN_AB - Import port ratio A/B on active channel
 3 = ag875x_IN_MA - Input port A on active channel
 4 = ag875x_IN_MB - Input port B on active channel
 5 = ag875x_IN_MR - Input port R on active channel
 6 = ag875x_S_PAR11 - S11 (A/R) or Reflection on active channel
 7 = ag875x_S_PAR21 - S21 (B/R) or Transmission on active channel
 8 = ag875x_S_PAR12 - Trans: Rev S12 (A/R) on active channel
 9 = ag875x_S_PAR22 - Refl: Rev S22 (B/R) on active channel    �    This parameter indicates whether the instrument is currently set up to perform a conversion of measured reflection or transmission data.  If conversion is enabled, this value will indicate the type of conversion.

Range:

0 = ag875x_CONV_OFF - No conversion
1 = ag875x_CONV_ZREF - Z:Reflection
2 = ag875x_CONV_ZTRA - Z:Transmission
3 = ag875x_CONV_YREF - Y:Reflection
4 = ag875x_CONV_YTRA - Y:Transmission
5 = ag875x_CONV_IDS - Inverted S param ( 1/S)   w�r���  �    Error                            x' (  �  �    vi                               x_ $r �  �    Current Meas Type                }8 `r �  �    Current Conversion                 	           0    	            	           �    This function selects which channel (Channel 1, 2, 3 or 4) will become the active channel.  

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     �    Select the Channel Number.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4


Required Parameter:  YES   ��r���  �    Error                            �W (  �  �    vi                               �� ` � � �    Channel                            	           0               TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4       Enables/disables the auxiliary channel associated with the specified primary channel, or queries the enabled/disabled status of that auxiliary channel.

Note: This function only applies to analyzers having Firmware Revision 7.40 or higher.

Optional Parameters:  YES     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    ~    Selects desired action.  

Range:

ag875x_ON - Turns on the auxiliary channel associated with the specified primary channel.

ag875x_OFF - Turns off the auxiliary channel associated with the specified primary channel.

ag875x_Q  - Queries the on/off status of the auxiliary channel associated with the specified primary channel.

Required Parameter:  NO

Default Value: ag875x_OFF     �    Specifies the primary channel number.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2

Required Parameter:  YES     �    When auxChannelRequest = ag875x_Q, this parameter indicates if the auxiliary channel associated with the specified primary channel is on/off.

Range:

0 = Off
1 = On

Required Parameter:  Only when performing a query.   �jr���  �    Error                            �	 (  �  �    vi                               �A ` ( � �    Aux Channel Request              �� $ ( � �    Aux Channel                      �O $r �  �    Aux Channel State                  	           0              UAux Channel On ag875x_ON Aux Channel Off ag875x_OFF Query Aux Channel State ag875x_Q               *Channel 1 ag875x_CH1 Channel 2 ag875x_CH2    	            �    This function enables/disables the Analog Bus for Service Use. If the Analog Bus is enabled, the data at the selected auxiliary input (analog port) is measured and displayed.

Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     �    This parameter turns the Analog Bus On/Off.

Range:

0 = ag875x_ANLOG_PORT_OFF - Turn Analog Bus off.
1 = ag875x_ANLOG_PORT_ON  - Turn Analog Bus on.     �    This parameter sets the Analog Port Number (analog bus input).

Range:
         
 1 = ag875x_ANALOG_MIN
31 = ag875x_ANALOG_MAX   ��r���  �    Error                            �f (  �  �    vi                               �� $ < �       Analog State                     �= ` ( �      Analog Port Num                    	           0  2  On ag875x_ANLOG_PORT_ON Off ag875x_ANLOG_PORT_OFF                        �    This function saves the instrument state to one of the instrument's internal memory registers. If saveRegTitle is a null string (""), the default title (REGxx) will be used.

Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     [    Specifies the Register Number.

Range:
  
 1 = ag875x_REG_NUM_MIN
31 = ag875x_REG_NUM_MAX     �    Sequence of characters for the register title is limited to a maximum of 8 characters. Valid characters: { 0-9, A-Z, a-z }.

If saveRegTitle is the null string (""), the default title (REGxx) will be used.   ��r���  �    Error                            �f (  �  �    vi                               �� ` P �      Save Reg Num                     � $ ( �  �    Save Reg Title                     	           0                        ""   L    This function will recall an instrument state from the memory register, clear a selected memory register, or clear all memory registers.

Note:  Recall, Clear and Clear All will be performed when selected without giving advanced warning. As such, proper care should be exercised when using this function.

Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     �    Selects desired action. 

Range:

0 = ag875x_RC_RECALL_REG - Recall a register.
1 = ag875x_RC_CLEAR_REG 1 - Clear a register.
2 = ag875x_RC_CLEAR_ALL_REG - Clear all registers.     t    Specifies the register number to be recalled or cleared.

Range:

 1 = ag875x_REG_NUM_MIN
31 - ag875x_REG_NUM_MAX
   �.r���  �    Error                            �� (  �  �    vi                               � $ ( � �    Recall Or Clear Reg Mode         �� ` F �      Recall Or Clear Reg Num            	           0               xRecall A Register ag875x_RC_RECALL_REG Clear A Register ag875x_RC_CLEAR_REG Clear All Registers ag875x_RC_CLEAR_ALL_REG                       h    This function selects what information is included when an instrument state is stored to the internal floppy disk drive or an external disk.  The storage format (Binary or ASCII) is also selectable.

Note: The instrument state is stored along with the selected types of data EXCEPT when 'dataOnly' is ON, in which case only the error-corrected complex data is stored; parameters 3, 5, 6 and 7 ('dataArray', 'formatArray', 'graphics' and 'rawArray') will then make no difference.

Note:  User may need to increase timeout value to 10 seconds or more by calling ag875x_timeOut to allow sufficient time for the data transfer to complete.

Note:  If storing to the analyzer's internal drive, make sure a floppy disk is inserted prior to running this function.  If not, you will need to run ag875x_error_query several times to empty the error queue.

Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     z    Storage format.

Range:

0 = ag875x_SDISK_ASCII - Store in ASCII format
1 = ag875x_SDISK_BINARY - Store in binary format     �    Specifies if error corrected data (real and imaginary pairs) will be saved with the other files.

Range:

0 = ag875x_CORR_DATA_OFF - Corrected data not saved (off).
1 = ag875x_CORR_DATA_ON  - Corrected data saved (on).        Specifies selected data arrays only (real and imaginary pairs), without instrument states or calibrations. Always saves the data array, even if it hasn�t been selected.

Range:

ag875x_DATA_ONLY_OFF - Data array only is off.
ag875x_DATA_ONLY_ON  - Data array only is on.        Specifies if formatted trace data will be saved with will be saved with the other files or not.  Uses currently selected format for data.

Range:

0 = ag875x_TRACE_DATA_OFF - Formatted trace data not saved (off).
1 = ag875x_TRACE_DATA_ON  - Formatted trace data saved (on).     �    Specifies if any user graphics that may be on the analyzer display will be with the other files or not.

Range:

0 = ag875x_GRAPH_DATA_OFF - Graphics not saved (off).
1 = ag875x_GRAPH_DATA_ON  - Graphics saved (on).     �    Specifies if raw data arrays (real and imaginary pairs) will be saved with the other files or not.

Range:
        
0 = ag875x_RAW_ARRAY_DATA_OFF - Ray data array not saved (off).
1 = ag875x_RAW_ARRAY_DATA_ON  - Ray data array saved (on).     y    Sequence of characters for the file title is limited to a maximum of 8 characters. Valid characters: { 0-9, A-Z, a-z }.   �.r���  �    Error                            �� (  �  �    vi                               � $ ( � �    Save Using Format                �� ` ( � �    Data Array                       �k � ( � �    Data Only                        �� � ( � �    Format Array                     �� $ � � �    Graphics                         � ` � � �    Raw Array                        �w � � �  �    Store File Title                   	           0               BASCII Format ag875x_SDISK_ASCII Binary Format ag875x_SDISK_BINARY               ZCorrected Data Array Off ag875x_CORR_DATA_OFF Corrected Data Array On ag875x_CORR_DATA_ON               PData Array Only Off ag875x_DATA_ONLY_OFF Data Array Only On ag875x_DATA_ONLY_ON               \Formatted Trace Data Off ag875x_TRACE_DATA_OFF Formatted Trace Data On ag875x_TRACE_DATA_ON               NGraphics Data Off ag875x_GRAPH_DATA_OFF Graphics Data On ag875x_GRAPH_DATA_ON               NRaw Array Off ag875x_RAW_ARRAY_DATA_OFF Raw Array On ag875x_RAW_ARRAY_DATA_ON    "TEST"   :    This Function is used to load an instrument state (and any data which may have been saved with it) into the instrument from a file on instrument's internal disk, or to purge such a file from the disk.

Use ag875x_timeOut as needed to allow sufficient time for data transfer to complete.

Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     �    Title of the instrument state file to be loaded or purged from the disk.

Sequence of Characters for the File Title Should accommodate at least 10 characters. Valid symbols: { 0 -9, A-Z ,a-z }.      �    This parameter selects the load or purge mode.

Range:

0 = ag875x_LP_LOAD_FILE  - Load file from disk.
1 = ag875x_LP_PURGE_FILE - Purge file from disk.   �pr���  �    Error                            � (  �  �    vi                               �G ` ( �  �    Load Or Purge File Title         � $ ( � �    Load Or Purge Mode                 	           0    "TEST"               >Load File ag875x_LP_LOAD_FILE Purge File ag875x_LP_PURGE_FILE       This function reads from the instrument and writes to the computer.  It reads an instrument state learnstring from the network analyzer as well as the following data:

1.  All currently active calibrations, including power meter calibrations.

2.  All currently active memory traces.

3.  Active measurement data from all channels (if indicated by the dataTraceState parameter).

4.  Calibration kit definition, if the active kit is user-defined.

This data is written (stored) to the selected file name and location on the computer.  This file will also contain the appropriate GPIB commands to restore all of these settings, when the contents of the file are fed back to the same (or another) analyzer later using the ag875x_writeLongLrnString function. 

Use ag875x_timeOut as needed to allow sufficient time for data transfer to complete.

NOTE : 8719, 8720 and 8722 analyzers share learnstring compatibility.  However, learnstrings from 8753 analyzers are NOT compatible with the 8719/8720/8722, and vice versa.

Optional Parameters:  YES     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     �    Indicates the file name and directory location on the computer where the "long" learnstring will be stored.

    Example file name:    C:\temp\myLrn.str

Required Parameter:  YES    n    Indicates which revision of learnstring the analyzer will output.  This allows selecting a learnstring for compatibility with other analyzers of the same model number that have older firmware, or older analyzers in the same model number family.  

The learnstring revision number is obtained by multiplying a firmware revision number by 100 (for example, 7.48 * 100 = 748).  For instance, it may be desired to read a learnstring from an 8719ES so that it may later be sent to an 8720D having Firmware 6.14 (using the ag875x_writeLongLrnString function).  In that case, the value of this parameter should be 614.  If the value of this parameter is less than 201 (Agilent 8753B Firmware 2.01 or 8720A Firmware 2.01), this function will default to reading the learnstring in the format of the instrument's current firmware revision.

Required Parameter:  NO

Default Value:  0.00    t    Indicates whether or not to write the active measurement data traces to the learnstring file.

Range:

0 = ag875x_NO_DATA_TRACE_SAVE- Do not include measurement trace data.

1 = ag875x_DATA_TRACE_SAVE - Include the measurement traces from all active channels on the instrument as part of the learn string.

Required Parameter:  NO

Default Value:  ag875x_DATA_TRACE_SAVE   �r���  �    Error                            �� (  �  �    vi                               �� $ ( � �    Read Long Lrn File               �� ` ( � �    Lrn String Revision Num          � � ( � �    Data Trace State                   	           0    ""    0.00               ZSave Data Traces ag875x_DATA_TRACE_SAVE Do Not Save Data Traces ag875x_NO_DATA_TRACE_SAVE   �    This function reads from the computer and writes to the instrument.  It reads the selected "long" learnstring file from the computer and writes it to the network analyzer.  This re-creates the instrument state and restores all associated data.

Remember that such a file contains the following data in addition to the instrument state learnstring:

1.  All calibrations that were active, including power meter cals.

2.  All memory traces that were being displayed (or used in trace math).

3.  Calibration kit definition, if the active kit was user-defined.

The file may also contain the measurement data from all channels that were being displayed, if that option had been selected for the ag875x_readLongLrnString function.

Note:  8719, 8720 and 8722 analyzers share learnstring compatibility.  However, learnstrings from 8753 analyzers are NOT compatible with the 8719/8720/8722, and vice versa.

Note:  Use ag875x_timeOut as needed to allow sufficient time for data transfer to complete.

Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     �    Indicates the file name and directory location on the computer where the "long" learnstring to be restored to the analyzer.

    Example file name:    C:\temp\myLrn.str   �*r���  �    Error                            �� (  �  �    vi                               � ` K � �    Long Lrn File                      	           0    ""   #    This function performs an auto scale on the active channel.

Comments:

Stimulus values are not affected, only scale & reference values.  The analyzer determines the smallest possible scale factor that will put all displayed data on 80% of the vertical graticule.

Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().   ��r���  �    Error                            �3 (  �  �    vi                                 	           0   w    This function reads (gets) trace data or calibration data from the instrument in "FORM5" PC DOS format (not compatible with UNIX Platform).  Parameter readTraceOrCalType selects the type of data array to be read.  Parameter readTraceOrCalArray is Output Real 64 bit one-dimensional array. (Internally to the function this readTraceOrCalArray is 32 bit Real array. Hence the readTraceOrCalArray values will be of 32 bit resolution.)  Parameter readTraceOrCalArrayNum is used to select the number of the calibration array or raw data array to be read. Parameter  readTraceOrCalPoints is used for selecting the number of points in the sweep.

With this function an error will occur if the 64 bit real array passed to the function is not of adequate size to accommodate all the data values output by the instrument.

NOTE:  Memory traces must already be saved in the instrument before running this function otherwise an error may occur.  If parameter readTraceOrCalType = OUTPMEMF and no memory trace is stored in the instrument, the GPIB bus may lock up.  The instrument must then be manually preset to clear the error.
Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    �    Selects the type of data array to be read from the instrument.

Range:

 0 = ag875x_CALCnn_OUTPUT - OUTPCALCnn - Calibration arrays (error-correction coefficients).  Possible array ranges are 1 - 12.

 1 = ag875x_ICALnn_OUTPUT - OUTPICALnn - Interpolated calibration arrays (will only be present if interpolation has been turned ON and stimulus settings have changed in a valid manner).  Possible array ranges are 1 - 12.

 2 = ag875x_DATA_OUTPUT - OUTPDATA - Error-corrected measurement trace data as real/imaginary pairs.  Parameter readTraceOrCalArrayNumber is ignored.

 3 = ag875x_DATF_OUTPUT - OUTPDATF - Same as OUTPDATA, except will provide faster data transfer under certain conditions.  Parameter readTraceOrCalArrayNumber is ignored.

 4 = ag875x_FORM_OUTPUT - OUTPFORM - Measurement trace data in the format that is currently being displayed on the instrument. If data being displayed is scalar values (i.e., display is neither Polar nor Smith Chart), the data must still be transferred as pairs (the second value in each pair is a meaningless "placeholder").  Parameter readTraceOrCalArrayNumber is ignored.

 5 = ag875x_FORF_OUTPUT - OUTPFORF - Same as OUTPFORM, except that only the desired values will be output (no placeholders) when the display is in one of the scalar formats, and will provide faster data transfer under certain conditions when display format is complex (Polar or Smith Chart).  Parameter readTraceOrCalArrayNumber is ignored.

 6 = ag875x_MEMO_OUTPUT - OUTPMEMO - Memory trace data as real/imaginary pairs.  Parameter readTraceOrCalArrayNumber is ignored.

 7 = ag875x_MEMF_OUTPUT - OUTPMEMF - Same as OUTPMEMO, except will provide faster data transfer under certain conditions.  Parameter readTraceOrCalArrayNumber is ignored.  NOTE:  If no memory trace is stored in the instrument, running this option may cause the GPIB bus to lock up.  The user may need to do a manual preset to clear the error.

 8 = ag875x_PREn_OUTPUT - OUTPPREn - "Pre-raw" data; Raw measurement data that has had neither sampler correction nor attenuator offsets applied to it. A full 2-port cal must be active.  See Example 2G on how to set up the instrument before using this driver option.  Note that parameter readTraceOrCalArrayNumber range is as follows:
        array 1 holds S11 data
        array 2 holds S21 data
        array 3 holds S12 data
        array 4 holds S22 data

Note:  Reading of pre-raw data is only supported on analyzers having Firmware Revision 6.12 or higher, and is not supported on 8753ET/8719ET/8720ET/8722ET analyzers.

 9 = ag875x_RAWn_OUTPUT - OUTPRAWn - Raw measurement data.  Normally, array number 1 holds the current parameter.  Note that if a 2-port calibration is active then parameter readTraceOrCalArrayNumber range is as follows:
        array 1 holds S11 data
        array 2 holds S21 data
        array 3 holds S12 data
        array 4 holds S22 data

10 = ag875x_RAFn_OUTPUT - OUTPRAFn - Same as OUTPRAWn, except will provide faster data transfer under certain conditions.  Note that if a 2-port calibration is active then parameter readTraceOrCalArrayNumber range is as follows:
        array 1 holds S11 data
        array 2 holds S21 data
        array 3 holds S12 data
        array 4 holds S22 data

Required Parameter:  YES     Y    64 bit Real one-dimensional array to receive the data values.

Required Parameter:  YES    �    The number of the calibration array or raw data array to be output from the instrument for the following readTraceOrCalDataType:

    OUTPCALCnn
    OUTPICALnn
    OUTPPREn
    OUTPRAWn
    OUTPRAFn

For other values of readTraceOrCalDataType this parameter does nothing. 

Array Number Range:

 0 = ag875x_ARRAY_01 - Array 1
 1 = ag875x_ARRAY_02 - Array 2
 2 = ag875x_ARRAY_03 - Array 3
 3 = ag875x_ARRAY_04 - Array 4
 4 = ag875x_ARRAY_05 - Array 5
 5 = ag875x_ARRAY_06 - Array 6
 6 = ag875x_ARRAY_07 - Array 7
 7 = ag875x_ARRAY_08 - Array 8
 8 = ag875x_ARRAY_09 - Array 9
 9 = ag875x_ARRAY_10 - Array 10
10 = ag875x_ARRAY_11 - Array 11
11 = ag875x_ARRAY_12 - Array 12

Array Number Min/Max Range:

For ag875x_CALCnn_OUTPUT or ag875x_ICALnn_OUTPUT (cal arrays):

1  = ag875x_ARRAY_MIN - Min
6  = ag875x_ARRAY_MAX_ET - Min (8753ET/8719ET/8720ET/8722ET)
12 = ag875x_ARRAY_MAX_S_PARM - (All 8753/8719/8720/8722 S-param)


For ag875x_RAWn_OUTPUT or ag875x_RAFn_OUTPUT (raw data arrays):

1 = ag875x_ARRAY_MIN - Min
1 = ag875x_RAW_MAX_ET - Min (8753ET/8719ET/8720ET/8722ET)
4 = ag875x_RAW_MAX_S_PARM - Max(All 8753/8719/8720/8722 S-param)


For ag875x_PREn_OUTPUT ("pre-raw" data arrays):

1 = ag875x_ARRAY_MIN - Min
4 = ag875x_RAW_MAX_S_PARM - Max

Note:  Pre-raw arrays are only supported on Firmware Revisions 6.12 and higher, and are not supported on 8753ET/8719ET/8720ET/8722ET analyzers.

Required Parameter:  YES   �er���  �    Error                            � (  �  �    vi                               �< $ ( � �    Read Trace Or Cal Type           � $r �  �    Read Trace Or Cal Array          Ҁ ` ( � �    Read Trace Or Cal Array Num        	           0              <OUTPCALCnn ag875x_CALCnn_OUTPUT OUTPICALnn ag875x_ICALnn_OUTPUT OUTPDATA ag875x_DATA_OUTPUT OUTPDATF ag875x_DATF_OUTPUT OUTPFORM ag875x_FORM_OUTPUT OUTPFORF ag875x_FORF_OUTPUT OUTPMEMO ag875x_MEMO_OUTPUT OUTPMEMF ag875x_MEMF_OUTPUT OUTPPREn ag875x_PREn_OUTPUT OUTPRAWn ag875x_RAWn_OUTPUT OUTPRAFn ag875x_RAFn_OUTPUT    	                      #Array 1 ag875x_ARRAY_01 Array 2 ag875x_ARRAY_02 Array 3 ag875x_ARRAY_03 Array 4 ag875x_ARRAY_04 Array 5 ag875x_ARRAY_05 Array 6 ag875x_ARRAY_06 Array 7 ag875x_ARRAY_07 Array 8 ag875x_ARRAY_08 Array 9 ag875x_ARRAY_09 Array 10 ag875x_ARRAY_10 Array 11 ag875x_ARRAY_11 Array 12 ag875x_ARRAY_12   �    This function writes (sends) trace data or calibration data to the instrument in "FORM5" PC DOS format (not compatible with UNIX Platform).  The writeTraceOrCalType parameter selects the type of data array to be written.  writeTraceOrCalArray is a Real 64 bit one-dimensional array. (Internally to the function this writeTraceOrCalArray is 32 bit Real array. Hence the writeTraceOrCalArray values will be of 32 bit resolution.)  writeTraceOrCalArrayNum is used to select the number of the calibration array or raw data array to be written.  writeTraceOrCalArrayPoints is used for selecting the number of points in the sweep.

Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    {    Selects the type of data array to be written to the instrument.

Range:

0 = ag875x_CALCnn_INPUT - INPUCALCnn - Calibration arrays (error-correction coefficients).  

1 = ag875x_DATA_INPUT - INPUDATA - Error-corrected measurement trace data as real/imaginary pairs.  Parameter writeTraceOrCalArrayNumber is ignored.

2 = ag875x_FORM_INPUT - INPUFORM - Measurement trace data in the format that is currently being displayed on the instrument.  Parameter writeTraceOrCalArrayNumber is ignored.

3 = ag875x_MEMO_INPUT - INPUMEMO - Memory trace data as real/imaginary pairs.  Parameter writeTraceOrCalArrayNumber is ignored.

4 = ag875x_RAWn_INPUT - INPURAWn - Raw measurement data.  Normally, array 1 is meant to contain the current parameter.  If a 2-port calibration is active then:
     array 1 will hold S11
     array 2 will hold S21
     array 3 will hold S12
     array 4 will hold S22     A    64 bit Real one-dimensional array to be sent to the instrument.    u    Select the number of points in the sweep.

Range:

0 = ag875x_PNTS_03 - 3 points
1 = ag875x_PNTS_11 - 11 points
2 = ag875x_PNTS_21 - 21 points
3 = ag875x_PNTS_26 - 26 points
4 = ag875x_PNTS_51 - 51 points
5 = ag875x_PNTS_101 - 101 points
6 = ag875x_PNTS_201 - 201 points
7 = ag875x_PNTS_401 - 401 points
8 = ag875x_PNTS_801 - 801 points
9 = ag875x_PNTS_1601 - 1601 points        The number of the calibration array or raw data array to be written to the instrument for the following writeTraceOrCalType input:

    INPUCALCnn
    INPURAWn

For other values of writeTraceOrCalType this parameter does nothing. 

Array Number Range:

 0 = ag875x_ARRAY_01 - Array 1
 1 = ag875x_ARRAY_02 - Array 2
 2 = ag875x_ARRAY_03 - Array 3
 3 = ag875x_ARRAY_04 - Array 4
 4 = ag875x_ARRAY_05 - Array 5
 5 = ag875x_ARRAY_06 - Array 6
 6 = ag875x_ARRAY_07 - Array 7
 7 = ag875x_ARRAY_08 - Array 8
 8 = ag875x_ARRAY_09 - Array 9
 9 = ag875x_ARRAY_10 - Array 10
10 = ag875x_ARRAY_11 - Array 11
11 = ag875x_ARRAY_12 - Array 12

Array Number Min/Max Range:

For ag875x_CALCnn_INPUT (cal arrays):

 1 = ag875x_ARRAY_MIN - Min
 6 = ag875x_ARRAY_MAX_ET - Max (8753ET/8719ET/8720ET/8722ET)
12 = ag875x_ARRAY_MAX_S_PARM = All 8753/8719/8720/8722 S-param)

For ag875x_RAWn_INPUT (raw data arrays):

 1 = ag875x_ARRAY_MIN - Min
 1 = ag875x_RAW_MAX_ET - Max (8753ET/8719ET/8720ET/8722ET)
 4 = ag875x_RAW_MAX_S_PARM - (All 8753/8719/8720/8722 S-param)   �Hr���  �    Error                            �� (  �  �    vi                               � $ ( � �    Write Trace Or Cal Type          � ` ( �  �    Write Trace Or Cal Array         �� � ( � �    Write Trace Or Cal Points        �h � ( � �    Write Trace Or Cal Array Num       	           0               �INPUCALCnn ag875x_CALCnn_INPUT INPUDATA ag875x_DATA_INPUT INPUFORM ag875x_FORM_INPUT INPUMEMO ag875x_MEMO_INPUT INPURAWn ag875x_RAWn_INPUT    0           
  3 Points ag875x_PNTS_03 11 Points ag875x_PNTS_11 21 Points ag875x_PNTS_21 26 Points ag875x_PNTS_26 51 Points ag875x_PNTS_51 101 Points ag875x_PNTS_101 201 Points ag875x_PNTS_201 401 Points ag875x_PNTS_401 801 Points ag875x_PNTS_801 1601 Points ag875x_PNTS_1601              #Array 1 ag875x_ARRAY_01 Array 2 ag875x_ARRAY_02 Array 3 ag875x_ARRAY_03 Array 4 ag875x_ARRAY_04 Array 5 ag875x_ARRAY_05 Array 6 ag875x_ARRAY_06 Array 7 ag875x_ARRAY_07 Array 8 ag875x_ARRAY_08 Array 9 ag875x_ARRAY_09 Array 10 ag875x_ARRAY_10 Array 11 ag875x_ARRAY_11 Array 12 ag875x_ARRAY_12   2    This function reads the array of power meter calibration data from the instrument.  Use the ag875x_writePowerMeterCal function to write an array of power meter calibration data to the instrument.

For interpolated data, the parameter readPowerMeterCalPoints must be <> the actual number of points in the power meter calibration array.

For uninterpolated data, the parameter readPowerMeterCalPoints must be <= the actual number of points in the power meter calibration array.  If requesting fewer points than in the array, the remaining points will be discarded.

NOTE:  The user needs to keep track of the number of elements in the power meter calibration array.  The number of points in the power meter calibration array may be different than the number of points currently on the instrument display.  Firmware versions 7.64 and lower do not have a method of querying the number of points in the power meter calibration array.  Therefore, querying the instrument for interpolated data = to the number of points in the array will cause an error.

Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     x    64-bit Real one-dimensional array to be read from the instrument.  Must be large enough to accept all the points data.    �    Select the number of points in the sweep.  The array passed to this function must be large enough to receive this number of values.

Range:

0 = ag875x_PNTS_03 - 3 points
1 = ag875x_PNTS_11 - 11 points
2 = ag875x_PNTS_21 - 21 points
3 = ag875x_PNTS_26 - 26 points
4 = ag875x_PNTS_51 - 51 points
5 = ag875x_PNTS_101 - 101 points
6 = ag875x_PNTS_201 - 201 points
7 = ag875x_PNTS_401 - 401 points
8 = ag875x_PNTS_801 - 801 points
9 = ag875x_PNTS_1601 - 1601 points     �    Selects the primary channel number that the power meter calibration data will be read from.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2

Required Parameter:  YES    �    Chooses either interpolated or uninterpolated power meter calibration data.  Interpolated data will only be present if there has been sufficient change in the instrument state to activate interpolation.

Range:

0 = ag875x_READ_UNINTERP_CAL - Read uninterpolated (original) power meter calibration data.  A default array is used
if a power meter calibration sweep, TAKCS, has
not been performed. Values are returned as
100 times the power meter reading in dB. This
is an ASCII transfer (FORM4).

1 = ag875x_READ_INTERP_CAL - Read interpolated power meter calibration data.  Values are returned as 100 times the
interpolated power meter reading in dB. This
is an ASCII transfer (FORM4).   ��r���  �    Error                            � (  �  �    vi                               �� $r �  �    Read Power Meter Array           �I ` ( � �    Read Power Meter Points          �  $ ( � �    Read Power Meter Channel         �� � ( � �    Interpolated  Mode                 	           0    	                   
  3 Points ag875x_PNTS_03 11 Points ag875x_PNTS_11 21 Points ag875x_PNTS_21 26 Points ag875x_PNTS_26 51 Points ag875x_PNTS_51 101 Points ag875x_PNTS_101 201 Points ag875x_PNTS_201 401 Points ag875x_PNTS_401 801 Points ag875x_PNTS_801 1601 Points ag875x_PNTS_1601               *Channel 1 ag875x_CH1 Channel 2 ag875x_CH2               LInterpolated ag875x_READ_INTERP_CAL Uninterpolated ag875x_READ_UNINTERP_CAL    �    This function writes an array of power meter calibration data to the instrument.  Use the ag875x_readPowerMeterCal function to read the array of power meter calibration data from the instrument.

Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     e    64-bit Real one-dimensional array containing the power meter cal data to be sent to the instrument.    �    Select the number of points in the sweep.

Note:  This must equal the number of data values contained in the writePowerMeterCal input array.

Range:

0 = ag875x_PNTS_03 - 3 points
1 = ag875x_PNTS_11 - 11 points
2 = ag875x_PNTS_21 - 21 points
3 = ag875x_PNTS_26 - 26 points
4 = ag875x_PNTS_51 - 51 points
5 = ag875x_PNTS_101 - 101 points
6 = ag875x_PNTS_201 - 201 points
7 = ag875x_PNTS_401 - 401 points
8 = ag875x_PNTS_801 - 801 points
9 = ag875x_PNTS_1601 - 1601 points     �    Selects the primary channel number for writing the power meter cal data.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2

Required Parameter:  YES   �~r���  �    Error                            � (  �  �    vi                               �U ` ( �  �    Write Power Meter Cal Array      �� � ( � �    Write Power Meter Cal Points     �� $ ( � �    Write Power Meter Cal Channel      	           0    0           
  3 Points ag875x_PNTS_03 11 Points ag875x_PNTS_11 21 Points ag875x_PNTS_21 26 Points ag875x_PNTS_26 51 Points ag875x_PNTS_51 101 Points ag875x_PNTS_101 201 Points ag875x_PNTS_201 401 Points ag875x_PNTS_401 801 Points ag875x_PNTS_801 1601 Points ag875x_PNTS_1601               *Channel 1 ag875x_CH1 Channel 2 ag875x_CH2    R    Sets actual limit lines or points, and displays them.

Optional Parameters:  YES     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    V    64-bit Real one-dimensional array which should contain the data for the limits to be set up on the network analyzer (1 to 18 segments; 4 input values per segment) in the following format:

[ 0|1|2, Stimulus, Upper (or Middle), Lower (or Delta) ]

Where:

0 = Sloping Line
1 = Flat Line
2 = Single Point.

Repeat this segment format X number of times within the array where X equals the number of segments.  A "sentinel" value of 9999 can be input as the stimulus value of one or more segments to indicate that the stimulus of the active marker (if present) should be used as the stimulus for those segments.  Similarly, the same sentinel value (9999) can be input as the Middle limit value of one or more segments to indicate that the amplitude of the active marker should be used as the middle limit value for those segments.

Required Parameter:  YES        Specifies the total number of segments to be set. Make sure that the limits array contains at least this number of segments worth of data.

Range:
   
 1 = ag875x_LIM_TABLE_MIN_SEGS - Minimum segments
18 = ag875x_LIM_TABLE_MAX_SEGS - Maximum segments

Required Parameter:  YES        Specifies what kind of values are contained in the limits input array.

Range:

ag875x_LIM_TABLE_UPPER_LOWER - Upper and lower limits
ag875x_LIM_TABLE_MIDDLE_DELTA - Middle and delta limits

Required Parameter:  NO

Default Value:  ag875x_LIM_TABLE_UPPER_LOWER    �    Selects the channel number.  

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4


Required Parameter:  NO

Default Value: ag875x_CH1    +    Indicates whether to append the limit segments to the existing limit table (if one exists) or whether to clear the existing table first.

Range:

VI_TRUE  = ag875x_APPEND_TO_EXISTING_TABLE
VI_FALSE = ag875x_CLEAR_EXISTING_TABLE

Required Parameter:  NO

Default Value:  ag875x_CLEAR_EXISTING_TABLE   r���  �    Error                            � (  �  �    vi                               � ` ( � �    Limit Table Set Limits           H $ F �      Limit Table Set Segments         f � ( � �    Limit Table Set Request          t � ( � �    Limit Table Set Channel          
{ $ � � �    Limit Table Set Append Mode        	           0    0                                   rSet Upper And Lower Limits ag875x_LIM_TABLE_UPPER_LOWER Set Middle and Delta Limits ag875x_LIM_TABLE_MIDDLE_DELTA               TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4              jAppend to Existing Table ag875x_APPEND_TO_EXISTING_TABLE Clear Existing Table ag875x_CLEAR_EXISTING_TABLE   r    Returns the contents of the existing limit table (if any).

Note:  If the size of the limit table is unknown when calling this function, the array that is passed in as limitTableQueryLimits should have a size of at least ag875x_LIM_TABLE_SIZE_MAX = 72 to accommodate the maximum case (18 segments maximum * 4 values per segment = 72 values).

Optional Parameters:  YES     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    �    Selects the channel number.  

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4

Required Parameter:  NO

Default Value: ag875x_CH1     �    Returns the number of segments in the limit table.  Multiply this number by 4 to tell how many data values were returned in the array.

Required Parameter:  YES    ,    64-bit Real one-dimensional array to receive the limit table (1 to 18 segments; 4 input values per segment) each segment is formatted as follows:

[ 0|1|2, Stimulus, Upper Limit (or Middle), Lower Limit (or Delta) ]

Where:

0 = Sloping Line
1 = Flat Line
2 = Single Point

Required Parameter:  YES    	    Specifies what kind of values should be sent to the limits output array.

Range:

ag875x_LIM_TABLE_UPPER_LOWER - Upper and lower limits
ag875x_LIM_TABLE_MIDDLE_DELTA - Middle and delta limits

Required Parameter:  NO

Default Value:  ag875x_LIM_TABLE_UPPER_LOWER
   %r���  �    Error                            � (  �  �    vi                               � ` ( � �    Limit Table Query Channel         $r �  �    Limit Table Query Segments       � `r �  �    Limit Table Query Limits         � $ ( � �    Limit Table Query Mode             	           0               TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4    	            	                       vQuery Upper And Lower Limits ag875x_LIM_TABLE_UPPER_LOWER Query Middle And Delta Limits ag875x_LIM_TABLE_MIDDLE_DELTA    v    Sets various limit line status parameters. To set actual limits see ag875x_limitTableSet.

Optional Parameters:  YES     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    .    Selects desired action.

Range:

ag875x_LIM_STATUS_TEST_ON - Limit test on.
ag875x_LIM_STATUS_TEST_OFF - Limit test off.
ag875x_LIM_STATUS_DISPLAY_ON - Limit line display on.
ag875x_LIM_STATUS_DISPLAY_OFF - Limit line display off.
ag875x_LIM_STATUS_STIM_OFFSET - Set limit line stimulus offset.
ag875x_LIM_STATUS_AMPL_OFFSET - Set limit line amplitude offset.
ag875x_LIM_STATUS_MKR_AMPL_OFFSET - Marker to limit amplitude offset; centers the limit lines about the current marker position.

Required Parameter:  NO

Default Value:  ag875x_LIM_STATUS_TEST_ON     �    Specifies the stimulus offset value or amplitude offset value to be set when limitStatusSetRequest = ag875x_LIM_STATUS_STIM_OFFSET or ag875x_LIM_STATUS_AMPL_OFFSET.  Otherwise, this parameter does nothing.

Required Parameter:  NO

Default Value:  0.00    �    Selects the channel number.  

Channels 3 and 4 are valid only on 8753/8719/8720/8722 Firmware Revisions 7.40 and higher.  With Firmware Revisions 7.40 and 7.48, Channels 3 and 4 can only be accessed when a 2-port calibration is active.  With Firmware Revision 7.60 and higher, there is no such calibration restriction on Channels 3 and 4.

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4


Required Parameter:  NO

Default Value: ag875x_CH1   �r���  �    Error                            ] (  �  �    vi                               � $ ( � �    Limit Status Set Request         � � ( � �    Limit Status Set Offset          � ` ( � �    Limit Status Set Channel           	           0              TLimit Test On ag875x_LIM_STATUS_TEST_ON Limit Test Off ag875x_LIM_STATUS_TEST_OFF Limit Line Display On ag875x_LIM_STATUS_DISPLAY_ON Limit Line Display Off ag875x_LIM_STATUS_DISPLAY_OFF Stimulus Offset ag875x_LIM_STATUS_STIM_OFFSET Amplitude Offset ag875x_LIM_STATUS_AMPL_OFFSET Marker To Amplitude Offset ag875x_LIM_STATUS_MKR_AMPL_OFFSET    0.00               TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4    t    Reads various limit line status parameters, or reads pass/fail results from limit test.

Optional Parameters:  YES     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     f    64-bit Real one-dimensional array which receives the limit-related values.

Required Parameter:  YES     �    The size of the limitStatusQueryResult array (in terms of 64-bit values) being passed into this function.

Required Parameter:  YES     �    The number of individual data values that were read from the instrument into the limitStatusQueryResult array.

Required Parameter:  YES     �    This parameter is used to indicate the limit segment number when limitStatusQueryRequest = ag875x_LIM_STATUS_SEG_NUM_Q or ag875x_LIM_STATUS_SEG_MIN_MAX_Q.  Otherwise, this parameter does nothing.    �    Queries the selected limit-related values that will be returned in the limitStatusQueryResult array.

Range:

ag875x_LIM_STATUS_TEST_Q - Limit testing on/off status.

ag875x_LIM_STATUS_DISPLAY_Q - Limit display on/off status.

ag875x_LIM_STATUS_STIM_OFFSET_Q - Limit lines stimulus offset.

ag875x_LIM_STATUS_AMPL_OFFSET_Q - Limit lines amplitude offset.

ag875x_LIM_STATUS_CHANNEL_Q  - Pass/fail status of channel.

ag875x_LIM_STATUS_SEG_NUM_Q - Pass/fail status of limit line segment.

ag875x_LIM_STATUS_ALL_SEGS_Q - Segment number and pass/fail status of all active segments.

ag875x_LIM_STATUS_FAIL_POINT_Q - Stimulus and trace values for each failed point.

ag875x_LIM_STATUS_ALL_POINT_Q - Limit test results for every sweep point.

ag875x_LIM_STATUS_MKR_Q - Limit test results at active marker.

ag875x_LIM_STATUS_ALL_SEGS_MIN_Q - Min values for all limit segments.

ag875x_LIM_STATUS_ALL_SEGS_MAX_Q - Max values for all limit segments.

ag875x_LIM_STATUS_SEG_MIN_MAX_Q  - Min and max values for specified segment.

ag875x_LIM_STATUS_ALL_MIN_MAX_Q - Min and max values for all segments.

Required Parameter:  NO

Default Value:  ag875x_LIM_STATUS_CHANNEL_Q     �    

Range:

0 = ag875x_CH1 - Channel 1
1 = ag875x_CH2 - Channel 2
2 = ag875x_CH3 - Channel 3
3 = ag875x_CH4 - Channel 4


Required Parameter:  NO

Default Value: ag875x_CH1   "<r���  �    Error                            "� (  �  �    vi                               # $r �  �    Limit Status Query Result        #� $ Z �      Limit Status Query Arr Size      $ `r �  �    Limit Status Query Num Values    $� � Z �      Limit Status Query Seg Num       %m ` ( � �    Limit Status Query Request       * � ( � �    Limit Status Query Channel         	           0    	              �                 	                                         ALimit Testing On/Off Status ag875x_LIM_STATUS_TEST_Q Limit Display On/Off Status ag875x_LIM_STATUS_DISPLAY_Q Stimulus Offset ag875x_LIM_STATUS_STIM_OFFSET_Q Amplitude Offset ag875x_LIM_STATUS_AMPL_OFFSET_Q Channel Pass/Fail Status ag875x_LIM_STATUS_CHANNEL_Q Segment Pass/Fail Status ag875x_LIM_STATUS_SEG_NUM_Q All Segments Pass/Fail Status ag875x_LIM_STATUS_ALL_SEGS_Q All Failed Points Stimulus And Trace Values ag875x_LIM_STATUS_FAIL_POINT_Q All Points Limit Test Results ag875x_LIM_STATUS_ALL_POINT_Q Active Marker Limits Test Results ag875x_LIM_STATUS_MKR_Q Min Values Of All Limit Segments ag875x_LIM_STATUS_ALL_SEGS_MIN_Q Max Values Of All Limit Segments ag875x_LIM_STATUS_ALL_SEGS_MAX_Q Min And Max Value Of Specified Segment ag875x_LIM_STATUS_SEG_MIN_MAX_Q Min And Max Value Of All Segments ag875x_LIM_STATUS_ALL_MIN_MAX_Q               TChannel 1 ag875x_CH1 Channel 2 ag875x_CH2 Channel 3 ag875x_CH3 Channel 4 ag875x_CH4   
y    Can be used to set or query various printer related parameters, or to begin printing from the analyzer to a printer.

Optional Parameters:  YES

Note: The following printRequest values do not require input from parameters printModeA and printModeB.  However, dummy placeholders must still be passed to the function.

ag875x_PRINT_PORT_Q
ag875x_PRINT_COLOR_Q
ag875x_PRINT_QUADRANT_Q
ag875x_PRINT_FORMFEED_Q
ag875x_PRINT_BAUD_RATE_Q
ag875x_PRINT_HANDSHAKE_Q
ag875x_PRINT_DEFAULT

Note: The following values for printRequest require an input from parameter printModeA only.  However, a dummy printModeB value must still be passed to the function.  The choices for printModeA are listed below:

ag875x_PRINT_NOW
       ag875x_PRINT_SINGLE_PAGE
       ag875x_PRINT_MULTI_PAGE

ag875x_PRINT_COLOR
       ag875x_ON
       ag875x_OFF

ag875x_PRINT_MODE
       ag875x_PRINT_MODE_LIST
       ag875x_PRINT_MODE_OP_PARMS
       ag875x_PRINT_MODE_GRAPH

ag875x_PRINT_QUADRANT
       ag875x_PRINT_QUAD_LEFT_LOWER
       ag875x_PRINT_QUAD_LEFT_UPPER
       ag875x_PRINT_QUAD_RIGHT_LOWER
       ag875x_PRINT_QUAD_RIGHT_UPPER
       ag875x_PRINT_QUAD_FULL_PAGE

ag875x_PRINT_FORMFEED
       ag875x_ON
       ag875x_OFF

ag875x_PRINT_SOFTKEYS
       ag875x_ON
       ag875x_OFF

ag875x_PRINT_BAUD_RATE
       ag875x_PRINT_BAUD_RATE_1200
       ag875x_PRINT_BAUD_RATE_2400
       ag875x_PRINT_BAUD_RATE_4800
       ag875x_PRINT_BAUD_RATE_9600
       ag875x_PRINT_BAUD_RATE_19200
       
ag875x_PRINT_HANDSHAKE
       ag875x_PRINT_HANDSHAKE_DTR_DSR
       ag875x_PRINT_HANDSHAKE_XON_XOFF

Note: The following values for printRequest require input from both parameters printModeA  and printModeB.

ag875x_PRINT_DEST

       printModeA:
       ag875x_PRINT_DJ_540_OR_850C 
       ag875x_PRINT_DESKJET
       ag875x_PRINT_EPSON
       ag875x_PRINT_LASERJET

       printModeB:
       ag875x_PRINT_PORT_PARALLEL
       ag875x_PRINT_PORT_SERIAL

ag875x_PRINT_FEATURE_COLOR 

       printModeA:
       ag875x_PRINT_FEATURE_CH1_DATA
       ag875x_PRINT_FEATURE_CH2_DATA
       ag875x_PRINT_FEATURE_CH3_DATA
       ag875x_PRINT_FEATURE_CH4_DATA
       ag875x_PRINT_FEATURE_CH1_MEM
       ag875x_PRINT_FEATURE_CH2_MEM
       ag875x_PRINT_FEATURE_CH3_MEM
       ag875x_PRINT_FEATURE_CH4_MEM
       ag875x_PRINT_FEATURE_GRATICULE
       ag875x_PRINT_FEATURE_REF_LINE
       ag875x_PRINT_FEATURE_WARNING
       ag875x_PRINT_FEATURE_TEXT

       printModeB:
       ag875x_PRINT_COLOR_WHITE
       ag875x_PRINT_COLOR_CYAN
       ag875x_PRINT_COLOR_MAGENTA
       ag875x_PRINT_COLOR_BLUE
       ag875x_PRINT_COLOR_YELLOW
       ag875x_PRINT_COLOR_GREEN
       ag875x_PRINT_COLOR_RED
       ag875x_PRINT_COLOR_BLACK     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     �    Returns a string which indicates the active setting of the specified printer-related parameter when printRequest is a query.  Otherwise, parameter does nothing.

Required Parameter:  Only when performing a query.
    c    Selects desired action.  See function help for choosing the accompanying printModeA and printModeB values, if required.

* Indicates a corresponding value is also required for parameter printModeA.

Range And Required Params:

* ag875x_PRINT_NOW - Begin printing now.(2 params)
* ag875x_PRINT_DEST - Set destination (printer, port).(2 params)
ag875x_PRINT_PORT_Q - Query printer port. (2 params)
* ag875x_PRINT_COLOR - Set color/monochrome state. (2 params)
ag875x_PRINT_COLOR_Q - Query color/monochrome state. (2 params)
* ag875x_PRINT_FEATURE_COLOR - Set display feature color.(2 params)
* ag875x_PRINT_MODE - Set print data mode (list, op parms, or graph).(2 params)
* ag875x_PRINT_QUADRANT - Set quadrant/full page. (2 params)
ag875x_PRINT_QUADRANT_Q - Query quadrant/full page. (2 params)
* ag875x_PRINT_FORMFEED - Set autofeed (formfeed) on/off. (2 params)
ag875x_PRINT_FORMFEED_Q Query autofeed on/off state. (2 params)
* ag875x_PRINT_SOFTKEYS - Include softkeys on/off. (2 params)
* ag875x_PRINT_BAUD_RATE - Set baud rate(serial port). (2 params)
ag875x_PRINT_BAUD_RATE_Q - Query baud rate(serial port). (2 params)
* ag875x_PRINT_HANDSHAKE - Set handshake(serial port). (2 params)
ag875x_PRINT_HANDSHAKE_Q - Query handshake(serial port). (2 params)
ag875x_PRINT_DEFAULT - Use default printer setup. (2 params)

Required Parameter:  NO

Default Value:  ag875x_PRINT_NOW
    �    Specifier needed for certain values of the request.  See function help for choosing the accompanying printRequest.  

* Indicates a corresponding value is also required for parameter printModeB.

Range:

ag875x_PRINT_SINGLE_PAGE - Copies the current contents of the analyzer's display, in raster graphics mode, to a printer which is currently connected to the network analyzer (single page of graphics and/or text).

ag875x_PRINT_MULTI_PAGE - Sends all list values or operating and marker parameters (whichever is currently on the network analyzer display) in ASCII text mode to a printer which is currently connected to the network analyzer (multiple pages depending upon the amount of data).

* ag875x_PRINT_DJ_540_OR_850C - Hewlett-Packard DeskJet 540 or DeskJet 850C (or compatible) printer.

* ag875x_PRINT_DESKJET - Other models of Hewlett-Packard DeskJet printers and compatibles.

* ag875x_PRINT_EPSON - Epson brand of printer (or compatible).

* ag875x_PRINT_LASERJET - Hewlett-Packard LaserJet (or compatible) printer.

ag875x_ON - Select color printing (if supported by printer).

ag875x_OFF - Select monochrome (black and white) printing.

* ag875x_PRINT_FEATURE_CH1_DATA - Change print color of the Channel 1 data trace.

* ag875x_PRINT_FEATURE_CH2_DATA - Change print color of the Channel 2 data trace.

* ag875x_PRINT_FEATURE_CH3_DATA - Change print color of the Channel 3 data trace.  Channel 3 is supported only on analyzers having Firmware Revision 7.40 and higher.

* ag875x_PRINT_FEATURE_CH4_DATA - Change print color of the Channel 4 data trace.  Channel 4 is supported only on analyzers having Firmware Revision 7.40 and higher.

* ag875x_PRINT_FEATURE_CH1_MEM - Change print color of the Channel 1 memory trace.

* ag875x_PRINT_FEATURE_CH2_MEM - Change print color of the Channel 2 memory trace.

* ag875x_PRINT_FEATURE_CH3_MEM - Change print color of the Channel 3 memory trace.  Channel 3 is supported only on analyzers having Firmware Revision 7.40 and higher.

* ag875x_PRINT_FEATURE_CH4_MEM - Change print color of the Channel 4 memory trace.  Channel 4 is supported only on analyzers having Firmware Revision 7.40 and higher

* ag875x_PRINT_FEATURE_GRATICULE - Change print color of the trace graticule.

* ag875x_PRINT_FEATURE_REF_LINE - Change print color of the reference line.

* ag875x_PRINT_FEATURE_WARNING - Change print color of the analyzer's warning message.

* ag875x_PRINT_FEATURE_TEXT - Change print color of the analyzer's text display.

ag875x_PRINT_MODE_LIST - Displays the trace data values on the analyzer as an ASCII list.  table of operating parameters which describe the current instrument state (the first page of multiple pages).  Next, call this function again with printRequest = ag875x_PRINT_NOW to print the  list.

ag875x_PRINT_MODE_OP_PARMS - Displays on the analyzer the table of operating parameters which describe the current instrument state (the first page of multiple pages).  Next, call this function again with printRequest = ag875x_PRINT_NOW to print the  values.

ag875x_PRINT_MODE_GRAPH - Displays the default display mode on the analyzer (no list values or operating parameters).  Next, call this function again with printRequest = ag875x_PRINT_NOW to print the  values.

ag875x_PRINT_QUAD_LEFT_LOWER - Indicates that the contents of the analyzer display should be printed to the lower left quadrant of the page in the printer.  Next, call this function again with printRequest = ag875x_PRINT_NOW to print the  values.

ag875x_PRINT_QUAD_LEFT_UPPER - Indicates that the contents of the analyzer display should be printed to the upper left quadrant of the page in the printer.  Next, call this function again with printRequest = ag875x_PRINT_NOW to print the  values.

ag875x_PRINT_QUAD_RIGHT_LOWER - Indicates that the contents of the analyzer display should be printed to the lower right quadrant of the page in the printer.  Next, call this function again with printRequest = ag875x_PRINT_NOW to print the  values.

ag875x_PRINT_QUAD_RIGHT_UPPER - Indicates that the contents of the analyzer display should be printed to the upper right quadrant of the page in the printer.  Next, call this function again with printRequest = ag875x_PRINT_NOW to print the  values.

ag875x_PRINT_QUAD_FULL_PAGE - Indicates that the contents of the analyzer display should be printed full page, instead of a quadrant.  Next, call this function again with printRequest = ag875x_PRINT_NOW to print the  values.

ag875x_ON - Set automatic formfeed on.

ag875x_OFF - Set automatic formfeed off.

ag875x_ON - Include network analyzer softkey labels on the printed pages.

ag875x_OFF - Do not include network analyzer softkey labels on the printed pages.

ag875x_PRINT_BAUD_RATE_1200 - Set serial printer baud rate to 1200 BPS.

ag875x_PRINT_BAUD_RATE_2400 - Set serial printer baud rate to 2400 BPS.

ag875x_PRINT_BAUD_RATE_4800 - Set serial printer baud rate to 4800 BPS.

ag875x_PRINT_BAUD_RATE_9600 - Set serial printer baud rate to 9600 BPS.

ag875x_PRINT_BAUD_RATE_19200 - Set serial printer baud rate to 19200 BPS.

ag875x_PRINT_HANDSHAKE_DTR_DSR - Set serial printer handshake to DTR-DSR style.

ag875x_PRINT_HANDSHAKE_XON_XOFF - Set serial printer handshake to XON-XOFF style.

Required Parameter:  NO

Default Value:  ag875x_PRINT_SINGLE_PAGE    �    An additional specifier which is needed for certain values of printRequest.

Range:

ag875x_PRINT_PORT_PARALLEL - Output to printer via analyzer's parallel port.

ag875x_PRINT_PORT_SERIAL - Output to printer via analyzer's serial port.

ag875x_PRINT_COLOR_WHITE - Selects the color of white for printing of the feature specified by printModeA.

ag875x_PRINT_COLOR_CYAN - Selects the color of cyan for printing of the feature specified by printModeA.

ag875x_PRINT_COLOR_MAGENTA - Selects the color of magenta for printing of the feature specified by printModeA.

ag875x_PRINT_COLOR_BLUE - Selects the color of blue for printing of the feature specified by printModeA.

ag875x_PRINT_COLOR_YELLOW - Selects the color of yellow for printing of the feature specified by printModeA.

ag875x_PRINT_COLOR_GREEN - Selects the color of green for printing of the feature specified by printModeA.

ag875x_PRINT_COLOR_RED - Selects the color of red for printing of the feature specified by printModeA.

ag875x_PRINT_COLOR_BLACK - Selects the color of black for printing of the feature specified by printModeA.

Required Parameter:  NO

Default Value:  ag875x_PRINT_COLOR_BLACK   :�r���  �    Error                            ;� (  �  �    vi                               ;� $r �  �    Query Print Mode                 <� $ ( � �    Print Request                    B	 ` ( � �    Print Mode A                     V� � ( � �    Print Mode B                       	           0    	                       Print ag875x_PRINT_NOW Set Printer Type And Port ag875x_PRINT_DEST Query Printer Port ag875x_PRINT_PORT_Q Set Color/Monochrome State ag875x_PRINT_COLOR Query Color/Monochrome State ag875x_PRINT_COLOR_Q Set Display Feature Color ag875x_PRINT_FEATURE_COLOR Set Print Data Mode ag875x_PRINT_MODE Set Quadrant/Full Page Mode ag875x_PRINT_QUADRANT Query Quadrant/Full Page Mode ag875x_PRINT_QUADRANT_Q Set Autofeed On/Off State ag875x_PRINT_FORMFEED Query Autofeed On/Off State ag875x_PRINT_FORMFEED_Q Include Softkeys On/Off State ag875x_PRINT_SOFTKEYS Set Serial Port Baud Rate ag875x_PRINT_BAUD_RATE Query Serial Port Baud Rate ag875x_PRINT_BAUD_RATE_Q Set Serial Port Handshake ag875x_PRINT_HANDSHAKE Query Serial Port Handshake ag875x_PRINT_HANDSHAKE_Q Use Default Printer Setup ag875x_PRINT_DEFAULT            '  <Single Page ag875x_PRINT_SINGLE_PAGE Multi Page ag875x_PRINT_MULTI_PAGE HP DeskJet 540 or 850c ag875x_PRINT_DJ_540_OR_850C Other HP DeskJet ag875x_PRINT_DESKJET Epson ag875x_PRINT_EPSON HP LaserJet ag875x_PRINT_LASERJET Color ag875x_ON Monochrome ag875x_OFF Channel 1 Data Trace ag875x_PRINT_FEATURE_CH1_DATA Channel 2 Data Trace ag875x_PRINT_FEATURE_CH2_DATA Channel 3 Data Trace ag875x_PRINT_FEATURE_CH3_DATA Channel 4 Data Trace ag875x_PRINT_FEATURE_CH4_DATA Channel 1 Memory Trace ag875x_PRINT_FEATURE_CH1_MEM Channel 2 Memory Trace ag875x_PRINT_FEATURE_CH2_MEM Channel 3 Memory Trace ag875x_PRINT_FEATURE_CH3_MEM Channel 4 Memory Trace ag875x_PRINT_FEATURE_CH4_MEM Trace Graticule ag875x_PRINT_FEATURE_GRATICULE Reference Line ag875x_PRINT_FEATURE_REF_LINE Warning Message ag875x_PRINT_FEATURE_WARNING Text ag875x_PRINT_FEATURE_TEXT ASCII List Mode ag875x_PRINT_MODE_LIST Table Mode ag875x_PRINT_MODE_OP_PARMS Graph Mode ag875x_PRINT_MODE_GRAPH Quadrant Lower Left ag875x_PRINT_QUAD_LEFT_LOWER Quadrant Upper Left ag875x_PRINT_QUAD_LEFT_UPPER Quadrant Lower Right ag875x_PRINT_QUAD_RIGHT_LOWER Quadrant Upper Right ag875x_PRINT_QUAD_RIGHT_UPPER Full Page ag875x_PRINT_QUAD_FULL_PAGE Autofeed On ag875x_ON Autofeed Off ag875x_OFF Softkeys On ag875x_ON Softkeys Off ag875x_OFF Baud Rate 1200 ag875x_PRINT_BAUD_RATE_1200 Baud Rate 2400 ag875x_PRINT_BAUD_RATE_2400 Baud Rate 4800 ag875x_PRINT_BAUD_RATE_4800 Baud Rate 9600 ag875x_PRINT_BAUD_RATE_9600 Baud Rate19200 ag875x_PRINT_BAUD_RATE_19200 Handshake DTR-DSR ag875x_PRINT_HANDSHAKE_DTR_DSR Handshake XON-XOFF ag875x_PRINT_HANDSHAKE_XON_XOFF        	   
  :Parallel ag875x_PRINT_PORT_PARALLEL Serial ag875x_PRINT_PORT_SERIAL White ag875x_PRINT_COLOR_WHITE Cyan ag875x_PRINT_COLOR_CYAN Magenta ag875x_PRINT_COLOR_MAGENTA Blue ag875x_PRINT_COLOR_BLUE Yellow ag875x_PRINT_COLOR_YELLOW Green ag875x_PRINT_COLOR_GREEN Red ag875x_PRINT_COLOR_RED Black ag875x_PRINT_COLOR_BLACK   �    This function will plot the contents of the analyzer display as an HPGL plot string to an ASCII file.  A disk drive on the computer can be specified to receive the file, or alternatively the analyzer's internal floppy drive can receive it.

This plot can then be viewed using an HPGL viewer utility to open the file.

Note:  User may need to increase timeout value to 5 seconds or more by calling ag875x_timeOut to allow sufficient time for data transfer to complete.

Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    @    Name and location of where the file will be stored.  

For example, C:\temp\myPlot will store the file on the computer.  To store to the analyzer's internal floppy drive instead, use "INT:" as the drive specifier, such as INT:myPlot.  

NOTE:  Directories (folders) cannot be used when storing to the analyzer's drive.     A    Specifies whether or not to include softkey labels in the plot.   irr���  �    Error                            j (  �  �    vi                               jI `  � �    Plot File                        k� � �       Include Soft Keys                  	           0    ""    On VI_TRUE Off VI_FALSE    �    This function erases all 8 Softkeys labels.  It then may set one or more new Softkey labels depending on the options selected.  User may set Softkey # 1 through 8 individually, or all-at-once.

Optional Parameters:  YES     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    0    Selects the softkey number to be changed.

A value of 0 indicates all Softkey labels to be erased or set.  A value of 1 - 8 indicates an individual Softkey label to be set (all others will be blank).

Range:
  
0 = ag875x_SOFTKEY_MIN
8 = ag875x_SOFTKEY_MAX

Required Parameter:  NO

Default Value:  0

    W    Sets one or more softkey labels, or erases all softkeys.  Each softkey label may contain up to 10 characters maximum.

To set several softkeys at once, separate each label with the pipe symbol ("|").  Specifying the value of ag875x_ERASE_SOFTKEYS will erase all softkey labels.

Required Parameter:  NO

Default Value:  ag875x_ERASE_SOFTKEYS   m�r���  �    Error                            nd (  �  �    vi                               n� � � �      Softkey Number                   o� `  ���    Softkey                            	           0                          "ERASE SOFTKEYS"   �    This is not a typical VXIplug&play function in that it does not communicate with the instrument. It is provided as a customer convenience only.  

This function will parse any string.  It will return the portion of string up to the first occurrence of a one-character delimiter.  The default delimiter is a comma.  This function also returns the original string minus the just-parsed string.  In this way, subsequent calls will fully parse any string.  The variable parseNotDone will be set to 0 once the entire string has been parsed. 
 
The easiest way to understand this is with an example.  Assume the original string is "THIS,IS,A,TEST,123".  The chart below will show each result for each variable after each call to the function.

                  stringToParse      parsedString   parseNotDone
                  ----------------------------------------------
Before 1st call   THIS,IS,A,TEST,123      N/A           N/A
After 1st call    IS,A,TEST,123           THIS           1
After 2nd call    A,TEST,123              IS             1
After 3rd call    TEST,123                A              1
After 4th call    123                     TEST           1
After 5th call                            123            0     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().        Initially, contains the entire string to be parsed.  Each call will strip off the portion of the string preceding the next occurrence of the delimiter; resulting in the string length decreasing after each call until it equals a null string.

Required Parameter:  YES     �    Returns the portion of the stringToParse preceding the first  occurrence of the delimiter.  If the delimiter is not present in the string, this string will equal stringToParse.
     �    Returns a value indicating if the string is fully parsed or not.

Range:

0 = Fully parsed
1 = Not fully parsed (i.e., parameter stringToParse != null string.

Required Parameter:  YES     x    Contains a one-character delimiter that separates the items to be parsed.

Required Parameter:  NO

Default Value:  ""   wr���  �    Error                            w� (  �  �    vi                               w� $ ( �,    String To Parse                  x� $r �  �    Parsed String                    y� `r �  �    Parse Not Done                   z{ ` ( �  �    Delimiter                          	           0    	            	            	            ","   /    The reset function places the instrument in a default state. It may be necessary to send a device clear to ensure that the instrument can execute a reset, before issuing this function. A device clear can be issued by invoking ag875x_dcl(). Reset does not affect the status system or clear any errors.      �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().   }�r���  �    Error                            ~K (  �  �    vi                                 	           0   0    The self-test function causes the instrument to perform a self-test and returns the result of that self-test.  This is used to verify that an instrument is operating properly.  A failure may indicate a potential hardware problem.

For a list of possible self-test errors, consult the instrument manual.     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     I    Numeric result from self-test operation.

0 = no error ( test passed )      @    Self-test status message.  This is limited to 256 characters.    �6r���  �    Error                            �� (  �  �    vi                               � $ ( �  �    Test_result                      �^ ` ( � �    Test_message                       	           0    	            	               ag875x_error_query returns the error numbers and corresponding error messages from the error queue of the instrument. See the "Error Messages" section of the instrument's User's Guide for a listing of the instrument error numbers and messages.

Instrument errors may occur when a user places the instrument in an invalid state such as sending an improper sequence of coupled commands.

Instrument errors can be detected by polling. Automatic polling can be accomplished by using the "ag875x_errorQueryDetect()" function.      �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().         Instrument's error code.      A    Instrument's error message. This is limited to 256 characters.    ��r���  �    Error                            �U (  �  �    vi                               �� $ ( �       Inst_error_number                �� ` ( � �    Inst_error_message                 	           0    	            	            }    The error message function translates the error return value from an instrument driver function to a user-readable string.      �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     F    Instrument handle returned from ag875x_init(). This may be VI_NULL.      =    The error return value from an instrument driver function.      <    Error message string.  This is limited to 256 characters.    �{r���  �    Error                            � (  �  �    vi                               �h $ ( �  �    Driver_error_number              �� ` ( � �    Driver_error_message               	           0    0    	            u    The revision function returns the revision of the instrument driver and the firmware of the instrument being used.      �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     B    Instrument driver revision.  This is limited to 256 characters.      D    Instrument firmware revision.  This is limited to 256 characters.    �dr���  �    Error                            � (  �  �    vi                               �; $ � � ,    Driver_rev                       �� ` � � ,    Instr_rev                          	           0    	            	            �    The timeout function sets a minimum timeout value for driver I/O transactions in milliseconds. The timeout period may vary on computer platforms.

The default timeout period is 2 seconds.      �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     �    This value sets the I/O timeout for all functions in the driver. It is specified in milliseconds.

Range: 

MIN = ag875x_TIMEOUT_MIN   0
MAX = ag875x_TIMEOUT_MAX   2147483647   ��r���  �    Error                            �3 (  �  �    vi                               �k ` � �      Time_out                           	           0    ���      �           �    The timeout query function returns the timeout value for driver I/O transactions in milliseconds. The timeout period may vary on computer platforms.      �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     e    This is the minimum timeout period that the driver can be set to. It is specified in milliseconds.    ��r���  �    Error                            �( (  �  �    vi                               �` ` � �  �    Q_time_out                         	           0    	            �    This function enables (VI_TRUE) or disables (VI_FALSE) automatic instrument error checking.

If automatic error checking is enabled then the driver will query the instrument for an error at the end of each function call.      �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    +    Boolean which enables (VI_TRUE) or disables (VI_FALSE) automatic instrument error querying.

if VI_TRUE this will query the instrument for an error before returning from all driver functions.

if VI_FALSE this will not query the instrument for an error before returning from all driver functions.    �pr���  �    Error                            � (  �  �    vi                               �G ` �       ErrorQueryDetect                   	           0    On VI_TRUE Off VI_FALSE    o    This function indicates if automatic instrument error detection is enabled (VI_TRUE) or disabled (VI_FALSE).      �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     J    Boolean indicating if automatic instrument error querying is performed.    ��r���  �    Error                            �[ (  �  �    vi                               �� ` � �  �    QueryErrorQueryDetect              	           0    	           �    This function sends a device clear (DCL) to the instrument.

A device clear will abort the current operation and enable the instrument to accept a new command or query.

This is particularly useful in situations where it is not possible to determine the instrument state.

In this case, it is customary to send a device clear before issuing a new instrument driver function.  The device clear ensures that the instrument will be able to begin processing the new commands.      �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().   ��r���  �    Error                            �" (  �  �    vi                                 	           0    �    Returns a comma-delimited string corresponding to the contents of the Event Status Register.

For more information, please see the Programmer's Guide for your particular network analyzer.     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    �    Returns a comma-delimited string corresponding to the contents of the Event Status Register.

The driver returns the equivalent messages:
    Bit Value        Message

        0           "ESR_EMPTY"
        1           "ESR_OPC"
        2           "ESR_RQL"
        4           "ESR_QYE"
        8           "ESR_SQB"
       16           "ESR_EXE"
       32           "ESR_CME"
       64           "ESR_URQ"
      128           "ESR_PON"   ��r���  �    Error                            �9 (  �  �    vi                               �q ` � �  �    Errstr                             	           0    	            �    Returns a comma-delimited string corresponding to the contents of Event Status Register B.

For more information, please see the Programmer's Guide for your particular network analyzer.     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    M    Returns a string corresponding to the contents of Event Status Register B.

The driver returns the equivalent messages:
Bit Value    Message

0           "ESB_EMPTY"
1           "ESB_SNC"
2           "ESB_SRW"
4           "ESB_DEC"
8           "ESB_LF2"
16          "ESB_LF1"
32          "ESB_SF2"
64          "ESB_SF1"
128         "ESB_CPC"

For 8753/8719/8720/8722 analyzers having Firmware Revision 7.40
or higher, these additional bits are represented:
Bit Value      Message
           
256           "ESB_LF4"
512           "ESB_LF3"
1024          "ESB_SF4"
2048          "ESB_SF3"   ��r���  �    Error                            �P (  �  �    vi                               �� ` � �  �    Statstr                            	           0    	            B    This function returns the contents of the status byte register.      �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     B    The contents of the status byte are returned in this parameter.    ��r���  �    Error                            �� (  �  �    vi                               �� ` � �  �    Status_byte                        	           0    	            �    Sends "OPC?;" followed by the user-supplied OPC-compatible command to the instrument and returns VI_TRUE when the operation initiated by the OPC-compatible command has completed.      �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     c    Returns operation status.

Range:

VI_TRUE = Operation complete.
VI_FALSE = Operation is pending.     6    OPC-compatible command to be sent to the instrument.   �}r���  �    Error                            � (  �  �    vi                               �T ` � �  �    Instr Ready                      �� $ � �  �    oq Cmd String                      	           0    	            ""   S    Enables any number of bits in the analyzer's Status Byte, Event Status Register or Event Status Register B to generate a Service Request (SRQ) when a condition occurs that sets one of those bits.

For more information on Status Reporting, please see the Programmer's Guide for your 
particular network analyzer.

Optional Parameters:  NO     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().    �    To contain string specifiers for all bits which will be enabled to generate an SRQ.  The list can be delimited however the user desires (using commas, spaces, etc.), but delimiting is not required.
 
          Bit Specifiers for Event Status Register:
               Bit Value       Specifier
           
                   1           "ESR_OPC"
                   2           "ESR_RQL"
                   4           "ESR_QYE"
                   8           "ESR_SQB"
                  16           "ESR_EXE"
                  32           "ESR_CME"
                  64           "ESR_URQ"
                 128           "ESR_PON"

          Bit Specifiers for Event Status Register B:
               Bit Value       Specifier
           
                   1           "ESB_SNC"
                   2           "ESB_SRW"
                   4           "ESB_DEC"
                   8           "ESB_LF2"
                  16           "ESB_LF1"
                  32           "ESB_SF2"
                  64           "ESB_SF1"
                 128           "ESB_CPC"

          For 8719/8720/8722/8753 analyzers having Firmware
          Revision 7.40 or higher, Event Status Register B
          contains these additional bits:
               Bit Value       Specifier
           
                 256           "ESB_LF4"
                 512           "ESB_LF3"
                1024           "ESB_SF4"
                2048           "ESB_SF3"

          Bit Specifiers for Status Byte:
               Bit Value       Specifier
           
                   8           "STB_CEQ"
                  16           "STB_MOQ"
                 128           "STB_PRS"
   �Or���  �    Error                            �� (  �  �    vi                               �& ` � �  �    Statstr                            	           0    	            �    Passes the cmd_string to the instrument. Must be a NULL terminated C string.  Note that cmd_string cannot exceed 256 bytes in length.     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     4    SCPI command. (cannot exceed 256 bytes in length)    ��r���  �    Error                            �� (  �  �    vi                               �� ` ( � �    Cmd_string                         	           0    ""   �    Passes the cmd_str string to the instrument. This entry point WILL wait for a response which must be a string (character data).

A max of Size-1 bytes will be read from the instrument and the string will be NULL terminated (so its length can be found with strlen).

If more than size-1 bytes are generated by the instrument then the instrument output buffer will be cleared.

Note that the command string cannot exceed 256 bytes in length.      �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     5    SCPI command. (cannot exceed 256 bytes in length).      �    IN - length of param 4 (result) in bytes 2147483647L max. 

MAX = ag875x_CMDSTRING_Q_MAX   2147483647L
MIN = ag875x_CMDSTRING_Q_MIN   2
         Response from instrument    ��r���  �    Error                            �( (  �  �    vi                               �` $ ( � �    sq_cmd_string                    �� ` ( �      sq_size                          �/ � ( � �    sq_result                          	           0    " "    ���                  	            �    This entry point passes the string in cmd_str followed by a space and then the integer in val.

Note that either an int16 or 32 can be passed as the int16 will be promoted.

Also note that the cmd_str string cannot exceed 256 characters.      �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     5    SCPI command.  (cannot exceed 256 bytes in length)      e    Parameter for command 

MAX = ag875x_CMDINT_MAX   2147483647
MIN = ag875x_CMDINT_MIN   -2147483647
   ��r���  �    Error                            �- (  �  �    vi                               �e $ ( � �    i_cmd_string                     �� ` ( �      i_value                            	           0    ""    ����                 �    Passes the cmd_str string to the instrument. This command expects a response that can be returned as a 16 bit integer. Note that cmd_str cannot exceed 256 bytes in length.      �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     4    SCPI command. (cannot exceed 256 bytes in length)          Result of command.    ��r���  �    Error                            �f (  �  �    vi                               �� $ ( � �    iq_cmd_string                    �� ` ( �  �    iq_result                          	           0    ""    	            0    Instrument handle returned from ag875x_init().     �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     +    SCPI command.  Maximum size is 256 bytes.         Query result.   �� (  �  �    vi                               �&r���  �    Error                            �� $ ( � �    lq_cmd_string                    �� ` * �       lq_result                          0    	           ""    	               Passes the cmd_str string to the instrument.

This entry point passes the string in cmd_str followed by a space and then the Real in value.

Note that either a Real32 or 64 can be passed as the Real32 will be promoted.  Also note that the cmd_str string cannot exceed 256 characters.      �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     0    Command.  (cannot exceed 256 bytes in length)      a    Parameter for command 

MAX = ag875x_SCPIREAL_MAX   1e+300
MIN = ag875x_SCPIREAL_MIN   -1e+300
   �,r���  �    Error                            �� (  �  �    vi                               � $ ( � �    r_cmd_string                     �; ` ( �      r_val                              	           0    "" }s�k��;~7�<� u��7�<� u�                      �    Passes the  cmd_str string to the instrument.

This command expects a response that can be returned as a 64 bit real.

Note that cmd_str cannot exceed 256 bytes in length.      �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().     5    SCPI command.  (cannot exceed 256 bytes in length)          Result of command.    �pr���  �    Error                            � (  �  �    vi                               �G $ ( � �    rq_cmd_string                    Ȅ ` ( �  �    rq_result                          	           0    ""    	           �    The close function terminates the software connection to the instrument and deallocates system resources. It is generally a good programming habit to close the instrument handle when the program is done using the instrument.      �    VI_SUCCESS: No error.
Non VI_SUCCESS: Indicates error condition. To determine error message, pass the return value to routine "ag875x_error_message".     0    Instrument handle returned from ag875x_init().   ʃr���  �    Error                            �" (  �  �    vi                                 	           0 ����         B  
�     K-    init                            ����         a  V     K-    clock                           ����           �     K-    readID                          ����         "O  +(     K-    averageSmooth                   ����         .^  3�     K-    bandwidth                       ����         6�  ?b     K-    calkit                          ����         A�  Ch     K-    calCorrection                   ����         DC  J8     K-    calType_Q                       ����         K�  P�     K-    calInterpolation                ����         S=  Ym     K*    points                          ����         \H  ^B     K-    freqSweepType                   ����         _k  a�     K-    sweepType_Q                     ����         b�  jQ     K-    frequency                       ����         m   y�     K-    freqListSet                     ����         ~x  �3     K-    freqListQuery                   ����         �	  ��     K-    freqListSweepSeg                ����         ��  ��     K-    powerRange                      ����         �$  �      K-    powerSet                        ����         ��  �     K-    powerQuery                      ����         ��  ��     K-    powerCoupling                   ����         ��  �8     K-    portAttenuation                 ����         ȅ  �K     K-    sweepTime                       ����         а  Ռ     K-    trigger                         ����         �r  �     K-    powerSweep                      ����         �  ��     K-    sweepAltOrChop                  ����         �5  �     K-    sweepStep                       ����         �  �<     K-    takeSweep                       ����         �  �+     K-    displaySelect                   ����        w <     K-    display_Q                       ����        	� q     K-    dualSplit                       ����         �     K-    dualSplit4Parm                  ����        � �     K-    title                           ����        � !�     K-    message                         ����        "H @N     K-    markerSet                       ����        I� d� 	    K-    markerQuery                     ����        k3 t2     K-    measType                        ����        v�      K-    measType_Q                      ����        � �C     K-    channelSelect                   ����        �V �2     K-    auxChannel                      ����        �� ��     K-    analogPort                      ����        �� ��     K-    saveToReg                       ����        �� �;     K-    recallOrClearReg                ����        �� �� 	    K-    storeToDisk                     ����        �. ��     K-    loadOrPurgeFromDisk             ����        �� ��     K-    readLongLrnString               ����        �$ ��     K-    writeLongLrnString              ����        �i �k     K-    autoscale                       ����        �� �     K-    readTraceOrCalDataDos           ����        ۴ �     K-    writeTraceOrCalDataDos          ����        � ��     K-    readPowerMeterCal               ����        �� �M     K-    writePowerMeterCal              ����        � �     K-    limitTableSet                   ����        � �     K-    limitTableQuery                 ����        @ �     K-    limitStatusSet                  ����        !� *�     K-    limitStatusQuery                ����        0g []     K-    print                           ����        g{ k�     K-    plotToFile                      ����        l� q3     K-    softkey                         ����        rC z�     K-    stringParse                     ����        |u ~�     K-    reset                           ����        ~� ��     K-    self_test                       ����        �� ��     K-    error_query                     ����        �� ��     K-    error_message                   ����        �� ��     K-    revision_query                  ����        �� �#     K-    timeOut                         ����        �� ��     K-    timeOut_Q                       ����        �� �z     K-    errorQueryDetect                ����        �E ��     K-    errorQueryDetect_Q              ����        �� �Z     K-    dcl                             ����        �� �2     K-    esr_Q                           ����        �� ��     K-    esb_Q                           ����        �� �     K-    readStatusByte_Q                ����        �� ��     K-    opc_Q                           ����        �� ��     K-    srq_enable                      ����        �o �     K-    cmd                             ����        �� �R     K-    cmdString_Q                     ����        �� �     K-    cmdInt                          ����        � ��     K-    cmdInt16_Q                      ����       ���� �     K.    cmdInt32_Q                      ����        � Ť     K-    cmdReal                         ����        ƺ ȡ     K-    cmdReal64_Q                     ����        ɘ �Z     K-    close                                 �                                     DInitialize                          �System Functions                     DSet/Query Clock                      DRead Instrument ID                  <Average Functions                    DSet/Query Average Smooth             DSet/Query Bandwidth                 tCalibration Functions                DSet/Query Calkit                     DSet Cal Correction                   DQuery Cal Type                       DSet/Query Cal Interpolation         �Stimulus Functions                   DSet/Query Points                     DSet Frequency Sweep Type             DQuery Frequency Sweep Type           DSet/Query Frequency                  DSet Frequency List                   DQuery Frequency List                 DSweep Frequency List Segment         DSet/Query Power Range                DSet Power                            DQuery Power                          DSet/Query Power Coupling             DSet Port Attenuation                �Sweep Functions                      DSet/Query Sweep Time                 DSet/Query Trigger                    DSet/Query Power Sweep                DSet/Get Sweep Alternate Or Chop      DSet/Query Sweep Step                 DTake Sweep                          "Display Functions                    DSelect Display                       DQuery Display                        DSet Dual Split                       DSet Dual Split 4 Parm                DSet/Query Title                      DSet Message                         XMarker Functions                     DSet Marker                           DQuery Marker                        �Measurement Functions                DSet Measurement Type                 DQuery Measurement Type               DSelect Channel                       DSet/Query Aux Channel                DSet Analog Port                     �Save Recall Functions                DSave To Register                     DRecall Or Clear Register             DStore To Disk                        DLoad Or Purge From Disk              DRead Long Learn String               DWrite Long Learn String             Scale Reference Functions            DSet Auto Scale                      ]Array Data Functions                 DRead Trace or Cal Data DOS           DWrite Trace or Cal Data DOS          DRead Power Meter Cal                 DWrite Power Meter Cal               �Limit Functions                      DSet Limit Table                      DQuery Limit Table                    DSet Limit Status                     DQuery Limit Status                  �User IO Functions                    DSet/Query Print                      DPlot To File                         DSet/Erase Softkey                   Parse                                DString Parse                        uUtility                              DReset                                DSelf Test                            DError Query                          DError Message                        DRevision Query                       DSet Timeout                          DQuery Timeout                        DSet Error Query Detect               DQuery Error Query Detect             DDevice Clear                         DESR Query                            DESB Query                            DRead Status Byte                     DOPC?                                 DSRQ Enable                          �Passthrough Functions                DSend String                          DQuery String                         DSend Integer                         DQuery Int16                          DQuery Int32                          DSend Real                            DQuery Real64                         DClose                           