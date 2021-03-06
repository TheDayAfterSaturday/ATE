s��        ��  U [�  K�   �   ����                               hpesa       hpesa                                         � � ��ViInt16     � ��ViPInt16     
�  	ViInt16 []  �  � ��ViInt32     � ��ViPInt32     
�  	ViInt32 []  � � ��ViReal64     	� 	��ViPReal64     �  
ViReal64 []     � ��ViString     	� 	��ViBoolean     
� 
��ViPBoolean     � 	 ViBoolean []     � ��ViRsrc     	� 	��ViSession     � ��ViStatus     � ��ViPChar     	�  ViChar []   t    hpesa Instrument Driver
Copyright @1999-2000, Agilent Technologies
Driver Version A.03.00

ESA Spectrum Analyzer

     �    Utility functions perform several standard P&P tasks and a variety of HP utility tasks.  They also include HP's instrument command passthrough functions which allow generic access to the instrument's command set.
     �    HP's instrument command passthrough functions.

These functions pass commands directly to the instrument, thus allowing generic access to the instrument's command set.
     �    The initialize function initializes the software connection to the instrument and optionally verifies that instrument is in the system.  In addition, it may perform any necessary actions to place the instrument in its reset state.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.
     �    The instrument's VISA resource description.

The default for this instrument is "GPIB0::18::INSTR".  If you change the GPIB address of this instrument, you must change the default resource description as well.     �    If VI_TRUE, perform a revision query to verify that the instrument is the one expected by the driver.

If VI_FALSE, do not perform a revision query.     z    If VI_TRUE, perform a reset operation while initializing the instrument.

If VI_FALSE, do not perform a reset operation.     p    The instrument's VISA session handle.  This is VI_NULL if an error occurred during the initialization process.    �k���  �    Status                            � 7 .  �  �    Resource Name                     � 7# �       ID Query                          J 7� �       Reset Device                      � � � �  �    Instrument Handle                  	           "GPIB0::18::INSTR"  % Do Query VI_TRUE Skip Query VI_FALSE  # Reset VI_TRUE Don't Reset VI_FALSE    	            L    This function enables or disables checking of various instrument settings.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().    S    The ID of the instrument setting that is to be affected. Possible values are:

0 = hpesa_VERIFY_APPLICATION.

This verification being enabled will result in the Instrument being queried for it's current application when all 'measurement' functions are called. (SPECTRUM AND WAVEFORM are exceptions.) I.e. CHP for cdmaOne or TXP for GSM.          Sets the state of the verification.

VI_TRUE - turns specified verification on.
VI_FALSE - turns specified verification off.
    k���  �    Status                            � "  �  �    Instrument Handle                 E $  � �    Verify ID                         � ` Z �       Verify On                          	           0               ,Verify Application hpesa_VERIFY_APPLICATION    On VI_TRUE Off VI_FALSE    =    This function returns the state of the specified verify ID.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     o    Determines which instrument ID verification to retrieve.  Possible values are:

0 = hpesa_VERIFY_APPLICATION
     M    Returns the State as specified by the verifyIDQ.

0 = VI_FALSE
1 = VI_TRUE
    �k���  �    Status                            � "  �  �    Instrument Handle                 � $  � �    Verify ID Q                       F $h �  �    Verify On Query                    	           0               ,Verify Application hpesa_VERIFY_APPLICATION    	           �    This method selects the measurement application by enumerated choice. The available choices depend upon which modes are installed in the instrument. Use "hpesa_InstrumentGetAllApplications" to determine applications installed.

If you are using the SCPI status registers and the analyzer mode is changed, the status bits should be read, and any errors resolved, prior to switching modes. Error conditions that exist prior to switching modes cannot be detected using the condition registers after the mode change. This is true unless they recur after the mode change, although transitions of these conditions can be detected using the event registers.

Changing modes resets all SCPI status registers and mask registers to their power-on defaults. Hence, any event or condition register masks must be re-established after a mode change. Also note that the power up status bit is set by any mode change, since that is the default state after power up.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Application mode to set.

hpesa_APPLICATION_SA - Spectrum analyzer mode
hpesa_APPLICATION_CDMA - CDMA One mode
hpesa_APPLICATION_GSM - GSM Mode
    �k���  �    Status                            e "  �  �    Instrument Handle                 � ` � � �    Instrument Application             	           0               aSpectrum Analyzer hpesa_APPLICATION_SA CDMA One hpesa_APPLICATION_CDMA GSM hpesa_APPLICATION_GSM    3    This method returns the current measurement mode.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     }    Returns the current instrument application.

0 = hpesa_APPLICATION_SA
1 = hpesa_APPLICATION_CDMA
2 = hpesa_APPLICATION_GSM
    �k���  �    Status                            � "  �  �    Instrument Handle                 � ` � �  �    Instrument Application Query       	           0    	            d    This method returns a comma separated list which contains the names of all installed applications.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     2    The maximum size of the applicationsQuery array.     J    Returns a comma separated list of all modes installed on the instrument.     yk���  �    Status                            "W "  �  �    Instrument Handle                 "� $ � �  �    Applications Max Size Q           "� u  � �    Applications Query                 	           0    0    	            D    This method sets the radio conditions for CDMA One measurements.

    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().        Selects the standard variant that applies to the radio to be tested.

hpesa_CDMA1_RADIO_BAND_IS95A - IS-95A Cellular

hpesa_CDMA1_RADIO_BAND_JSTD8 - J-STD-008 PCS

hpesa_CDMA1_RADIO_BAND_C95B - EIA/TIA-95B Cellular

hpesa_CDMA1_RADIO_BAND_P95B - EIA/TIA-95B (PCS)

hpesa_CDMA1_RADIO_BAND_CKOR - TTA.KO-06.0003 (Korea Cell)

hpesa_CDMA1_RADIO_BAND_PKOR - TTA.KO-06.0013 (Korea PCS)

hpesa_CDMA1_RADIO_BAND_P95C - EIA/TIA-95C (PCS)

hpesa_CDMA1_RADIO_BAND_C95C - EIA/TIA-95C Cellular

hpesa_CDMA1_RADIO_BAND_ARIBT53 - ARIB STD-T53     �    Selects the type of radio device to be tested.

hpesa_CDMA1_RADIO_DEVICE_BASE - Base transceiver station test.
hpesa_CDMA1_RADIO_DEVICE_MOBILE - Mobile transceiver station test.
     Q    Sets the cdmaOne channel bandwidth in Hz. Instrument range is 1 kHz to 50 MHz.     $ok���  �    Status                            &M "  �  �    Instrument Handle                 &� $  � �    cdma1 Radio Standard Band         (� `  � �    cdma1 Radio Device                )m �  �  �    cdma1 Radio Channel BW             	           0            	  `TIA-IS-95A hpesa_CDMA1_RADIO_BAND_IS95A J-STD-008 hpesa_CDMA1_RADIO_BAND_JSTD8 TIA-95B Cell hpesa_CDMA1_RADIO_BAND_C95B TIA-95B PCS hpesa_CDMA1_RADIO_BAND_P95B Korea Cell hpesa_CDMA1_RADIO_BAND_CKOR Korea PCS hpesa_CDMA1_RADIO_BAND_PKOR 95-C PCS hpesa_CDMA1_RADIO_BAND_P95C 95-C Cell hpesa_CDMA1_RADIO_BAND_C95C ARIB T53 hpesa_CDMA1_RADIO_BAND_ARIBT53               JBase hpesa_CDMA1_RADIO_DEVICE_BASE Mobile hpesa_CDMA1_RADIO_DEVICE_MOBILE    	1.2288e6    >    This method retrieves the current CDMA One radio conditions.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().    J    Returns the current standard band.

0 = hpesa_CDMA1_RADIO_BAND_IS95A
1 = hpesa_CDMA1_RADIO_BAND_JSTD8
2 = hpesa_CDMA1_RADIO_BAND_C95B
3 = hpesa_CDMA1_RADIO_BAND_P95B
4 = hpesa_CDMA1_RADIO_BAND_CKOR
5 = hpesa_CDMA1_RADIO_BAND_PKOR
6 = hpesa_CDMA1_RADIO_BAND_P95C
7 = hpesa_CDMA1_RADIO_BAND_C95C
8 = hpesa_CDMA1_RADIO_BAND_ARIBT53     v    Returns the current radio device under test.

0 = hpesa_CDMA1_RADIO_DEVICE_BASE
1 = hpesa_CDMA1_RADIO_DEVICE_MOBILE
     5    Returns the current radio channel bandwidth in Hz.
    ,�k���  �    Status                            .� "  �  �    Instrument Handle                 /" $h �  �    cdma1 Radio Standard Band Query   0t jh �  �    cdma1 Radio Device Query          0� �h �  �    cdma1 Radio Channel BW Query       	           0    	            	            	           E    This methods sets the input conditions for CDMA One measurements.

    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Selects the RF port power range to be set either automatically or
manually.

VI_TRUE - power range is automatically set as determined by the actual measured power level at the start of a measurement.

VI_FALSE - power range is manually set.
     �    Sets the maximum RF total power in dBm. The instrument range is -200 to +100 dBm. This value is set at its auto value if cdma1InputRFRangeState is set VI_TRUE.     �    Sets the RF input attenuator in dB. The instrument range is 0 to 75 in 5 dB steps. This value is set at its auto value if cdma1InputRFRangeState is set VI_TRUE.    2�k���  �    Status                            4� "  �  �    Instrument Handle                 4�  S �       cdma1 Input RF Range State        5� `  �  �    cdma1 Input Max Total Pwr         6� �  �  �    cdma1 Input RF Atten               	           0   Auto VI_TRUE Manual VI_FALSE    30    5.0    Q    This method retrieves the current input conditions for CDMA One measurements.

    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     f    Returns whether the RF port power range is set automatically or manually.

0 = VI_FALSE
1 = VI_TRUE
     4    Returns the current maximum RF total power in dBm.     2    Returns the current RF input attenuation in dB.
    8�k���  �    Status                            :� "  �  �    Instrument Handle                 :� $h �  �    cdma1 Input RF Rnge State Query   ;f jh �  �    cdma1 Input Max Total Pwr Query   ;� �h �  �    cdma1 Input RF Atten Query         	           0    	            	           	           u    This method sets the base station external attenuation and mobile station external gain for CDMA One measurements.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Sets the correction equal to the external attenuation used when
measuring base stations in dB. The instrument range is -50 to +100 dB.
     y    Sets the gain of the external preamplifier for mobile station
measurements in dB. The instrument range is 0 to 100 dB.
    =�k���  �    Status                            ?u "  �  �    Instrument Handle                 ?� $  �  �    cdma1 Input BS Ext Gain           @P `  �  �    cdma1 Input Ext Gain               	           0    0.0    0.0    �    This method retrieves the current the base station external attenuation and mobile station external gain for CDMA One measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     S    Returns the current external attenuation used when measuring base stations in dB.     ^    Returns the current gain of the external preamplifier for mobile station measurements in dB.    BQk���  �    Status                            D/ "  �  �    Instrument Handle                 Dy $h �  �    cdma1 Input BS Ext Gain Query     D� jh �  �    cdma1 Input Ext Gain Query         	           0    	           	           A    This method sets the CDMA One external trigger configuration.

    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Sets the trigger delay, in seconds, when using the external trigger input. Instrument range is 0 ns to 429 s. Anything less than 300 ns is equal to off. Default is 0 s.     �    Sets the trigger slope when using the external trigger input. Instrument default is positive.

hpesa_TRIG_SLOPE_POS - Sets the external trigger to positive.

hpesa_TRIG_SLOPE_NEG - Sets the external trigger to negative.
    F�k���  �    Status                            H^ "  �  �    Instrument Handle                 H� $  �  �    cdma1 Trig External Delay         IZ `  � �    cdma1 Trig External Slope          	           0    0               <Positive hpesa_TRIG_SLOPE_POS Negative hpesa_TRIG_SLOPE_NEG    N    This method retrieves the current CDMA One external trigger configuration.

    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Returns current trigger delay, in seconds, when using the external trigger input. Instrument range is 0 ns to 429 s. Anything less than 300 ns is equal to off. Default is 0 s.     �    Returns the current trigger slope when using the external trigger input. Instrument default is positive.

0 = hpesa_TRIG_SLOPE_POS
1 = hpesa_TRIG_SLOPE_NEG
    K�k���  �    Status                            M� "  �  �    Instrument Handle                 M� $h �  �    cdma1Trig External Delay Query    N� jh �  �    cdma1Trig External Slope Query     	           0    	           	            A    This method sets up the CDMA One RF Burst (wideband) trigger.

    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Sets the trigger delay, in seconds, when using the RF burst (wideband) trigger. Instrument range is 0 ns to 429 s. Anything less than 300 ns is equal to off. Default is 0 s.     �    Sets the trigger level, in dB, when using the RF burst (wideband) trigger. The value is relative to the peak of the signal. RF Burst is also known as RF Envelope. Instrument range is -25 to 0 dB, and default is - 6dB.    P�k���  �    Status                            Rv "  �  �    Instrument Handle                 R� $  �  �    cdma1 Trig  RFBurst Delay         Sw `  �  �    cdma1 Trig RFBurst Level           	           0    0.0    -6.0    Y    This method retrieves the current CDMA One RF Burst (wideband) trigger configuration.

    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     \    Returns the current trigger delay, in seconds, when using the RF burst (wideband) trigger.     �    Returns the current trigger level, in dB, when using the RF burst (wideband) trigger. The value is relative to the peak of the signal. RF Burst is also known as RF Envelope.    U�k���  �    Status                            W� "  �  �    Instrument Handle                 W� $h �  �    cdma1 Trig RFBurst Delay Query    X; jh �  �    cdma1 Trig RFBurst Level Query     	           0    	           	           B    This method sets the CDMA One Frame Timer trigger configuration.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().        Sets the frame period, in seconds, when using the external frame timer trigger. If the traffic rate is changed, the value of the frame period is initialized to the preset value. The instrument range is 50 us to 13.65333 s, and the default is 26.6666667 ms.    �    Sets the trigger delay, in seconds, to be used in zero span measurements to adjust the active burst within a mask. Use positive values to achieve trigger delay (that is, to measure later than the trigger source event) and use negative values to achieve pre-trigger (that is, to measure earlier than the trigger source event). Instrument range is 0 ns to 429. Anything less than 300 ns is equal to off. Default is 0 s.     �    Sets the trigger slope when using the external frame timer trigger. Instrument default is positive.

hpesa_TRIG_SLOPE_POS - Sets the external frame timer slope to positive.

hpesa_TRIG_SLOPE_NEG - Sets the external frame timer slope to negative.
    Z9k���  �    Status                            \ "  �  �    Instrument Handle                 \a $  �  �    cdma1 Trig Frame Timer Period     ]k `  �  �    cdma1 Trig Frame Timer Delay      _ �  � �    cdma1 Trig Frame Timer Slope       	           0     0.0266666667    0               <Positive hpesa_TRIG_SLOPE_POS Negative hpesa_TRIG_SLOPE_NEG    G    This method retrieves the CDMA One Frame Timer trigger configuration.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().    
    Returns the current frame period, in seconds, when using the external frame timer trigger. If the traffic rate is changed, the value of the frame period is initialized to the preset value. The instrument range is 50 us to 13.65333 s, and the default is 26.6666667     �    Returns the current trigger delay, in seconds, to be used in zero span measurements to adjust the active burst within a mask. Use positive values to achieve trigger delay (that is, to measure later than the trigger source event) and use negative values to achieve pre-trigger (that is, to measure earlier than the trigger source event). Instrument range is 0 ns to 429. Anything less than 300 ns is equal to off. Default is 0 s.     �    Returns the current trigger slope when using the external frame timer trigger.

0 = hpesa_TRIG_SLOPE_POS
1 = hpesa_TRIG_SLOPE_NEG
    a�k���  �    Status                            c� "  �  �    Instrument Handle                 d h �  �    cdma1Trig Frame Timer Per Query   e [h �  �    cdma1Trig Frame Timer Del Query   f� �h �  �    cdma1Trig Frame Timer Slp Query    	           0    	           	           	            ?    This method sets the demod setting for CDMA One measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Sets the time reference to the external frame synchronization source.

hpesa_DEMOD_TIME_REF_ESEC - External frame synchronization source.
hpesa_DEMOD_TIME_REF_OFF - Turns off the synchronization source.
    a    Selects the trigger source used to control data acquisitions. This is only applicable when (cdma1DemodTimeRefSync is set to - hpesa_DEMOD_TIME_REF_OFF.)

hpesa_DEMOD_TRIG_SOURCE_IMMEDIATE - the next data acquisition is immediately taken, capturing the signal asynchronously (also called free run).

hpesa_DEMOD_TRIG_SOURCE_RFBURST - internal wideband RF burst envelope trigger that has automatic level control for periodic burst signals. (Also called BCT)

hpesa_DEMOD_TRIG_SOURCE_EXTERNAL - rear panel external trigger input.

hpesa_DEMOD_TRIG_SOURCE_FRAME - internal frame trigger from front panel input.
     =    Sets the PN Offset in chips. Instrument range is 0 to 511.
    h�k���  �    Status                            j� "  �  �    Instrument Handle                 k	 $ ! � �    cdma1 Demod Time Ref Sync         k� `  � �    cdma1 Demod Trig Source           nG �  �  �    cdma1 Demod PN Offset              	           0               =ESEC hpesa_DEMOD_TIME_REF_ESEC None hpesa_DEMOD_TIME_REF_OFF              �Free Run hpesa_DEMOD_TRIG_SOURCE_IMMEDIATE RF Burst hpesa_DEMOD_TRIG_SOURCE_RFBURST External hpesa_DEMOD_TRIG_SOURCE_EXTERNAL Frame Timer hpesa_DEMOD_TRIG_SOURCE_FRAME    0    K    This method retrieves the current demod values for CDMA One measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Returns the current time reference to the external frame synchronization source.

0 = hpesa_DEMOD_TIME_REF_ESEC
1 = hpesa_DEMOD_TIME_REF_OFF
     �    Returns the current trigger source used to control data acquisition.

0 = hpesa_DEMOD_TRIG_SOURCE_IMMEDIATE
1 = hpesa_DEMOD_TRIG_SOURCE_RFBURST
2 = hpesa_DEMOD_TRIG_SOURCE_EXTERNAL
3 = hpesa_DEMOD_TRIG_SOURCE_FRAME
     )    Returns the current PN offset in chips.    qk���  �    Status                            r� "  �  �    Instrument Handle                 s) h �  �    cdma1 Demod Time Ref Sync Query   s� [h �  �    cdma1 Demod Trig Source Query     t� �h �  �    cdma1 Demod PN Offset Query        	           0    	            	            	            F    This method sets the RF channel frequency for CDMA One measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Sets the new channel frequency, in Hz. Instrument range is the same as the full frequency span, and the default is 870.03 MHz (radio device type base) for cdmaOne measurements.    v^k���  �    Status                            x< "  �  �    Instrument Handle                 x� ` � �  �    cdma1 Channel Frequency            	           0    	8.7003e8    K    This method retrieves the RF channel frequency for CDMA One measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     /    Returns the current channel frequency, in Hz.    zOk���  �    Status                            |- "  �  �    Instrument Handle                 |w ` � �  �    cdma1 Channel Frequency Query      	           0    	          �    This method sets up the instrument for CDMA One channel power measurements (CHP).

This method stops the current measurement and sets up the instrument for the Channel Power (CHP) measurement using the factory default instrument settings. It does not initiate the taking of measurement data. This method also turns the averaging function on and sets the number of averages to 10 for all measurements.

    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().    k���  �    Status                            �� "  �  �    Instrument Handle                  	           0   S    This method measures the total RMS power in a specified integration bandwidth. User must be in the cdmaOne mode to use this function. 

The user can select one of three types of measurement modes: Measure, Read, or Fetch.

This method returns the CHP measurement results specified by the "cdma1CHPResultsType" parameter as a real array.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    This value temporarily changes the VISA timeout setting for the duration of the instrument measurement. The user needs to set this value to an appropriate time that will be longer then the expected measurement time. Units are in seconds.    �    Selects measurement type. Note that for hpesa_FETCH type the instrument should already be in this measurement mode else the function will time out. User can select this measurement mode by first using the "MEASURE" or "READ" types or call the hpesa_cdma1_CHPConfigure function.

hpesa_MEASURE - Stops current measurement, changes to this selected measurement, sets up instrument using factory defaults, makes measurement, returns measurement results.

hpesa_READ - Stops current measurement,  changes to this selected measurement, uses instrument settings from last measurement of this type, makes measurement, returns measurements results.

hpesa_FETCH - Returns measurements results only. No new measurement is initiated.
     j    Returns the total channel power in the specified integration bandwidth (dBm/<integration bandwidth> Hz).     G    Returns the power (in dBm/Hz) in the specified integration bandwidth.    �k���  �    Status                            �� "  �  �    Instrument Handle                 �, $  �  �    cdma1 CHP Measure Timeout         �# `  � �    cdma1 CHP Measure Type            � $h �  �    cdma1 CHP Channel Power Q         �s `h �  �    cdma1 CHP Pow Spect Density Q      	           0    30.0               8Measure hpesa_MEASURE Read hpesa_READ Fetch hpesa_FETCH    	           	          O    This method measures the total RMS power in a specified integration bandwidth. User must be in the cdmaOne mode to use this function. 

User can select one of three types of measurement modes: Measure, Read, or Fetch.

This method returns the CHP measurement results specified by the "cdma1CHPResultsType" parameter as a real array.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    This value temporarily changes the VISA timeout setting for the duration of the instrument measurement. The user needs to set this value to an appropriate time that will be longer then the expected measurement time. Units are in seconds.    �    Selects measurement type. Note that for hpesa_FETCH type the instrument should already be in this measurement mode else the function will time out. User can select this measurement mode by first using the "MEASURE" or "READ" types or call the hpesa_cdma1_CHPConfigure function.

hpesa_MEASURE - Stops current measurement, changes to this selected measurement, sets up instrument using factory defaults, makes measurement, returns measurement results.

hpesa_READ - Stops current measurement,  changes to this selected measurement, uses instrument settings from last measurement of this type, makes measurement, returns measurements results.

hpesa_FETCH - Returns measurements results only. No new measurement is initiated.
    z    Determines the format of the data returned in cdma1CHPDataResults.

hpesa_RESULTS_TYPE_0: Not supported by instrument.

hpesa_RESULTS_TYPE_1: Returns 2 scalar results:
1. Channel Power is the total channel power in the specified integration bandwidth (dBm/<integration bandwidth> Hz).
2. Power Spectral Density is the power (in dBm/Hz) in the specified integration bandwidth.
     Q    Trace data returned by measurement, formatted according to cdma1CHPResultsType.     5    Specifies the maximum size of CHPDataResults array.     2    Returns the actual size of CHPDataResults array.    ��k���  �    Status                            �� !  �  �    Instrument Handle                 �� $  �  �    cdma1 CHP Measure Trace Timeout   �� `  � �    cdma1 CHP Measure Trace Type      �� �  � �    cdma1 CHP Results Type            �N $h �  �    cdma1 CHP Data Results            �� �  �  �    cdma1 CHP Data Results Max Size   �� `h �  �    cdma1 CHP Data Results Size        	           0    30.0               8Measure hpesa_MEASURE Read hpesa_READ Fetch hpesa_FETCH              HResults Type 0 hpesa_RESULTS_TYPE_0 Results Type 1 hpesa_RESULTS_TYPE_1    	            2    	            �    This method sets up averaging for CDMA One channel power (CHP) measurements. User can control the number of averages, turn on and off averaging, and set the terminal control mode for averaging.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Sets the number of data acquisitions that will be averaged. After the specified number of average counts, the averaging mode (terminal control) setting determines the averaging action. The instrument range is 1 to 1000.     \    Turns averaging on or off.

VI_TRUE - Turns averaging on.
VI_FALSE - Turns averaging off.
    I    Selects the type of terminal control for averaging.

hpesa_AVERAGE_EXPONENTIAL  - Each successive data acquisition after the average count is reached, is exponentially weighted and combined with the existing average.

hpesa_AVERAGE_REPEAT - After reaching the average count, the averaging is reset and a new average is started
    �ek���  �    Status                            �C "  �  �    Instrument Handle                 �� $ B �      cdma1 CHP Average Count           �r ` S �       cdma1 CHP Average State           �� �  � �    cdma1 CHP Average Mode             	           0      �      
          On VI_TRUE Off VI_FALSE               BExponential hpesa_AVERAGE_EXPONENTIAL Repeat hpesa_AVERAGE_REPEAT    ^    This method retrieves the averaging setup for the CDMA One channel power (CHP) measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     _    Returns the current number of data acquisitions being averaged for CDMA One CHP measurements.     ]    Returns the current average state for CDMA One CHP measurements.

0 = VI_FALSE
1 = VI_TRUE
     �    Returns the current type of terminal control for CDMA One CHP averaging.

0 = hpesa_AVERAGE_EXPONENTIAL
1 = hpesa_AVERAGE_REPEAT
    �*k���  �    Status                            � "  �  �    Instrument Handle                 �R $h �  �    cdma1 CHP Average Count Query     �� `h �  �    cdma1 CHP Average State Query     � �h �  �    cdma1 CHP Average Mode Query       	           0    	            	            	            [    This method sets the integration bandwidth for CDMA One channel power (CHP) measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Sets the new integration bandwidth, in Hz. The instrument's range is 1 kHz to instrument span maximum, and the default is 1.23 MHz.    �Jk���  �    Status                            �( "  �  �    Instrument Handle                 �r _ � �  �    cdma1 CHP Integration BW           	           0    1.23e6    `    This method retrieves the integration bandwidth for CDMA One channel power (CHP) measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     `    Returns the current integration bandwidth for CDMA One channel power (CHP) measurements, in Hz    �!k���  �    Status                            �� "  �  �    Instrument Handle                 �I e � �  �    cdma1 CHP Integration BW Query     	           0    	           �    This method sets the span frequency for CDMA One channel power (CHP) measurements.  If resolution bandwidth is set to a value less than 1 kHz, then the maximum span is limited to 5 MHz.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Sets the new span frequency, in Hz. Instrument range is the integration bandwidth (IBW) to IBW x 400 and the default is 2 MHz.    �0k���  �    Status                            � "  �  �    Instrument Handle                 �X ` � �  �    cdma1 CHP Frequency Span           	           0    2e6    b    This method retrieves the current span frequency for CDMA One channel power (CHP) measurements.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     -    Returns the current span frequency, in Hz.     �k���  �    Status                            �� "  �  �    Instrument Handle                 �) ` � �  �    cdma1 CHP Frequency Span Query     	           0    	           T    This method sets the trigger source for CDMA One channel power (CHP) measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Sets the trigger source for CDMA One channel power measurements.

hpesa_CHP_TRIG_IMMEDIATE - the next data acquisition is immediately taken (also called Free Run).

hpesa_CHP_TRIG _EXTERNAL - rear panel external trigger input.
    �vk���  �    Status                            �T "  �  �    Instrument Handle                 �� ` � � �    cdma1 CHP Trigger Source           	           0               CFree Run hpesa_CHP_TRIG_IMMEDIATE External hpesa_CHP_TRIG_EXTERNAL    T    This method sets the trigger source for CDMA One channel power (CHP) measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Returns the current trigger source for CDMA One channel power measurements.

0 = hpesa_CHP_TRIG_IMMEDIATE
1 = hpesa_CHP_TRIG_EXTERNAL
    ��k���  �    Status                            �� "  �  �    Instrument Handle                 � ` � �  �    cdma1 CHP Trigger Source Query     	           0    	           �    This method sets up the instrument for CDMA One modulation accuracy measurements (RHO).

This function stops the current measurement and sets up the instrument for the Modulation Accuracy (RHO) measurement using the factory default instrument settings. It does not initiate the taking of measurement data. This command also turns the averaging function on and sets the number of averages to 10 for all measurements.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().    �k���  �    Status                            �� "  �  �    Instrument Handle                  	           0   �    This method measures the CDMA One modulation accuracy of the transmitter by checking the magnitude and phase error and the EVM (error vector magnitude). User must be in the cdmaOne application mode to use these commands.

User can select one of three types of measurement modes: Measure, Read, or Fetch.

This function returns 7 RHO measurement scalar results, as described in the parameters below.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    This value temporarily changes the VISA timeout setting for the duration of the instrument measurement. The user needs to set this value to an appropriate time that will be longer then the expected measurement time. Units are in seconds.    �    Selects measurement type. Note that for hpesa_FETCH type the instrument should already be in this measurement mode else the function will time out. User can select this measurement mode by first using the "MEASURE" or "READ" types or call the hpesa_cdma1_RHOConfigure function.

hpesa_MEASURE - Stops current measurement, changes to this selected measurement, sets up instrument using factory defaults, makes measurement, returns measurement results.

hpesa_READ - Stops current measurement,  changes to this selected measurement, uses instrument settings from last measurement of this type, makes measurement, returns measurements results.

hpesa_FETCH - Returns measurements results only. No new measurement is initiated.
    P    Returns RHO (no units) representing the correlation of the measured power compared to the ideal pilot channel. The calculation is performed after the complimentary filter, so it is IS95 compliant. It is performed at the decision points in the pilot waveform. If averaging is on, this is the average of the individual RMS measurements.     �    Returns the time offset (with units of seconds) which is the time delay of the even second clock with respect to the start of the short code PN sequences, at offsets from the 15 zeros in the characteristic phase of the sequence.     �    Returns the frequency error of the measured signal, with units of Hz. This is based on the linear best fit of the uncorrected measured phase.     i    Returns the carrier feedthrough has units of dB and is the DC error offset of I and Q, from the origin.    �    Returns the error vector magnitude (EVM) as units of percent. The calculation is based on the composite of the phase error and magnitude error, between the measured signal and the ideal pilot channel. It is performed after the complimentary filter, which removes the intersymbol interference in the modulated data. If averaging is on, this is the average of the individual RMS measurements.    �    Returns the error vector magnitude (EVM) as units of percent. The calculation is based on the composite of the phase error and magnitude error, between the measured signal and the ideal pilot channel. It is performed after the complimentary filter, which removes the intersymbol interference in the modulated data. If averaging is on, this is the average of the individual RMS measurements.    J    Returns the phase error (with units in percent), which is the RMS phase error between the measured phase and the ideal phase. The calculation is performed after the complimentary filter, which removes the intersymbol interference in the modulated data. If averaging is on, this is the average of the individual RMS measurements.    �Ck���  �    Status                            �! "  �  �    Instrument Handle                 �k $  �  �    cdma1 RHO Measure Timeout         �b `  � �    cdma1 RHO Measure Type            �@ $ � �  �    cdma1 RHO Mod Accuracy Query      Ș ` � �  �    cdma1 RHO Time Offset Query       Ɇ � � �  �    cdma1 RHO Freq Error Query        � $h �  �    cdma1 RHO Carr Feedthru Query     ʎ `h �  �    cdma1 RHO Err Vect Mag Query      � �h �  �    cdma1 RHO Mag Error Query         ͮ �h 	�  �    cdma1 RHO Phase Error Query        	           0    30               8Measure hpesa_MEASURE Read hpesa_READ Fetch hpesa_FETCH    	           	           	           	           	           	           	          �    This method measures the CDMA One modulation accuracy of the transmitter by checking the magnitude and phase error and the EVM (error vector magnitude). User must be in the cdmaOne application mode to use these commands.

User can select one of three types of measurement modes: Measure, Read, or Fetch.

Function returns the ACPR measurement results specified by the "cdma1RHOResultsType" parameter as a real array.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    This value temporarily changes the VISA timeout setting for the duration of the instrument measurement. The user needs to set this value to an appropriate time that will be longer then the expected measurement time. Units are in seconds.    �    Selects measurement type. Note that for hpesa_FETCH type the instrument should already be in this measurement mode else the function will time out. User can select this measurement mode by first using the "MEASURE" or "READ" types or call the hpesa_cdma1_RHOConfigure function.

hpesa_MEASURE - Stops current measurement, changes to this selected measurement, sets up instrument using factory defaults, makes measurement, returns measurement results.

hpesa_READ - Stops current measurement,  changes to this selected measurement, uses instrument settings from last measurement of this type, makes measurement, returns measurements results.

hpesa_FETCH - Returns measurements results only. No new measurement is initiated.
    �    Determines the format of the values returned in cdma1_RHODataResults.

hpesa_RESULTS_TYPE_0:
Returns unprocessed I/Q trace in volts. The I values are listed first in each pair, using the 0 through even-indexed values. The Q values are the odd-indexed values.
The standard sample rate is 4.9152 MHz and the trace length is determined by the current measurement interval.
The number of trace points depends on the current measurement interval and points per chip settings.
The numbers are sent in the following order:
In-phase (I) sample, of symbol 0 decision point
Quadrature-phase (Q) sample, of symbol 0 decision point
...
In-phase (I) sample, of symbol 1 decision point
Quadrature-phase (Q) sample, of symbol 1 decision point
...
The trace can be interpolated to 1, 2, 4 points/chip selected with the display Points/Chip softkey or the NSPC remote command.

hpesa_RESULTS_TYPE_1:
Returns 7 floating point numbers, in the following order:
1. Rho (no units) represents the correlation of the measured power compared to the ideal pilot channel. The calculation is performed after the complimentary filter, so it is IS95 compliant. It is performed at the decision points in the pilot waveform. If averaging is on, this is the average of the individual RMS measurements.
2. Time offset (with units of seconds) is the time delay of the even second clock with respect to the start of the short code PN sequences, at offsets from the 15 zeros in the characteristic phase of the sequence.
3. Frequency error of the measured signal, with units of Hz. This is based on the linear best fit of the uncorrected measured phase.
4. Carrier feedthrough has units of dB and is the DC error offset of I and Q, from the origin.
5. EVM has units of percent. The calculation is based on the composite of the phase error and magnitude error, between the measured signal and the ideal pilot channel. It is performed after the complimentary filter, which removes the intersymbol interference in the modulated data. If averaging is on, this is the average of the individual RMS measurements.
6. Magnitude error (with units of percent) is the RMS error between the measured (compensated) magnitude and the ideal magnitude. This is performed after the complimentary filter, which removes the inter-symbol interference in the modulated data. If averaging is on, this is the average of the individual RMS measurements.
7. Phase error (with units in percent) is the RMS phase error between the measured phase and the ideal phase. The calculation is performed after the complimentary filter, which removes the intersymbol interference in the modulated data. If averaging is on, this is the average of the individual RMS measurements.

hpesa_RESULTS_TYPE_2: 
Returns a trace of the error vector magnitude (EVM in percent. The first value is the chip 0 decision point. The trace is interpolated for the currently selected points/chips displayed on the front panel. The number of trace points depends on the current measurement interval setting.

hpesa_RESULTS_TYPE_3: 
Returns a trace of the magnitude in percent. The first value is the chip 0 decision point. The trace is interpolated for the currently selected points/chips displayed on the front panel. The number of trace points depends on the current measurement interval setting.

hpesa_RESULTS_TYPE_4: 
Returns a trace of the phase error in degrees. The first value is the symbol 0 decision point. The trace is interpolated for the currently selected chips/symbol displayed on the front panel. The number of trace points depends on the current measurement
Interval setting.

hpesa_RESULTS_TYPE_5: Not supported by instrument.

hpesa_RESULTS_TYPE_6:
Returns a series of floating point numbers that alternately represent I and Q pairs of the complimentary filtered measured data. This is inverse filtered data of the intersymbol interference in CDMA signals due to the digital transmission filters defined in the standard as well as the base station phase equalization filter.
The numbers are sent in the following order:
  In-phase (I) sample, of symbol 0 decision point
  Quadrature-phase (Q) sample, of symbol 0 decision point
  ...
  In-phase (I) sample, of symbol 1 decision point
  Quadrature-phase (Q) sample, of symbol 1 decision point
  ...
The trace can be interpolated to 2,4,8 points/chip selected with the display Points/Chip softkey. This will change the number of points between decision points in the trace, changing the number of I/Q pairs sent for each decision point.  The number of trace points depends on the current measurement interval setting.
     Q    Trace data returned by measurement, formatted according to cdma1RHOResultsType.     1    Maximum size of cdma1RHOTraceDataResults array.     0    Actual size of cdma1RHOTraceDataResults array.    Ӥk���  �    Status                            Ղ !  �  �    Instrument Handle                 �� $  �  �    cdma1 RHO Measure Trace Timeout   �� `  � �    cdma1 RHO Measure Trace Type      ١ �  � �    cdma1 RHO Results Type            � $h �  �    cdma1 RHO Data Results            �� �  �  �    cdma1 RHO Data Results Max Size   �, `h �  �    cdma1 RHO Data Results Size        	           0    30               8Measure hpesa_MEASURE Read hpesa_READ Fetch hpesa_FETCH              �Results Type 0 hpesa_RESULTS_TYPE_0 Results Type 1 hpesa_RESULTS_TYPE_1 Results Type 2 hpesa_RESULTS_TYPE_2 Results Type 3 hpesa_RESULTS_TYPE_3 Results Type 4 hpesa_RESULTS_TYPE_4 Results Type 5 hpesa_RESULTS_TYPE_5 Results Type 6 hpesa_RESULTS_TYPE_6    	            7    	            �    This method sets up averaging for CDMA One modulation accuracy (RHO) measurements. User can control the number of averages, turn on and off averaging, and set the terminal control mode for averaging.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Sets the number of frames that will be averaged. After the specified number of frames (average counts), the averaging mode (terminal control) setting determines the averaging action.     ]    Turns averaging on or off.

VI_TRUE - Turns averaging on.
VI_FALSE - Turns averaging off.

    I    Selects the type of terminal control for averaging.

hpesa_AVERAGE_EXPONENTIAL  - Each successive data acquisition after the average count is reached, is exponentially weighted and combined with the existing average.

hpesa_AVERAGE_REPEAT - After reaching the average count, the averaging is reset and a new average is started.    �ck���  �    Status                            �A "  �  �    Instrument Handle                 � $ B �      cdma1 RHO Average Count           �K ` S �       cdma1 RHO Average State           � �  � �    cdma1 RHO Average Mode             	           0      �      
          On VI_TRUE Off VI_FALSE               BExponential hpesa_AVERAGE_EXPONENTIAL Repeat hpesa_AVERAGE_REPEAT    `    This method retrieves the averaging setup for CDMA One modulation accuracy (RHO) measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     6    Returns the number of frames that will be averaged.      :    Returns current average state.

0 = VI_FALSE
1 = VI_TRUE     �    Returns the current instrument type of terminal control for averaging.

0 = hpesa_AVERAGE_EXPONENTIAL
1 = hpesa_AVERAGE_REPEAT    �k���  �    Status                            �� "  �  �    Instrument Handle                 �. $h �  �    cdma1 RHO Average Count Query     �l `h �  �    cdma1 RHO Average State Query     �� �h �  �    cdma1 RHO Average Mode Query       	           0    	            	            	            �    This method sets the length of the measurement interval that will be used for CDMA One modulation accuracy (RHO) measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     g    New acquisition time, in seconds. Instrument range is 150 us to 26.7 ms, and the default is 1.250 ms.    ��k���  �    Status                            �� "  �  �    Instrument Handle                 �$ _ � �  �    cdma1 RHO Sweep Time               	           0    1.25e-3    �    This method retrieves the length of the current measurement interval that will be used for CDMA One modulation accuracy (RHO) measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     2    Returns the current acquisition time in seconds.    ��k���  �    Status                           � "  �  �    Instrument Handle                 e � �  �    cdma1 RHO Sweep Time Query         	           0    	           �    This method selects the measurement spectrum type (normal or inverted) for the CDMA One modulation accuracy (RHO) measurement.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Sets the new RHO measurement spectrum type.

hpesa_RHO_MEAS_SPEC_NORMAL - normal spectrum.
hpesa_RHO_MEAS_SPEC_INVERT - inverted spectrum.
   �k���  �    Status                           g "  �  �    Instrument Handle                � ` � � �    cdma1 RHO Meas Spectrum            	           0               HNormal hpesa_RHO_MEAS_SPEC_NORMAL Inverted hpesa_RHO_MEAS_SPEC_INVERTED    �    This method retrieves the current measurement spectrum type (normal or inverted) for the CDMA One modulation accuracy (RHO) measurement.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     f    Current RHO measurement spectrum type.
0 = hpesa_RHO_MEAS_SPEC_NORMAL
1 = hpesa_RHO_MEAS_SPEC_INVERT   �k���  �    Status                           	� "  �  �    Instrument Handle                
 ` � �  �    cdma1 RHO Meas Spectrum Query      	           0    	           �    This method sets up the instrument for CDMA One code domain power measurement (CDP).

This method stops the current measurement and sets up the instrument for the code domain power (CDP) measurement using the factory default instrument settings. It does not initiate the taking of measurement data. This command also turns the averaging function on and sets the number of averages to 10 for all measurements.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().   �k���  �    Status                           � "  �  �    Instrument Handle                  	           0   y    This method measures the CDMA One power for each of the 64 Walsh codes/channels, relative to the total power in the pilot channel. User must be in the cdmaOne application mode to use this function.

User can select one of three types of measurement modes: Measure, Read, or Fetch.

This method returns 10 CDP measurement scalar results, as described in the parameters below.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    This value temporarily changes the VISA timeout setting for the duration of the instrument measurement. The user needs to set this value to an appropriate time that will be longer then the expected measurement time. Units are in seconds.    �    Selects measurement type. Note that for hpesa_FETCH type the instrument should already be in this measurement mode else the function will time out. User can select this measurement mode by first using the "MEASURE" or "READ" types or call the hpesa_cdma1_CDPConfigure function.

hpesa_MEASURE - Stops current measurement, changes to this selected measurement, sets up instrument using factory defaults, makes measurement, returns measurement results.

hpesa_READ - Stops current measurement,  changes to this selected measurement, uses instrument settings from last measurement of this type, makes measurement, returns measurements results.

hpesa_FETCH - Returns measurements results only. No new measurement is initiated.
     q    Returns the carrier feedthrough, a floating point number (in dB) of the dc offset, of I and Q, from the origin.        Time offset is a floating point number with units of seconds. This is the time delay of the even second clock with respect to the start of the short code PN sequences. Time offset takes into account the setting of the PN offset parameter. For example, with the PN offset to 2 the reported time offset would be the calculated time offset times 64 chip intervals (or 2 X 52.0833e-6).     �    Returns the frequency error, which is a floating point number (in Hz) of the frequency error in the measured signal. This error is based on the linear best fit of the uncorrected measured phase.     �    Returns the pilot power, a floating point number with units of dB. It is the relative power of the pilot channel (Walsh code 0) with respect to the carrier power.     �    Paging power is a floating point number with units of dB. It is the relative power of the paging channel (Walsh code 1) with respect to the carrier power.     �    Returns the sync power, a floating point number with units of dB. It is the relative power of the sync channel (Walsh code 32) with respect to the carrier power.    z    Returns the average traffic power, a floating point number with units of dB. It is the average relative power of the active traffic channels with respect to the carrier power. Traffic channels are defined as all of the Walsh codes except Walsh 0,1, 32. A traffic channel is active if its coding power is greater than the active set threshold parameter which you have selected.    �    Returns the maximum inactive traffic power, a floating point number with units of dB. It is the maximum relative power of an inactive traffic channel with respect to the carrier power. Traffic channels are defined as all of the Walsh codes except Walsh 0,1, 32. A traffic channel is inactive if its coding power is less than the active set threshold parameter which you have selected.    �    Returns the average inactive traffic power, a floating point number with units of dB. It is the average relative power of the inactive traffic channels with respect to the carrier power. Traffic channels are defined as all of the Walsh codes except Walsh 0,1, 32. A traffic channel is inactive if its coding power is less than the active set threshold parameter which you have selected.    �    Returns the RHO (estimated), a floating point number without units. This is an estimate of Rho based on the input signal as a pilot only signal. It is calculated by estimating the noise floor for the active code channels using the average of the noise in all of the inactive channels. The measured noise floor is subtracted from all active channels before they are summed together to get the total signal power. The ratio of total noise power to total power is the Rho (estimated).   �k���  �    Status                           � "  �  �    Instrument Handle                  !  �  �    cdma1 CDP Measure Timeout         `  � �    cdma1 CDP Measure Type           � # � �  �    cdma1 CDP Carr Feedthru Query    n �  �  �    cdma1 CDP Time Offset Query      � �  �  �    cdma1 CDP Freq Error Query       � ^ � �  �    cdma1 CDP Pilot Power Query      m � � �  �    cdma1 CDP Paging Power Query      � � �  �    cdma1 CDP Sync Power Query       � $h 	�  �    cdma1 CDP Avg Traffic Pow Query  > ak 
�  �    cdma1 CDP Max IT Power Query     � �h �  �    cdma1 CDP Avg IT Power Query      T �h �  �    cdma1 CDP Rho Estimate Query       	           0    30               8Measure hpesa_MEASURE Read hpesa_READ Fetch hpesa_FETCH    	           	           	           	           	           	           	           	           	           	          �    This method measures the CDMA One power for each of the 64 Walsh codes/channels, relative to the total power in the pilot channel. User must be in the cdmaOne application mode to use this function.

User can select one of three types of measurement modes: Measure, Read, or Fetch.

Function returns the CDP measurement results specified by the "cdma1CDPResultsType" parameter as a real array.

    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    This value temporarily changes the VISA timeout setting for the duration of the instrument measurement. The user needs to set this value to an appropriate time that will be longer then the expected measurement time. Units are in seconds.    �    Selects measurement type. Note that for hpesa_FETCH type the instrument should already be in this measurement mode else the function will time out. User can select this measurement mode by first using the "MEASURE" or "READ" types or call the hpesa_cdma1_CDPConfigure function.

hpesa_MEASURE - Stops current measurement, changes to this selected measurement, sets up instrument using factory defaults, makes measurement, returns measurement results.

hpesa_READ - Stops current measurement,  changes to this selected measurement, uses instrument settings from last measurement of this type, makes measurement, returns measurements results.

hpesa_FETCH - Returns measurements results only. No new measurement is initiated.
    m    hpesa_RESULTS_TYPE_0: Not supported by instrument.
 
hpesa_RESULTS_TYPE_1: 
Returns the following 9 scalar results:
1. Time offset is a floating point number with units of seconds. This is the time delay of the even second clock with respect to the start of the short code PN sequences. Time offset takes into account the setting of the PN offset parameter. For example, with the PN offset to 2 the reported time offset would be the calculated time offset times 64 chip intervals (or 2 X 52.0833e-6).
2. Frequency error is a floating point number (in Hz) of the frequency error in the measured signal. This error is based on the linear best fit of the uncorrected measured phase.
3. Carrier feedthrough is a floating point number (in dB) of the dc offset, of I and Q, from the origin.
4. Pilot power is a floating point number with units of dB. It is the relative power of the pilot channel (Walsh code 0) with respect to the carrier power.
5. Paging power is a floating point number with units of dB. It is the relative power of the paging channel (Walsh code 1) with respect to the carrier power.
6. Sync power is a floating point number with units of dB. It is the relative power of the sync channel (Walsh code 32) with respect to the carrier power.
7. Average traffic power is a floating point number with units of dB. It is the average relative power of the active traffic channels with respect to the carrier power. Traffic channels are defined as all of the Walsh codes except Walsh 0,1, 32. A traffic channel is active if its coding power is greater than the active set threshold parameter which you have selected.
8. Maximum inactive traffic power is a floating point number with units of dB. It is the maximum relative power of an inactive traffic channel with respect to the carrier power. Traffic channels are defined as all of the Walsh codes except Walsh 0,1, 32. A traffic channel is inactive if its coding power is less than the active set threshold parameter which you have selected.
9. Average inactive traffic power is a floating point number with units of dB. It is the average relative power of the inactive traffic channels with respect to the carrier power. Traffic channels are defined as all of the Walsh codes except Walsh 0,1, 32. A traffic channel is inactive if its coding power is less than the active set threshold parameter which you have selected.
10. RHO (estimated) is a floating point number without units. This is an estimate of Rho based on the input signal as a pilot only signal. It is calculated by estimating the noise floor for the active code channels using the average of the noise in all of the inactive channels. The measured noise floor is subtracted from all active channels before they are summed together to get the total signal power. The ratio of total noise power to total power is the Rho (estimated).

hpesa_RESULTS_TYPE_2: 
Returns floating point numbers that are the trace data of the code domain power trace for all 64 Walsh codes. This series of 64 numbers represent the relative power levels (in dB) of all 64 walsh codes, with respect to the carrier power.

hpesa_RESULTS_TYPE_3: 
Returns floating point numbers that are the trace data of the code domain timing trace for all 64 Walsh codes. This series of 64 numbers represent the relative timing estimations (in seconds) of the codes, relative to the pilot channel. Typical values are on the order of 1 ns.

The instrument default method is to measure the power only. If you use this result type with the Method left as Power, invalid data will be returned. Set Method to "Timing/Phase" for proper results ("hpesa_SetMeasurementMethod function").

hpesa_RESULTS_TYPE_4:
Returns floating point numbers that are the trace data of the code domain phase trace for all 64 Walsh codes. This series of 64 numbers represent the relative phase estimations (in radians) of the codes, relative to the pilot channel. Typical values are on the order of 1 mrad.

The instrument default method is to measure the power only. If you use this result type with the Method left as Power, invalid data will be returned. Set Method to "Timing/Phase" for proper results ("hpesa_SetMeasurementMethod function").
     Q    Trace data returned by measurement, formatted according to cdma1CDPResultsType.     1    Maximum size of cdma1CDPTraceDataResults array.     +    Actual size of cdma1CDPDataResults array.   '�k���  �    Status                           )m !  �  �    Instrument Handle                )� $  �  �    cdma1 CDP Measure Trace Timeout  *� `  � �    cdma1 CDP Measure Trace Type     -� �  � �    cdma1 CDP Results Type           > $h �  �    cdma1 CDP Data Results           >Z �  �  �    cdma1 CDP Data Results Max Size  >� `h �  �    cdma1 CDP Data Results Size        	           0    30               8Measure hpesa_MEASURE Read hpesa_READ Fetch hpesa_FETCH              �Results Type 0 hpesa_RESULTS_TYPE_0 Results Type 1 hpesa_RESULTS_TYPE_1 Results Type 2 hpesa_RESULTS_TYPE_2 Results Type 3 hpesa_RESULTS_TYPE_3 Results Type 4 hpesa_RESULTS_TYPE_4    	            10    	            �    This method sets up averaging for CDMA One code domain power (CDP) measurements. User can control the number of averages, turn on and off averaging, and set the terminal control mode for averaging.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Sets the number of frames that will be averaged. After the specified number of frames (average counts), the averaging mode (terminal control) determines the averaging action.     Y    Turns averaging on or off.

VI_TRUE - Turn averaging on.
VI_FALSE - Turn averaging off.    I    Selects the type of terminal control for averaging.

hpesa_AVERAGE_EXPONENTIAL  - Each successive data acquisition after the average count is reached, is exponentially weighted and combined with the existing average.

hpesa_AVERAGE_REPEAT - After reaching the average count, the averaging is reset and a new average is started.   B|k���  �    Status                           DZ "  �  �    Instrument Handle                D� $ B �      cdma1 CDP Average Count          E\ ` S �       cdma1 CDP Average State          E� �  � �    cdma1 CDP Average Mode             	           0      �      
          On VI_TRUE Off VI_FALSE               BExponential hpesa_AVERAGE_EXPONENTIAL Repeat hpesa_AVERAGE_REPEAT    Y    This method retrieves the averaging setup for the code domain power (CDP) measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     ;    Returns the current number of sweeps that being averaged.     R    Returns the current instrument current average state.

0 = VI_FALSE
1 = VI_TRUE      �    Returns the current instrument type of terminal control for averaging.

0 = hpesa_AVERAGE_EXPONENTIAL
1 = hpesa_AVERAGE_REPEAT   Ik���  �    Status                           J� "  �  �    Instrument Handle                K4 $h �  �    cdma1 CDP Average Count Query    Kw `h �  �    cdma1 CDP Average State Query    K� �h �  �    cdma1 CDP Average Mode Query       	           0    	            	            	            ~    This method sets the length of the measurement interval that will be used for CDMA One code domain power (CDP) measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     y    Sets the new measurement interval time, in seconds. Instrument range is 500 us to 26.7 ms, and the default is 1.250 ms.   Nk���  �    Status                           O� "  �  �    Instrument Handle                PE _ � �  �    cdma1 CDP Sweep Time               	           0    1.25e-3    �    This method retrieves the current length of the measurement interval that will be used for CDMA One code domain power (CDP) measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     3    Returns the measurement interval time in seconds.   Rk���  �    Status                           S� "  �  �    Instrument Handle                T< e � �  �    cdma1 CDP Sweep Time Query         	           0    	           {    This method selects measurement spectrum type (normal or inverted) for the CDMA One code domain power (CDP) measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Sets the new CDP measurement spectrum type.

hpesa_CDP_MEAS_SPEC_NORMAL - normal spectrum.
hpesa_CDP_MEAS_SPEC_INVERT - inverted spectrum.   U�k���  �    Status                           W� "  �  �    Instrument Handle                W� ` � � �    cdma1 CDP Meas Spectrum            	           0               HNormal hpesa_CDP_MEAS_SPEC_NORMAL Inverted hpesa_CDP_MEAS_SPEC_INVERTED    �    This method retrieves the current measurement spectrum type (normal or inverted) for CDMA One code domain power (CDP) measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     m    Current CDP measurement spectrum type.

0 = hpesa_CDP_MEASURE_SPEC_NORMAL
1 = hpesa_CDP_MEASURE_SPEC_INVERT   Zk���  �    Status                           [� "  �  �    Instrument Handle                \. ` � �  �    cdma1 CDP Meas Spectrum Query      	           0    	            �    This method sets the active set threshold value for CDMA One code domain power (CDP) measurements. Walsh Channels with powers less than this value will be treated as non-active (noise) channels.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     k    Sets the new active threshold value in dB. Instrument range is 0 to - 200 dB, and the default is - 20 dB.   ^+k���  �    Status                           `	 "  �  �    Instrument Handle                `S ` � �  �    cdma1 CDP Meas Threshold           	           0    -20.0    i    This method retrieves the active set threshold value for CDMA One code domain power (CDP) measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     5    Returns the current active threshold value, in dB.    a�k���  �    Status                           c� "  �  �    Instrument Handle                d ` � �  �    cdma1 CDP Meas Threshold Query     	           0    	           _    This method selects the measurement method for CDMA One code domain power (CDP) measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().        Sets the new CDP measurement method.

hpesa_CDP_MEAS_METHOD_POWER   - Power measures the Code Domain Power of all 64 Walsh Channels.

hpesa_CDP_MEAS_METHOD_TPHASE  - Timing & Phase measures the Code Domain Power, Code Domain Timing, and Code Domain Phase of all 64 Walsh Channels.   exk���  �    Status                           gV "  �  �    Instrument Handle                g� ` � � �    cdma1 CDP Meas Method              	           0               LPower hpesa_CDP_MEAS_METHOD_POWER Timing Phase hpesa_CDP_MEAS_METHOD_TPHASE    `    This method retrieves the current measurement method for code domain power (CDP) measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     o    Returns the current CDP measurement method.

0 = hpesa_CDP_MEAS_METHOD_POWER
1 = hpesa_CDP_MEAS_METHOD_TPHASE   j5k���  �    Status                           l "  �  �    Instrument Handle                l] ` � �  �    cdma1 CDP Meas Method Query        	           0    	           �    This method sets up the instrument for CDMA One close spurs (CSP) measurements.  It stops the current measurement and sets up the instrument for the Close Spurs Power (CSP) measurement using the factory default instrument settings. It does not initiate the taking of measurement data. This command also turns the averaging function on and sets the number of averages to 10 for all measurements.     �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().   o%k���  �    Status                           q "  �  �    Instrument Handle                  	           0   7    This method measures the CDMA One spurious emissions in the transmit band relative to the channel power in the selected channel. User must be in the cdmaOne application mode to use this function.

User can select one of three types of measurement modes: Measure, Read, or Fetch.

This method returns four CSP measurement scalar results, as described in the parameters below. The user can select the segment (Lower, Center, Upper) from which to return the measurement results.

NOTE:  hpesa_cdma1_CSPMeasure returns the measurement values in the wrong order when used with ESA instrument firmware version  A.04.07.  This is an instrument firmware bug and should be remedied in future instrument firmware releases.  Until then, use the function hpesa_cdma1_CSPMeasureTrace with results type 1 to view the measurement data.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    This value temporarily changes the VISA timeout setting for the duration of the instrument measurement. The user needs to set this value to an appropriate time that will be longer then the expected measurement time. Units are in seconds.    �    Selects measurement type. Note that for hpesa_FETCH type the instrument should already be in this measurement mode else the function will time out. User can select this measurement mode by first using the "MEASURE" or "READ" types or call the hpesa_cdma1_CSPConfigure function.

hpesa_MEASURE - Stops current measurement, changes to this selected measurement, sets up instrument using factory defaults, makes measurement, returns measurement results.

hpesa_READ - Stops current measurement,  changes to this selected measurement, uses instrument settings from last measurement of this type, makes measurement, returns measurements results.

hpesa_FETCH - Returns measurements results only. No new measurement is initiated.     $    Returns the channel power, in dBm.     l    Returns the specified measurement segment spur frequency difference from channel center frequency (in Hz).     ]    Returns the specified measurement segment spur amplitude difference from the limit (in dB).     b    Returns the specified measurement segment spur amplitude difference from channel power (in dBc).    l    Selects which segment of the instrument measurement results to return (Lower, Center, Upper) for the scalar results below. The channel power scalar is the same for all three segments.

The user should use either "hpesa_MEAS" or "hpesa_READ" as the cdma1CSPMeasureType value for the first time the function is invoked to get the first segment measurement results, then use "hpesa_FETCH" to get the other segments measurement results.

hpesa_CSP_SEGMENT_LOWER -  Lower segment measurement results
hpesa_CSP_SEGMENT_CENTER - Center segment measurement results
hpesa_CSP_SEGMENT_UPPER -  Upper segment measurement results
   uk���  �    Status                           v� "  �  �    Instrument Handle                w/ !  �  �    cdma1 CSP Measure Timeout        x& ^  � �    cdma1 CSP Measure Type           { !j �  �    cdma1 CSP Channel Power Query    {/ ^l �  �    cdma1 CSP Spur Freq Diff         {� �k �  �    cdma1 CSP Spur Ampl Diff Limit   | �j �  �    cdma1 CSP Spur Ampl Diff CHP     |r �  � �    cdma1 CSP Measure Segment          	           0    30               8Measure hpesa_MEASURE Read hpesa_READ Fetch hpesa_FETCH    	           	           	           	                      \Lower hpesa_CSP_SEGMENT_LOWER Center hpesa_CSP_SEGMENT_CENTER Upper hpesa_CSP_SEGMENT_UPPER   �    This method measures the CDMA One spurious emissions in the transmit band relative to the channel power in the selected channel. User must be in the cdmaOne application mode to use this function.

User can select one of three types of measurement modes: Measure, Read, or Fetch.

Function returns the CSP measurement results specified by the "cdma1CSPResultsType" parameter as a real array.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    This value temporarily changes the VISA timeout setting for the duration of the instrument measurement. The user needs to set this value to an appropriate time that will be longer then the expected measurement time. Units are in seconds.    �    Selects measurement type. Note that for hpesa_FETCH type the instrument should already be in this measurement mode else the function will time out. User can select this measurement mode by first using the "MEASURE" or "READ" types or call the hpesa_cdma1_CSPConfigure function.

hpesa_MEASURE - Stops current measurement, changes to this selected measurement, sets up instrument using factory defaults, makes measurement, returns measurement results.

hpesa_READ - Stops current measurement,  changes to this selected measurement, uses instrument settings from last measurement of this type, makes measurement, returns measurements results.

hpesa_FETCH - Returns measurements results only. No new measurement is initiated.    �    Determines the format of the values returned in cdma1CSPDataResults.

hpesa_RESULTS_TYPE_0: Not supported by instrument.

hpesa_RESULTS_TYPE_1:
Returns 10 scalar results. The 10 results represent, first, the channel power and then 3 spur values. The 3 values are composed of the spurious value from each of 3 measurement segments. The measurement segments are Lower, Center, and Upper. For each of the 3 spurs displayed, 3 values are returned:
1. The spur frequency difference from channel center frequency (in Hz)
2. The spur amplitude difference from the limit (in dB)
3. The spur amplitude difference from channel power (in dBc)

hpesa_RESULTS_TYPE_2:
Returns trace of the segment containing the worst spur.
     Q    Trace data returned by measurement, formatted according to cdma1CSPResultsType.     ,    Maximum size of cdma1CSPDataResults array.     +    Actual size of cdma1CSPDataResults array.   �Lk���  �    Status                           �* !  �  �    Instrument Handle                �t $  �  �    cdma1 CSP Measure Trace Timeout  �k `  � �    cdma1 CSP Measure Trace Type     �H �  � �    cdma1 CSP Results Type           � $h �  �    cdma1 CSP Data Results           �r �  �  �    cdma1 CSP Data Results Max Size  �� `h �  �    cdma1 CSP Data Results Size        	           0    30               8Measure hpesa_MEASURE Read hpesa_READ Fetch hpesa_FETCH              lResults Type 0 hpesa_RESULTS_TYPE_0 Results Type 1 hpesa_RESULTS_TYPE_1 Results Type 2 hpesa_RESULTS_TYPE_2    	            10    	                This method sets up averaging for CDMA One close spurs power (CSP) measurements. User can control the number of averages, turn on and off averaging, and set the terminal control mode for averaging.

The hpesa_cdma1CSPSetMeasurementType function will cause the instrument cdmaOne Close Spurs averaging mode to reset to "Repeat" if the measurement type is set to "Full". Set the measurement type to "Examine" first (with the hpesa_cdma1_CSPSetMeasurementType" function) before invoking this function if  average mode "Exponential" is required.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     Z    Turns averaging on or off.

VI_TRUE - Turn averaging on.
VI_FALSE - Turn averaging off.
    J    Selects the type of terminal control for averaging.

hpesa_AVERAGE_EXPONENTIAL  - Each successive data acquisition after the average count is reached, is exponentially weighted and combined with the existing average.

hpesa_AVERAGE_REPEAT - After reaching the average count, the averaging is reset and a new average is started.
     �    Sets the number of data acquisitions that will be averaged. After the specified number of average counts, the averaging mode (terminal control) determines the averaging action.    ��k���  �    Status                           �~ "  �  �    Instrument Handle                �� ` S �       cdma1 CSP Average State          �* �  � �    cdma1 CSP Average Mode           �| $  �  �    cdma1 CSP Average Count            	           0   On VI_TRUE Off VI_FALSE               BExponential hpesa_AVERAGE_EXPONENTIAL Repeat hpesa_AVERAGE_REPEAT    10    ^    This method retrieves the averaging setup for CDMA One close spurs power (CSP) measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Current number of data acquisitions that will be averaged. After the specified number of average counts, the averaging mode (terminal control) determines the averaging action.     >    Returns the current average state.

0 = VI_FALSE
1 = VI_TRUE     �    Returns the current instrument type of terminal control for averaging.

0 = hpesa_AVERAGE_EXPONENTIAL
1 = hpesa_AVERAGE_REPEAT
   �)k���  �    Status                           � "  �  �    Instrument Handle                �Q $h �  �    cdma1 CSP Average Count Query    �
 `h �  �    cdma1 CSP Average State Query    �P �h �  �    cdma1 CSP Average Mode Query       	           0    	            	            	            �    This method set the CDMA One close spurs power (CSP) measurement type.

Note:  This method will cause the cdmaOne close spurs averaging mode to reset to "Repeat" if the measurement type is set to "Full".    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().    �    Sets the new measurement type.

hpesa_CSP_MEAS_TYPE_EXAMINE - In single sweep mode - measures spurs in the upper, lower, and center segments and then displays the segment with the highest power spur. 
In the continuous mode - measures spurs in the upper, lower, and center segments. It then continuously measures the segment with the highest power spur. The initial spur values are held and the marker value is updated with the current spur value found on each sweep. Segment All is not active when the measurement type Examine is selected.

hpesa_CSP_MEAS_TYPE_FULL  - In single sweep mode - measures the spurs in the upper, lower, and center segments and then displays the segment with the highest power spur.
In continuous mode - measures spurs in the upper, lower, and center segments. It then continuously cycles through segments. Unlike Examine, all results values are updated with the current spur values found on each sweep.   ��k���  �    Status                           �� "  �  �    Instrument Handle                � ` � � �    cdma1 CSP Meas Type                	           0              BExamine hpesa_CSP_MEAS_TYPE_EXAMINE Full hpesa_CSP_MEAS_TYPE_FULL    N    This method retrieves the CDMA One close spurs power (CSP) measurement type.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     Z    Current measurement type.

0 = hpesa_CSP_MEAS_TYPE_EXAMINE
1 = hpesa_CSP_MEAS_TYPE_FULL
   �k���  �    Status                           �� "  �  �    Instrument Handle                �A ` � �  �    cdma1 CSP Meas Type Query          	           0    	           �    This method sets up the instrument for CDMA One spurs at harmonic power (SHP) measurements using the factory default instrument settings.  It stops the current measurement and sets up the instrument for the Spurs at Harmonics (SHP) measurement using the factory default instrument settings. It does not initiate the taking of measurement data. This command also turns the averaging function on and sets the number of averages to 10 for all measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().   �.k���  �    Status                           � "  �  �    Instrument Handle                  	           0       This method measures the power of the CDMA One spurious emissions at the selected harmonic frequencies of the current channel frequency using the selected resolution bandwidth filter. The number of spurs to be measured can be set by the "cdma1SHPSetNumberHarmonics" function. For each harmonic, the reference level is set 40 dB above the largest amplitude limit with input attenuation held constant. The attenuation is set to limit the carrier (fundamental) power at the spectrum analyzer input mixer to the value determined by Max Mixer Lvl. You must be in the cdmaOne mode to use these commands.

User can select one of three types of measurement modes: Measure, Read, or Fetch.

This method returns the SHP measurement results specified by the "cdma1SHPResultsType" parameter as a real array.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    This value temporarily changes the VISA timeout setting for the duration of the instrument measurement. The user needs to set this value to an appropriate time that will be longer then the expected measurement time. Units are in seconds.    �    Selects measurement type. Note that for hpesa_FETCH type the instrument should already be in this measurement mode else the function will time out. User can select this measurement mode by first using the "MEASURE" or "READ" types or call the hpesa_cdma1_SHPConfigure function.

hpesa_MEASURE - Stops current measurement, changes to this selected measurement, sets up instrument using factory defaults, makes measurement, returns measurement results.

hpesa_READ - Stops current measurement,  changes to this selected measurement, uses instrument settings from last measurement of this type, makes measurement, returns measurements results.

hpesa_FETCH - Returns measurements results only. No new measurement is initiated.    �    Determines the format of the values returned in cdma1SHPDataResults.

hpesa_RESULTS_TYPE_0:
Not supported.

hpesa_RESULTS_TYPE_1:
Returns 61 values. The channel power value and a 10 row by 6 column array of values. Each row contains the following values:
1. Harmonic number.
2. Frequency (MHz).
3. Absolute amplitude (dBm).
4. Delta from the absolute limit.
5. Relative amplitude from the carrier (dBc).
6. Delta from the relative limit.
     Q    Trace data returned by measurement, formatted according to cdma1SHPResultsType.     -    Maximum size of cdma1SHPDataResults array.
     ,    Maximum size of cdma1SHPDataResults array.   ��k���  �    Status                           �� !  �  �    Instrument Handle                � $  �  �    cdma1 SHP Measure Trace Timeout  � `  � �    cdma1 SHP Measure Trace Type     �� �  � �    cdma1 SHP Results Type           �� $h �  �    cdma1 SHP Data Results           � �  �  �    cdma1 SHP Data Results Max Size  �@ `h �  �    cdma1 SHP Data Results Size        	           0    30               8Measure hpesa_MEASURE Read hpesa_READ Fetch hpesa_FETCH              HResults Type 0 hpesa_RESULTS_TYPE_0 Results Type 1 hpesa_RESULTS_TYPE_1    	            61    	            �    This method sets up averaging for CDMA One spurs at harmonics (SHP) measurements. User can control the number of averages, turn on and off averaging, and set the terminal control mode for averaging.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     Y    Turns averaging on or off.

VI_TRUE - Turn averaging on.
VI_FALSE - Turn averaging off.    J    Selects the type of terminal control for averaging.

hpesa_AVERAGE_EXPONENTIAL  - Each successive data acquisition after the average count is reached, is exponentially weighted and combined with the existing average.

hpesa_AVERAGE_REPEAT - After reaching the average count, the averaging is reset and a new average is started.
     �    Sets the number of data acquisitions that will be averaged. After the specified number of average counts, the averaging mode (terminal control) determines the averaging action.    ��k���  �    Status                           �� "  �  �    Instrument Handle                �� ` S �       cdma1 SHP Average State          �H �  � �    cdma1 SHP Average Mode           �� $  �  �    cdma1 SHP Average Count            	           0   On VI_TRUE Off VI_FALSE               BExponential hpesa_AVERAGE_EXPONENTIAL Repeat hpesa_AVERAGE_REPEAT    10    _    This method retrieves the averaging setup for CDMA One spurs at harmonics (SHP) measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     A    Returns the current number of data acquisitions being averaged.     I    Returns the current instrument average state.

0 = VI_FALSE
1 = VI_TRUE     �    Returns the current instrument type of terminal control for averaging.

0 = hpesa_AVERAGE_EXPONENTIAL
1 = hpesa_AVERAGE_REPEAT   �Hk���  �    Status                           �& "  �  �    Instrument Handle                �p $h �  �    cdma1 SHP Average Count Query    Ĺ `h �  �    cdma1 SHP Average State Query    �
 �h �  �    cdma1 SHP Average Mode Query       	           0    	            	            	            m    This method sets the number of harmonics to be measured for CDMA One spurs at harmonics (SHP) measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     i    Sets the new number of harmonics to be measured. The instrument range is 2 to 10, and the default is 3.   �Ek���  �    Status                           �# "  �  �    Instrument Handle                �m ` � �  �    cdma1 SHP Number Harmonics         	           0    3    {    This method retrieves the current number of harmonics to be measured for CDMA One spurs at harmonics (SHP) measurements.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     9    Returns the current number of harmonics being measured.   �k���  �    Status                           �� "  �  �    Instrument Handle                �> ` � �  �    cdma1 SHP Number Harm Query        	           0    	            �    This method sets the radio conditions for GSM measurements.

Since another measurement is taken immediately after setting these values, the user may need to change the timeout value before executing this function, if error query detect is turned on.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Selects the standard variant that applies to the radio to be tested.

hpesa_GSM_RADIO_BAND_PGSM - P-GSM900
hpesa_GSM_RADIO_BAND_EGSM - E-GSM900
hpesa_GSM_RADIO_BAND_RGSM - R-GSM900
hpesa_GSM_RADIO_BAND_DCS - DCS-1800
hpesa_GSM_RADIO_BAND_PCS - PCS-1900
    �    Selects the type of radio device to be tested.

hpesa_GSM_RADIO_DEVICE_MS - Mobile station transmitter test
hpesa_GSM_RADIO_DEVICE_BTS - Base station transmitter test
hpesa_GSM_RADIO_DEVICE_UBTS1 - Micro base station class M1 transmitter test
hpesa_GSM_RADIO_DEVICE_UBTS2 - Micro base station class M2 transmitter test
hpesa_GSM_RADIO_DEVICE_UBTS3 - Micro base station class M3 transmitter test
     �    Sets the frequency hopping repetition factor.  Range is between 1 and 100. This setting is only applicable if Freq Hopping Repetition Factor state is On (GSMFreqHopState = VI_TRUE).     �    Sets the signal's frequency hopping repetition factor on or off.

VI_TRUE - Turns on frequency hopping repetition factor.
VI_FALSE - Turns off frequency hopping repetition factor.
     �    Selects a priority band when entering an ARFCN that is common to
more than one band.

hpesa_GSM_PRIORITY_BAND_DCS - Selects the DCS priority band.
hpesa_GSM_PRIORITY_BAND_PCS - Selects the PCS priority band.
   �?k���  �    Status                           � "  �  �    Instrument Handle                �g $  � �    GSM Radio Standard Band          �n `  � �    GSM Radio Device                 � �  �  �    GSM Freq Hop Factor              �� � Z �       GSM Freq Hop State               Հ ! � � �    GSM Overlap Priority               	           0              �P-GSM900 hpesa_GSM_RADIO_BAND_PGSM E-GSM900 hpesa_GSM_RADIO_BAND_EGSM R-GSM900 hpesa_GSM_RADIO_BAND_RGSM DCS-1800 hpesa_GSM_RADIO_BAND_DCS PCS-1900 hpesa_GSM_RADIO_BAND_PCS              �MS hpesa_GSM_RADIO_DEVICE_MS BTS hpesa_GSM_RADIO_DEVICE_BTS uBTS Class M1 hpesa_GSM_RADIO_DEVICE_UBTS1 uBTS Class M2 hpesa_GSM_RADIO_DEVICE_UBTS2 uBTS Class M3 hpesa_GSM_RADIO_DEVICE_UBTS3    3    On VI_TRUE Off VI_FALSE               @DCS hpesa_GSM_PRIORITY_BAND_DCS PCS hpesa_GSM_PRIORITY_BAND_PCS    J    This method retrieves the current radio conditions for GSM measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Returns the current standard variant that applies to the radio to be tested.

0 = hpesa_GSM_RADIO_BAND_PGSM
1 = hpesa_GSM_RADIO_BAND_EGSM
2 = hpesa_GSM_RADIO_BAND_RGSM
3 = hpesa_GSM_RADIO_BAND_DCS
4 = hpesa_GSM_RADIO_BAND_PCS
     �    Returns the current type of radio device to be tested.

0 = hpesa_GSM_RADIO_DEVICE_MS
1 = hpesa_GSM_RADIO_DEVICE_BTS
2 = hpesa_GSM_RADIO_DEVICE_UBTS1
3 = hpesa_GSM_RADIO_DEVICE_UBTS2
4 = hpesa_GSM_RADIO_DEVICE_UBTS3
     \    Returns the current frequency hopping repetition factor state.

0 = VI_FALSE
1 = VI_TRUE

     :    Returns the current frequency hopping repetition factor.     n    Returns the current priority overlap band.

0 = hpesa_GSM_PRIORITY_BAND_DCS
1 = hpesa_GSM_PRIORITY_BAND_PCS
   �'k���  �    Status                           � "  �  �    Instrument Handle                �O $ � �  �    GSM Radio Standard Band Query    �; j � �  �    GSM Radio Device Query           � $h �  �    GSM Freq Hop State Query         ށ jh �  �    GSM Freq Hop Factor Query        �� �h �  �    GSM Overlap Priority Query         	           0    	            	            	           	            	            @    This methods sets the input conditions for GSM measurements.

    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().    �    Selects the RF port power range to be set either automatically or manually.

VI_TRUE - power range is automatically set as determined by the actual measured power level at the start of a measurement, as
displayed by the Max Total Power value.

VI_FALSE - power range is manually set by either the manually entered Max Total Power (GSMMaxTotalPower)  or Input Atten (GSM_RFInputAttenuation) value.
        Sets the maximum total power (in dBm) to be applied at the RF input. The instrument range is -100 to +80 dBm. This value is ignored and instead set by the instrument to the measured value if the RF Input Range is Man (i.e. GSMRFInputRangeState = VI_TRUE).     �    Set the RF input attenuator in dB. The instrument range is 0 to 75 dB in 5 dB steps. This value is ignored and instead set by the instrument to it's auto value if the RF Input Range is set to Auto (i.e. GSMRFInputRangeState = VI_TRUE).     �    Switch between single and multiple carrier modes.

hpesa_INPUT_CARRIER_SINGLE - Selects single carrier mode.
hpesa_INPUT_CARRIER_MULTIPLE - Selects multiple carrier mode.
     �    Turns the internal preamp on or off for the currently selected
measurement.

VI_TRUE - Turns internal preamp on.
VI_FALSE - Turns internal preamp off.   �Ak���  �    Status                           � "  �  �    Instrument Handle                �i [ S �       GSM Input RF Range State         �  �  �  �    GSM Max Total Pwr                �	 �  �  �    GSM RF Input Attenuation         �� $  � �    GSM RF Carrier                   � $ � �       GSM Internal Pre Amp State         	           0   Auto VI_TRUE Manual VI_FALSE    0.0    5.0               HSingle hpesa_INPUT_CARRIER_SINGLE Multiple hpesa_INPUT_CARRIER_MULTIPLE    On VI_TRUE Off VI_FALSE    L    This method retrieves the current input conditions for GSM measurements.

    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     c    Returns the current RF carriers.

0 = hpesa_INPUT_CARRIER_SINGLE
1 = hpesa_INPUT_CARRIER_MULTIPLE     F    Returns the current RF input range state.

0 = VI_FALSE
1 = VI_TRUE
     �    Returns the current max total power in dBm.  .
If GSM_RFInputRangeStateQuery is Auto (VI_TRUE), returns the actual measured power level.  If it is Manual (VI_FALSE), returns the manually entered Max Total Power value.     1    Returns the current RF input attenuation in dB.     3    Returns the current state of the internal preamp.   ��k���  �    Status                           � "  �  �    Instrument Handle                ��  � �  �    GSM RF Carrier Query             �^ h �  �    GSM RF Input Range State Query   �� Vh �  �    GSM Max Total Power Query        � �l �  �    GSM RF Input Attenuation Query   �� �m �  �    GSM Internal Preamp State Query    	           0    	            	            	           	           	            Z    This method sets the gain and attenuation for base transmit and mobile testing stations.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     q    Set equal to the external gain used when measuring mobile stations in dB. The instrument range is 0 to 81.9 dB.     z    Sets equal to the external attenuation used when measuring mobile stations in dB. The instrument range is 0 to 81.9 dB.
     y    Set equal to the external gain used when measuring base transmit
stations in dB. The instrument range is 0 to 81.9 dB.
     �    Set equal to the external attenuation used when measuring base
transmit stations in dB. The instrument range is 0 to 81.9 dB.
   �%k���  �    Status                           � "  �  �    Instrument Handle                �M $  �  �    GSM Mobile Gain                  �� `  �  �    GSM Mobile Atten                 �H �  �  �    GSM Base Trans Gain              �� �  �  �    GSM Base Trans Atten               	           0    0.0    0.0    0.0    0.0    h    This method retrieves the current gain and attenuation settings for base transmit and mobile stations.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     >    Returns the current external gain for mobile stations in dB.     E    Returns the current external attenuation for mobile stations in dB.     <    Returns the current gain for base transmit stations in dB.     C    Returns the current attenuation for base transmit stations in dB.   �,k���  �    Status                           �
 "  �  �    Instrument Handle                �T !o �  �    GSM Mobile Gain Query            �� `n �  �    GSM Mobile Atten Query           �� �m �  �    GSM Base Trans Gain Query        �+ �k �  �    GSM Base Trans Atten Query         	           0    	           	           	           	           D    This method sets the external trigger values for GSM measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     x    Sets the trigger delay in seconds when using the rear panel external trigger.  The instrument range is -5 ms to +5 ms.     �    Sets the trigger slope when using the rear panel external trigger input.

hpesa_TRIG_SLOPE_POS - Sets the external trigger slope to positive.
hpesa_TRIG_SLOPE_NEG - Sets the external trigger slope to negative.
   �Ak���  �    Status                           � "  �  �    Instrument Handle                �i $  �  �    GSM Trig Ext Delay               �� `  � �    GSM Trig Ext Slope                 	           0    0.0               <Positive hpesa_TRIG_SLOPE_POS Negative hpesa_TRIG_SLOPE_NEG    Q    This method retrieves the current external trigger values for GSM measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     A    Retrieves the current delay in seconds for external triggering.     :    Returns the current slope used with external triggering.   Uk���  �    Status                           3 "  �  �    Instrument Handle                } $h �  �    GSM Trig Ext Delay Query         � jh �  �    GSM Trig Ext Slope Query           	           0    	           	            ?    This method sets up RF burst triggering for GSM measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     y    Sets the trigger delay (in seconds) when using the RF burst (wideband) trigger. The instrument range is -5 ms to +5 ms.     t    Sets the trigger level (in dB) when using the RF burst (wideband) trigger. The instrument range is 0 dB to -25 dB.     �    Sets the trigger slope when using the RF Burst (wideband) Trigger.

hpesa_TRIG_SLOPE_POS - Sets the RF Burst trigger slope to positive.
hpesa_TRIG_SLOPE_NEG - Sets the RF Burst trigger slope to negative.
   Lk���  �    Status                           * "  �  �    Instrument Handle                t $  �  �    GSM Trig  RFBurst Delay          � `  �  �    GSM Trig RFBurst Level           q �  � �    GSM Trig RFBurst Slope             	           0    0.0    -6.0               <Positive hpesa_TRIG_SLOPE_POS Negative hpesa_TRIG_SLOPE_NEG    T    This method retrieves the current RF Burst trigger settings for GSM measurements.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     9    Returns the current RF Burst trigger delay in seconds.
     3    Returns the current RB Burst trigger level in dB.     a    Returns the current RF Burst trigger slope.

0 = hpesa_TRIG_SLOPE_POS
1 = hpesa_TRIG_SLOPE_NEG
   k���  �    Status                           � "  �  �    Instrument Handle                ? $h �  �    GSM Trig RFBurst Delay Query     � jh �  �    GSM Trig RFBurst Level Query     � �h �  �    GSM Trig RFBurst Slope Query       	           0    	           	           	            E    This method sets the frame trigger conditions for GSM measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().    m    Sets trigger delay (in seconds) to be used in zero span measurements to adjust the active burst within a mask.  The instrument range is -5 ms to +5 ms.  Use positive values to achieve trigger delay (that is, to measure later than the trigger source event) and use negative values to achieve pre-trigger (that is, to measure earlier than the trigger source event).   �k���  �    Status                           � "  �  �    Instrument Handle                � ` � �  �    GSM Trig Frame Delay               	           0    0.0    F    This method retrieves the current setting for GSM frame triggering.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     -    Returns the current frame delay in seconds.   Qk���  �    Status                           / "  �  �    Instrument Handle                y ` � �  �    GSM Trig Frame Delay Query         	           0    	           J    This method sets the demod burst alignment options for GSM measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().    6    Selects the sync alignment to be either to the GSM standard or the standard offset by 1/2 bit.

hpesa_GSM_BURST_ALIGN_GSM - burst alignment as defined in the GSM standard.
hpesa_GSM_BURST_ALIGN_HALF - burst alignment is advanced by1/2 bit, which corresponds to an earlier interpretation of the GSM standard.
     �    Sets the power threshold (in dB), relative to the peak power, which is used to determine the burst rising edge and falling edge. The instrument range is -200 dB to -0.01 dB     ^    Sets the delay for the RF amplitude sync in seconds. The instrument range is -5 ms to +5 ms.   �k���  �    Status                           � "  �  �    Instrument Handle                � $ ! � �    GSM Demod Burst Align            " �  �  �    GSM Demod Search Thresh          � `  �  �    GSM Demod  RF Sync Delay           	           0               KGSM Standard hpesa_GSM_BURST_ALIGN_GSM Half-Bit hpesa_GSM_BURST_ALIGN_HALF    -10.0    0.0    Q    This method retrieves the current burst alignment setting for GSM measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     m    Returns the current sync alignment standard.

0 = hpesa_GSM_BURST_ALIGN_GSM
1 = hpesa_GSM_BURST_ALIGN_HALF
     C    Returns the current delay (in seconds) for the RF amplitude sync.     �    Returns the current power threshold (in dB), relative to the peak power, that is used to determine the burst rising edge and falling edge.   k���  �    Status                           � "  �  �    Instrument Handle                 C h �  �    GSM Demod Burst Align Query       � [h �  �    GSM Demod RF Sync Delay Query    ! �h �  �    GSM Demod Search Thresh Query      	           0    	            	           	           L    This method sets the demod optional reference setup for GSM measurements.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Selects the reference oscillator (time base) source.

hpesa_GSM_OSC_SOURCE_INTERNAL - uses internal 10 MHz reference signal.
hpesa_GSM_OSC_SOURCE_EXTERNAL - uses the signal at the rear panel external reference input port.        Set to the frequency of the external reference signal being supplied to the instrument's 10MHZ REF IN input BNC connector. If the external frequency reference signal is not 10MHz, the following procedure must be followed:

Connect the external reference signal to the DDRF board EXT REF
IN input BNC connector.

Connect the DDRF board EXT 10MHZ OUT output BNC to the SA
base box 10MHZ REF IN input BNC connector.

Enter the external reference signal frequency value as the Opt Freq Ref parameter.

Set Opt Freq Ref = External

The DDRF Option B7E reference PLL circuit will attempt to lock to the external reference signal and if successful will produce a phase locked 10MHz reference on the DDRF board EXT 10MHZ OUT output BNC, which in turn will drive the base box 10MHZ REF IN.
     �    Turn on and off the external reference signal going to the rear panel.

VI_TRUE - Turns on external reference signal.
VI_FALSE - Turns off external reference signal.
   #)k���  �    Status                           % "  �  �    Instrument Handle                %Q $ ! � �    GSM Opt Freq Ref Source          &8 `  �  �    GSM Opt Freq Reference           )O � Z �       GSM Opt 10MHz Out                  	           0               NInternal hpesa_GSM_OSC_SOURCE_INTERNAL External hpesa_GSM_OSC_SOURCE_EXTERNAL    10e6   On VI_TRUE Off VI_FALSE    V    This method retrieves the current demod option reference setup for GSM measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Returns the current reference oscillator (time base) source.

0 = hpesa_GSM_OSC_SOURCE_INTERNAL
1 = hpesa_GSM_OSC_SOURCE_EXTERNAL
     �    Returns the current frequency of the external reference signal being supplied to the instrument's 10MHZ REF IN input BNC connector.     p    Returns the current state of the external reference signal going to the rear panel.

0 = VI_FALSE
1 = VI_TRUE
   +�k���  �    Status                           -� "  �  �    Instrument Handle                . h �  �    GSM Opt Freq Ref Source Query    .� [h �  �    GSM Opt Freq Reference Query     /8 �h �  �    GSM Opt 10MHz Out Query            	           0    	            	           	            G    This method sets the Absolute RF Channel Number for GSM measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Set the analyzer to a frequency that corresponds to the ARFCN
(Absolute RF Channel Number).

Range:
E-GSM - 0 to 124, and 975 to 1023
P-GSM - 1 to 124
R-GSM - 0 to 124, and 955 to 974
DCS1800 - 512 to 885
PCS1900 - 512 to 810
   1=k���  �    Status                           3 "  �  �    Instrument Handle                3e ` � �  �    GSM ARFCN                          	           0    38    @    This method retrieves the current ARFCN for GSM measurements.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().         Returns the current ARFCN.   5Ok���  �    Status                           7- "  �  �    Instrument Handle                7w ` � �  �    GSM ARFCN Query                    	           0    	            F    This method sets up the training sequence code for GSM measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().        Select auto or manual control for slot searching. The feature is only supported in external and frame trigger source modes. In external trigger mode when timeslot is set on, the demodulation measurement is made on the nth timeslot specified by the external trigger point + n timeslots, where n is the selected timeslot value 0 to 7. In frame trigger mode when timeslot is set on, then demodulation measurement is only made on the nth timeslot specified by bit 0 of frame reference burst + n timeslots, where n is the selected timeslot value 0 to 7 and where the frame reference burst is specified by Ref Burst and Ref TSC (Std) combination.

hpesa_TSC_AUTO - Automatically sets the training sequence code.
hpesa_TSC_MANUAL - Manually sets the training sequence code.

     c    Set the training sequence code to search for, with normal burst selected and TSC auto set to off.   8�k���  �    Status                           :� "  �  �    Instrument Handle                :�   � �    GSM TSC Auto                     =� V  �  �    GSM TSC                            	           0               ,Auto hpesa_TSC_AUTO Manual hpesa_TSC_MANUAL    0    Y    This method retrieves the current training sequence code settings for GSM measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     ]    Returns the current training sequence code state.

0 = hpesa_TSC_MANUAL
1 = hpesa_TSC_AUTO
     -    Returns the current training sequence code.   ?�k���  �    Status                           A� "  �  �    Instrument Handle                A� m �  �    GSM TSC Auto Query               BU `r �  �    GSM TSC Query                      	           0    	            	            �    This method sets up the instrument for transmit power (TXP) measurements using the factory default instrument settings and stops the current measurement. It does not initiate the taking of measurement data.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().   D_k���  �    Status                           F= "  �  �    Instrument Handle                  	           0    �    This method measures the power in the channel. It compares the average power of the RF signal burst to a specified threshold value.
 
The user can select one of three types of measurement modes: Measure, Read, or Fetch. 
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    This value temporarily changes the VISA timeout setting for the duration of the instrument measurement. The user needs to set this value to an appropriate time that will be longer then the expected measurement time. Units are in seconds.    �    Selects measurement type. Note that for hpesa_FETCH type the instrument should already be in this measurement mode else the function will time out. User can select this measurement mode by first using the "MEASURE" or "READ" types or call the hpesa_GSM_TXPConfigure function.
 
hpesa_MEASURE - Stops current measurement, changes to this selected measurement, sets up instrument using factory defaults, makes measurement, returns measurement results.

hpesa_READ - Stops current measurement,  changes to this selected measurement, uses instrument settings from last measurement of this type, makes measurement, returns measurements results. 
 
hpesa_FETCH - Returns measurements results only. No new measurement is initiated.
     F    Returns the threshold (in dBm) above which the power is
calculated.
     e    Returns the number of points that were above the threshold and were used for the power calculation.     y    Returns a floating point number representing the time between samples when using the trace queries (n=0, 2, et cetera).     �    Returns the mean power (in dBm) of the power above the threshold
value. If averaging is on, the power is for the latest acquisition.
     �    Returns the threshold power (in dBm) for N averages, if averaging is on. An average consists of N acquisitions of data which represents the current trace. If averaging is off, the value of power averaged is the same as the power value.     y    Returns the number of data points in the captured signal.
This number is useful when performing a query on the signal.
     C    Returns the maximum of the most recently acquired data (in
dBm).
     C    Returns the minimum of the most recently acquired data (in
dBm).
   G�k���  �    Status                           I� "  �  �    Instrument Handle                J $  �  �    GSM TXP Measure Timeout          K `  � �    GSM TXP Measure Type             M� $h �  �    GSM TXP Thresh Value Q           N5 `h �  �    GSM TXP Thresh Points Q          N� $ � �  �    GSM TXP Sample Time Q            O# ` � �  �    GSM TXP Mean Power Q             O� � � �  �    GSM TXP Avg Thresh Power Q       P� � � �  �    GSM TXP Sample Count Q           Q( �h 	�  �    GSM TXP Max Data Value Q         Qs �h 
�  �    GSM TXP Min Data Value Q           	           0    30.0               8Measure hpesa_MEASURE Read hpesa_READ Fetch hpesa_FETCH    	           	           	           	           	           	           	           	          �    This method measures the power in the channel. It compares the average power of the RF signal burst to a specified threshold value.

User can select one of three types of measurement modes: Measure, Read, or Fetch.                                                      

This method returns the TXP measurement results specified by the "GSM_TXPResultsType" parameter as a real array.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    This value temporarily changes the VISA timeout setting for the duration of the instrument measurement. The user needs to set this value to an appropriate time that will be longer then the expected measurement time. Units are in seconds.    �    Selects measurement type. Note that for hpesa_FETCH type the instrument should already be in this measurement mode else the function will time out. User can select this measurement mode by first using the "MEASURE" or "READ" types or call the hpesa_GSM_TXPConfigure function.                             
                                                               
hpesa_MEASURE - Stops current measurement, changes to this selected measurement, sets up instrument using factory defaults, makes measurement, returns measurement results.                      
                                                               
hpesa_READ - Stops current measurement,  changes to this selected measurement, uses instrument settings from last measurement of this type, makes measurement, returns measurements results.         
                                                               
hpesa_FETCH - Returns measurements results only. No new measurement is initiated.
    ,    Determines the format of the data returned in GSM_TXPDataResults. 

hpesa_RESULTS_TYPE_0: Not supported by instrument.

hpesa_RESULTS_TYPE_1: Returns the following scalar results:
1. Sample time is a floating point number representing the time between samples when using the trace queries (n=0, 2, et cetera).
2. Power is the mean power (in dBm) of the power above the threshold value. If averaging is on, the power is for the latest acquisition.
3. Power averaged is the threshold power (in dBm) for N averages, if averaging is on. An average consists of N acquisitions of data which represents the current trace. If averaging is off, the value of power averaged is the same as the power value.
4. Number of samples is the number of data points in the captured signal. This number is useful when performing a query on the signal (that is when n=0, 2, et cetera).
5. Threshold value is the threshold (in dBm) above which the power is calculated.
6. Threshold points is the number of points that were above the threshold and were used for the power calculation.
7. Maximum value is the maximum of the most recently acquired data (in dBm).
8. Minimum value is the minimum of the most recently acquired data (in dBm).

hpesa_RESULTS_TYPE_2: Returns the RF Envelope Trace (data array). This array contains 401 points of data.
     P    Trace data returned by measurement, formatted according to GSM_TXPResultsType.     :    Specifies the maximum size of GSM_TXPDataResults array.
     7    Returns the actual size of GSM_TXPDataResults array.
   V�k���  �    Status                           X` !  �  �    Instrument Handle                X� $  �  �    GSM TXP Measure Trace Timeout    Y� `  � �    GSM TXP Measure Trace Type       ]v �  � �    GSM TXP Results Type             b� $h �  �    GSM TXP Data Results             c �  �  �    GSM TXP Data Results Max Size    cD `h �  �    GSM TXP Data Results Size          	           0    30.0               8Measure hpesa_MEASURE Read hpesa_READ Fetch hpesa_FETCH              lResults Type 0 hpesa_RESULTS_TYPE_0 Results Type 1 hpesa_RESULTS_TYPE_1 Results Type 2 hpesa_RESULTS_TYPE_2    	            8    	            �    This method sets the averaging for GSM transmit power (TXP) measurements.  User can control the number of averages, turn off or on averaging, set the terminal control mode for averaging, and set the average type.

    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Set the number of bursts that will be averaged. After the specified number of bursts (average counts), the averaging mode (terminal control) setting determines the averaging action.  The instrument range is 1 to 1000.     d    Sets the state of averaging, either on or off.

VI_TRUE = Averaging on.
VI_FALSE = Averaging off.
    �    Select the type of termination control used for the averaging  function.  This determines the averaging action after the specified number of frames (average count) is reached.

hpesa_AVERAGE_EXPONENTIAL - Each successive data acquisition after the average count is reached, is exponentially weighted and combined with the existing average.

hpesa_AVERAGE_REPEAT - After reaching the average count, the averaging is reset and a new average is started.
     �    Select the type of averaging to be performed.

hpesa_AVERAGE_LPOWER - logarithmically averages the power of the video data.
hpesa_AVERAGE_POWER  - averages the linear power of successive measurements.
   gk���  �    Status                           h� "  �  �    Instrument Handle                i+ $ B �      GSM TXP Average Count            j ` S �       GSM TXP Average State            jz �  � �    GSM TXP Average Mode             lG �  � �    GSM TXP Average Type               	           0      �      
          On VI_TRUE Off VI_FALSE               BExponential hpesa_AVERAGE_EXPONENTIAL Repeat hpesa_AVERAGE_REPEAT              5Video hpesa_AVERAGE_LPOWER Power hpesa_AVERAGE_POWER    Q    This method retrieves the average settings for GSM transmit power measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     $    Returns the current average count.     ?    Returns the current average state.

0 = VI_FALSE
1 = VI_TRUE
     \    Returns the current average mode.

0 = hpesa_AVERAGE_EXPONENTIAL
1 = hpesa_AVERAGE_REPEAT
     V    Returns the current average type.

0 = hpesa_AVERAGE_LPOWER
1 = hpesa_AVERAGE_POWER
   o�k���  �    Status                           qg "  �  �    Instrument Handle                q� $l �  �    GSM TXP Average Count Query      q� `l �  �    GSM TXP Average State Query      r$ �k �  �    GSM TXP Average Mode Query       r� �k �  �    GSM TXP Average Type Query         	           0    	            	            	            	            M    This method selects the trigger source for GSM transmit power measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().    �    Selects the trigger source used to control the data acquisitions.

hpesa_TXP_TRIG_IMMEDIATE - the next data acquisition is immediately taken (also called free run).
hpesa_TXP_TRIG_RFBURST - wideband RF burst envelope trigger that has automatic level control for periodic burst signals.
hpesa_TXP_TRIG_EXTERNAL - rear panel external trigger input.
hpesa_TXP_TRIG_FRAME - uses the frame timer, which has been synchronized to the selected burst sync.
   t�k���  �    Status                           v� "  �  �    Instrument Handle                v� ` � � �    GSM TXP Trigger Source             	           0              Immediate hpesa_TXP_TRIG_IMMEDIATE RF Burst hpesa_TXP_TRIG_RFBURST External hpesa_TXP_TRIG_EXTERNAL Frame hpesa_TXP_TRIG_FRAME    W    This method retrieves the current trigger source for GSM transmit power measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Returns the current trigger source.

0 = hpesa_TXP_TRIG_IMMEDIATE
1 = hpesa_TXP_TRIG_RFBURST
2 = hpesa_TXP_TRIG_EXTERNAL 
3 = hpesa_TXP_TRIG_FRAME 
   zIk���  �    Status                           |' "  �  �    Instrument Handle                |q ` � �  �    GSM TXP Trigger Source Query       	           0    	            U    This method sets the threshold type and level for GSM transmit power measurements.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Set the amplitude threshold level. Only the data above the threshold level is kept and used to compute the average transmit carrier power.

Units are in dBm for absolute mode and dB for relative mode
     �    Selects auto or manual control of the threshold level.

hpesa_TXP_THRESHOLD_ABSOLUTE - threshold value is set to an absolute power level
hpesa_TXP_THRESHOLD_RELATIVE - threshold value is set relative to the reference
   ~(k���  �    Status                           � "  �  �    Instrument Handle                �P `  �  �    GSM TXP Threshold Level          �" $  � �    GSM TXP Threshold Type             	           0    -6.0              LAbsolute hpesa_TXP_THRESHOLD_ABSOLUTE Relative hpesa_TXP_THRESHOLD_RELATIVE    [    This method retrieves the current threshold settings for GSM transmit power measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     o    Returns the current threshold level.  Units are determined by threshold type:  Relative - dB; Absolute - dBm.     k    Returns the current threshold type.

0 = hpesa_TXP_THRESHOLD_ABSOLUTE 
1 = hpesa_TXP_THRESHOLD_RELATIVE 
   ��k���  �    Status                           �� "  �  �    Instrument Handle                �� `h �  �    GSM TXP Threshold Level Query    �O h �  �    GSM TXP Threshold Type Query       	           0    	           	            f    This method sets the number of timeslots to show on the screen for a GSM transmit power measurement.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     H    Sets the number of timeslots to show on screen.  Range is from 1 to 8.   �-k���  �    Status                           � "  �  �    Instrument Handle                �U ` � �  �    GSM TXP TimeSlots                  	           0    1    g    This method retrieves the current number of timeslots being used for GSM transmit power measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     *    Returns the current number of timeslots.   ��k���  �    Status                           �� "  �  �    Instrument Handle                �� ` � �  �    GSM TXP TimeSlots Query            	           0    	            Q    This method sets the method of synchronizing the measurement to the GSM bursts.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().    �    Select the method of synchronizing the measurement to the GSM
bursts.

hpesa_BURST_SYNC_TSEQ - the training sequence burst sync performs a demodulation of the burst and determines the start and stop of the useful part of the burst based on the midamble training sequence.

hpesa_BURST_SYNC_RFAMP - the RF amplitude burst synch approximates the start and stop of the useful part of the burst without digital demodulation of the burst.

hpesa_BURST_SYNC_NONE - performs no burst synchronization.
   �8k���  �    Status                           � "  �  �    Instrument Handle                �` ` � � �    GSM TXP Burst Sync Source          	           0              cTraining Seq. hpesa_BURST_SYNC_TSEQ RF Amplitude hpesa_BURST_SYNC_RFAMP None hpesa_BURST_SYNC_NONE    Z    This method retrieves the current burst sync source for GSM transmit power measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     |    Returns the current burst sync source.

0 = hpesa_BURST_SYNC_TSEQ 
1 = hpesa_BURST_SYNC_RFAMP 
2 = hpesa_BURST_SYNC_NONE 
   ��k���  �    Status                           �� "  �  �    Instrument Handle                � ` � �  �    GSM TXP Burst Sync Source Query    	           0    	            �    This method sets up the instrument for power vs. time (PVT) measurements using the factory default instrument settings and stops the current measurement. It does not initiate the taking of measurement data.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().   �k���  �    Status                           �� "  �  �    Instrument Handle                  	           0   |    This method measures the average power during the "useful part" of the burst comparing the power ramp to required timing mask.

User can select one of three types of measurement modes: Measure, Read, or Fetch.                                                      

This method returns the TXP measurement results specified by the "GSM_PVTResultsType" parameter as a real array.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    This value temporarily changes the VISA timeout setting for the duration of the instrument measurement. The user needs to set this value to an appropriate time that will be longer then the expected measurement time. Units are in seconds.    �    Selects measurement type. Note that for hpesa_FETCH type the instrument should already be in this measurement mode else the function will time out. User can select this measurement mode by first using the "MEASURE" or "READ" types or call the hpesa_GSM_PVTConfigure function.                             
                                                               
hpesa_MEASURE - Stops current measurement, changes to this selected measurement, sets up instrument using factory defaults, makes measurement, returns measurement results.                      
                                                               
hpesa_READ - Stops current measurement,  changes to this selected measurement, uses instrument settings from last measurement of this type, makes measurement, returns measurements results.         
                                                               
hpesa_FETCH - Returns measurements results only. No new measurement is initiated.
    	N    hpesa_RESULTS_TYPE_0: Not supported by instrument.

hpesa_RESULTS_TYPE_1: Returns the following comma-separated scalar results:
1. Sample time is a floating point number that represents the time between samples when using the trace queries (n=0, 2, et cetera).
2. Power of single burst is the mean power (in dBm) across the useful part of the selected burst in the most recently acquired data, or in the last data acquired at the end of a set of averages. If averaging is on, the power is for the last burst.
3. Power averaged is the power (in dBm) of N averaged bursts, if averaging is on. The power is averaged across the useful part of the burst. Average m is a single burst from the acquired trace. If there are multiple bursts in the acquired trace, only one burst is used for average m. This means that N traces are acquired to make the complete average. If averaging is off, the value of power averaged is the same as the power single burst value.
4. Number of samples is the number of data points in the captured signal. This number is useful when performing a query on the signal (that is when n=0, 2, et cetera).
5. Start point of the useful part of the burst is the index of the data point at the start of the useful part of the burst.
6. Stop point of the useful part of the burst is the index of the data point at the end of the useful part of the burst.
7. Index of the data point where T 0 occurred.
8. Burst width of the useful part of the burst is the width of the burst measured at -3dB below the mean power in the useful part of the burst.
9. Maximum value is the maximum value of the most recently acquired data (in dBm).
10.Minimum value is the minimum value of the most recently acquired data (in dBm).
11.Burst search threshold is the value (in dBm) of the threshold where a valid burst is identified, after the data has been acquired.
12.IQ point delta is the number of data points offset that are internally applied to the useful data in traces n=2,3,4. You must apply this correction value to find the actual location of the Start, Stop, or T 0 values.

NOTE:  Some firmware versions may not return the 12th value.

hpesa_RESULTS_TYPE_2 - Returns the entire captured RF envelope (data array). It is represented as log-magnitude versus time. This array contains points of data equal to the fourth element in the array returned using hpesa_RESULTS_TYPE_1.
     P    Trace data returned by measurement, formatted according to GSM_PVTResultsType.     ;    Specifies the maximum size of GSM_PVTDataResults array.

     7    Returns the actual size of GSM_PVTDataResults array.
   �Dk���  �    Status                           �" !  �  �    Instrument Handle                �l $  �  �    GSM PVT Measure Trace Timeout    �c `  � �    GSM PVT Measure Trace Type       �8 �  � �    GSM PVT Results Type             �� $h �  �    GSM PVT Data Results             �� �  �  �    GSM PVT Data Results Max Size    �) `h �  �    GSM PVT Data Results Size          	           0    100.0               8Measure hpesa_MEASURE Read hpesa_READ Fetch hpesa_FETCH              lResults Type 0 hpesa_RESULTS_TYPE_0 Results Type 1 hpesa_RESULTS_TYPE_1 Results Type 2 hpesa_RESULTS_TYPE_2    	            12    	            �    This method sets the averaging for GSM power vs. time measurements.  User can control the number of averages, turn off or on averaging, set the terminal control mode for averaging, and set the average type.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Set the number of bursts that will be averaged. After the specified number of bursts (average counts), the averaging mode (terminal control) setting determines the averaging action. The instrument range is 1 to 1000.     d    Sets the state of averaging, either on or off.

VI_TRUE = Averaging on.
VI_FALSE = Averaging off.
    �    Select the type of termination control used for the averaging  function.  This determines the averaging action after the specified number of frames (average count) is reached.

hpesa_AVERAGE_EXPONENTIAL - Each successive data acquisition after the average count is reached, is exponentially weighted and combined with the existing average.

hpesa_AVERAGE_REPEAT - After reaching the average count, the averaging is reset and a new average is started.
     �    Select the type of averaging to be performed.

hpesa_AVERAGE_LPOWER - logarithmically averages the power of the video data.
hpesa_AVERAGE_POWER  - averages the linear power of successive measurements.
   ��k���  �    Status                           �� "  �  �    Instrument Handle                �
 $ B �      GSM PVT Average Count            �� ` S �       GSM PVT Average State            �X �  � �    GSM PVT Average Mode             �% �  � �    GSM PVT Average Type               	           0      �      
          On VI_TRUE Off VI_FALSE               BExponential hpesa_AVERAGE_EXPONENTIAL Repeat hpesa_AVERAGE_REPEAT              5Video hpesa_AVERAGE_LPOWER Power hpesa_AVERAGE_POWER    Q    This method retrieves the average settings for GSM power vs. time measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     $    Returns the current average count.     ?    Returns the current average state.

0 = VI_FALSE
1 = VI_TRUE
     \    Returns the current average mode.

0 = hpesa_AVERAGE_EXPONENTIAL
1 = hpesa_AVERAGE_REPEAT
     V    Returns the current average type.

0 = hpesa_AVERAGE_LPOWER
1 = hpesa_AVERAGE_POWER
   �gk���  �    Status                           �E "  �  �    Instrument Handle                �� $h �  �    GSM PVT Average Count Query      �� `h �  �    GSM PVT Average State Query      � �h �  �    GSM PVT Average Mode Query       �f �h �  �    GSM PVT Average Type Query         	           0    	            	            	            	            J    This method sets the trigger source for GSM power vs. time measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().    `    Select the trigger source used to control the data acquisitions.

hpesa_PVT_TRIG_EXTERNAL - rear panel external trigger input

hpesa_PVT_TRIG_RFBURST - wideband RF burst envelope trigger that has automatic level control for periodic burst signals.

hpesa_PVT_TRIG_FRAME - uses the frame timer, which has been synchronized to the selected burst sync.
   ��k���  �    Status                           �s "  �  �    Instrument Handle                �� ` � � �    GSM PVT Trig Source                	           0              \External hpesa_PVT_TRIG_EXTERNAL RF Burst hpesa_PVT_TRIG_RFBURST Frame hpesa_PVT_TRIG_FRAME    U    This method returns the current trigger source for GSM power vs. time measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     w    Returns the current trigger source.

0 = hpesa_PVT_TRIG_EXTERNAL
1 = hpesa_PVT_TRIG_RFBURST
2 = hpesa_PVT_TRIG_FRAME
   ĝk���  �    Status                           �{ "  �  �    Instrument Handle                �� ` � �  �    GSM PVT Trigger Source Query       	           0    	            f    This method sets the number of timeslots to show on the screen for a GSM transmit power measurement.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     H    Sets the number of timeslots to show on screen.  Range is from 1 to 8.   �nk���  �    Status                           �L "  �  �    Instrument Handle                ʖ ` � �  �    GSM PVT TimeSlots                  	           0    1    g    This method retrieves the current number of timeslots being used for GSM transmit power measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     *    Returns the current number of timeslots.   �
k���  �    Status                           �� "  �  �    Instrument Handle                �2 ` � �  �    GSM PVT TimeSlots                  	           0    	            b    This method sets the method of synchronizing the power vs. time measurement to the GSM bursts.

    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().    �    Select the method of synchronizing the measurement to the GSM
bursts.

hpesa_BURST_SYNC_TSEQ - the training sequence burst sync performs a demodulation of the burst and determines the start and stop of the useful part of the burst based on the midamble training sequence.

hpesa_BURST_SYNC_RFAMP - performs burst synchronization based on the rising and falling edges of the burst.

hpesa_BURST_SYNC_NONE - performs no burst synchronization.
   ϊk���  �    Status                           �h "  �  �    Instrument Handle                Ѳ ` � � �    GSM PVT Burst Sync Source          	           0               cTraining Seq. hpesa_BURST_SYNC_TSEQ RF Amplitude hpesa_BURST_SYNC_RFAMP None hpesa_BURST_SYNC_NONE    Z    This method retrieves the current burst sync source for GSM power vs. time measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     |    Returns the current burst sync source.

0 = hpesa_BURST_SYNC_TSEQ 
1 = hpesa_BURST_SYNC_RFAMP 
2 = hpesa_BURST_SYNC_NONE 
   ��k���  �    Status                           �� "  �  �    Instrument Handle                �! ` � �  �    GSM PVT Burst Sync Source Query    	           0    	           �    This method allows sets the lower mask absolute amplitude levels for GSM power vs. time measurements.  The user enters the absolute power level for any of the mask line segments that require absolute limits in addition to their relative limits. The defined relative mask values are normally used as the limits for testing. If the power of the reference level is decreased, all of these relative mask power levels will decrease by the same amount until they reach a defined minimum absolute power. Then that absolute power will be used as the test limit.

Any portion of the signal that has no limit line segment defined for it, will default its to a very low limit (-200 dBm). Because of this, all data in that undefined area will pass the test.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     .    This size of the GSM_PVTLwrMskAbsList array.    +    An array containing the absolute power levels for the mask line segments.

Note that the user should enter power values for each of the defined time points.  Set the number of mask points via hpesa_GSM_PVTLwrMskSetTimePoints() and verify the number of mask points via hpesa_GSM_PVTLwrMskGetPoints.   �Uk���  �    Status                           �3 "  �  �    Instrument Handle                �} "  �  �    GSM PVT Lwr Msk List Size        ݳ `  �  �    GSM PVT Lwr Msk Abs List           	           0    1    0   B    This method retrieves the current absolute power levels for the mask line segments.

Note that the number of values returned is equal to the number of mask points will be accepted. Set the number of mask points via hpesa_GSM_PVTLwrMskSetTimePoints() and verify the number of mask points via hpesa_GSM_PVTLwrMskGetPoints.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     G    Returns the current absolute power levels for the mask line segments.     .    The size of the array PVTLwrMskAbsListQuery.     F    The actual number of elements returned in GSM_PVTLwrMskAbsListQuery.   �k���  �    Status                           �� "  �  �    Instrument Handle                �G $h �  �    GSM PVT Lwr Msk Abs List Query   � $  �  �    GSM PVT Lwr Msk Abs List Sz Q    �� `h �  �    GSM PVT Lwr Msk Abs List Act Sz    	           0    	            1    	           P    This method retrieves the current absolute power levels for the mask line segments.
      
Note that that the number of values returned is equal to the number of mask points will be accepted.  Set the number of mask points via hpesa_GSM_PVTLwrMskSetTimePoints() and verify the number of mask points via hpesa_GSM_PVTLwrMskGetPoints.

    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     ;    Returns the current number of elements in the lower mask.   �k���  �    Status                           � "  �  �    Instrument Handle                �� ` � �  �    GSM PVT Lwr Msk List Sz Query      	           0    	               This method allows the user to enter the relative power level for each of the horizontal line segments in the lower limit mask for GSM power vs. time measurements. There should be a power level for each time point entered using the hpesa_GSM_PVTLwrMskSetTimePoints method. These power levels are all relative to the defined Reference Power Level (the average power in the useful part of the data). When an upper and
lower limit mask have been defined, the Reference Power Level is the mid-point between these two limits at time t0.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     -    The size of the array GSM_PVTLwrMskRelList.    P    An array containing the relative power level for each of the horizontal line segments in the lower limit mask.

Note that the user should enter power values for each of the defined time points.  Set the number of mask points via hpesa_GSM_PVTLwrMskSetTimePoints() and verify the number of mask points via hpesa_GSM_PVTLwrMskGetPoints.   ��k���  �    Status                           �� "  �  �    Instrument Handle                � $  �  �    GSM PVT Lwr Msk Rel List Sz      �K `  �  �    GSM PVT Lwr Msk Rel List           	           0    1    0    �    This method retrieves the current set of relative power levels for the horizontal line segments in the lower limit mask for GSM power vs. time measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     t    Returns an array containing relative power level for each of the horizontal line segments in the lower limit mask.     2    The size of the array GSM_PVTLwrMskRelListQuery.     X    Returns the actual number of elements returned in the GSM_PVTLwrMskRelListQuery array.   �8k���  �    Status                           � "  �  �    Instrument Handle                �` %m �  �    GSM PVT Lwr Msk Rel List Query   �� $  �  �    GSM PVT Lwr Msk Rel List Sz Q    � am �  �    GSM PVT Lwr Msk Rel List Act Sz    	           0    	            1    	                This method allows the user to enter the ending points for the horizontal line segments that define the lower limit mask for GSM power vs. time measurements.  All the line segments begin at the time = t 0 reference point at the center of the useful data (usually the center of the burst).  For example, all the mask line segments to the right of t 0 will have positive time values that get successively larger, while those to the left get successively more negative.

It is recommended that you select a large time value for your first and last mask points (e.g. -1 and +1 second). This guarantees that you've defined a limit for all the measured data.

The range is -1 second to +1 second, referenced to t0 at the center of the useful data (burst center).  There are 1 to 25 time points in a mask.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     .    The size of the GSM_PVTLwrMskTimeList array.     K    The array used to set the ending points for the horizontal line segments.   ��k���  �    Status                           �� "  �  �    Instrument Handle                �� $  �  �    GSM PVT Lwr Msk Time List Sz     �3 `  �  �    GSM PVT Lwr Msk Time List          	           0    1    0    �    This method retrieves the current ending points for the horizontal line segments that define the lower limit mask for GSM power vs. time measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     E    Returns the current ending points for the horizontal line segments.     3    The size of the GSM_PVTLwrMskTimeListQuery array.     Y    Returns the actual number of elements returned in the GSM_PVTLwrMskTimeListQuery array.   �k���  �    Status                           �� "  �  �    Instrument Handle                �= $h �  �    GSM PVT Lwr Msk Time List Query  �� $  �  �    GSM PVT Lwr Msk Time List Sz Q   �� `h �  �    GSM PVT Lwr Msk Time Lst Act Sz    	           0    	            1    	            c    This method selects standard masks or user-defined custom masks to compare measured data against.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Selects which mask to compare measured data against.

hpesa_PVT_MASK_STANDARD - Uses standard masks.

hpesa_PVT_MASK_CUSTOM - Uses user-defines custom masks
   �k���  �    Status                           � "  �  �    Instrument Handle                � ` � � �    GSM PVT Mask Custom                	           0               >Standard hpesa_PVT_MASK_STANDARD Custom hpesa_PVT_MASK_CUSTOM    Z    This method retrieves the current mask type being used to compare measured data against.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     X    Returns the current mask type.

0 = hpesa_PVT_MASK_STANDARD
1 = hpesa_PVT_MASK_CUSTOM
   �k���  �    Status                           � "  �  �    Instrument Handle                 ` � �  �    GSM PVT Mask Custom Query          	           0    	           h    This method allows sets the upper mask absolute amplitude levels for GSM power vs. time measurements.  The user enters the absolute power level for any of the mask line segments that require absolute limits in addition to their relative limits. The defined relative mask values are normally used as the limits for testing. If the power of the reference level is increased, all of these relative mask power levels will increase by the same amount until they reach a defined minimum absolute power. Then that absolute power will be used as the test limit.

You need power values for each of the defined time points.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     .    This size of the GSM_PVTUprMskAbsList array.    )    An array containing the absolute power levels for the mask line segments.

Note that the user should set power values for each of the defined time points.  Set the number of mask points via hpesa_GSM_PVTUprMskSetTimePoints() and verify the number of mask points via hpesa_GSM_PVTUprMskGetPoints.   �k���  �    Status                           � "  �  �    Instrument Handle                � $  �  �    GSM PVT Upr Msk List Size         `  �  �    GSM PVT Upr Msk Abs List           	           0    1    0   C    This method retrieves the current absolute power levels for the mask line segments.

Note that the number of values returned is equal to the number of mask points will be accepted.  Set the number of mask points via hpesa_GSM_PVTUprMskSetTimePoints() and verify the number of mask points via hpesa_GSM_PVTUprMskGetPoints.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     G    Returns the current absolute power levels for the mask line segments.     .    The size of the array PVTUprMskAbsListQuery.     Y    Returns the current number of elements returned in the GSM_PVTUprMskAbsListQuery array.   sk���  �    Status                           Q "  �  �    Instrument Handle                � $h �  �    GSM PVT Upr Msk ABs List Query   � $  �  �    GSM PVT Upr Mask Abs List Sz Q     `h �  �    GSM PVT Upr Msk Abs List Act Sz    	           0    	            1    	            �    This method retrieves the number of elements in the upper mask for GSM power vs. time measurements. This value is determined by the number of time points entered using hpesa_GSM_PVTUprMskSetTimePoints.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     ;    Returns the current number of elements in the upper mask.   �k���  �    Status                           i "  �  �    Instrument Handle                � ` � �  �    GSM PVT Upr Msk List Sz Query      	           0    	               This method allows the user to enter the relative power level for each of the horizontal line segments in the upper limit mask for GSM power vx. time measurements.  There should be a power level for each time point entered using the hpesa_GSM_PVTUprMskSetTimePoints method.  These power levels are all relative to the defined Reference Power Level (the average power in the useful part of the data).

When an upper and upper limit mask have been defined, the Reference Power Level is the mid-point between these two limits at time t0.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().    Y    The array containing selects the relative power level for each of the horizontal line segments in the upper limit mask.

Note that the user should enter power values for each of the defined time points.  Set the number of mask points via hpesa_GSM_PVTUprMskSetTimePoints() and verify the number of mask points via hpesa_GSM_PVTUprMskGetPoints.   �k���  �    Status                           � "  �  �    Instrument Handle               ���� $  �  �    GSM PVT Upr Msk Rel List Sz      � `  �  �    GSM PVT Upr Msk Rel List           	           0    1    0    �    This method retrieves the current set of relative power levels for the horizontal line segments in the upper limit mask for the GSM power vs. time measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     t    Returns an array containing relative power level for each of the horizontal line segments in the upper limit mask.     X    Returns the actual number of elements returned in the GSM_PVTUprMskRelListQuery array.    �k���  �    Status                           "� "  �  �    Instrument Handle                # $h �  �    GSM PVT Upr Msk Rel List Query  ���� $  �  �    GSM PVT Upr Msk Rel List Sz Q    #� `h �  �    GSM PVT Upr Msk Rel List Act Sz    	           0    	            1    	                This method allows the user to enter the ending points for the horizontal line segments that define the upper limit mask for GSM power vs. time measurements.  All the line segments begin at the time = t 0 reference point at the center of the useful data (usually the center of the burst).  For example, all the mask line segments to the right of t 0 will have positive time values that get successively larger, while those to the left get successively more negative.

It is recommended that you select a large time value for your first and last mask points (e.g. -1 and +1 second). This guarantees that you've defined a limit for all the measured data.

The range is -1 second to +1 second, referenced to t0 at the center of the useful data (burst center).  There are 1 to 25 time points in a mask.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     .    The size of the GSM_PVTUprMskTimeList array.     K    The array used to set the ending points for the horizontal line segments.   (Wk���  �    Status                           *5 "  �  �    Instrument Handle                * $  �  �    GSM PVT Upr Msk Time List Sz     *� `  �  �    GSM PVT Upr Msk Time List          	           0    1    0    �    This method retrieves the current ending points for the horizontal line segments that define the upper limit mask for GSM power vs. time measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     E    Returns the current ending points for the horizontal line segments.     3    The size of the GSM_PVTUprMskTimeListQuery array.     Y    Returns the actual number of elements returned in the GSM_PVTUprMskTimeListQuery array.   ,�k���  �    Status                           .u "  �  �    Instrument Handle                .� $h �  �    GSM PVT Upr Msk Time List Query  / $  �  �    GSM PVT Upr Msk Time List Sz Q   /G `h     �    GSM PVT Upr Msk Time Lst Act Sz    	           0    	            1    	            �    This method sets up the instrument for GSM Phase and Frequency Error (PFER) measurements using the factory default instrument settings and stops the current measurement. It does not initiate the taking of measurement data.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().   1�k���  �    Status                           3� "  �  �    Instrument Handle                  	           0   e    This method measures the modulation quality of the transmitter by checking phase and frequency accuracy.

User can select one of three types of measurement modes: Measure, Read, or Fetch.                                                      

This method returns the TXP measurement results specified by the "GSM_PVTResultsType" parameter as a real array.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    This value temporarily changes the VISA timeout setting for the duration of the instrument measurement. The user needs to set this value to an appropriate time that will be longer then the expected measurement time. Units are in seconds.    �    Selects measurement type. Note that for hpesa_FETCH type the instrument should already be in this measurement mode else the function will time out. User can select this measurement mode by first using the "MEASURE" or "READ" types or call the hpesa_GSM_PFERConfigure function.                             
                                                               
hpesa_MEASURE - Stops current measurement, changes to this selected measurement, sets up instrument using factory defaults, makes measurement, returns measurement results.                      
                                                               
hpesa_READ - Stops current measurement,  changes to this selected measurement, uses instrument settings from last measurement of this type, makes measurement, returns measurements results.         
                                                               
hpesa_FETCH - Returns measurements results only. No new measurement is initiated.
    q    Determines the format of the data returned in GSM_PFERDataResults.

hpesa_RESULTS_TYPE_0:  Returns a series of floating point numbers (in volts) that represent each sample of the complete current time record raw I/Q vector trace length scalar value (giving the total number of I/Q vector sample pairs = n/2).

The II/Q vector sample pair data is organized as:
I(0), Q(0),
I(1), Q(1),
-------------
I([n/2]-1), Q([n/2]-1)

The start of bit 0 (zero) of the useful part of the measured GSM burst within the vector sample pairs is located at I(x/2), Q(x/2)
where x = raw I/Q vector trace index to burst.

hpesa_RESULTS_TYPE_1:  Returns the following 15 scalar values:
1. RMS phase error is a floating point number (in degrees) of the rms phase error between the measured phase and the ideal phase. The calculation is based on symbol decision points and points halfway between symbol decision points (that is 2 points/symbol). If averaging is on, this is the average of the individual rms phase error measurements.
2. Peak phase error is a floating point number (in degrees) of the peak phase error of all the individual symbol decision points (prior to the rms averaging process). If averaging is on, this is the average of the individual peak phase error measurements.
3. Peak phase symbol is a floating point number (in symbols) representing the symbol number at which the peak phase error occurred. Averaging does not affect this calculation.
4. Frequency error is a floating point number (in Hz) of the frequency error in the measured signal. This is the difference between the measured phase trajectory and the reference phase trajectory. If averaging is on, this is the average of the individual frequency error measurements.
5. I/Q origin offset is a floating point number (in dB) of the I and Q error (magnitude squared) offset from the origin. If averaging is on, this is the average of the individual IQ Offset measurements. 
6. Trace phase sample is a floating point number (in units of bits) representing the time between samples. It is used in querying phase error vector traces.
7. Trace bit 0 decision offset is an integer number in units of sample pairs for the sample points in an I/Q vector trace that represents the bit 0 (zero) decision point. The sample pairs in the trace are numbered 0 to N.
8. Trace sync start is an integer number in units of bits for the bit number, within the data bits trace, that represents the start of the sync word.
9. Trace time sample is a floating point number (in seconds) of the time between samples. It is used in querying time domain traces. For the n=0 trace, of acquired I/Q pairs, this is the time between pairs.
10.Phase error trace length is an integer number (in units of samples) representing the number of samples returned by the current phase error trace and phase error with frequency trace.
11.RF envelope trace length is an integer number (in units of samples) representing the number of samples returned by the current RF envelope trace.
12.RF envelope trace index to burst is an integer number (in units of samples) representing the trace sample which represents the start of bit 0 (zero) decision point of the useful part of the measured GSM burst.
13. I/Q vector trace length is an integer number (in units of samples) representing the number of samples returned by the current RF envelope trace (i.e. this number divided by two represents the number of sample pairs in the trace.)
14. Raw I/Q vector trace length is an integer number (in units of samples) representing the number of samples returned by the current RF envelope trace (i.e. this number divided by two represents the number of sample pairs in the trace).
15. Raw I/Q vector trace index to burst is an integer number (in units of samples) representing the trace sample which represents the start of bit 0 (zero) decision point of the useful part of the measured GSM burst.

hpesa_RESULTS_TYPE_2: Returns a series of floating point numbers (in degrees) that represent each sample of the current phase error trace data over the useful part of the measured GSM burst. It contains n samples, where n = phase error trace length scalar value. The first sample represents the start of bit 0 (zero) of the useful part of the demodulated burst.

hpesa_RESULTS_TYPE_3:  Returns a series of floating point numbers (in degrees) that represent each sample of the current phase error with frequency trace data over the useful part of the measured GSM burst. Phase error with frequency is the error vector between the measured phase (that has not had frequency
compensation) and the ideal reference phase. It contains n samples, where n = phase error trace length scalar value. The first sample represents the start of bit 0 (zero) of the useful part of the demodulated burst.

hpesa_RESULTS_TYPE_4: Returns a series of floating point numbers (in dB relative to peak of signal) that represent each sample of the complete current time record RF envelope trace data. It contains n samples where n =RF envelope trace length scalar value.

The start of bit 0 (zero) so the useful part of the measured GSM burst within the sample time record is located at:

     I(x), Q(x)

where x = RF envelope trace index to burst.
     Q    Trace data returned by measurement, formatted according to GSM_PFERResultsType.     ;    Specifies the maximum size of GSM_PFERDataResults array.
     9    Returns the actual size of GSM_PFERDataResults array.

   5�k���  �    Status                           7� !  �  �    Instrument Handle                7� $  �  �    GSM PFER Measure Trace Timeout   8� `  � �    GSM PFER Measure Trace Type      <� �  � �    GSM PFER Results Type            QE $h �  �    GSM PFER Data Results            Q� �  �  �    GSM PFER Data Results Max Size   Q� `h �  �    GSM PFER Data Results Size         	           0    100.0               8Measure hpesa_MEASURE Read hpesa_READ Fetch hpesa_FETCH              �Results Type 0 hpesa_RESULTS_TYPE_0 Results Type 1 hpesa_RESULTS_TYPE_1 Results Type 2 hpesa_RESULTS_TYPE_2 Results Type 3 hpesa_RESULTS_TYPE_3 Results Type 4 hpesa_RESULTS_TYPE_4    	            2    	            �    This method sets the averaging for GSM phase and frequency error measurements.  User can control the number of averages, turn off or on averaging, set the terminal control mode for averaging, and set the average type.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Set the number of bursts that will be averaged. After the specified number of bursts (average counts), the averaging mode (terminal control) setting determines the averaging action. The instrument range is 1 to 1000.     d    Sets the state of averaging, either on or off.

VI_TRUE = Averaging on.
VI_FALSE = Averaging off.
    �    Select the type of termination control used for the averaging function.  This determines the averaging action after the specified number of frames (average count) is reached.

hpesa_AVERAGE_EXPONENTIAL - Each successive data acquisition after the average count is reached, is exponentially weighted and combined with the existing average.

hpesa_AVERAGE_REPEAT - After reaching the average count, the averaging is reset and a new average is started.
     �    Selects the type of averaging.

hpesa_AVERAGE_MEAN - the scalar results are averaged.
hpesa_AVERAGE_MAX - the maximum scalar results are retained.
   U�k���  �    Status                           W� "  �  �    Instrument Handle                X $ B �      GSM PFER Average Count           X� ` S �       GSM PFER Average State           Ye �  � �    GSM PFER Average Mode            [1 �  � �    GSM PFER Average Type              	           0      �      
           On VI_TRUE Off VI_FALSE              BExponential hpesa_AVERAGE_EXPONENTIAL Repeat hpesa_AVERAGE_REPEAT              2Mean hpesa_AVERAGE_MEAN Maximum hpesa_AVERAGE_MAX    \    This method retrieves the average settings for GSM phase and frequency error measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     $    Returns the current average count.     ?    Returns the current average state.

0 = VI_FALSE
1 = VI_TRUE
     \    Returns the current average mode.

0 = hpesa_AVERAGE_EXPONENTIAL
1 = hpesa_AVERAGE_REPEAT
     O    Selects the type of averaging.

0 = hpesa_AVERAGE_MEAN
1 = hpesa_AVERAGE_MAX
   ^Ek���  �    Status                           `# "  �  �    Instrument Handle                `m $h �  �    GSM PFER Average Count Query     `� `h �  �    GSM PFER Average State Query     `� �h �  �    GSM PFER Average Mode Query      aD �h �  �    GSM PFER Average Type Query        	           0    	            	            	            	            ~    This method selects the trigger source used to control the data acquisitions for GSM phase and frequency error measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().    �    Sets the trigger source.

hpesa_PFER_TRIG_IMMEDIATE - the next data acquisition is immediately taken, capturing the signal asynchronously (also called free run). 

hpesa_PFER_TRIG_EXTERNAL - external trigger input. Uses rear panel.

hpesa_PFER_TRIG_RFBURST - internal wideband RF burst envelope trigger that has automatic level control for periodic burst signals.

hpesa_PFER_TRIG_FRAME - uses the internal frame timer, which has been synchronized to the selected burst sync.

   c�k���  �    Status                           e~ "  �  �    Instrument Handle                e� ` � � �    GSM PFER Trigger Source            	           0              �Free Run hpesa_PFER_TRIG_IMMEDIATE External hpesa_PFER_TRIG_EXTERNAL RF Burst hpesa_PFER_TRIG_RFBURST Frame hpesa_PFER_TRIG_FRAME    b    This method retrieves the current trigger source for GSM phase and frequency error measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Returns the current trigger source.

0 = hpesa_PFER_TRIG_IMMEDIATE
1 = hpesa_PFER_TRIG_EXTERNAL
2 = hpesa_PFER_TRIG_RFBURST
3 - hpesa_PFER_TRIG_FRAME 
   iZk���  �    Status                           k8 "  �  �    Instrument Handle                k� ` � �  �    GSM PFER Trigger Source Query      	           0    	            n    This method selects the method of synchronizing the phase and frequency error measurement to the GSM bursts.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().    �    Sets the burst synchronization.

hpesa_BURST_SYNC_TSEQ - the training sequence burst sync performs a demodulation of the burst and determines the start and stop of the useful part of the burst based on the midamble training sequence.

hpesa_BURST_SYNC_RFAMP - the RF amplitude burst sync approximates the start and stop of the useful part of the burst without demodulation of the burst.   mUk���  �    Status                           o3 "  �  �    Instrument Handle                o} ` � � �    GSM PFER Burst Sync                	           0               HTraining Seq. hpesa_BURST_SYNC_TSEQ RF Amplitude hpesa_BURST_SYNC_RFAMP    x    This method retrieves the current method of synchronizing the phase and frequency error measurement to the GSM bursts.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     _    Returns the current burst sync source.

0 = hpesa_BURST_SYNC_TSEQ
1 = hpesa_BURST_SYNC_RFAMP
   r�k���  �    Status                           tn "  �  �    Instrument Handle                t� ` � �  �    GSM PFER Burst Sync Query          	           0    	            �    This method sets up the instrument for Output RF Spectrum (ORFS) measurements using the factory default instrument settings and stops the current measurement. It does not initiate the taking of measurement data.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().   v�k���  �    Status                           x� "  �  �    Instrument Handle                  	           0   g    This measures adjacent channel power for GSM measurements. From 1 to 15 offsets can be measured at one time. 

User can select one of three types of measurement modes: Measure, Read, or Fetch.                                                      

This method returns the ORFS measurement results specified by the "GSM_ORFSResultsType" parameter as a real array.

NOTE:  With some GSM firmware version (1.03 or lower), Results Type 3 will cause an "system error" and a "query unterminated" error, resulting in this function timing out.  Contact your distributor to see if there is an upgrade for the GSM firmware.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    This value temporarily changes the VISA timeout setting for the duration of the instrument measurement. The user needs to set this value to an appropriate time that will be longer then the expected measurement time. Units are in seconds.    �    Selects measurement type. Note that for hpesa_FETCH type the instrument should already be in this measurement mode else the function will time out. User can select this measurement mode by first using the "MEASURE" or "READ" types or call the hpesa_GSM_ORFSConfigure function.                             
                                                               
hpesa_MEASURE - Stops current measurement, changes to this selected measurement, sets up instrument using factory defaults, makes measurement, returns measurement results.                      
                                                               
hpesa_READ - Stops current measurement,  changes to this selected measurement, uses instrument settings from last measurement of this type, makes measurement, returns measurements results.         
                                                               
hpesa_FETCH - Returns measurements results only. No new measurement is initiated.
    	    hpesa_RESULTS_TYPE_0 - Not supported by instrument.

hpesa_RESULTS_TYPE_1 (Multiple Offsets) - Returns an array of values for the modulation spectrum at all the offsets (lower and upper.) This is followed by the switching transients results at all the offsets (lower and upper). Note that the carrier is considered offset zero (0) and is the first set of results sent. Four values are provided for each of the offsets (including the carrier), in this order:

1. Negative offset(a) - power relative to carrier (dB)
2. Negative offset(a) - absolute average power (dBm)
3. Positive offset(a) - power relative to carrier (dB)
4. Positive offset(a) - absolute average power (dBm)

Values for all possible offsets are sent. Zeros are sent for offsets that have not been defined. The total number of values sent (120) = (4 results/offset) � (15 offsets) � (2 measurement types - modulation & switching)

Carrier - modulation measurement values
Offset 1 - modulation measurement values and so on
Offset 14 - modulation measurement values
Carrier - switching transients measurement values
Offset 16 - switching transients measurement values
Offset 29 - switching transients measurement values and
so on

This measurement defaults to modulation measurements and not switching measurements. If you want to return the switching measurement values, you must change that default condition and use FETCH or READ to return values, rather than MEASURE.

NOTE: When using custom modulation and switching offsets the maximum number of measured values returned is: 
13 modulation offsets + 0 Hz carrier
4 switching offsets + 0 Hz carrier

hpesa_RESULTS_TYPE_1 (Single offset) - Returns 4 comma-separated results for the specified offset:

1. Modulation spectrum power, dBc
2. Modulation spectrum power, dBm
3. Switching transient power, dBc
4. Switching transient power, dBm

hpesa_RESULTS_TYPE_1 (Swept) - Returns l boolean value: 1 if limits passed, 0 if limits failed.

hpesa_RESULTS_TYPE_2 (Single offset) -  Returns floating point numbers (in dBm) of the captured trace data. It contains 401 data points of the "spectrum due to modulation" signal. Single offset 3 Returns floating point numbers (in dBm) of the captured trace data. It contains 401 points of the "spectrum due to switching transients" signal.

hpesa_RESULTS_TYPE_2 (Swept) - Returns floating point numbers (in dBm) of the captured trace data. It contains 401 points of the "spectrum due to modulation" signal.

hpesa_RESULTS_TYPE_3 (Single offset) - Returns floating point numbers (in dBm) of the captured trace data. It contains 401 points of the "spectrum due to switching transients" signal.

hpesa_RESULTS_TYPE_3 (Swept) - Returns floating point numbers (in dBm) of the captured trace data. It contains 401 points of the "spectrum due to switching transients" signal.
     R    Trace data returned by measurement, formatted according to GSM_ORFSResultsType.
     :    Specifies the maximum size of GSM_ORFSDataResults array.     7    Returns the actual size of GSM_ORFSDataResults array.   {�k���  �    Status                           }� !  �  �    Instrument Handle                }� $  �  �    GSM ORFS Measure Trace Timeout   ~� `  � �    GSM ORFS Measure Trace Type      �� �  � �    GSM ORFS Results Type            �� $h �  �    GSM ORFS Data Results            �* �  �  �    GSM ORFS Data Results Max Size   �l `h �  �    GSM ORFS Data Results Size         	           0    30               8Measure hpesa_MEASURE Read hpesa_READ Fetch hpesa_FETCH              �Results Type 0 hpesa_RESULTS_TYPE_0 Results Type 1 hpesa_RESULTS_TYPE_1 Results Type 2 hpesa_RESULTS_TYPE_2 Results Type 3 hpesa_RESULTS_TYPE_3    	            1    	            �    This method sets the averaging for GSM power vs. time measurements.  User can control the number of averages, turn off or on averaging, and set the terminal control mode for averaging.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     d    Sets the state of averaging, either on or off.

VI_TRUE = Averaging on.
VI_FALSE = Averaging off.
    �    Select the type of termination control used for the averaging  function.  This determines the averaging action after the specified number of frames (average count) is reached. This mode is reset to "Repeat" if the measurement method selected is "Multi-Offset" (as set by the "hpesa_GSM_ORFSSetMeasurementMode" function). Instrument measurement method default setting is "Repeat".

hpesa_AVERAGE_EXPONENTIAL - Each successive data acquisition after the average count is reached, is exponentially weighted and combined with the existing average.

hpesa_AVERAGE_REPEAT - After reaching the average count, the averaging is reset and a new average is started.
    `    Set the number of bursts that will be averaged. For the output RF spectrum due to switching transients, it is more accurate to consider this the number of frames that are measured. After the specified number of bursts (average counts), the averaging mode (terminal control) setting determines the averaging action.  The instrument range is 1 to 1000.   �/k���  �    Status                           � "  �  �    Instrument Handle                �W ` S �       GSM ORFS Average State           �� �  � �    GSM ORFS Average Mode            �\ $  �  �    GSM ORFS Average Count             	           0    On VI_TRUE Off VI_FALSE              BExponential hpesa_AVERAGE_EXPONENTIAL Repeat hpesa_AVERAGE_REPEAT    10    U    This method retrieves the average settings for GSM output RF spectrum measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     $    Returns the current average count.     ?    Returns the current average state.

0 = VI_FALSE
1 = VI_TRUE
     \    Returns the current average mode.

0 = hpesa_AVERAGE_EXPONENTIAL
1 = hpesa_AVERAGE_REPEAT
   ��k���  �    Status                           �� "  �  �    Instrument Handle                �� $h �  �    GSM ORFS Average Count Query     � `h �  �    GSM ORFS Average State Query     �H �h �  �    GSM ORFS Average Mode Query        	           0    	            	            	            a    This method selects the measurement method to be used with GSM output RF spectrum measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().    e    Selects the measurement method to be used.

hpesa_ORFS_MEASURE_MULTIPLE - the measurement is done at all offsets in the offset frequency list.

hpesa_ORFS_MEASURE_SINGLE - the measurement is done at only one offset as determined by the offset frequency setting. This allows detailed examination of the time-domain waveform at the specified offset frequency.

hpesa_ORFS_MEASURE_SWEPT - the measurement is done in the frequency domain. For output RF spectrum due to modulation it is done using time-gated spectrum analysis to sweep the analyzer with the gate turned on for the desired portion of the burst only.
   �Sk���  �    Status                           �1 "  �  �    Instrument Handle                �{ ` � � �    GSM ORFS Meas Mode                 	           0               pMulti-Offset hpesa_ORFS_MEASURE_MULTIPLE Single Offset hpesa_ORFS_MEASURE_SINGLE Swept hpesa_ORFS_MEASURE_SWEPT    ^    This method retrieves the current measurement method for GSM output RF spectrum measurements    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Returns the current measurement method.

0 = hpesa_ORFS_MEASURE_MULTIPLE
1 = hpesa_ORFS_MEASURE_SINGLE
2 = hpesa_ORFS_MEASURE_SWEPT
   �}k���  �    Status                           �[ "  �  �    Instrument Handle                �� ` � �  �    GSM ORFS Meas Mode Query           	           0    	            S    This method selects the measurement type for GSM output RF spectrum measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Selects the measurement type.

hpesa_ORFS_TYPE_MOD - only the modulation spectrum is measured.
hpesa_ORFS_TYPE_SWITCH - only the switching transient spectrum is measured.
   �Jk���  �    Status                           �( "  �  �    Instrument Handle                �r ` � � �    GSM ORFS Meas Type                 	           0               =Modulation hpesa_ORFS_TYPE_MOD Switch hpesa_ORFS_TYPE_SWITCH    Y    This method retrieves the current measurement type for output RF spectrum measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     \    Returns the current measurement type.

0 = hpesa_ORFS_TYPE_MOD
1 = hpesa_ORFS_TYPE_SWITCH
   ��k���  �    Status                           �b "  �  �    Instrument Handle                �� ` � �  �    GSM ORFS Meas Type Query           	           0    	            �    This method selects the list of frequency offsets and bandwidths to be used to make the ORFS measurement. Frequency offsets are used only in ORFS multiple measurement method for both ORFS due to modulation and switching transients.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().    �    Select the list of frequency offsets and bandwidths to be used to make the ORFS measurement. Frequency offsets are used only in ORFS
multiple measurement method for both ORFS due to modulation and
switching transients.

hpesa_ORFS_OFFSET_STANDARD - the complete list of the offset frequencies specified in the GSM Standards, except for those offsets greater than 6 MHz. It uses two internal offset frequency lists, one for modulation spectrum and the other for switching transient spectrum. These offset frequencies cannot be changed, but the resolution bandwidths can be changed by other commands in the SENSe:ORFSpectrum subsystem.

hpesa_ORFS_OFFSET_SHORT - a shortened list of the offset frequencies specified in the GSM Standards. It uses two internal offset frequency lists, one for modulation spectrum and the other for switching transient spectrum. These offset frequencies cannot be changed, but the resolution bandwidths can be changed by other commands in the SENSe:ORFSpectrum subsystem.

   ��k���  �    Status                           �� "  �  �    Instrument Handle                �� ` � � �    GSM ORFS Offset List Type          	           0              BStandard hpesa_ORFS_OFFSET_STANDARD Short hpesa_ORFS_OFFSET_SHORT    c    This method retrieves the current offset frequency list type for output RF spectrum measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     n    Returns the current offset frequency list type.

0 = hpesa_ORFS_OFFSET_STANDARD
1 = hpesa_ORFS_OFFSET_SHORT
   �Ek���  �    Status                           �# "  �  �    Instrument Handle                �m ` � �  �    GSM ORFS Offset List Type Query    	           0    	            �    This method sets the offset frequency that is used to measure a single offset.  This function is only valid if the measurement method is has been previously set to single offset via hpesa_GSM_ORFSSetMeasurementMode.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().         Sets the offset frequency.
   ��k���  �    Status                           �^ "  �  �    Instrument Handle                �� ` � �  �    GSM ORFS Offset Freq               	           0    2.5e5    u    Returns the current offset frequency being used to measure a single offset for GSM output RF spectrum measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     '    Returns the current offset frequency.   �k���  �    Status                           �� "  �  �    Instrument Handle                �+ ` � �  �    GSM ORFS Offset Freq Query         	           0    	           N    This method sets the trigger source for GSM output RF spectrum measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().         Select the trigger source used to control the data acquisitions.

hpesa_ORFS_TRIG_IMMEDIATE - the next data acquisition is immediately taken, capturing the signal asynchronously (also called free run).

hpesa_ORFS_TRIG_EXTERNAL - front panel external trigger input.

hpesa_ORFS_TRIG_RFBURST - internal wideband RF burst envelope trigger that has automatic level control for periodic burst signals.

hpesa_ORFS_TRIG_FRAME - uses the internal frame timer, which has been synchronized to the selected burst sync.
   �lk���  �    Status                           �J "  �  �    Instrument Handle                Ɣ ` � � �    GSM ORFS Trigger Source            	           0              �Free Run hpesa_ORFS_TRIG_IMMEDIATE External hpesa_ORFS_TRIG_EXTERNAL RF Burst hpesa_ORFS_TRIG_RFBURST Frame hpesa_ORFS_TRIG_FRAME    W    This method retrieves the current trigger source for output RF spectrum measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Returns the current trigger source.

0 = hpesa_ORFS_TRIG_IMMEDIATE
1 = hpesa_ORFS_TRIG_EXTERNAL
2 = hpesa_ORFS_TRIG_RFBURST
3 = hpesa_ORFS_TRIG_FRAME
   �<k���  �    Status                           � "  �  �    Instrument Handle                �d ` � �  �    GSM ORFS Trigger Source Query      	           0    	            d    This method sets the method of synchronizing the output RF spectrum measurement to the GSM bursts.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().    �    Select the method of synchronizing the measurement to the GSM bursts.

hpesa_BURST_SYNC_TSEQ - the training sequence burst sync performs a demodulation of the burst and determines the start and stop of the useful part of the burst based on the midamble training sequence.

hpesa_BURST_SYNC_RFAMP - the RF amplitude burst synch approximates the start and stop of the useful part of the burst without digital demodulation of the burst.

hpesa_BURST_SYNC_NONE - performs no burst synchronization.
   �,k���  �    Status                           �
 "  �  �    Instrument Handle                �T ` � � �    GSM ORFS Burst Sync Source         	           0               bTraining Seq hpesa_BURST_SYNC_TSEQ RF Amplitude hpesa_BURST_SYNC_RFAMP None hpesa_BURST_SYNC_NONE    ^    This method retrieves the current burst sync source for GSM output RF spectrum measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     y    Returns the current burst sync source.

0 = hpesa_BURST_SYNC_TSEQ
1 = hpesa_BURST_SYNC_RFAMP
2 = hpesa_BURST_SYNC_NONE
   ��k���  �    Status                           ձ "  �  �    Instrument Handle                �� ` � �  �    GSM ORFS Burst Sync Source Q       	           0    	           �    This method sets wideband noise function to ON or OFF. When set to OFF, the analyzer is tuned to the carrier and -1800 kHz to +1800 kHz either side of the center frequency is swept. When set to ON, the whole of the relevant band 2 MHz either side is swept.

The wideband noise function is only enabled (and can only be set) when the measurement method is set to "Swept" mode. The measurement method can be set with the "hpesa_GSM_ORFSSetMeasurementMode" function.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     v    Sets wideband noise state.

VI_TRUE - Sets wideband noise function on.
VI_FALSE - Sets wideband noise function off.
   �k���  �    Status                           �� "  �  �    Instrument Handle                �: ` � �       GSM ORFS WBNoise                   	           0    On VI_TRUE Off VI_FALSE    q    This method retrieves the current state of the wideband noise function for GSM output RF spectrum measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     V    Returns the current state of the wideband noise function.

0 = VI_FALSE
1 = VI_TRUE
   ��k���  �    Status                           �� "  �  �    Instrument Handle                �$ ` � �  �    GSM ORFS WBNoise Query             	           0    	            �    This method sets up the instrument for GSM Transmit Band Spur (TSP) measurements using the factory default instrument settings and stops the current measurement. It does not initiate the taking of measurement data.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().   �k���  �    Status                           �� "  �  �    Instrument Handle                  	           0    �    This method measures the power in the channel. It compares the average power of the RF signal burst to a specified threshold value.
 
The user can select one of three types of measurement modes: Measure, Read, or Fetch. 
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    This value temporarily changes the VISA timeout setting for the duration of the instrument measurement. The user needs to set this value to an appropriate time that will be longer then the expected measurement time. Units are in seconds.    �    Selects measurement type. Note that for hpesa_FETCH type the instrument should already be in this measurement mode else the function will time out. User can select this measurement mode by first using the "MEASURE" or "READ" types or call the hpesa_GSM_TSPConfigure function.
 
hpesa_MEASURE - Stops current measurement, changes to this selected measurement, sets up instrument using factory defaults, makes measurement, returns measurement results.

hpesa_READ - Stops current measurement,  changes to this selected measurement, uses instrument settings from last measurement of this type, makes measurement, returns measurements results. 
 
hpesa_FETCH - Returns measurements results only. No new measurement is initiated.
     +    The frequency of the worst spur (in Hz).
     <    The amplitude of the worst spur relative to limit (in dB).     .    Float32NAN is returned at all times for GSM.   �k���  �    Status                           � "  �  �    Instrument Handle                �� $  �  �    GSM TSP Measure Timeout          �� `  � �    GSM TSP Measure Type             � $h �  �    GSM TSP Worst Spur Freq Query    �� _j �  �    GSM TSP Worst Spur Amp Query     � �h �  �    GSM TSP Float32 NAN Query          	           0    100.0               8Measure hpesa_MEASURE Read hpesa_READ Fetch hpesa_FETCH    	           	           	          y    This method measures the GSM spurious emissions in the transmit band relative to the channel power in the selected channel.

User can select one of three types of measurement modes: Measure, Read, or Fetch.                                                      

This method returns the TSP measurement results specified by the "GSM_TSPResultsType" parameter as a real array.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    This value temporarily changes the VISA timeout setting for the duration of the instrument measurement. The user needs to set this value to an appropriate time that will be longer then the expected measurement time. Units are in seconds.    �    Selects measurement type. Note that for hpesa_FETCH type the instrument should already be in this measurement mode else the function will time out. User can select this measurement mode by first using the "MEASURE" or "READ" types or call the hpesa_GSM_TSPConfigure function.                             
                                                               
hpesa_MEASURE - Stops current measurement, changes to this selected measurement, sets up instrument using factory defaults, makes measurement, returns measurement results.                      
                                                               
hpesa_READ - Stops current measurement,  changes to this selected measurement, uses instrument settings from last measurement of this type, makes measurement, returns measurements results.         
                                                               
hpesa_FETCH - Returns measurements results only. No new measurement is initiated.
    D    hpesa_RESULTS_TYPE_0:  Not supported by instrument.

hpesa_RESULTS_TYPE_1:  Returns 3 scalar results:
1. The frequency of the worst spur (in Hz)
2. The amplitude of the worst spur relative to limit (in dB)
3. Float32NAN is returned at all times for GSM

hpesa_RESULTS_TYPE_2:  Returns the current trace data (401 points).
     P    Trace data returned by measurement, formatted according to GSM_TSPResultsType.     9    Specifies the maximum size of GSM_TSPDataResults array.     6    Returns the actual size of GSM_TSPDataResults array.   ��k���  �    Status                           � !  �  �    Instrument Handle                �� $  �  �    GSM TSP Measure Trace Timeout    �� `  � �    GSM TSP Measure Trace Type       �� �  � �    GSM TSP Results Type             � $h �  �    GSM TSP Data Results             �d �  �  �    GSM TSP Data Results Max Size    �� `h �  �    GSM TSP Data Results Size          	           0    100.0               8Measure hpesa_MEASURE Read hpesa_READ Fetch hpesa_FETCH              lResults Type 0 hpesa_RESULTS_TYPE_0 Results Type 1 hpesa_RESULTS_TYPE_1 Results Type 2 hpesa_RESULTS_TYPE_2    	            3    	            �    This method sets the averaging for GSM transmit band spur (TSP) measurements.  User can control the number of averages, turn off or on averaging, set the terminal control mode for averaging, and set the average type.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     d    Sets the state of averaging, either on or off.

VI_TRUE = Averaging on.
VI_FALSE = Averaging off.
     �    Set the number of data acquisitions that will be averaged. After the specified number of average counts, the averaging mode (terminal control) setting determines the averaging action. The instrument range is 1 to 1000.   �fk���  �    Status                           �D "  �  �    Instrument Handle                �� ` S �       GSM TSP Average State            �� $  �  �    GSM TSP Average Count              	           0   On VI_TRUE Off VI_FALSE    10    U    This method retrieves the average settings for GSM transmit band spur measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     $    Returns the current average count.    Ak���  �    Status                            "  �  �    Instrument Handle                i $h �  �    GSM TSP Average Count Query     ���� `h �  �    GSM TSP Average State Query        	           0    	            	            P    This method sets the measurement type for GSM transmit band spur measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Selects the measurement type.

hpesa_TSP_MEAS_TYPE_EXAMINE - measures spurs in all the valid segments and then displays the segment that has the worst spur.

hpesa_TSP_MEAS_TYPE_FULL - continuously measures the spurs in all the valid segments.
   �k���  �    Status                           � "  �  �    Instrument Handle                 ` � � �    GSM TSP Meas Type                  	           0              BExamine hpesa_TSP_MEAS_TYPE_EXAMINE Full hpesa_TSP_MEAS_TYPE_FULL    ]    This method retrieves the current measurement type for GSM transmit band spur measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     f    Returns the current measurement type.

0 = hpesa_TSP_MEAS_TYPE_EXAMINE
1 = hpesa_TSP_MEAS_TYPE_FULL
   vk���  �    Status                           
T "  �  �    Instrument Handle                
� ` � �  �    GSM TSP Meas Type Query            	           0    	            W    This method sets the maximum limit value for the GSM transmit band spur measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().    |    Determines the radio device to set the limit for.

hpesa_GSM_RADIO_DEVICE_MS - Mobile station transmitter.
hpesa_GSM_RADIO_DEVICE_BTS - Base station transmitter.
hpesa_GSM_RADIO_DEVICE_UBTS1 - Micro base station class M1 transmitter.
hpesa_GSM_RADIO_DEVICE_UBTS2 - Micro base station class M2 transmitter.
hpesa_GSM_RADIO_DEVICE_UBTS3 - Micro base station class M3 transmitter.
     %    Set the maximum limit value in dBm.     �    Determines the standard band that the limit will be applied to.

hpesa_GSM_RADIO_BAND_PGSM - P-GSM 900
hpesa_GSM_RADIO_BAND_EGSM - E-GSM 900
hpesa_GSM_RADIO_BAND_RGSM - R-GSM 900
hpesa_GSM_RADIO_BAND_DCS - DCS 1800
hpesa_GSM_RADIO_BAND_PCS - PCS 1900
   'k���  �    Status                            "  �  �    Instrument Handle                O V  � �    GSM TSP Limit Device             � �  �  �    GSM TSP Max Limit                    � �    GSM TSP Standard Band              	           0              �MS hpesa_GSM_RADIO_DEVICE_MS BTS hpesa_GSM_RADIO_DEVICE_BTS uBTS Class M1 hpesa_GSM_RADIO_DEVICE_UBTS1 uBTS Class M2 hpesa_GSM_RADIO_DEVICE_UBTS2 uBTS Class M3 hpesa_GSM_RADIO_DEVICE_UBTS3    -36.0              �P-GSM 900 hpesa_GSM_RADIO_BAND_PGSM E-GSM 900 hpesa_GSM_RADIO_BAND_EGSM R-GSM 900 hpesa_GSM_RADIO_BAND_RGSM DCS 1800 hpesa_GSM_RADIO_BAND_DCS PCS 1900 hpesa_GSM_RADIO_BAND_PCS    `    This method retrieves the current maximum limit value for GSM transmit band spur measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     "    Returns the current limit value.    ~    Determines the radio device to query the limit for.

hpesa_GSM_RADIO_DEVICE_MS - Mobile station transmitter.
hpesa_GSM_RADIO_DEVICE_BTS - Base station transmitter.
hpesa_GSM_RADIO_DEVICE_UBTS1 - Micro base station class M1 transmitter.
hpesa_GSM_RADIO_DEVICE_UBTS2 - Micro base station class M2 transmitter.
hpesa_GSM_RADIO_DEVICE_UBTS3 - Micro base station class M3 transmitter.
     �    Determines the standard band to query the limit for.

hpesa_GSM_RADIO_BAND_PGSM - P-GSM 900
hpesa_GSM_RADIO_BAND_EGSM - E-GSM 900
hpesa_GSM_RADIO_BAND_RGSM - R-GSM 900
hpesa_GSM_RADIO_BAND_DCS - DCS 1800
hpesa_GSM_RADIO_BAND_PCS - PCS 1900
   k���  �    Status                           � "  �  �    Instrument Handle                C l �  �    GSM TSP Max Limit Query          m [  � �    GSM TSP Limit Device Q           �  ! � �    GSM TSP Standard Band Q            	           0    	                     �MS hpesa_GSM_RADIO_DEVICE_MS BTS hpesa_GSM_RADIO_DEVICE_BTS uBTS Class M1 hpesa_GSM_RADIO_DEVICE_UBTS1 uBTS Class M2 hpesa_GSM_RADIO_DEVICE_UBTS2 uBTS Class M3 hpesa_GSM_RADIO_DEVICE_UBTS3              �P-GSM 900 hpesa_GSM_RADIO_BAND_PGSM E-GSM 900 hpesa_GSM_RADIO_BAND_EGSM R-GSM 900 hpesa_GSM_RADIO_BAND_RGSM DCS 1800 hpesa_GSM_RADIO_BAND_DCS PCS 1900 hpesa_GSM_RADIO_BAND_PCS    J    This method sets the idle mode for GSM transmit band spur measurements.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Set idle mode to VI_TRUE if the transmitter is set to idle, or VI_FALSE if the transmitter has an active channel.

VI_TRUE - sets idle mode to On
VI_FALSE - sets idle mode to Off
   �k���  �    Status                           � "  �  �    Instrument Handle                 ` � �       GSM TSP Idle Mode                  	           0    On VI_TRUE Off VI_FALSE    V    This method retrieves the current idle mode for GSM transmit band spur measurements.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     A    Returns the current idle mode state.

0 = VI_TRUE
1 = VI_FALSE
   �k���  �    Status                           !� "  �  �    Instrument Handle                "& ` � �  �    GSM TSP Idle Mode Query            	           0    	           s    This method stops the current measurement and sets up the instrument for the specified measurement using the factory default instrument settings.  This will always set the instrument in single sweep mode and place the measurement in the idle state.
 
If the measurement is set to "Measure Off", the instrument will be placed in base instrument spectrum analyzer state.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().        The instrument's new measurement mode.

hpesa_MEASURE_MODE_OFF (default) - Sets the instrument in base instrument spectrum analyzer state.
hpesa_MEASURE_MODE_ADJACENT  - Sets the instrument in adjacent channel  power mode.
hpesa_MEASURE_MODE_CHANNEL - Sets the instrument in channel power mode.
hpesa_MEASURE_MODE_OCCUPIED - Sets the instrument in occupied bandwidth mode.
hpesa_MEASURE_MODE_EMISSION - Sets the instrument in emission bandwidth mode.
hpesa_MEASURE_MODE_HARMONIC - Sets the instrument in harmonic distortion mode.
   $�k���  �    Status                           &� "  �  �    Instrument Handle                &� a � � �    Measure Mode                       	           0              Measure Off hpesa_MEASURE_MODE_OFF Adjacent Channel Power hpesa_MEASURE_MODE_ADJACENT Channel Power hpesa_MEASURE_MODE_CHANNEL Occupied Bandwidth hpesa_MEASURE_MODE_OCCUPIED Emission Bandwidth hpesa_MEASURE_MODE_EMISSION Harmonic Distortion hpesa_MEASURE_MODE_HARMONIC    F    This method returns the current measurement state of the instrument.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Instrument's current measurement mode.

0 = Measure Off (Spectrum Analyzer)
1 = Adjacent Channel Power
2 = Channel Power
3 = Occupied Bandwidth
4 = Emission Bandwidth
5 = Harmonic Distortion
   +k���  �    Status                           ,� "  �  �    Instrument Handle                -, ` � �  �    Measure Mode Q                     	           0    	            G    This method sets up the adjacent channel power measurement operation.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     Y    Instrument's new ACP average state.

VI_TRUE - Averaging on.
VI_FALSE - Averaging off.
     =    Specifies the number of ACP measurements that are combined.     2    Instrument's new main (channel) bandwidth in Hz.     4    Instrument's new adjacent channel bandwidth in Hz.     2    Instrument's new adjacent channel spacing in Hz.   / k���  �    Status                           0� "  �  �    Instrument Handle                1( . � �       ACP Average On                   1� .@ �      ACP Average Count                1� t 2 �  }    ACP Mean Channel BW              2 t � �  }    ACP Adj Channel BW               2D tr �  }    ACP Channel Spacing                	           0   On VI_TRUE Off VI_FALSE      �      
           2e6    2e6    3e6    L    This method retrieves the adjacent channel power measurement setup values.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     )    Instrument's current ACP average state.     ;    Returns the number of ACP measurements that are combined.     6    Instrument's current main (channel) bandwidth in Hz.     8    Instrument's current adjacent channel bandwidth in Hz.     2    Instrument's new adjacent channel spacing in Hz.   4�k���  �    Status                           6{ "  �  �    Instrument Handle                6� B � �       ACP Average On Q                 6� B6 �       ACP Average Count Q              79 � 2 �  }    ACP Main Channel BW Q            7w � � �  }    ACP Adj Channel BW Q             7� �� �  }    ACP Channel Spacing Q              	           0    	            	            	           	           	           �    This method retrieves the main, lower, and upper channel power measurements from the instrument, based on the method of retrieval (measure, read, or fetch).    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().    �    The method used to retrieve the ACP measurements.

hpesa_MEASURE_METHOD_MEAS - Initiates and retrieves measurement data from the instrument, using factory default settings.
hpesa_MEASURE_METHOD_READ - Initiates and retrieves measurement data from the instrument, using the current setup values.
hpesa_MEASURE_METHOD_FETCH - Retrieves data from the instrument using the current setup values.  Does not initiate a measurement.
     E    The value of the main channel power in the current amplitude units.     P    The value of the lower channel power relative to the main channel power, in dB     Q    The value of the upper channel power relative to the main channel power, in dB.     5    Temporary timeout value in seconds for measurement.   :Wk���  �    Status                           <5 "  �  �    Instrument Handle                < 8, �      ACP Measure Type                 >2 � < �  }    Main ACP Q                       > � � �  }    Lower ACP Q                      >� �| �  }    Upper ACP Q                      ?0 8 � �       ACP Measure Timeout                	           0               bMeasure hpesa_MEASURE_METHOD_MEAS Read hpesa_MEASURE_METHOD_READ Fetch hpesa_MEASURE_METHOD_FETCH    	           	           	           10.0    >    This method sets up the channel power measurement operation.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     X    Instrument's new CHP average state.

VI_TRUE - Averaging on.
VI_FALSE - Averaging off.     =    Specifies the number of CHP measurements that are combined.     L    Instrument's new frequency span (bandwidth) over which to integrate power.     &    Instrument's new channel power span.   A�k���  �    Status                           C� "  �  �    Instrument Handle                C� 3 � �       CHP Average On                   D\ 3= �      CHP Average Count                D� ~ � �  }    CHP Integration BW               D� ~" �  ~    CHP Span                           	           0   On VI_TRUE Off VI_FALSE      �      
           2e6    3e6    <    This method retrieves the channel power setup information.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     )    Instrument's current CHP average state.     *    Instrument's current number of averages.     2    Instrument's current frequency span (bandwidth).     *    Instrument's current channel power span.   F�k���  �    Status                           H� "  �  �    Instrument Handle                I N � �       CHP Average On Q                 IO N3 �       CHP Average Count Q              I� � � �  }    CHP Integration BW Q             I� �, �  }    CHP Span Q                         	           0    	            	            	           	           �    This method retrieves the scalar results of the main channel power and power density from the instrument, based on the method of retrieval (measure, read, or fetch).    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     5    Temporary timeout value in seconds for measurement.     @    The value of the channel power in the current amplitude units.     ?    The value of the channel power density in amplitude units/Hz.   Lk���  �    Status                           M� "  �  �    Instrument Handle                NC B � �       ACP Measure Timeout             ���� B* �      ACP Measure Type                 N� � x �  }    CHP Channel Power Q              N� �" �  }    CHP Density Q                      	           0    10.0               bMeasure hpesa_MEASURE_METHOD_MEAS Read hpesa_MEASURE_METHOD_READ Fetch hpesa_MEASURE_METHOD_FETCH    	           	           C    This method sets up the occupied bandwidth measurement operation.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     h    Instrument's new occupied bandwidth average state.

VI_TRUE - Averaging on.
VI_FALSE - Averaging off.
     L    Specifies the number of occupied bandwidth measurements that are combined.     r    Instrument's new occupied bandwidth span.  The analyzer span will retain this value throughout the measurement.
     7    Instrument's new occupied bandwidth power in percent.   Q:k���  �    Status                           S "  �  �    Instrument Handle                Sb = � �       OBW Average On                   S� == �      OBW Average Count                T& � x �  }    OBW Span                         T� �@ �      OBW Percent Power                  	           0   On VI_TRUE Off VI_FALSE      �      
           3e6 ?�      @Y              @X�                   C    This method sets up the occupied bandwidth measurement operation.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     8    Instrument's current occupied bandwidth average state.     =    Instrument's current number of occupied bandwidth averages.     /    Instrument's current occupied bandwidth span.     ;    Instrument's current occupied bandwidth power in percent.   V�k���  �    Status                           X� "  �  �    Instrument Handle                Y N � �       CHP Average On Q                 YE N3 �       CHP Average Count Q              Y� � � �  }    OBW Span Q                       Y� �" �  }    OBW Percent Power Q                	           0    	            	            	           	           �    This method retrieves the scalar results of occupied bandwidth and transmit frequency error from the instrument, based on the method of retrieval (measure, read, or fetch).    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     5    Temporary timeout value in seconds for measurement.    �    The method used to retrieve the occupied bandwidth measurements.

hpesa_MEASURE_METHOD_MEAS - Initiates and retrieves measurement 
data from the instrument, using factory default settings.
hpesa_MEASURE_METHOD_READ - Initiates and retrieves measurement 
data from the instrument, using the current setup values.
hpesa_MEASURE_METHOD_FETCH - Retrieves data from the instrument using the current setup values.  Does not initiate a measurement.     ,    The value of the occupied bandwidth in Hz.     .    The value of transmit frequency error in Hz.   \9k���  �    Status                           ^ "  �  �    Instrument Handle                ^a 8 � �       OBW Measure Timeout              ^� 8* �      OBW Measure Type                 `a � x �  }    OBW Occupied Bandwidth Q         `� �, �  }    OBW Freq Error Q                   	           0    10.0               bMeasure hpesa_MEASURE_METHOD_MEAS Read hpesa_MEASURE_METHOD_READ Fetch hpesa_MEASURE_METHOD_FETCH    	           	           C    This method sets up the emission bandwidth measurement operation.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     Y    Instrument's new EBW average state.

VI_TRUE - Averaging on.
VI_FALSE - Averaging off.
     =    Specifies the number of EBW measurements that are combined.     �    Turns on or off the trace max hold trace feature for emission bandwidth measurements.  Turning on the trace max hold will automatically turn off EBW averaging.

VI_TRUE - Trace max hold on.
VI_FALSE - Trace max hold off.
     ,    Instrument's new emission bandwidth span..     m    Sets the dB value (X dB) below the maximum value on the signal at which to measure the emission bandwidth.
   b�k���  �    Status                           d� "  �  �    Instrument Handle                e 3 � �       EBW Average On                   e 3= �      EBW Average Count                e� � Z �       EBW Max Hold                     f� � � �  }    EBW Span                         f� �� �      Emiss BW X dB                      	           0   On VI_TRUE Off VI_FALSE      �      
           On VI_TRUE Off VI_FALSE    3e6 ?�      @�@     ��@     �:                    @    This method retrieves the current emission bandwidth settings.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     8    Instrument's current emission bandwidth average state.     =    Instrument's current number of emission bandwidth averages.     ?    Instrument's current emission bandwidth trace max hold state.     /    Instrument's current emission bandwidth span.     l    Current dB value (X dB) below the maximum value on the signal at which to measure the emission bandwidth.
   i�k���  �    Status                           k} "  �  �    Instrument Handle                k� N � �       EBW Average On Q                 l O1 �       EBW Average Count Q              lL � < �       EBW Max Hold Q                   l� � � �  }    EBW Span Q                       l� �� �       Emiss BW X dB Q                    	           0    	            	            	            	           	               This method retrieves the emission bandwidth from the instrument, based on the method of retrieval (measure, read, or fetch).    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     5    Temporary timeout value in seconds for measurement.    �    The method used to retrieve the EBW measurements.

hpesa_MEASURE_METHOD_FETCH - Retrieves data from the instrument 
using the current setup values.  Does not initiate a measurement.
hpesa_MEASURE_METHOD_MEAS - Initiates and retrieves measurement data from the instrument, using factory default settings.
hpesa_MEASURE_METHOD_READ - Initiates and retrieves measurement data from the instrument, using the current setup values.
     ,    The value of the emission bandwidth in Hz.   o�k���  �    Status                           qc "  �  �    Instrument Handle                q� 8 � �       EBW Measure Timeout              q� 8* �      EBW Measure Type                 s� t � �  }    Emission Bandwidth Q               	           0    10.0               bMeasure hpesa_MEASURE_METHOD_MEAS Read hpesa_MEASURE_METHOD_READ Fetch hpesa_MEASURE_METHOD_FETCH    	           D    This method sets up the harmonic distortion measurement operation.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     ^    Instrument's new harmonic average state.

VI_TRUE - Averaging on.
VI_FALSE - Averaging off.
     B    Specifies the number of harmonic measurements that are combined.     )    The number of harmonics to be measured.    ,    Instrument's sweep mode per harmonic.

hpesa_HARMONIC_SWEEP_AUTO - The sweep time for measuring each harmonic will be set to 200/RBW, where RBW is the resolution bandwidth in Hz.
hpesa_HARMONIC_SWEEP_MANUAL - Allows the user to set the sweep time used for the zero span measuring of the harmonics.
    !    Instrument's new sweep time, in seconds, used to measure each harmonic.  This sweep time is used only for the zero span measuring of the harmonics, and not during the search for the fundamental.  In this case, the sweep time used will be the sweep time used before the measurement began.     �    Turn off or on the fundamental signal zoom before the frequency count occurs.

VI_TRUE - Fundamental align zoom on.
VI_FALSE - Fundamental align zoom off.
   u�k���  �    Status                           w� "  �  �    Instrument Handle                w� ) k �       Harmonic Dist Average On         xK ) � �      Harmonic Dist Average Count      x� )� �      Harmonic Dist Count              x� { k �       Harmonic Dist Sweep Mode         y� z � �       Harmnoic Dist Sweep Time         {# y� �       Harmonic Dist Center Zoom On       	           0   On VI_TRUE Off VI_FALSE      �      
             �      
         B Auto hpesa_HARMONIC_SWEEP_AUTO Manual hpesa_HARMONIC_SWEEP_MANUAL    .01   On VI_TRUE Off VI_FALSE    M    This method retrieves the current harmonic distortion measurement settings.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     .    Instrument's current harmonic average state.     @    The current number of harmonic measurements that are combined.     1    The current number of harmonics to be measured.     /    Instrument's current sweep mode per harmonic.     8    Instrument's current harmonic sweep time (in seconds).     2    Instrument's current harmonic signal zoom state.   ~�k���  �    Status                           �d "  �  �    Instrument Handle                �� N C �       ACP Average On Q                 �� N � �       ACP Average Count Q              �, N� �       Harmonic Dist Count Q            �e � C �       Harmonic Dist Sweep Mode Q       �� � � �       Harmonic Dist Sweep Time Q       �� �~ �       Harmonic Dist Center Zoom On Q     	           0    	            	            	            	            	           	            �    This method retrieves the total harmonic distortion as a percentage and the amplitude and frequency values of the harmonics, based on the method of retrieval (measure, read, or fetch).    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     5    Temporary timeout value in seconds for measurement.    �    The method used to retrieve the harmonic measurements.

hpesa_MEASURE_METHOD_MEAS - Initiates and retrieves measurement data from the instrument, using factory default settings.
hpesa_MEASURE_METHOD_READ - Initiates and retrieves measurement data from the instrument, using the current setup values. hpesa_MEASURE_METHOD_FETCH - Retrieves data from the instrument using the current setup values.  Does not initiate a measurement.
     0    The total harmonic distortion as a percentage.     �    The number of frequency and amplitude values to retrieve.  This value should normally be the same as the number of harmonics measured.
     �    An array of the amplitude values of the current harmonics.  The first value is measured in dBm (fundamental); all others are measured in dBc.
     K    An array of the frequency values of the current harmonics measured in Hz.     *    The actual number of harmonics measured.   ��k���  �    Status                           �� "  �  �    Instrument Handle                � . 9 �       Harmonic Dist Measure Timeout    �> . � �      Harmonic Dist Measure Type       �� � < �       Harmonic Dist Total Q            �. .� �      Harmonic Dist Array Size         �� ~ � �  }    Harmonic Dist Amplitude          �W � � �  }    Harmonic Dist Frequency          �� �� �       Harmonic Dist Values Read Q        	           0    100.0               bMeasure hpesa_MEASURE_METHOD_MEAS Read hpesa_MEASURE_METHOD_READ Fetch hpesa_MEASURE_METHOD_FETCH    	             �       
           	            	            	            ;    This method sets the spectrum analyzer's start frequency.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     )    Instrument's new start frequency in Hz.   ��k���  �    Status                           �� "  �  �    Instrument Handle                �� = � �  }    Start Frequency                    	           0    0    @    This method retrieves the spectrum analyzer's start frequency.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     -    Instrument's current start frequency in Hz.   �$k���  �    Status                           � "  �  �    Instrument Handle                �L : � �  }    Start Frequency Q                  	           0    	           :    This method sets the spectrum analyzer's stop frequency.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     (    Instrument's new stop frequency in Hz.   �k���  �    Status                           �] "  �  �    Instrument Handle                �� E � �  }    Stop Frequency                     	           0    0    ?    This method retrieves the spectrum analyzer's stop frequency.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     ,    Instrument's current stop frequency in Hz.   ��k���  �    Status                           �� "  �  �    Instrument Handle                �� E � �  }    Stop Frequency Q                   	           0    	           <    This method sets the spectrum analyzer's center frequency.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     *    Instrument's new center frequency in Hz.   �/k���  �    Status                           � "  �  �    Instrument Handle                �W @ � �  }    Center Frequency                   	           0    0    A    This method retrieves the spectrum analyzer's center frequency.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     .    Instrument's current center frequency in Hz.   ��k���  �    Status                           �e "  �  �    Instrument Handle                �� @ � �  }    Center Frequency Q                 	           0    	           :    This method sets the spectrum analyzer's span frequency.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     (    Instrument's new span frequency in Hz.   ��k���  �    Status                           �� "  �  �    Instrument Handle                � 5 � �  }    Span Frequency                     	           0    0    ?    This method retrieves the spectrum analyzer's span frequency.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     ,    Instrument's current span frequency in Hz.   �7k���  �    Status                           � "  �  �    Instrument Handle                �_ ? � �  }    Span Frequency Q                   	           0    	           F    This method sets the spectrum analyzer's center frequency step size.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     4    Instrument's new center frequency step size in Hz.   ��k���  �    Status                           �{ "  �  �    Instrument Handle                �� = � �  }    Center Frequency Step Size         	           0    0    =    This method steps the spectrum analyzer's center frequency.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     f    Direction to step the center frequency.

Values:
hpesa_STEP_UP - step up
hpesa_STEP_DOWN - step down   ��k���  �    Status                           �� "  �  �    Instrument Handle                �# H � � 2    Center Frequency Step Direction    	           0               &Up hpesa_STEP_UP Down hpesa_STEP_DOWN    �    This method sets the spectrum analyzer's span to either the instrument's full span, the previous frequency span, or zero span.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Select the type of span change to execute.

Values:
hpesa_SPANFULL - sets frequency to full
hpesa_SPANLAST - sets frequency to previous span
hpesa_SPANZERO - sets frequency span to 0 Hz.   ��k���  �    Status                           �� "  �  �    Instrument Handle                �& > � � d    Span Zoom Type                     	           0               KFull Span hpesa_SPANFULL Zero Span hpesa_SPANZERO Last Span hpesa_SPANLAST    E    This method sets the spectrum analyzer's amplitude reference level.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     P    Instrument's new amplitude reference level in current amplitude display units.   �Ak���  �    Status                           � "  �  �    Instrument Handle                �i A � �  }    Amplitude Ref Level                	           0    0    J    This method retrieves the spectrum analyzer's amplitude reference level.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     T    Instrument's current amplitude reference level in current amplitude display units.   ��k���  �    Status                           �� "  �  �    Instrument Handle                �� B � �  }    Amplitude Ref Level Q              	           0    	           L    This method sets the spectrum analyzer's amplitude reference level offset.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     :    Instrument's new amplitude reference level offset in dB.   �\k���  �    Status                           �: "  �  �    Instrument Handle                �� ? � �  }    Amplitude Ref Level Offset         	           0    0    L    This method gets the spectrum analyzer's amplitude reference level offset.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     >    Instrument's current amplitude reference level offset in dB.   ��k���  �    Status                           �� "  �  �    Instrument Handle                �� 7 � �  }    Amplitude Ref Level Offset Q       	           0    	              This method sets the spectrum analyzer's RF Input Attenuator value.  Setting the amplitude attenuation with this function uncouples the attenuator from the amplitude reference level.  To couple the attenuation to the reference level, use hpesa_amplitudeSetAttenuationAuto.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     U    Instrument's new attenuation in dB.  Range is 0 to instrument max in steps of 5 dB.   �k���  �    Status                           �� "  �  �    Instrument Handle                �; H � �      Amplitude Attenuation              	           0 @      @Y                                    J    This method retrieves the spectrum analyzer's RF Input Attenuator value.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     V    Instruments current amplitude attenuation in dB.  Range is 0 to 60 dB in 5 dB steps.   ��k���  �    Status                           ȣ "  �  �    Instrument Handle                �� : � �  }    Amplitude Attenuation Q            	           0    	           �    This method sets the spectrum analyzer's RF Input Attenuator value to be set automatically by the instrument as determined by the amplitude reference level.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().   ʭk���  �    Status                           ̋ "  �  �    Instrument Handle                  	           0       This method sets the spectrum analyzer's per division display scaling for the y-axis (amplitude) logarithmic scale format (type).  This setting doesn't affect the y-axis linear scale format, where the per division display scaling is always the reference level divided by 10.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Instrument's new per division display scaling for y-axis logarithmic scale.  Units are in dB.  

Log amplitude per division range is:
0.1 dB for steps 0.1 to 0.9
1.0 dB for steps 1.0 to 20.0   �lk���  �    Status                           �J "  �  �    Instrument Handle                Д E � �      Amplitude Scale                    	           0 ?�������@4      ?�������@$                    �    This method gets the spectrum analyzer's per division display scaling for the y-axis (amplitude).  This setting is only applicable to y-axis (amplitude) logarithmic scale format.  The setting has no meaning for linear scale format.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     E    Instrument's current per division display scaling for y-axis in dB.   �(k���  �    Status                           � "  �  �    Instrument Handle                �P < � �  }    Amplitude Scale Q                  	           0    	           i    This method sets the spectrum analyzer's display vertical scale format as either logarithmic or linear.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     H    Instrument's new display vertical scale format, logarithmic or linear.   ��k���  �    Status                           ب "  �  �    Instrument Handle                �� E � �      Amplitude Format                   	           0               @Logarithmic hpesa_FORMAT_LOGARITHMIC Linear hpesa_FORMAT_LINEAR    <    This method gets the spectrum analyzer's amplitude format.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     M    Instrument's current amplitude format.

Values:

0 = Logarithmic
1 = Linear   څk���  �    Status                           �c "  �  �    Instrument Handle                ܭ F � �       Current Amplitude Format           	           0    	            t    This method sets the spectrum analyzer's amplitude units for the input, output, and display for the active window.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     #    Instrument's new amplitude units.   �:k���  �    Status                           � "  �  �    Instrument Handle                �b ? � �      Amplitude Units                    	           0               pdBm hpesa_UNITS_DBM dBmV hpesa_UNITS_DBMV dBuV hpesa_UNITS_DBUV Volts hpesa_UNITS_VOLTS Watts hpesa_UNITS_WATTS    ;    This method gets the spectrum analyzer's amplitude units.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     Z    The instrument's current amplitude units.

0 = dBm
1 = dBmV
2 = dBuV
3 = Volts
4 = Watts   ��k���  �    Status                           �� "  �  �    Instrument Handle                �' > � �       Amplitude Units Q                  	           0    	            �    This method sets the spectrum analyzer's resolution bandwidth.  Setting the resolution bandwidth uncouples the setting from the frequency span.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     .    Instrument's new resolution bandwidth in Hz.   ��k���  �    Status                           � "  �  �    Instrument Handle                � A � �  }    BW Resoultion                      	           0    3e6    �    This method sets the spectrum analyzer's resolution bandwidth mode to AUTO, where the resolution bandwidth is coupled to the frequency span.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().   �k���  �    Status                           �g "  �  �    Instrument Handle                  	           0    �    This method sets the spectrum analyzer's video bandwidth.  Setting the video bandwidth uncouples the setting from the resolution bandwidth.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     )    Instrument's new video bandwidth in Hz.   ��k���  �    Status                           � "  �  �    Instrument Handle                �� = � �  }    BW Video                           	           0    3e6    �    This method sets the spectrum analyzer's video bandwidth mode to AUTO, where video bandwidth is coupled to the resolution bandwidth.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().   �_k���  �    Status                           �= "  �  �    Instrument Handle                  	           0    B    This method sets the spectrum analyzer's average type and count.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Specifies the type of averaging to use.

hpesa_AVERAGE_LPOWER - logarithmically averages the power of the video data (default).

hpesa_AVERAGE_POWER - averages the linear power of the successive measurements.     9    Specifies the number of measurements that are combined.   �Lk���  �    Status                           �* "  �  �    Instrument Handle                �t 8 ` �      BW Average Type                  �N :\ �      BW Average Count                   	           0               =Log Power hpesa_AVERAGE_LPOWER Avg Power hpesa_AVERAGE_POWER    ���                   @    This method turns the spectrum analyzer's averaging on or off.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.
     B    The instrument's VISA session handle returned from hpesa_init().     J    Instrument's new averaging state, either on (VI_TRUE) or off (VI_FALSE).   �k���  �    Status                           �� "  �  �    Instrument Handle                �H D �       BW Average On                      	           0   On VI_TRUE Off VI_FALSE    P    This method selects the spectrum analyzer's trace mode for the selected trace.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     &    Instrument's trace number to modify.    `    Instrument's new trace mode.

hpesa_TRACE_WRITE - Write puts the trace in the normal mode, updating the data (default).

hpesa_TRACE_MAXHOLD - Maximum hold displays the highest measured trace values for all the data that has been measured since the function was turned on.

hpesa_TRACE_MINHOLD - Minimum hold displays the lowest measured trace value for all the data that has been measured since the function was turned on.

hpesa_TRACE_VIEW - View turns on the trace data so that it can be viewed on the display.

hpesa_TRACE_BLANK - Blank turns off the trace data so that it is not viewed on the display.   ��k���  �    Status                           �� "  �  �    Instrument Handle                �� ? \ �      Trace Number                     � >M �      Trace Mode                         	           0               BTrace 1 hpesa_TRACE_1 Trace 2 hpesa_TRACE_2 Trace 3 hpesa_TRACE_3               �Clear Write hpesa_TRACE_WRITE Max Hold hpesa_TRACE_MAXHOLD Min Hold hpesa_TRACE_MINHOLD View hpesa_TRACE_VIEW Blank hpesa_TRACE_BLANK    j    This method selects the spectrum analyzer's source (or type) for triggering used to start a measurement.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().        Instrument's new trigger source (or type).

hpesa_TRIGGER_IMMEDIATE - free-run triggering (default).

hpesa_TRIGGER_VIDEO - triggers on the video signal.

hpesa_TRIGGER_EXTERNAL - triggers on the power line signal.

hpesa_TRIGGER_LINE - connect an external trigger source.   �k���  �    Status                           � "  �  �    Instrument Handle                � F � �      Trigger Source                     	           0               tImmediate hpesa_TRIGGER_IMMEDIATE Video hpesa_TRIGGER_VIDEO Line hpesa_TRIGGER_LINE External hpesa_TRIGGER_EXTERNAL    k    This method sets the spectrum analyzer's video trigger level for when the trigger source is set to video.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     D    Instrument's new trigger level in current amplitude display units.   �k���  �    Status                           	~ "  �  �    Instrument Handle                	� B � �      Video Trigger Level                	           0 ?�      @�@     ��@                          %    This method selects whether the trigger system is continuously initiated or not.  This corresponds to continuous measurement or single measurement operation.  

When set to ON at the completion of each trigger cycle, the trigger system immediately initiates another trigger cycle.  When set to OFF, the trigger system remains in "idle" state until continuous is set to ON or an INITiate[:IMMediate] command  is received.  On receiving the INITiate:[IMMediate] command, it will go through a single trigger cycle and then return to the "idle" state.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Instrument's new sweep mode.

hpesa_SWEEP_TRIGGER_SINGLE - single sweep mode.

hpesa_SWEEP_TRIGGER_CONTINUOUS - continuous sweep mode (default).   k���  �    Status                           � "  �  �    Instrument Handle                D J � �      Sweep Mode                         	           0              LSingle hpesa_SWEEP_TRIGGER_SINGLE Continuous hpesa_SWEEP_TRIGGER_CONTINUOUS    6    This method gets the spectrum analyzer's sweep mode.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     h    Instrument's current trigger source.

0 = hpesa_SWEEP_TRIGGER_SINGLE
1 = hpesa_SWEEP_TRIGGER_CONTINOUS   'k���  �    Status                            "  �  �    Instrument Handle                O G � �  }    Sweep Mode Q                       	           0    	            ^    This method specifies the time in which the instrument sweeps the displayed frequency range.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     )    Instrument's new sweep time in seconds.   �k���  �    Status                           � "  �  �    Instrument Handle                	 U � �       Sweep Time                         	           0    0.005    6    This method gets the spectrum analyzer's sweep time.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     -    Instrument's current sweep time in seconds.   1k���  �    Status                            "  �  �    Instrument Handle                Y B � �  }    Sweep Time Q                       	           0    	           �    This method sets the spectrum analyzer's sweep time to AUTO, where sweep time is coupled to the frequency span, resolution bandwidth, and video bandwidth.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().   �k���  �    Status                           � "  �  �    Instrument Handle                  	           0    �    This method causes a sweep to start and waits for it to complete.  If sweep mode is continuous, the sweep will be re-started.  If sweep is single, then the sweep is started.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     S    Status indicating whether sweep completed successfully.

0 = VI_FALSE
1 = VI_TRUE     D    Time in seconds for this method to wait for the sweep to complete.   Hk���  �    Status                           !& "  �  �    Instrument Handle                !p � � �       Sweep Complete                   !� @ � �       Sweep Time Out                     	           0    	            3.0    �    This method causes a sweep to start.  It doesn't wait for the sweep to complete.  If sweep mode is continuous, the sweep will be restarted.  If the sweep is single, then the sweep is started.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().   #�k���  �    Status                           %� "  �  �    Instrument Handle                  	           0       This method stops any measurement in progress and resets the trigger system.  If sweep mode is in single measure mode, then a "hpesa_sweepStartSweep" will start a new measurement.  If sweep mode is in continuous measure mode, then a new measurement begins immediately.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().   '�k���  �    Status                           )o "  �  �    Instrument Handle                  	           0    6    This method waits for the current sweep to complete.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     C    The instrument's VISA session handle returned from hpesa_init().
     S    Status indicating whether sweep completed successfully.

0 = VI_FALSE
1 = VI_TRUE     D    Time in seconds for this method to wait for the sweep to complete.   *rk���  �    Status                           ,P "  �  �    Instrument Handle                ,� � � �       Sweep Wait Complete              ,� A � �       Sweep Wait Time Out                	           0    	            3.0    6    This method selects the type of markers to activate.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Marker number to select.

Values:

Marker 1 - hpesa_MARKER_1 (default)
Marker 2 - hpesa_MARKER_2
Marker 3 - hpesa_MARKER_3
Marker 4 - hpesa_MARKER_4    v    Instrument's new marker mode.

Values:

hpesa_MARKER_NORMAL - (default) selects a normal type of marker that you can position on a trace and read out the exact trace information.

hpesa_MARKER_DELTA - activates a pair of delta markers, one of which is fixed at the current marker location.  The other marker can then be moved around on the trace and the marker readout shows the difference between two marker.

hpesa_MARKER_BAND - activates a pair of band markers, where each marker can be independently positioned on the trace.  The marker readout shows the difference between the two markers.

hpesa_MARKER_SPAN - activates a pair of span markers, where the marker positioning is controlled by changing the span and/or center frequency between the two markers.  The marker readout shows the difference between the two markers.

hpesa_MARKER_MODEOFF - turns the specified marker off.   .xk���  �    Status                           0V "  �  �    Instrument Handle                0� 8 P �      Mode Marker Number               1> 8@ �      Marker Mode                        	           0               `Marker 1 hpesa_MARKER_1 Marker 2 hpesa_MARKER_2 Marker 3 hpesa_MARKER_3 Marker 4 hpesa_MARKER_4               �Normal hpesa_MARKER_NORMAL Delta hpesa_MARKER_DELTA Band Pair hpesa_MARKER_BAND Span Pair hpesa_MARKER_SPAN Off hpesa_MARKER_MODEOFF    C    This method selects the marker function for the specified marker.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Marker number to select.

Values:

Marker 1 - hpesa_MARKER_1 (default)
Marker 2 - hpesa_MARKER_2
Marker 3 - hpesa_MARKER_3
Marker 4 - hpesa_MARKER_4     �    Selects the marker function.

Values:

hpesa_MARKER_BPOWER - selects power integrated within the bandwidth marker function.

hpesa_MARKER_NOISE - selects noise measurement marker function.

hpesa_MARKER_FUNCOFF - turns off marker function mode.   6�k���  �    Status                           8� "  �  �    Instrument Handle                9 7 ` �      Function Marker Number           9� 78 �      Marker Function                    	           0               `Marker 1 hpesa_MARKER_1 Marker 2 hpesa_MARKER_2 Marker 3 hpesa_MARKER_3 Marker 4 hpesa_MARKER_4              QBand Power hpesa_MARKER_BPOWER Noise hpesa_MARKER_NOISE Off hpesa_MARKER_FUNCOFF    G    The method uses the spectrum analyzer's marker peak search functions.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Marker number to select.

Values:

Marker 1 - hpesa_MARKER_1 (default)
Marker 2 - hpesa_MARKER_2
Marker 3 - hpesa_MARKER_3
Marker 4 - hpesa_MARKER_4    �    Marker search type to execute.  Instrument peak search algorithm for PEAKNEXT, NEXTLEFT, NEXTRIGHT is dependent on marker threshold and excursion values set.

Values:

hpesa_MARKER_PEAK - Places the selected marker on the highest point on the trace that is assigned to that particular marker number.

hpesa_MARKER_PEAKNEXT - Places the selected marker on the next highest signal peak from the current marked peak.

hpesa_MARKER_PEAKLEFT - Places the selected marker on the next highest signal peak to the right of the current marked peak.

hpesa_MARKER_MIN - Places the selected marker on the lowest point on the trace that is assigned to that particular marker number.   <�k���  �    Status                           >� "  �  �    Instrument Handle                >� 8 c �      Peak Search Marker Number        ?| 8E �      Peak Search Type                   	           0               `Marker 1 hpesa_MARKER_1 Marker 2 hpesa_MARKER_2 Marker 3 hpesa_MARKER_3 Marker 4 hpesa_MARKER_4               �Peak hpesa_MARKER_PEAK Next Peak hpesa_MARKER_PEAKNEXT Peak Left hpesa_MARKER_PEAKLEFT Peak Right hpesa_MARKER_PEAKRIGHT Minimum hpesa_MARKER_MIN    \    This method sets the spectrum analyzer's selected instrument state to the selected marker.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Marker number to select.

Values:

Marker 1 - hpesa_MARKER_1 (default)
Marker 2 - hpesa_MARKER_2
Marker 3 - hpesa_MARKER_3
Marker 4 - hpesa_MARKER_4        Instrument marker peak function to select.

Values:

hpesa_MARKER_CENTERFREQ - Sets the center frequency equal to the specified marker's frequency, which moves the marker to the center of the screen.

hpesa_MARKER_CENTERFREQSTEP - Sets the center frequency step size equal to the specified marker's frequency.

hpesa_MARKER_SPANFREQ - Sets the span to the value of the specified marker's frequency.  The specified marker must be in delta mode.  Select the delta marker mode with "hpesa_markerSetMode" function.

hpesa_MARKER_STARTFREQ - Sets the start frequency to the value of the specified marker's frequency.

hpesa_MARKER_STOPFREQ - Sets the stop frequency to the value of the specified marker's frequency.

hpesa_MARKER_REFLEVEL - Sets the reference level to the specified marker's amplitude.   D|k���  �    Status                           FZ "  �  �    Instrument Handle                F� 8 o �      Marker Number To                 GB 8= �      Inst State To Marker               	           0               `Marker 1 hpesa_MARKER_1 Marker 2 hpesa_MARKER_2 Marker 3 hpesa_MARKER_3 Marker 4 hpesa_MARKER_4               �Center Freq hpesa_MARKER_CENTERFREQ Center Freq Step hpesa_MARKER_CENTERFREQSTEP Span Freq hpesa_MARKER_SPANFREQ Start Freq hpesa_MARKER_STARTFREQ Stop Freq hpesa_MARKER_STOPFREQ Reference Level hpesa_MARKER_REFLEVEL   J    This method turns on or off marker signal tracking.  When enabled, it continuously puts the selected marker on the highest  displayed signal peak and moves it to the center frequency.  This allows you to keep a signal that is drifting in frequency on the display.  

Only one marker at a time can be enabled for signal tracking.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Marker number to select.

Values:

Marker 1 - hpesa_MARKER_1 (default)
Marker 2 - hpesa_MARKER_2
Marker 3 - hpesa_MARKER_3
Marker 4 - hpesa_MARKER_4     +    Selects marker signal tracking on or off.   M�k���  �    Status                           O� "  �  �    Instrument Handle                P B L �      Signal Track Marker Number       P� >h �       Marker Signal Track On             	           0               `Marker 1 hpesa_MARKER_1 Marker 2 hpesa_MARKER_2 Marker 3 hpesa_MARKER_3 Marker 4 hpesa_MARKER_4   On VI_TRUE Off VI_FALSE    �    This method measures the current Y value for the designated marker on its assigned trace.  The trace is in the Y-axis units for the current trace (which is often dBm).    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Marker number to measure.

Values:

Marker 1 - hpesa_MARKER_1 (default)
Marker 2 - hpesa_MARKER_2
Marker 3 - hpesa_MARKER_3
Marker 4 - hpesa_MARKER_4     V    Current Y-axis value in the Y-axis units for the current trace (which is often dBm).   Sk���  �    Status                           T� "  �  �    Instrument Handle                U8 > � �      Y Value Marker Number            U� � � �  }    Marker Y Value Q                   	           0               `Marker 1 hpesa_MARKER_1 Marker 2 hpesa_MARKER_2 Marker 3 hpesa_MARKER_3 Marker 4 hpesa_MARKER_4    	          1    This method measures the current X value of the designated marker on its assigned trace.  The value is in the X-axis units for the current trace (which is often frequency (Hz) or time (seconds)).

If the selected marker is not currently active, this method will return a value without any valid meaning.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Marker number to measure.

Values:

Marker 1 - hpesa_MARKER_1 (default)
Marker 2 - hpesa_MARKER_2
Marker 3 - hpesa_MARKER_3
Marker 4 - hpesa_MARKER_4     `    Current X-axis value in the X-axis units for the current trace (which is often Hz or seconds).   X�k���  �    Status                           Z� "  �  �    Instrument Handle                Z� B � �      X Value Marker Number            [� � � �  }    Marker X Value Q                   	           0               `Marker 1 hpesa_MARKER_1 Marker 2 hpesa_MARKER_2 Marker 3 hpesa_MARKER_3 Marker 4 hpesa_MARKER_4    	           �    This method positions the designated marker on its assigned trace at the specified X position.  A trace is composed of 401 display points (X positions).  If marker is not active, this method will activate it before positioning.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Select marker number to move to the specified X position.

Values:

Marker 1 - hpesa_MARKER_1 (default)
Marker 2 - hpesa_MARKER_2
Marker 3 - hpesa_MARKER_3
Marker 4 - hpesa_MARKER_4     l    X axis position to which the specified marker will be moved.  Range of 0 to 400 for the 401-point display.   ^Jk���  �    Status                           `( "  �  �    Instrument Handle                `r 9 t �      X Position Marker Number         a1 9D �      Marker X Position                  	           0               `Marker 1 hpesa_MARKER_1 Marker 2 hpesa_MARKER_2 Marker 3 hpesa_MARKER_3 Marker 4 hpesa_MARKER_4    ���                  .    This method measures the current X position for the designated marker.  A trace is composed of 401 display points (X positions); therefore, the range of value that can be returned is 0 to 400.

If the selected marker is not currently active, this method will return a value without any valid meaning.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Select marker number to measure the X position.

Values:

Marker 1 - hpesa_MARKER_1 (default)
Marker 2 - hpesa_MARKER_2
Marker 3 - hpesa_MARKER_3
Marker 4 - hpesa_MARKER_4     G    Current X-axis position.  Range of 0 to 400 for the 401-point output.   dFk���  �    Status                           f$ "  �  �    Instrument Handle                fn A � �      X Position Marker Number Q       g# � � �  }    Marker X Position Q                	           0               `Marker 1 hpesa_MARKER_1 Marker 2 hpesa_MARKER_2 Marker 3 hpesa_MARKER_3 Marker 4 hpesa_MARKER_4    	               This method specifies the minimum signal excursion for the analyzer's internal peak identification routine to respond to a signal as a peak.  This applies to all traces.  (The excursion is the delta power from a trace minimum value before (or after) a trace maximum value.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     C    Excursion delta power level in dB.  Range allowed is 0 to 100 dB.   i�k���  �    Status                           k� "  �  �    Instrument Handle                l 7 � �      Peak Excursion Level               	           0 ?�      @i                                    �    This method specifies the minimum signal level for the analyzer's internal peak identification routine to recognize a signal as a peak.  This applies to all traces.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     +    Threshold level in current display units.   m�k���  �    Status                           o� "  �  �    Instrument Handle                p 8 � �      Peak Threshold Level               	           0 ?�      A.��    �.��                         Q    This method sets the spectrum analyzer's frequency counter resolution.  The frequency counter resolution is normally coupled to the span frequency to generate the fastest accurate count.  By using this function, the resolution will be uncoupled until an instrument preset (hpesa_reset) or by calling hpesa_freqCounterSetResolutionAuto.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     {    Sets the resolution of the frequency counter.  Instrument rounds values to the nearest power of 10, from 1 Hz to 100 kHz.   rwk���  �    Status                           tU "  �  �    Instrument Handle                t� 8 � �  }    Freq Counter Resolution            	           0    10000    q    This method sets the spectrum analyzer's frequency counter resolution to be auto coupled to the frequency span.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().   vTk���  �    Status                           x2 "  �  �    Instrument Handle                  	           0   !    This method enables or disables the frequency counter operation.  Please note that only one marker can be active for frequency counter mode at a time.  Enabling another marker for frequency counter operation will automatically disable the previous marker as the active frequency counter.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().    �    Marker number to enable frequency counter operation.  Please note that only one marker can be active for a frequency counter mode at a time.  Enabling another marker for frequency counter operation will automatically disable the previous marker as the active frequency counter.

Values:

Marker 1 - hpesa_MARKER_1 (default)
Marker 2 - hpesa_MARKER_2
Marker 3 - hpesa_MARKER_3
Marker 4 - hpesa_MARKER_4     '    Sets the frequency counter on or off.   z k���  �    Status                           {� "  �  �    Instrument Handle                |H 8 ^ �      Frequency Counter Marker         }� 8[ �       Frequency Counter On               	           0               `Marker 1 hpesa_MARKER_1 Marker 2 hpesa_MARKER_2 Marker 3 hpesa_MARKER_3 Marker 4 hpesa_MARKER_4   On VI_TRUE Off VI_FALSE   �    This method measures the current X value of the frequency counter marker.  The value is in the X-axis units for the current trace (which is often frequency (Hz) or time (seconds)).

Note:  This function only retrieves a valid value if marker one is the active frequency counter marker.  If markers two, three, or four are active as frequency counter markers, the data returned will be invalid.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     y    Current X axis value of the frequency counter in the X-axis units for the current trace (which is often Hz or seconds).   �k���  �    Status                           �� "  �  �    Instrument Handle                �< 8 � �  }    Freq Counter Get X Value           	           0    	           �    This method selects AC or DC coupling for the RF INPUT port.  A blocking capacitor is switched in for AC mode.

Note:  This command is available only on Agilent ESA spectrum analyzer models E4404B or E4405B.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     !    Instrument's new coupling mode.   �Rk���  �    Status                           �0 "  �  �    Instrument Handle                �z 8 � �      Input Coupling Mode                	           0               2AC hpesa_INPUT_COUPLE_AC DC hpesa_INPUT_COUPLE_DC    �    This method selects the input impedance correction method to use.  Amplitude correction is applied to the display data to adjust for the measurement situations where the unit under test has a different impedance then the instrument's input impedance.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().          Specifies the input impedance.   ��k���  �    Status                           �v "  �  �    Instrument Handle                �� B � �      Input Impedance                    	           0               B50 Ohms hpesa_INPUT_IMPEDANCE_50 75 Ohms hpesa_INPUT_IMPEDANCE_75    O    This method turns the display line on or off and sets the display line level.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     C    The instrument's VISA session handle returned from hpesa_init().
     &    Enable or disables the display line.     6    Sets the display line level in current active units.   �@k���  �    Status                           � "  �  �    Instrument Handle                �i B x �       Display Line On                  �� B6 �  }    Display Line Level                 	           0    On VI_TRUE Off VI_FALSE    -25.0    W    This method smoothes the specified trace according to the number of specified points.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().          Specifies the trace to smooth.     7    Specifies the number of points that will be smoothed.   �=k���  �    Status                           � "  �  �    Instrument Handle                �e 8 2 �      Smooth Trace Number              �� 8� �      Smooth Trace Points                	           0               BTrace 1 hpesa_TRACE_1 Trace 2 hpesa_TRACE_2 Trace 3 hpesa_TRACE_3    ���                 o    This method gets the mean of the amplitudes of the trace elements in the current amplitude measurement units.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     $    Instrument trace number to select.     b    Y-axis (amplitude) mean of the specified trace in the current y-axis units (which is often dBm).   ��k���  �    Status                           �n "  �  �    Instrument Handle                �� 8 � �      Mean Trace Number                �� � � �  }    Trace Mean Q                       	           0               BTrace 1 hpesa_TRACE_1 Trace 2 hpesa_TRACE_2 Trace 3 hpesa_TRACE_3    	           Y    This method gets the number of peaks and the peak amplitude values in the active trace.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().        Select how the identified peaks are sorted in the parameters "tracePeakFrequencyArray_Q" and "tracePeakAmplitudeArray_Q".

hpesa_PEAKSORT_AMPL - sorts the identified peaks by descending amplitude.

hpesa_PEAKSORT_FREQ - sorts the identified peaks by increasing frequency.     �    This value specified the maximum size of the peak data arrays "tracePeakFrequencyArray_Q" and "tracePeakAmplitudeArray_Q".

Note:  If this value is set to zero, the values in the frequency and amplitude arrays will not be valid.     �    Returns the number of peaks detected in the active trace.  It also indicates the actual number of values returned in the frequency and amplitude data arrays.     V    This is an array of frequencies of the identified peaks in the current active trace.     U    This is an array of amplitudes of the identified peaks in the current active trace.   ��k���  �    Status                           �� "  �  �    Instrument Handle                � 8 x �      Trace Peak Sort Mode             �2 9D �      Trace Peak Array Max Size        �  �� �  }    Trace Number Peaks Q             �� � . �  }    Trace Peak Frequency Array Q     �% � � �  }    Trace Peak Amplitude Array Q       	           0               <Amplitude hpesa_PEAKSORT_AMPL Frequency hpesa_PEAKSORT_FREQ    ���                   	            	            	            n    This method transfers data from the controller to the instrument.  There are normally 401 points in a trace.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     $    Specifies the data trace to write.     �    This values specifies the size of the "traceDataWriteArray" array.  This value should be large enough for the number of points in the trace, which is normally 401 display points.     Q    This is y-axis data values for the specified trace in the current y-axis units.   �k���  �    Status                           �� "  �  �    Instrument Handle                �* 8 " �      Trace Number Write               �V 8� �      Trace Data Write Array Size      � 9 � �  }    Trace Data Write Array             	           0               BTrace 1 hpesa_TRACE_1 Trace 2 hpesa_TRACE_2 Trace 3 hpesa_TRACE_3    ���                   	            n    This method transfers data from the instrument to the controller.  There are normally 401 points in a trace.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     #    Specifies the data trace to read.     Q    This is y-axis data values for the specified trace in the current y-axis units.     D    This is the actual number of data points read from the instrument.     �    This value specifies the maximum size of the "traceDataReadArray_Q" array.  This value should be large enough for the number of points in the trace, which is normally 401 display points.   �ok���  �    Status                           �M "  �  �    Instrument Handle                �� 8 ^ �      Trace Number Read                �� � Z �  }    Trace Data Read Array Q          � �@ �  }    Trace Data Read Array Size Q     �g 8I �  d    Trace Data Read Array Max Size     	           0               BTrace 1 hpesa_TRACE_1 Trace 2 hpesa_TRACE_2 Trace 3 hpesa_TRACE_3    	            	            401    G    This method sets up the spectrum analyzer's sweep gate functionality.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     -    Enable or disable the sweep gate operation.    R    Select sweep gate trigger type.

hpesa_GATESWEEPTYPE_LEVEL - triggers the gate when the signal surpasses a specific level.  Set "sweepGateLevelType" to either high or low.

hpesa_GATESWEEPTYPE_EDGE - triggers the gate when the edge of a signal is encountered.  Set "sweepGateEdgePol" to either a negative-going or a positive-going edge.     �    Select sweep gate trigger level type.  This is for LEVEL triggering only.

hpesa_GATESWEEPLEVEL_HIGH - gate triggers when level TTL high (> 2.0V).

hpesa_GATESWEEPLEVEL_LOW - gate triggers when level TTL low (< 0.8V).     �    Select sweep gate trigger edge polarity.  This is for EDGE triggering only.

hpesa_GATESWEEPPOL_POSITIVE - gate triggers when edge is positive.

hpesa_GATESWEEPPOL_NEGATIVE - gate triggers when edge is negative.         Sets the delay time (in seconds) from when the gate trigger occurs to when the gate opens.  This is for EDGE triggering only.     L    Sets the gate time (in seconds) length.  This is for EDGE triggering only.   �9k���  �    Status                           � "  �  �    Instrument Handle                �a ( Z �       Sweep Gate On                    �� . � �      Sweep Gate Type                  �� .� �      Sweep Gate Level Type            �� � ( �      Sweep Gate Edge Pol              �� ~ � �      Sweep Gate Edge Delay            �7 ~� �      Sweep Gate Edge Length             	           0    On VI_TRUE Off VI_FALSE               >Level hpesa_GATESWEEPTYPE_LEVEL Edge hpesa_GATESWEEPTYPE_EDGE               <High hpesa_GATESWEEPLEVEL_HIGH Low hpesa_GATESWEEPLEVEL_LOW               JPositive hpesa_GATESWEEPPOL_POSITIVE Negative hpesa_GATESWEEPPOL_NEGATIVE    0.0    0.0    @    This method enables or disables the tracking generator output.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     +    Enable or disable the tracking generator.   ��k���  �    Status                           �� "  �  �    Instrument Handle                �� 8 �       Tracking Generator On              	           0   On VI_TRUE Off VI_FALSE   6    This method sets the spectrum analyzer's RF tracking generator attenuation value.

Setting the amplitude attenuation with this function uncouples the attenuator from the output amplitude level.  To re-couple the attenuation to the output amplitude level, call the function "hpesa_trackGenSetAttenuationAuto".    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     :    Instrument new tracking generator amplitude attenuation.   �
k���  �    Status                           �� "  �  �    Instrument Handle                �2 : � �  }    Tracking Generator Attenuation     	           0    0.0    �    This method couples the spectrum analyzer's RF tracking generator attenuation value to be set automatically by the instrument.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().   ��k���  �    Status                           �� "  �  �    Instrument Handle                  	           0    \    This method sets the spectrum analyzer's tracking generator source output amplitude level.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     J    Instrument's new source output amplitude level in current display units.   ��k���  �    Status                           Ø "  �  �    Instrument Handle                �� 5 � �  }    Tracking Generator Amplitude       	           0    0.0       This method enables the tracking of the source output with the spectrum analyzer sweep so that the power is maximized.  This method is not applicable for the 1.5 GHz tracking generator.

This command should be followed by a hpesa_sweepDoSweep in order to be effective.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().   �k���  �    Status                           �� "  �  �    Instrument Handle                  	           0    Y    This method enables or disables the spectrum analyzer's frequency correction operation.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     .    Selects frequency correction mode on or off.   �k���  �    Status                           �� "  �  �    Instrument Handle                �- 8 �       Align Do Alignment                 	           0   On VI_TRUE Off VI_FALSE    =    This method turns on or off the internal 50 MHz oscillator.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     %    Select 50 MHz oscillator on or off.   �sk���  �    Status                           �Q "  �  �    Instrument Handle                Λ 8 �       Align Signal RF On                 	           0   On VI_TRUE Off VI_FALSE    �    The automatic alignment routines normally run continuously in the background.  This method allows you to choose to have all the routines running, all the routines but not the RF alignment running, or no automatic alignment routines running at all.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Select the auto alignment mode to operate in.

hpesa_ALIGN_AUTO_ALL - selects auto align all.

hpesa_ALIGN_AUTO_NRF - selects auto align all but RF.

hpesa_ALIGN_AUTO_OFF - turns off auto alignment.   Дk���  �    Status                           �r "  �  �    Instrument Handle                Ҽ 8 � �      Align Auto Mode                    	           0               RAll hpesa_ALIGN_AUTO_ALL All but RF hpesa_ALIGN_AUTO_NRF Off hpesa_ALIGN_AUTO_OFF    F    This method forces an immediate alignment of the specified assembly.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    Select the assembly to do an immediate alignment on.

hpesa_ALIGN_ALL - align all assemblies.

hpesa_ALIGN_RF - align the RF assembly.

hpesa_ALIGN_TG - align the tracing generator assembly.

hpesa_ALIGN_FMD - align the FM Demod assembly.   ��k���  �    Status                           �� "  �  �    Instrument Handle                � 8 � �      Alignment Type                     	           0               QAll hpesa_ALIGN_ALL RF hpesa_ALIGN_RF TG hpesa_ALIGN_TG FM Demod hpesa_ALIGN_FMD    �    The instrument can automatically couple instrument settings together for accurate measurements and optimum range.  This method is used to override the coupling for special measurement needs.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     $    Select auto couple mode on or off.   ��k���  �    Status                           �� "  �  �    Instrument Handle                � 8 �       Auto Coupling On                   	           0   On VI_TRUE Off VI_FALSE    +    This method specifies the detection mode.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().    �    Select the detector mode.

hpesa_DETECTOR_POSITIVEPEAK - Positive peak detection displays the highest sample taken during the interval being displayed.

hpesa_DETECTOR_SAMPLE - Sample detection displays the first sample taken during the interval being displayed.

hpesa_DETECTOR_NEGATIVEPEAK - Negative peak detection displays the lowest sample taken during the interval being displayed.   �5k���  �    Status                           � "  �  �    Instrument Handle                �] 8 � �      Detector Mode                      	           0               qPositive Peak hpesa_DETECTOR_POSITIVEPEAK Sample hpesa_DETECTOR_SAMPLE Negative Peak hpesa_DETECTOR_NEGATIVEPEAK    2    This method turns the internal preamp on or off.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().         Turn preamp on or off.   �Tk���  �    Status                           �2 "  �  �    Instrument Handle                �| 8 �       PreAmp On                          	           0   On VI_TRUE Off VI_FALSE    �    This method centers the preselector tracking to maximize amplitude of the signal at the specified marker by minimizing the loss through the filter.

Use the function "hpesa_opc_Q" to test instrument for completion of preselector centering.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().   �`k���  �    Status                           �> "  �  �    Instrument Handle                  	           0   z    The reset function places the instrument in a default state. Before issuing this function, it may be necessary to send a device clear to ensure that the instrument can execute a reset.  A device clear can be issued by invoking hpesa_dcl().

For the states affected by the reset command, see the instrument manual.

Reset does not affect the status system or clear any errors.     �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().   �k���  �    Status                           �c "  �  �    Instrument Handle                  	           0   0    The self-test function causes the instrument to perform a self-test and returns the result of that self-test.  This is used to verify that an instrument is operating properly.  A failure may indicate a potential hardware problem.

For a list of possible self-test errors, consult the instrument manual.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     H    Numeric result from self-test operation.

0 = no error ( test passed)
     @    Self-test status message.  This is limited to 256 characters.
   �`k���  �    Status                           �> "  �  �    Instrument Handle                �� 1 " �  �    Self Test Result                 �� � " � �    Self Test Message                  	           0    	            	            r    This function translates the error value returned from an instrument driver function to a user-readable string.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     D    The instrument's VISA session handle returned from hpesa_init().       =    The error return value from an instrument driver function.
     <    Error message string.  This is limited to 256 characters.
   �k���  �    Status                           �u "  �  �    Instrument Handle                �� 6 " �  �    Status Code                      � � " � �    Message                            	           0    0    	           �    This function returns the error numbers and corresponding error messages in the error queue of an instrument.  See the manual for a listing of the instrument error numbers and messages.

Instrument errors may occur when a user attempts to place the instrument in an invalid state such as sending an invalid sequence of coupled commands.

Instrument errors can be detected by polling.  Automatic polling can be accomplished by using the hpesa_errorQueryDetect() function.

    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().         Instrument's error code.
     B    Instrument's error message.  This is limited to 256 characters.
   �"k���  �    Status                           �  "  �  �    Instrument Handle                �J / " �  �    Error Code                       �m � " � �    Error Message                      	           0    	            	            m    This function returns the revision of the instrument driver and the firmware of the instrument being used.     �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     B    Instrument driver revision.  This is limited to 256 characters.
     D    Instrument firmware revision.  This is limited to 256 characters.
   �)k���  �    Status                           � "  �  �    Instrument Handle                �Q / � � ,    Instrument Driver Revision       �� � � � ,    Firmware Revision                  	           0    	            	           W    The timeout function sets the timeout value for driver I/O transactions in milliseconds. The timeout period may vary on computer platforms.

The default timeout period varies by VISA implementation.  For HP VISA, it is 2 seconds.

Some implementations of VISA will only accept a limited number of timeout values.  If you set the VISA timeout to a given value using one of those implementations, and then query the timeout, you may find that the query returns a different value than the one you set.  HP VISA sets the timeout to the precise value you specify, and returns that value when queried. 
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    This value sets the I/O timeout for all functions in the driver. It is specified in milliseconds. 

MAX = hpesa_TIMEOUT_MAX   2147483647
MIN = hpesa_TIMEOUT_MIN   0
   Ck���  �    Status                           ! "  �  �    Instrument Handle                k B � �      Set Time Out                       	           0    ���                   �    The timeout query function returns the timeout value for driver I/O transactions in milliseconds.  The timeout period may vary on computer platforms.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     e    This value sets the I/O timeout for all functions in the driver. It is specified in milliseconds. 
   �k���  �    Status                           _ "  �  �    Instrument Handle                � 2 � � �    Time Out                           	           0    	           +    This function enables or disables automatic instrument error checking.

When automatic instrument error querying is enabled, the driver will query the instrument for an error before returning from each driver function.  This adds the overhead of one instrument query to each driver function call.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    A boolean which enables/disables automatic instrument error querying.  

If VI_TRUE, enable automatic instrument error querying.

If VI_FALSE, disable automatic instrument error querying.   k���  �    Status                           � "  �  �    Instrument Handle                - . � �       Set Error Query Detect             	           0     Enable VI_TRUE Disable VI_FALSE   =    This function indicates if automatic instrument error detection is enabled or disabled. 

When automatic instrument error querying is enabled, the driver will query the instrument for an error before returning from each driver function.  This adds the overhead of one instrument query to each driver function call.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     �    A boolean which indicates if automatic instrument error querying is enabled or disabled.  

If VI_TRUE, automatic instrument error querying is enabled.

If VI_FALSE, automatic instrument error querying is disabled.
   
k���  �    Status                           � "  �  �    Instrument Handle                2 4 � �  d    Error Query Detect                 	           0    	           �    This function sends a device clear (DCL) to the instrument.

A device clear will abort the current operation and enable the instrument to accept a new command or query.

This is particularly useful in situations where it is not possible to determine the instrument state. In this case, it is customary to send a device clear before issuing a new instrument driver function.  The device clear ensures that the instrument will be able to begin processing the new commands.

    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     C    The instrument's VISA session handle returned from hpesa_init().
   �k���  �    Status                           � "  �  �    Instrument Handle                  	           0    B    This function sends the *OPC? common command to the instrument.     �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     n    If VI_TRUE, all instrument operations are complete.

If VI_FALSE, instrument operations are still pending.

   �k���  �    Status                           } "  �  �    Instrument Handle                � 0 � �       Instrument Ready                   	           0    	            )    This function queries the status byte.     �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().          The value of the status byte.
   *k���  �    Status                            "  �  �    Instrument Handle                R / � �  d    Status Byte                        	           0    	            6    This function queries the operation event register.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     -    The value of the operation event register.
   tk���  �    Status                           !R "  �  �    Instrument Handle                !� 6 � �  d    Operation Event Register           	           0    	            :    This function queries the operation condition register.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     1    The value of the operation condition register.
   "�k���  �    Status                           $� "  �  �    Instrument Handle                $� 4 � �  d    Operation Condition Register       	           0    	            9    This function queries the questionable event register.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     0    The value of the questionable event register.
   &-k���  �    Status                           ( "  �  �    Instrument Handle                (U 8 � �  d    Questionable Event Register        	           0    	            =    This function queries the questionable condition register.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     5    The value of the questionable condition register.
    )�k���  �    Status                           +l "  �  �    Instrument Handle                +� ? � �  d    Questionable Condition Register    	           0    	            l    This function passes an instrument command to the instrument.  The function does not expect any response.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     i    The instrument command.  It must be a NULL terminated C string and may not exceed 256 bytes in length.
   -#k���  �    Status                           .� "  �  �    Instrument Handle                /I 1 " � �    Send String Command                	           0    ""   �    Passes the command string to the instrument.  The function waits for a response which must be a string (character data).

A max of size-1 bytes will be read from the instrument into the string and the string will be NULL terminated (so its length can be found with strlen).

If more than size-1 bytes are generated by the instrument then remaining bytes will be discarded and the instrument's output buffer will be cleared.
     �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     i    The instrument command.  It must be a NULL terminated C string and may not exceed 256 bytes in length.
     r    The length of result array in bytes. 

MIN = hpesa_CMDSTRING_Q_MIN   1
MAX = hpesa_CMDSTRING_Q_MAX   2147483647
     $    The response from the instrument.
   2#k���  �    Status                           3� "  �  �    Instrument Handle                4I 0 " � �    Query String Command             4� r " �      String Size                      54 � " � �    String Result                      	           0    " "    ���                 	            �    This function passes the string in sendIntegerCommand followed by a space and then an integer.  Note that either a ViInt16 or 32 can be passed, as the ViInt16 will be promoted.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     h    The instrument command.  It must be a NULL terminated C string and may not exceed 256 bytes in length.     �    The integer to be appended to the command string. 

MIN = hpesa_CMDINT_MIN   -2147483647
MAX = hpesa_CMDINT_MAX    2147483647
   7_k���  �    Status                           9; "  �  �    Instrument Handle                9� / " � �    Send Integer Command             9� p $ �      Send Integer                       	           0    ""    ����                 t    Passes the command string to the instrument.  The function expects a 16-bit integer response from the instrument.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     h    The instrument command.  It must be a NULL terminated C string and may not exceed 256 bytes in length.     $    The response from the instrument.
   ;�k���  �    Status                           =� "  �  �    Instrument Handle                >! / " � �    Query I16 Command                >� n " �       I16 Result                         	           0    ""    	            t    Passes the command string to the instrument.  The function expects a 32-bit integer response from the instrument.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     h    The instrument command.  It must be a NULL terminated C string and may not exceed 256 bytes in length.     #    The response from the instrument.   @0k���  �    Status                           B "  �  �    Instrument Handle                BV . " � �    Query I32 Command                B� n " �  �    I32 Result                         	           0    ""    	            �    This function passes the string in sendRealCommand followed by a space and then a real.  Note that either a ViReal32 or 64 can be passed as the ViReal32 will be promoted.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     h    The instrument command.  It must be a NULL terminated C string and may not exceed 256 bytes in length.     ~    The real number to be appended to the command string. 

MAX = hpesa_CMDREAL_MAX    1E+300
MIN = hpesa_CMDREAL_MIN   -1E+300
   D�k���  �    Status                           Fy "  �  �    Instrument Handle                F� 0 " � �    Send Real Command                G3 o " �      Send Real                          	           0    "" @       ~7�<� u��7�<� u�                      q    Passes the command string to the instrument.  The function expects a 64-bit real response from the instrument.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().     i    The instrument command.  It must be a NULL terminated C string and may not exceed 256 bytes in length.
     $    The response from the instrument.
   IHk���  �    Status                           K$ "  �  �    Instrument Handle                Kn . " � �    Query Real Command               K� p " �       Real Result                        	           0    ""    	           �    Passes the command string to the instrument.  The function expects the instrument to return a definite arbitrary block of 64-bit reals.
    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message function to get a textual description of errors and warnings.     C    The instrument's VISA session handle returned from hpesa_init().
     h    The instrument command.  It must be a NULL terminated C string and may not exceed 256 bytes in length.     c    Size of result. 

MIN = hpesa_CMDREAL64ARR_Q_MIN   1
MAX = hpesa_CMDREAL64ARR_Q_MAX   2147483647
     $    The response from the instrument.
     ;    The number of array elements returned by the instrument.
   M�u���  �    Status                           Op %  �  �    Instrument Handle                O� . % � �    Real Array Command               P+ i / �      Real Array Size                  P� � a �  �    Real Array Result                P� �2 �  �    Real Array Count                   	           0    ""    ���                 	            	            �    This function retrieves an array of comma-separated values from the instrument.  The user may need to place the instrument in ASCII format via the "FORM ASC" command.    �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message function to get a textual description of errors and warnings.     C    The instrument's VISA session handle returned from hpesa_init().
     2    The command string to be sent to the instrument.     =    The number of elements allocated for realCommaArrayResults.     G    Returns an array of 64-bit real numbers received from the instrument.     A    The actual number of values returned in realCommaArrayResults.
   S9u���  �    Status                           U %  �  �    Instrument Handle                U` . % � �    Real Comma Command               U� i / �      Real Comma Array Size            U� ey �  �    Real Comma Array Result          V. �y �  �    Real Comma Values Read             	           0    ""    ���                 	            	            �    The close function terminates the software connection to the instrument and de-allocates system resources.  It is generally a good programming habit to close the instrument handle when the program is done using the instrument.     �    The meaning of the VISA status returned by the function is as follows:

 = 0  "VI_SUCCESS"    The function completed successfully.
 > 0  Warning         The function completed, but an
                      exceptional condition occurred which
                      may require attention.
 < 0  Error           The function did not complete
                      successfully.

Use the hpesa_error_message() function to get a textual description of errors and warnings.     B    The instrument's VISA session handle returned from hpesa_init().   X�k���  �    Status                           Z� "  �  �    Instrument Handle                  	           0 ����           	D     K-    init                            ����         
�  '     K-    EnableVerification              ����         b  �     K-    GetVerification                 ����         �  I     K-    InstrumentSetApplication        ����         i  Q     K-    InstrumentGetApplication        ����            #-     K-    InstrumentGetAllApplications    ����         $#  )�     K-    cdma1_RadioSetConditions        ����         ,�  1/     K-    cdma1_RadioGetConditions        ����         2m  70     K-    cdma1_InputSetConditions        ����         8w  ;�     K-    cdma1_InputGetConditions        ����         =  @�     K-    cdma1_InputSetGainAtten         ����         A�  E:     K-    cdma1_InputGetGainAtten         ����         F7  J@     K-    cdma1_TriggerSetExternal        ����         Ku  OR     K-    cdma1_TriggerGetExternal        ����         PO  TZ     K-    cdma1_TriggerSetRFBurst         ����         UN  X�     K-    cdma1_TriggerGetRFBurst         ����         Y�  `     K-    cdma1_TriggerSetFrameTimer      ����         a�  g\     K-    cdma1_TriggerGetFrameTimer      ����         h�  n�     K-    cdma1_DemodSetConfig            ����         p�  t�     K-    cdma1_DemodGetConfig            ����         v  y@     K-    cdma1_FrequencySetChannel       ����         y�  |�     K-    cdma1_FrequencyGetChannel       ����         }j  �.     K-    cdma1_CHPConfigure              ����         ��  ��     K-    cdma1_CHPMeasure                ����         �x  �     K-    cdma1_CHPMeasureTrace           ����         ��  �'     K-    cdma1_CHPSetAveraging           ����         ��  ��     K-    cdma1_CHPGetAveraging           ����         ��  ��     K-    cdma1_CHPSetIntegrationBW       ����         ��  ��     K-    cdma1_CHPGetIntegrationBW       ����         �m  ��     K-    cdma1_CHPSetFrequencySpan       ����         ��  �^     K-    cdma1_CHPGetFrequencySpan       ����         �  ��     K-    cdma1_CHPSetTriggerSource       ����         ��  ��     K-    cdma1_CHPGetTriggerSource       ����         �]  �/     K-    cdma1_RHOConfigure              ����         ��  �      K-    cdma1_RHOMeasure                ����         ��  �d     K-    cdma1_RHOMeasureTrace           ����         �  �     K-    cdma1_RHOSetAveraging           ����         ��  �6     K-    cdma1_RHOGetAveraging           ����         �t  ��     K-    cdma1_RHOSetSweepTime           ����         �N E     K-    cdma1_RHOGetSweepTime           ����         F     K-    cdma1_RHOSetMeasurementSpectrum ����        M 
u     K-    cdma1_RHOGetMeasurementSpectrum ����        1 �     K-    cdma1_CDPConfigure              ����        w "?     K-    cdma1_CDPMeasure                ����        %� >�     K-    cdma1_CDPMeasureTrace           ����        A� G     K-    cdma1_CDPSetAveraging           ����        H� LY     K-    cdma1_CDPGetAveraging           ����        M� P�     K-    cdma1_CDPSetSweepTime           ����        Q� Tw     K-    cdma1_CDPGetSweepTime           ����        U3 Xr     K-    cdma1_CDPSetMeasurementSpectrum ����        Yy \�     K-    cdma1_CDPGetMeasurementSpectrum ����        ]_ `�     K-    cdma1_CDPSetMeasThreshold       ����        a dU     K-    cdma1_CDPGetMeasThreshold       ����        e h�     K-    cdma1_CDPSetMeasurementMethod   ����        i� l�     K-    cdma1_CDPGetMeasurementMethod   ����        m� qM     K-    cdma1_CSPConfigure              ����        q� ~� 	    K-    cdma1_CSPMeasure                ����        �� ��     K-    cdma1_CSPMeasureTrace           ����        �x �7     K-    cdma1_CSPSetAveraging           ����        �� ��     K-    cdma1_CSPGetAveraging           ����        � ��     K-    cdma1_CSPSetMeasurementType     ����        �� ��     K-    cdma1_CSPGetMeasurementType     ����        �_ �V     K-    cdma1_SHPConfigure              ����        �� �t     K-    cdma1_SHPMeasureTrace           ����        �� �U     K-    cdma1_SHPSetAveraging           ����        �� Œ     K-    cdma1_SHPGetAveraging           ����        �� ��     K-    cdma1_SHPSetNumberHarmonics     ����        ʓ �     K-    cdma1_SHPGetNumberHarmonics     ����        �; �Z     K-    GSM_RadioSetConditions          ����        �� �9     K-    GSM_RadioGetConditions          ����        �� �S     K-    GSM_InputSetConditions          ����        �w �     K-    GSM_InputGetConditions          ����        �� �Q     K-    GSM_InputSetGainAtten           ����        �� �v     K-    GSM_InputGetGainAtten           ����        �� ��     K-    GSM_TriggerSetExternal          ����         �      K-    GSM_TriggerGetExternal          ����         	G     K-    GSM_TriggerSetRFBurst           ����        
� $     K-    GSM_TriggerGetRFBurst           ����        b L     K-    GSM_TriggerSetFrame             ����         �     K-    GSM_TriggerGetFrame             ����        j >     K-    GSM_DemodSetBurstAlign          ����        � !�     K-    GSM_DemodGetBurstAlign          ����        "� )�     K-    GSM_DemodSetReferenceOsc        ����        +� /�     K-    GSM_DemodGetReferenceOsc        ����        0� 4Q     K-    GSM_SetARFCN                    ����        5 7�     K-    GSM_GetARFCN                    ����        8W >B     K-    GSM_SetTSC                      ����        ?g B�     K-    GSM_GetTSC                      ����        C� F�     K-    GSM_TXPConfigure                ����        G Q�     K-    GSM_TXPMeasure                  ����        T� c�     K-    GSM_TXPMeasureTrace             ����        f# m     K-    GSM_TXPSetAveraging             ����        o0 r�     K-    GSM_TXPGetAveraging             ����        te x�     K-    GSM_TXPSetTriggerSource         ����        y� }     K-    GSM_TXPGetTriggerSource         ����        }� �     K-    GSM_TXPSetThreshold             ����        �M ��     K-    GSM_TXPGetThreshold             ����        �� ��     K-    GSM_TXPSetTimeSlots             ����        �Z �#     K-    GSM_TXPGetTimeSlots             ����        �� �X     K-    GSM_TXPSetBurstSync             ����        �z ��     K-    GSM_TXPGetBurstSync             ����        �D �E     K-    GSM_PVTConfigure                ����        �� �h     K-    GSM_PVTMeasureTrace             ����        �
 ��     K-    GSM_PVTSetAveraging             ����        � ��     K-    GSM_PVTGetAveraging             ����        �C �%     K-    GSM_PVTSetTriggerSource         ����        �@ �D     K-    GSM_PVTGetTriggerSource         ����        �  ��     K-    GSM_PVTSetTimeSlots             ����        ˛ �d     K-    GSM_PVTGetTimeSlots             ����        �  �u     K-    GSM_PVTSetBurstSync             ����        ԗ ץ     K-    GSM_PVTGetBurstSync             ����        �a ��     K-    GSM_PVTLwrMskSetAbsLvl          ����        �� �     K-    GSM_PVTLwrMskGetAbsLvl          ����        �Q �     K-    GSM_PVTLwrMskGetPoints          ����        �� �     K-    GSM_PVTLwrMskSetRelLvl          ����        � �v     K-    GSM_PVTLwrMskGetRelLvl          ����        �� ��     K-    GSM_PVTLwrMskSetTimePoints      ����        �u  &     K-    GSM_PVTLwrMskGetTimePoints      ����        ] �     K-    GSM_PVTMaskSetCustom            ����        � ~     K-    GSM_PVTMaskGetCustom            ����        	: 9     K-    GSM_PVTUprMskSetAbsLvl          ����        ( �     K-    GSM_PVTUprMskGetAbsLvl          ����        � �     K-    GSM_PVTUprMskGetPoints          ����        � [     K-    GSM_PVTUprMskSetRelLvl          ����         J #�     K-    GSM_PVTUprMskGetRelLvl          ����        %/ +     K-    GSM_PVTUprMskSetTimePoints      ����        +� /�     K-    GSM_PVTUprMskGetTimePoints      ����        0� 3�     K-    GSM_PFERConfigure               ����        4j R"     K-    GSM_PFERMeasureTrace            ����        U [�     K-    GSM_PFERSetAveraging            ����        ]� a�     H*    GSM_PFERGetAveraging            ����        c g�     K-    GSM_PFERSetTriggerSource        ����        h� l#     K-    GSM_PFERGetTriggerSource        ����        l� q	     K-    GSM_PFERSetBurstSync            ����        r u     HL    GSM_PFERGetBurstSync            ����        u� x�     K-    GSM_ORFSConfigure               ����        y[ ��     K-    GSM_ORFSMeasureTrace            ����        �m ��     K-    GSM_ORFSSetAveraging            ����        �P ��     K-    GSM_ORFSGetAveraging            ����        �� ��     K-    GSM_ORFSSetMeasurementMode      ����        � �3     K-    GSM_ORFSGetMeasurementMode      ����        �� �'     K-    GSM_ORFSSetMeasurementType      ����        �# �     K-    GSM_ORFSGetMeasurementType      ����        �� ��     K-    GSM_ORFSSetOffsetFreqList       ����        �� ��     K-    GSM_ORFSGetOffsetFreqList       ����        �� ��     K-    GSM_ORFSSetOffsetFreq           ����        �� �Z     K-    GSM_ORFSGetOffsetFreq           ����        � Ȝ     K-    GSM_ORFSSetTriggerSource        ����        �� �     K-    GSM_ORFSGetTriggerSource        ����        �� �L     K-    GSM_ORFSSetBurstSync            ����        �m �|     HL    GSM_ORFSGetBurstSync            ����        �8 ۸     K-    GSM_ORFSSetWidebandNoiseMode    ����        ܃ ߂     A0    GSM_ORFSGetWidebandNoiseMode    ����        �> �F     K-    GSM_TSPConfigure                ����        �� �S     K-    GSM_TSPMeasure                  ����        �K ��     K-    GSM_TSPMeasureTrace             ����        �� ��     K-    GSM_TSPSetAveraging             ����        �� �     K-    GSM_TSPGetAveraging             ����        �      K-    GSM_TSPSetMeasurementType       ����              K-    GSM_TSPGetMeasurementType       ����        �      K-    GSM_TSPSetLimit                 ����        � �     K-    GSM_TSPGetLimit                 ����        � �     K-    GSM_TSPSetIdleMode              ����        � "o     K-    GSM_TSPGetIdleMode              ����        #+ (�     K-    measureSetMode                  ����        *� -�     K-    measureGetMode                  ����        .� 2~     K-    ACPConfig                       ����        4I 7�     K-    ACPConfigQuery                  ����        9� ?m     K-    ACPMeasure                      ����        A� E#     K-    CHPConfig                       ����        F� I�     K-    CHPConfigQuery                  ����        Kl O     K-    CHPMeasure                      ����        P� T�     K-    OBWConfig                       ����        V� Z     K-    OBWConfigQuery                  ����        [� `�     K-    OBWMeasure                      ����        b� gT     K-    EBWConfig                       ����        iW m>     K-    EBWConfigQuery                  ����        n� s�     K-    EBWMeasure                      ����        uq {�     K-    harmonicDistConfig              ����        ~1 �     K-    harmonicDistConfigQuery         ����        � �� 	    K-    harmonicDistMeasure             ����        �� �'     K-    frequencySetStart               ����        �� ��     K-    frequencyGetStart               ����        �= ��     K-    frequencySetStop                ����        �� �/     K-    frequencyGetStop                ����        �� ��     K-    frequencySetCenter              ����        �> ��     K-    frequencyGetCenter              ����        �� �;     K-    frequencySetSpan                ����        �� ��     K-    frequencyGetSpan                ����        �O �     K-    frequencySetCenterStepSize      ����        �� ��     K-    frequencyStepCenter             ����        �v ��     K-    frequencySetSpanZoom            ����        �� ��     K-    amplitudeSetReferenceLevel      ����        �v �L     K-    amplitudeGetReferenceLevel      ����        � ��     K-    amplitudeSetRefLevelOffset      ����        �{ �=     K-    amplitudeGetRefLevelOffset      ����        �� Ř     K-    amplitudeSetAttenuation         ����        �s �K     K-    amplitudeGetAttenuation         ����        � ��     K-    amplitudeSetAttenuationAuto     ����        �P �\     K-    amplitudeSetScale               ����        �7 ՝     K-    amplitudeGetScale               ����        �Y �B     K-    amplitudeSetFormat              ����        �A �     K-    amplitudeGetFormat              ����        ݾ ��     K-    amplitudeSetUnits               ����        � �     K-    amplitudeGetUnits               ����        �E �<     K-    BWSetResolution                 ����        �� �     K-    BWSetResolutionAuto             ����        �, �     K-    BWSetVideo                      ����        �� �     K-    BWSetVideoAuto                  ����        � ��     K-    BWSetAverage                    ����        �� ��     K-    BWSetAverageOn                  ����        �e  {     K-    traceSetMode                    ����        F �     K-    triggerSetSource                ����        - 
     K-    triggerSetVideoLevel            ����        
� �     K-    sweepSetMode                    ����        � �     K-    sweepGetMode                    ����        { :     K-    sweepSetTime                    ����        � �     K-    sweepGetTime                    ����        J      K-    sweepSetTimeAuto                ����        � "     K-    sweepDoSweep                    ����        # &      K-    sweepStartSweep                 ����        &{ )�     K-    sweepAbortSweep                 ����        *4 -B     K-    sweepWaitForSweepComplete       ����        .: 4�     K-    markerSetMode                   ����        6� :�     K-    markerSetFunction               ����        <g B#     K-    markerPeakSearch                ����        D Ji     K-    markerToMarker                  ����        L� P�     K-    markerSetSignalTrackOn          ����        R_ V5     K-    markerGetYValue                 ����        W� [�     K-    markerGetXValue                 ����        ]] a�     K-    markerSetXPosition              ����        c gr     K-    markerGetXPosition              ����        h� l_     K-    markerSetPeakExcursion          ����        m: pC     K-    markerSetPeakThreshold          ����        q u"     K-    freqCounterSetResolution        ����        u� x|     K-    freqCounterSetResolutionAuto    ����        x� ~     K-    freqCounterSetOn                ����        � ��     K-    freqCounterGetXValue            ����        �y ��     K-    inputCouplingSetMode            ����        �� ��     K-    inputSetImpedance               ����        �� ��     K-    displayLineSetup                ����        �� ��     K-    traceSetSmooth                  ����        � �N     K-    traceMeasureMean                ����        �� ��     K-    traceMeasurePeaks               ����        �� �k     K-    traceSetTraceData               ����        �� �+     K-    traceGetTraceData               ����        �� ��     K-    sweepGateSetUp                  ����        �^ �     K-    trackGenSetOn                   ����        �� �t     K-    trackGenSetAttenuation          ����        �+ ��     K-    trackGenSetAttenuationAuto      ����        �V �4     K-    trackGenSetAmplitude            ����        �� �)     K-    trackGenSetAmplitudePeakOn      ����        Ȥ �c     K-    alignFreqCorrSetOn              ����        �. ��     K-    alignSignalRFSetOn              ����        ϓ ӌ     K-    alignAutoSetMode                ����        ԝ �     K-    alignDoAlignment                ����        � �7     K-    couplingSetAuto                 ����        � ��     K-    detectorSetMode                 ����        � �     K-    preAmpSetOn                     ����        �g �     K-    preselectorCenter               ����        � �     K-    reset                           ����        �( �      K-    self_test                       ����        � �J     K-    error_message                   ����        �@ ��     K-    error_query                     ����        �� ��     K-    revision_query                  ����        ��      K-    timeOut                         ����        � 	     K-    timeOut_Q                       ����        	� �     K-    errorQueryDetect                ����        �      K-    errorQueryDetect_Q              ����        � �     K-    dcl                             ����        U =     K-    opc_Q                           ����        � z     K-    readStatusByte_Q                ����        6 !�     K-    operEvent_Q                     ����        "� %0     K-    operCond_Q                      ����        %� (�     K-    quesEvent_Q                     ����        )I +�     K-    quesCond_Q                      ����        ,� /�     K-    cmd                             ����        0p 5`     K-    cmdString_Q                     ����        6� :}     K-    cmdInt                          ����        ; >�     K-    cmdInt16_Q                      ����        ?� B�     K-    cmdInt32_Q                      ����        C� G�     K-    cmdReal                         ����        H� L     K-    cmdReal64_Q                     ����        M Q     K-    cmdReal64Arr_Q                  ����        R� Vw     K-    cmdRealCommaArray_Q             ����        W� [     K-    close                                 �                                     DInitialize                        ����Instrument Setting Verification      DSet Function Verification State      DGet Function Verification State   ����Instrument App Select                DSet Instrument Application           DGet Instrument Application           DGet All Instrument Applications   ����cdmaOne Mode                      ����cdmaOne Mode Setup                ����cdmaOne Radio Setup                  DSet cdmaOne Radio Conditions         DGet cdmaOne Radio Conditions      ����cdmaOne Input Setup                  DSet cdmaOne Input Conditions         DGet cdmaOne Input Conditions         DSet cdmaOne Gain & Attenuation       DGet cdmaOne Gain & Attenuation    ����cdmaOne Trigger Setup                DSet External Trigger Controls        DGet External Trigger Controls        DSet RF Burst Trigger Controls        DGet RF Burst Trigger Controls        DSet Trigger Frame Timer              DGet Trigger Frame Timer           ����cdmaOne Demod Setup                  DSet cdmaOne Demod Config             DGet cdmaOne Demod Config          ����cdmaOne Frequency Control            DSet Channel Frequency                DGet Channel Frequency             ����cdmaOne Measurements              ����cdmaOne Channel Power (CHP)          DConfigure cdma1 CHP Measurement      DMeasure cdma1 CHP                    DMeasure cdma1 CHP Trace              DSet cdma1 CHP Averaging              DGet cdma1 CHP Averaging              DSet cdma1 CHP Integration BW         DGet cdma1 CHP Integration BW         DSet cdma1 CHP Span Frequency         DGet cdma1 CHP Span Frequency         DSet cdma1 CHP Trigger Source         DGet cdma1 CHP Trigger Source      ����cdmaOne Mod Accuracy (RHO)           DConfigure cdma1 RHO Measurement      DMeasure cdma1 RHO                    DMeasure cdma1 RHO Trace              DSet cdma1 RHO Averaging              DGet cdma1 RHO Averaging              DSet cdma1 RHO Sweep Time             DGet cdma1 RHO Sweep Time             DSet cdma1 RHO Meas Spectrum          DGet cdma1 RHO Meas Spectrum       ����cdmaOne Code Domain Power (CDP)      DConfigure cdma1 CDP Measurement      DMeasure cdma1 CDP                    DMeasure cdma1 CDP Trace              DSet cdma1 CDP Averaging              DGet cdma1 CDP Averaging              DSet cdma1 CDP Sweep Time             DGet cdma1 CDP Sweep Time             DSet cdma1 CDP Meas Spectrum          DGet cdma1 CDP Meas Spectrum          DSet cdma1 CDP Meas Threshold         DGet cdma1 CDP Meas Threshold         DSet cdma1 CDP Meas Method            DGet cdma1 CDP Meas Method         ����cdmaOne Close Spurs Power (CSP)      DConfigure cdma1 CSP Measurement      DMeasure cdma1 CSP                    DMeasure cdma1 CSP Trace              DSet cdma1 CSP Averaging              DGet cdma1 CSP Averaging              DSet cdma1 CSP Measurement Type       DGet cdma1 CSP Measurement Type    ����cdmaOne Spurs at Harmonics(SHP)      DConfigure cdma1 SHP Measurement      DMeasure cdma1 SHP Trace              DSet cdma1 SHP Averaging              DGet cdma1 SHP Averaging              DSet cdma1 SHP Number Harmonics       DGet cdma1 SHP Number Harmonics    ����GSM Mode                          ����GSM Mode Setup                    ����GSM Radio Setup                      DSet GSM Radio Conditions             DGet GSM Radio Conditions          ����GSM Input Setup                      DSet GSM Input Conditions             DGet GSM Input Conditions             DSet GSM Gain & Attenuation           DGet GSM Gain & Attenuation        ����GSM Trigger Setup                    DSet External Trigger Controls        DGet External Trigger Controls        DSet RF Burst Trigger Controls        DGet RF Burst Trigger Controls        DSet Trigger Frame                    DGet Trigger Frame                 ����GSM Demod Setup                      DSet GSM Burst Demod Align            DGet GSM Burst Demod Align            DSet GSM Reference Oscillator         DGet GSM Reference Oscillator      ����GSM Frequency Control                DSet ARFCN                            DGet ARFCN                            DSet TSC                              DGet TSC                           ����GSM Measurements                  ����GSM Transmit Power (TXP)             DConfigure TXP Measurement            DMeasure TXP                          DMeasure TXP Trace                    DSet TXP Averaging                    DGet TXP Averaging                    DSet TXP Trigger Source               DGet TXP Trigger Source               DSet TXP Threshold                    DGet TXP Threshold                    DSet TXP Time Slots                   DGet TXP Time Slots                   DSet TXP Burst Sync                   DGet TXP Burst Sync                ����GSM Power vs. Time (PVT)             DConfigure PVT Measurement            DMeasure PVT Trace                    DSet PVT Averaging                    DGet PVT Averaging                    DSet PVT Trigger Source               DGet PVT Trigger Source               DSet PVT Time Slots                   DGet PVT Time Slots                   DSet PVT Burst Sync                   DGet PVT Burst Sync                   DSet PVT Lower Mask Abs Level         DGet PVT Lower Mask Abs Level         DGet PVT Lower Mask Points            DSet PVT Lower Mask Rel Level         DGet PVT Lower Mask Rel Level         DSet PVT Lower Mask Time Points       DGet PVT Lower Mask Time Points       DSet PVT Custom Mask                  DGet PVT Custom Mask                  DSet PVT Upper Mask Abs Level         DGet PVT Upper Mask Abs Level         DGet PVT Upper Mask Points            DSet PVT Upper Mask Rel Level         DGet PVT Upper Mask Rel Level         DSet PVT Upper Mask Time Points       DGet PVT Upper Mask Time Points    ����GSM Phase & Freq Error (PFER)        DConfigure PFER Measurement           DMeasure PFER Trace                   DSet PFER Averaging                   DGet PFER Averaging                   DSet PFER Trigger Source              DGet PFER Trigger Source              DSet PFER Burst Sync                  DGet PFER Burst Sync               ����GSM Output RF Spectrum (ORFS)        DConfigure ORFS Measurement           DMeasure ORFS Trace                   DSet ORFS Averaging                   DGet ORFS Averaging                   DSet ORFS Measurement Mode            DGet ORFS Measurement Mode            DSet ORFS Measurement Type            DGet ORFS Measurement Type            DSet ORFS Offset Freq List Mode       DGet ORFS Offset Freq List Mode       DSet ORFS Offset Frequency            DGet ORFS Offset Frequency            DSet ORFS Trigger Source              DGet ORFS Trigger Source              DSet ORFS OFS RF Burst Sync           DGet ORFS OFS RF Burst Sync           DSet ORFS Wideband Noise Mode         DGet ORFS Wideband Noise Mode      ����GSM Transmit Band Spurs (TSP)        DConfigure TSP Measurement            DMeasure TSP                          DMeasure TSP Trace                    DSet TSP Averaging                    DGet TSP Averaging                    DSet TSP Measurement Type             DGet TSP Measurement Type             DSet TSP Limit                        DGet TSP Limit                        DSet TSP Idle Mode                    DGet TSP Idle Mode                 ����Spectrum Analyzer Mode            ����Spectrum Analyzer Measurements    ����Measurement Selections               DSet Measurement Mode                 DGet Measurement Mode              ����Adjacent Power Measurements          DConfigure ACP Measurement            DGet ACP Measurement Config           DMeasure ACP                       ����Channel Power Measurements           DConfigure CHP Measurement            DGet CHP Measurement Config           DMeasure CHP                       ����Occupied Bandwidth Measurements      DConfigure OBW Measurement            DGet OBW Measurement Config           DMeasure OBW                       ����Emission Bandwidth Measurements      DConfigure EBW Measurement            DGet EBW Measurement Config           DMeasure EBW                       ����Harmonic Distortion Measurement      DConfig Harmonic Dist Meas            DGet Harmonic Dist Meas Config        DMeasure Harmonic Distortion       ����Spectrum Analyzer Control         ����Frequency Control Functions          DSet Start Frequency                  DGet Start Frequency                  DSet Stop Frequency                   DGet Stop Frequency                   DSet Center Frequency                 DGet Center Frequency                 DSet Span Frequency                   DGet Span Frequency                   DSet Center Frequency Step Size       DStep Center Frequency                DSet Span Zoom                     ����Amplitude Control Functions          DSet Amplitude Reference Level        DGet Amplitude Reference Level        DSet Amplitude Ref Level Offset       DGet Amplitude Ref Level Offset       DSet Amplitude Attenuation            DGet Amplitude Attenuation            DSet Amplitude Attenuation Auto       DSet Amplitude Scale                  DGet Amplitude Scale                  DSet Amplitude Format                 DGet Amplitude Format                 DSet Amplitude Units                  DGet Amplitude Units               ����Bandwidth Control Functions          DSet Resolution Bandwidth             DSet Resolution Bandwidth Auto        DSet Video Bandwidth                  DSet Video Bandwidth Auto             DSet Video Average Mode               DSet Video Average On              ����Trace Control Functions              DSet Trace Mode                    ����Trigger Control Functions            DSet Trigger Source                   DSet Video Trigger Level           ����Sweep Control Functions              DSet Sweep Mode                       DGet Sweep Mode                       DSet Sweep Time                       DGet Sweep Time                       DSet Sweep Time Auto                  DDo Sweep                             DStart Sweep                          DAbort Sweep                          DWait For Sweep Complete           ����Marker Control Functions             DSet Marker Mode                      DSet Marker Function                  DDo Marker Peak Search                DInstrument State to Marker           DSet Signal Tracking On               DGet Marker Y Value                   DGet Marker X Value                   DSet Marker X Position                DGet Marker X Position                DSet Marker Peak Excursion            DSet Marker Peak Threshold         ����Frequency Counter Control Func       DSet Freq Counter Resolution          DSet Freq Counter Res Coupling        DSet Freq Counter On                  DGet Freq Counter X Value          ����Input Control Functions              DSet Input Coupling Mode              DSet Input Impedance               ����Display Control Functions            DSetup Display Line                ����Trace Math Control Functions         DSet Trace Smoothing Value            DGet Trace Data Mean Value            DGet Trace Peaks                      DSet Trace Data                       DGet Trace Data                    ����Sweep Gate Control Functions         DSetup Sweep Gate Modes            ����Tracking Generator Control Func      DSet Track Gen On                     DSet Track Gen Attenuation            DSet Track Gen Attenuation Auto       DSet Track Gen Amplitude              DSet Track Gen Ampl Peak On        ����Calibration Alignment Control        DSet Frequency Correction On          DSet RF Alignment Signal On           DSet Auto Alignment Mode              DDo Alignment                      ����Miscellaneous Control Functions      DSet All Coupling Modes to Auto       DSet Detector Mode                    DSet Preamp On                        DPreselector Center                  pUtility Functions                    DReset                                DSelf-Test                            DError Message                        DError Query                          DRevision Query                       DSet Timeout                          DQuery Timeout                        DSet Error Query Detect               DQuery Error Query Detect             DDevice Clear                         D*OPC?                                DRead Status Byte                     DStatus operation event               DStatus operation condition           DStatus questionable event            DStatus questionable condition       OPassthrough Functions                DSend String                          DQuery String                         DSend Integer                         DQuery Int16                          DQuery Int32                          DSend Real                            DQuery Real64                         DQuery Real64 Array                   DQuery Real Comma Array               DClose                           