s��        B   K 1�  4   �   ����                               ifr2025     ifr2025 VXI plug&play Driver V3.20               � ��ifr2025_applicationHandler     � ��ViStatus     	� 	��ViSession     � ��ViAddr     � ��ViInt16     	�  ViChar []     � ��ViRsrc     	� 	��ViBoolean     � ��ViString     � ��ViInt32     �  
ViReal64 []     � ��ViReal64     	�  ViInt16[]     	�  ViInt32[]     
�  	ViReal64[]     �  ViChar[]     � 	 
ViBoolean[]  9     Instrument Name: ifr2025

 Description:     This instrument module provides
                  programming support for signal generators:
                  mi2023, mi2024
                  mi3002
                  ri3271
                  ifr2023A, ifr2023B, ifr2025
                  The module is divided into the
                  following functions:

 Functions/Classes:

 (1) Initialize:
     Initialize the instrument and sets it to default
     configuration.

 (2) Source Functions (Class)
       Configure        (Class)
         Carrier          (Class)
         Modulation       (Class)
         Memory           (Class)
         Sweep            (Class)
         Sequencing       (Class)
         Sinad
       Initiate         (Class)

 (3) Utility Functions: (Class)

 (4) Query Functions:  (Class)
 (5) Close    l     Panel Name:    Initialize

 Description:   This routine performs the
                following initialization actions:

                -  Opens the instrument by
                   storing information about the
                   instrument in the Instrument
                   Table.

                -  Initializes the VXI interface
                   (NI-VXI or NI-GPIB)
                   accordingly.

                -  Performs an identification
                   query on the Instrument.

                -  Sends initialization commands
                   to the instrument.

                -  Returns an Instrument ID which
                   is used to differentiate
                   between instruments of the same
                   model type.  This value will be
                   used to identify the instrument
                   in subsequent calls.     �     Class Name:    Source Functions

 Description:   Contains functions which set-up the
                parameters of the instrument's output;
                and functions which supply a given signal
                on the output.     y     Class Name:    Configure

 Description:   Contains functions for setting up
                the instrument parameters.     �     Class Name:    Carrier

 Description:   Contains functions for setting up
                and controlling the carrier signal.     �     Panel Name:    Set Carrier and Level

 Description:   Sets the following instrument
                functions:
                - Frequency
                - RF level
                - RF units
                - RF state
                - RF type     L     Panel Name:    Carrier Phase

 Description:   Adjust Carrier Phase Offset     �     Panel Name:    Attenuator Lock/Unlock

 Description:   Sets the following instrument
                functions:
                - Attenuator lock/unlock     y     Class Name:    Modulation

 Description:   Contains functions for setting and
                controlling Modulation.
    2     Panel Name:    Mod Mode

 Description:   Select the modulation mode.

                Pulse modulation can be used
                with any of the AM, FM, PM and
                2FSK modes, but not with 4FSK.
                2FSK and 4FSK parameters are
                controlled using the FM commands.     �     Panel Name:    Mod Control

 Description:   Sets the following instrument
                functions:

                - Global Mod On/Off
                - Pulse Mod On/Off     �     Panel Name:    Mod Phase

 Description:   Sets the following instrument
                functions:
                - Mod Phase     �     Panel Name:    Set AM1

 Description:   Sets the following instrument
                functions:

                - AM1 Depth
                - AM1 State
                - AM1 Source
                - AM1 Mod Rate
                - AM1 Waveform     �     Panel Name:    Set FM1

 Description:   Sets the following instrument
                functions:

                - FM1 Deviation
                - FM1 State
                - FM1 Source
                - FM1 Mod Rate
                - FM1 Waveform

     �     Panel Name:    Set PM2

 Description:   Sets the following instrument
                functions:

                - PM2 Deviation
                - PM2 State
                - PM2 Mod Rate
                - PM2 Waveform     �     Panel Name:    Set FSK Ext

 Description:   Sets the following instrument
                functions:

                - FM1 Deviation
                - FM1 State
     N     Panel Name:    DCFM Null

 Description:   Perform 1sec DCFM null operation.     S     Class Name:    ILS

 Description:   These functions are not currently available.     S     Class Name:    VOR

 Description:   These functions are not currently available.         Class Name:    Memory

 Description:   Volatile and Non-volatile memory
                is used to store and recall
                instrument settings.
                Erase memory will reset all the
                instrument stores to default
                values.     �     Panel Name:    Memory Store

 Description:   Sets the following instrument
                functions:

                - Store Type
                - Store Number     �     Panel Name:    Memory Recall

 Description:   Sets the following instrument
                functions:

                - Recall Type
                - Recall Number     �     Panel Name:    Memory Erase

 Description:   Sets the following instrument
                function:

                - Erase Type     �     Panel Name:    Memory Protection

 Description:   Sets the following instrument
                function:

                - Protection state
                - Protection start
                - Protection stop     �     Panel Name:    Memory Power On

 Description:   Sets the following instrument
                function:

                - power on state
                - memory number     �     Panel Name:    Memory Download

 Description:   Sets the following instrument
                function:

                - RF Output state     }     Class Name:    Sweep

 Description:   Contains functions for setting up
                and controlling the Carrier Sweep.     �     Panel Name:    Set sweep parameters

 Description:   Sets the following instrument
                functions:

                - Start Frequency
                - Stop Frequency
                - Step Frequency
                - Step Time
     �     Panel Name:    Set Sweep Mode

 Description:   Sets the following instrument
                functions:

                - Carr Freq Mode
                - Sweep Mode
                - Sweep Trigger Mode
                - Trigger Source     �     Class Name:    Sequencing

 Description:   Contains functions for setting up
                and controlling memory sequences.     �     Panel Name:    Set Memory Sequence

 Description:   Sets the following instrument
                function:

                - Sequence num
                - Sequence start
                - Sequence stop     �     Panel Name:    Select Memory Sequence

 Description:   Sets the following instrument
                function:

                - Select sequence (1 - 9)     �     Class Name:    Initiate Functions

 Description:   Contains functions which supply a given signal
                on the output.     I     Panel Name:    Run Sweep

 Description:   Allows control of the sweep.     �     Panel Name:    Memory Trigger

 Description:   Sets the following instrument
                function:

                - Trigger state     �     Panel Name:    Step through Sequence

 Description:   Sets the following instrument
                function:

                - Step direction    �     Class Name:    Low Level Functions

 Description:   Provides lower level functions to
                communicate with the instrument,
                and change instrument parameters.

 Functions:

 (1) Write To Instrument:
     Writes commands and queries to the instrument
     to modify parameters and query device
     settings.

 (2) Read Instrument Data:
     Reads data from instrument buffer and returns
     it to the specified variable in memory.     k     Class Name:    Instrument functions

 Description:   Extra instrument support
                functions.     R     Panel Name:    Frequency Standard

 Description:   Sets the frequency standard.     v     Panel Name:    Elapsed Reset

 Description:   Resets the number of elapsed
                operating hours to zero.     b     Panel Name:    RPP Reset

 Description:   Resets Reverse Power Protection
                Trip.     �     Class Name:    Query Functions

 Description:   Contains functions which interogate the
                instrument for its parameters.     �     Panel Name:    Get Elapsed Time

 Description:   Allows the number of elapsed
                operating hours since the last
                reset to be displayed.     �     Panel Name:    Get Operating Time

 Description:   Allows the total number of
                operating hours to be displayed.          Panel Name:    Get RPP Count

 Description:   Counts the number of times that
                the RPP circuitry has tripped.    2     Panel Name:     Close

 Description:    The close routine performs the
                 following operations:

                 -  removes the entry for the
                    instrument from the Instrument
                    Table.

 Note: The instrument must be reinitialized to use
       it again.     G    This function must be called to open a VISA session to an instrument.     �    Value     Action
========  =============================================
VI_TRUE : Verify instrument ID during initialisation
VI_FALSE: Don't     �    Value     Action
========  =============================================
VI_TRUE : Reset instrument during initialisation
VI_FALSE: Don't     �    Returns a ViSession value which identifies this occurrence of the instrument. A value of VI_NULL is returned if the function fails.     �    Function return value.

Value        Meaning
========     =============================================
<VI_SUCCESS  Error condition
>=VI_SUCCESS No errors
     F    A string containing the instrument descriptor.

e.g. VXI0::96::INSTR    ': N � �       ID Query                          '� N �       Reset Device                      (d N� �  `    vi                                (�����  `    Error                             )� #  �  `    InstrDesc                        % Do Query VI_TRUE Skip Query VI_FALSE  * Reset Device VI_TRUE Don't Reset VI_FALSE    	            	            "VXI0::96::INSTR"    =    This function sets the carrier frequency of the instrument.        Specifies the instrument carrier frequency.

Valid range : ifr2025_FREQ_MIN 
              to
              mi3002_FREQ_MAX (mi3002, mi2024, ri3271)
           or mi2023_FREQ_MAX (mi2023, ifr2023A)
           or ifr2023B_FREQ_MAX (ifr2023A)
           or ifr2025_FREQ_MAX (ifr2025)     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
ifr2025_ERROR_RFFREQ  Frequency out of range
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    +� � � �  `    Frequency                         ,� �   �  `    vi                                - �����  `    Error Code                      ���� �D��                                            2.4E9    1    	           Hz    b    This function sets the RF level of the carrier. The units and output type can also be specified.     :    The ViSession parameter which identifies the instrument.     d    The RF output level of the generator. The limits depend on the units selected and the output type.     �    Specifies the units in which the RF Level is expressed.

The allowed values are :-

  ifr2025_RFUNIT_DBM
  ifr2025_RFUNIT_DBV
  ifr2025_RFUNIT_DBMV
  ifr2025_RFUNIT_DBUV
  ifr2025_RFUNIT_V
  ifr2025_RFUNIT_MV
  ifr2025_RFUNIT_UV

        Function return value.

Value                 Meaning
========              =========================================
ifr2025_ERROR_RFLEVEL RF level out of range
ifr2025_ERROR_RFUNITS Illegal RF unit specified
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    /k +  �  `    vi                                /� � � �  `    RF Level                          0 �8 � @    RF Unit                           1	����  `    Error Code                         1    -137.0               �dBm ifr2025_RFUNIT_DBM dBV ifr2025_RFUNIT_DBV dBmV ifr2025_RFUNIT_DBMV dBuV ifr2025_RFUNIT_DBUV V ifr2025_RFUNIT_V mV ifr2025_RFUNIT_MV uV ifr2025_RFUNIT_UV    	           )    Adjust the phase offset of the carrier.     Y    Adjust the carrier phase offset.

Valid range : ifr2025_PHASE_MIN to ifr2025_PHASE_MAX.     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
ifr2025_ERROR_PHASE   Phase out of range
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    3� ] � �  `    Carrier Phase                   ���� bD��                                           4X �   �  `    vi                                4� �����  `    Error Code                         0.0    deg    1    	           T    This function selects the required units, and EMF or PD for voltage related units.     v    Specifies the type of output for the RF Level.

The allowed values are :-

  ifr2025_RFTYPE_EMF
  ifr2025_RFTYPE_PD
        Function return value.

Value                 Meaning
========              =========================================
ifr2025_ERROR_RFUNITS Illegal RF unit specified
ifr2025_ERROR_RFTYPE  Illegal RF type specified
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
     :    The ViSession parameter which identifies the instrument.    $    Specifies the units in which the RF Level is returned from the query.

Value  Type
=====  ===================
  0    ifr2025_RFUNIT_dBm
  1    ifr2025_RFUNIT_dBV
  2    ifr2025_RFUNIT_dBmV
  3    ifr2025_RFUNIT_dBuV
  4    ifr2025_RFUNIT_V
  5    ifr2025_RFUNIT_mV
  6    ifr2025_RFUNIT_uV
    6� r � �       RF Type                           7V ����  `    Error Code                        8|   �  `    vi                                8� y � �    RF Unit                          ,  emf ifr2025_RFTYPE_EMF pd ifr2025_RFTYPE_PD    	           1               �dBm ifr2025_RFUNIT_DBM dBV ifr2025_RFUNIT_DBV dBmV ifr2025_RFUNIT_DBMV dBuV ifr2025_RFUNIT_DBUV V ifr2025_RFUNIT_V mV ifr2025_RFUNIT_MV uV ifr2025_RFUNIT_UV    $    Controls the instrument RF output.     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
ifr2025_ERROR_ONOFF   Illegal value for output state
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
     P    Enables or disables the RF output.

Valid values : ifr2025_OFF and ifr2025_ON.    ;� "  �  `    vi                                <����  `    Error Code                        = � � �       RF State                           1    	          On ifr2025_ON Off ifr2025_OFF    >    Allows the RF output to be assigned a user programmed limit.     y    The user specified RF output level limit of the generator. The limits depend on the units selected and the output type.     �    Specifies the units in which the RF Level is expressed.

The allowed values are :-

  ifr2025_RFUNIT_DBM
  ifr2025_RFUNIT_DBV
  ifr2025_RFUNIT_DBMV
  ifr2025_RFUNIT_DBUV
  ifr2025_RFUNIT_V
  ifr2025_RFUNIT_MV
  ifr2025_RFUNIT_UV

        Function return value.

Value                 Meaning
========              =========================================
ifr2025_ERROR_RFLEVEL RF level out of range
ifr2025_ERROR_RFUNITS Illegal RF unit specified
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
     :    The ViSession parameter which identifies the instrument.     �    This determines whether to enable or disable the offset for the current frequency band.

Valid values : ifr2025_ENABLE or ifr2025_DISABLE    >� � � �  `    Level                             ? �" � @    Unit                              ?�����  `    Error Code                        A /  �  `    vi                                AW �� �       Limit                              19.0               �dBm ifr2025_RFUNIT_DBM dBV ifr2025_RFUNIT_DBV dBmV ifr2025_RFUNIT_DBMV dBuV ifr2025_RFUNIT_DBUV V ifr2025_RFUNIT_V mV ifr2025_RFUNIT_MV uV ifr2025_RFUNIT_UV    	           1  . Enable ifr2025_ENABLE Disable ifr2025_DISABLE    �    This function specifies an RF output offset to compensate for cable or switching offsets. An offset is allowed for each output carrier frequency band.     �    Specifies the output offset for a frequency band.

Valid range : ifr2025_RFOFFSET_MIN to ifr2025_RFOFFSET_MAX.

The bands available are :-

9 kHz   to 150MHz
150 MHz to 300 MHz
300 MHz to 600 MHz
600 MHz to 1.2 GHz
1.2 GHz to 2.4 GHz     �    This determines whether to enable or disable the offset for the current frequency band.

Valid values : ifr2025_ENABLE or ifr2025_DISABLE     �    Function return value.

Value                  Meaning
========               =========================================
ifr2025_ERROR_RFOFFSET RF level offset out of range
<VI_SUCCESS            Error condition
>=VI_SUCCESS           No errors
     :    The ViSession parameter which identifies the instrument.    D� � � �  `    Level                             E| �, �       Offset                            F	����  `    Error Code                        G !  �  `    vi                              ���� ���                                            0.0  . Enable ifr2025_ENABLE Disable ifr2025_DISABLE    	           1    dB    [    Allows the RF level to be reduced by at least 10dB without the step attenuator operating.     q    Lock or unlock the current attenuator pad settings.

Valid values : ifr2025_ATTEN_LOCK or ifr2025_ATTEN_UNLOCK.     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
VI_ERROR_PARAMETER2   Illegal value for attenuator lock
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    I
 m � �       Attenuator                        I�   �  `    vi                                I�����  `    Error Code                       4  Lock ifr2025_ATTEN_LOCK Unlock ifr2025_ATTEN_UNLOCK    1    	           =    Configures the instrument for a particular modulation mode.    t    Specifies the instrument modulation mode.

Value               Comment
=================   ===============================
ifr2025_MODE_AM     Amplitude modulation
ifr2025_MODE_FM     Frequency modulation 
ifr2025_MODE_PM     Phase modulation
ifr2025_MODE_AMFM   AM(int)+FM(ext) or FM(int)+AM(ext)
ifr2025_MODE_AMPM   AM(int)+PM(ext) or PM(int)+AM(ext)
ifr2025_MODE_2FSK   FM plus logic level on trigger i/p
ifr2025_MODE_4FSK   FM plus trigger i/p and pulse i/p
ifr2025_MODE_ILS    ILS Feature (not ifr2025)
ifr2025_MODE_VOR    VOR Feature (not ifr2025)

These can be combined with PULSE modulation with the exception of 4FSK.     a    Enables or disables the pulse modulator.

Valid values : ifr2025_PULSE_OFF or ifr2025_PULSE_ON.     :    The ViSession parameter which identifies the instrument.    5    Function return value.

Value                 Meaning
========              =========================================
ifr2025_ERROR_MODMODE Illegal value for modulation mode
ifr2025_ERROR_PULSE   Pulse mode out of range or not supported
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    K� = � �       Mod Mode                          Nk =$ �       Pulse                             N�   �  `    vi                                O����  `    Error Code                      ���� � N��                                                   	   �AM ifr2025_MODE_AM FM ifr2025_MODE_FM PM ifr2025_MODE_PM AM,FM ifr2025_MODE_AMFM AM,PM ifr2025_MODE_AMPM 2FSK ifr2025_MODE_2FSK 4FSK ifr2025_MODE_4FSK ILS ifr2025_MODE_ILS VOR ifr2025_MODE_VOR  2  Enable ifr2025_PULSE_ON Disable ifr2025_PULSE_OFF    1    	           )Note. ILS & VOR not available on ifr2025    4    Controls the global modes of modulation and pulse.     L    Set Global Modulation On or Off

Valid values : ifr2025_OFF or ifr2025_ON.     J    Set Pulse Modulation On or Off

Valid range : ifr2025_OFF or ifr2025_ON.     :    The ViSession parameter which identifies the instrument.    &    Function return value.

Value                 Meaning
========              =========================================
VI_ERROR_PARAMETER2   Global mod value out of range
VI_ERROR_PARAMETER3   Pulse mode value out of range
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    R� M � �       Global Mod                        S. M$ �       Pulse                             S� �   �  `    vi                                S� �����  `    Error Code                       &  On ifr2025_MOD_ON Off ifr2025_MOD_OFF  *  On ifr2025_PULSE_ON Off ifr2025_PULSE_OFF    1    	           t    This function sets the phase difference between channel 1 and channel 2 of the instrument's modulation oscillator.    �     Control Name:  Mod Phase

 Description:   Specifies the phase difference of
                the modulation oscillator channel
                two relative to channel one.

 Variable Type: real

 Valid Range:   0.0 to 359.9 deg

 Default Value: 0.0 deg

 Note:  If you have set the phase and subsequently
        adjust the mod rate or altered the
        waveform, the relative phase difference
        will become indeterminate and will have to
        be reset.     K    The VISA Instrument Description.

Examples: VXI::5, GPIB-VXI::128::INSTR      �    Function return value.

Value                 Meaning
========              =========================================
ifr2025_ERROR_PHASE   Phase out of range
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    V� ] � �  `    Mod Phase                       ���� _A��                                           X�   �  `    vi                                X�����  `    Error Code                         0.0    deg    1    	           B    Allows either of the two AM modulation sources to be configured.     c    Specifies the amount of AM to be set.

Valid range : ifr2025_AMDEPTH_MIN to ifr2025_AMDEPTH_MAX.
     M    Set AM channel On or Off

Valid values : ifr2025_MOD_ON or ifr2025_MOD_OFF.     �    Set AM modulation source

Allowed Values    Source
===============   ==========
ifr2025_SRC_INT    Internal
ifr2025_SRC_EXTAC  External
ifr2025_SRC_EXTALC External with ALC
ifr2025_SRC_EXTDC  External DC
     s    Specifies the internal modulation rate to be set for AM.

Valid range : ifr2025_AMRATE_MIN to ifr2025_AMRATE_MAX.     �    Select waveform for AM1 internal modulation.

Allowed Values    Waveform
===============   ==========
ifr2025_MODF_SIN  Sine wave
ifr2025_MODF_TRI  Triangle
ifr2025_MODF_SQR  Square
     :    The ViSession parameter which identifies the instrument.    �    Function return value.

Value                  Meaning
========               =========================================
ifr2025_ERROR_MODCHAN  Invalid channel specified
ifr2025_ERROR_DEPTH    Depth out of range
ifr2025_ERROR_RATE     Modulation rate out of range
ifr2025_ERROR_WAVEFORM Invalid waveform specified
ifr2025_ERROR_SOURCE   Invalid source specified
ifr2025_ERROR_ONOFF    Invalid state specified
<VI_SUCCESS            Error condition
>=VI_SUCCESS           No errors
     T    Selects the AM channel to configure.

Valid values : ifr2025_MOD1 or ifr2025_MOD2.    [  B � �  `    Depth                             [k �z �       State                             [� �1 �       Source                            \� B' �  `    Mod Rate                          ] � � �       Waveform                        ���� F��                                           ]� �   �  `    vi                                ^ �����  `    Error Code                      ���� F���                                           _� @ [ �       Channel                            0.0    On ifr2025_ON Off ifr2025_OFF               aINT ifr2025_SRC_INT EXT AC ifr2025_SRC_EXTAC EXT ALC ifr2025_SRC_EXTALC EXT DC ifr2025_SRC_EXTDC    1000               HSine ifr2025_MODF_SIN Triangle ifr2025_MODF_TRI Square ifr2025_MODF_SQR    %    1    	           Hz  " AM1 ifr2025_MOD1 AM2 ifr2025_MOD2    B    Allows either of the two FM modulation sources to be configured.     u    Specifies the amount of FM deviation to be set.

Valid range : ifr2025_FMDEVIATION_MIN to ifr2025_FMDEVIATION_MAX.
     t    Specifies the internal modulation rate to be set for FM.

Valid range : ifr2025_FMRATE_MIN to ifr2025_FMRATE_MAX.      :    The ViSession parameter which identifies the instrument.    �    Function return value.

Value                  Meaning
========               =========================================
ifr2025_ERROR_MODCHAN  Invalid channel specified
ifr2025_ERROR_DEPTH    Deviation out of range
ifr2025_ERROR_RATE     Modulation rate out of range
ifr2025_ERROR_WAVEFORM Invalid waveform specified
ifr2025_ERROR_SOURCE   Invalid source specified
ifr2025_ERROR_ONOFF    Invalid state specified
<VI_SUCCESS            Error condition
>=VI_SUCCESS           No errors
     �    Select waveform for FM internal modulation.

Allowed Values    Waveform
===============   ==========
ifr2025_MODF_SIN  Sine wave
ifr2025_MODF_TRI  Triangle
ifr2025_MODF_SQR  Square
     �    Set FM modulation source

Allowed Values     Source
===============    ==========
ifr2025_SRC_INT    Internal
ifr2025_SRC_EXTAC  External
ifr2025_SRC_EXTALC External with ALC
ifr2025_SRC_EXTDC  External DC
     M    Set FM channel On or Off

Valid values : ifr2025_MOD_ON or ifr2025_MOD_OFF.     T    Selects the FM channel to configure.

Valid values : ifr2025_MOD1 or ifr2025_MOD2.    c� N � �  `    Deviation                         dj N8 �  `    Mod Rate                          d� �    �  `    vi                                e( �����  `    Error Code                      ���� R��                                         ���� R���                                           g � � �       Waveform                          g� �< �       Source                            h� �� �       State                             i M T �       Channel                            0.0    1.00    1    	           Hz    Hz               HSine ifr2025_MODF_SIN Triangle ifr2025_MODF_TRI Square ifr2025_MODF_SQR               aINT ifr2025_SRC_INT EXT AC ifr2025_SRC_EXTAC EXT ALC ifr2025_SRC_EXTALC EXT DC ifr2025_SRC_EXTDC    On ifr2025_ON Off ifr2025_OFF  " FM1 ifr2025_MOD1 FM2 ifr2025_MOD2    B    Allows either of the two PM modulation sources to be configured.     k    Specifies the amount of PM to be set.

Valid range : ifr2025_PMDEVIATION_MIN to ifr2025_PMDEVIATION_MAX.
     t    Specifies the internal modulation rate to be set for FM.

Valid range : ifr2025_PMRATE_MIN to ifr2025_PMRATE_MAX.      :    The ViSession parameter which identifies the instrument.    �    Function return value.

Value                  Meaning
========               =========================================
ifr2025_ERROR_MODCHAN  Invalid channel specified
ifr2025_ERROR_DEPTH    Deviation out of range
ifr2025_ERROR_RATE     Modulation rate out of range
ifr2025_ERROR_WAVEFORM Invalid waveform specified
ifr2025_ERROR_SOURCE   Invalid source specified
ifr2025_ERROR_ONOFF    Invalid state specified
<VI_SUCCESS            Error condition
>=VI_SUCCESS           No errors
     �    Select waveform for PM internal modulation.

Allowed Values    Waveform
===============   ==========
ifr2025_MODF_SIN  Sine wave
ifr2025_MODF_TRI  Triangle
ifr2025_MODF_SQR  Square
     �    Set PM modulation source

Allowed Values     Source
===============    ==========
ifr2025_SRC_INT    Internal
ifr2025_SRC_EXTAC  External
ifr2025_SRC_EXTALC External with ALC
ifr2025_SRC_EXTDC  External DC
     M    Set PM channel On or Off

Valid values : ifr2025_MOD_ON or ifr2025_MOD_OFF.     T    Selects the PM channel to configure.

Valid values : ifr2025_MOD1 or ifr2025_MOD2.    l� R � �  `    Deviation                         mf RF �  `    Mod Rate                        ���� V
��                                           m�   �  `    vi                                n$����  `    Error Code                      ���� V���                                           p � � �       Waveform                          p� �0 �       Source                            q� �~ �       State                             q� R P �       Channel                            0.00    400    RAD    1    	           Hz               HSine ifr2025_MODF_SIN Triangle ifr2025_MODF_TRI Square ifr2025_MODF_SQR               aINT ifr2025_SRC_INT EXT AC ifr2025_SRC_EXTAC EXT ALC ifr2025_SRC_EXTALC EXT DC ifr2025_SRC_EXTDC    On ifr2025_ON Off ifr2025_OFF  " PM1 ifr2025_MOD1 PM2 ifr2025_MOD2    \    This function controls FM1 for FSK mode by setting channel 1 of the modulation oscillator.     �     Control Name:  FM1 Deviation

 Description:   Specifies the amount of FM1
                to be set.

 Variable Type: Real

 Valid Range:   0Hz to 100KHz

 Default Value: 0Hz     �     Control Name:  FM1 State

 Description:   Set FM1 channel On or Off

 Variable Type: Integer

 Valid Range:   0 - Off (Default)
                1 - On     K    The VISA Instrument Description.

Examples: VXI::5, GPIB-VXI::128::INSTR         Function return value.

Value                 Meaning
========              =========================================
ifr2025_ERROR_DEPTH   Deviation out of range
ifr2025_ERROR_ONOFF   Invalid state specified
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors

    v
 c � �  `    FM1 Deviation                     v� ^Y �       FM1 State                         wd   �  `    vi                                w�����  `    Error Code                      ���� f��                                            0.0    On ifr2025_ON Off ifr2025_OFF    1    	           Hz    C    This function selects DC FM null operation (only for EXTDC mode).     K    The VISA Instrument Description.

Examples: VXI::5, GPIB-VXI::128::INSTR      �    Function return value.

Value                 Meaning
========              =========================================
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    zl �   �  `    vi                                z� �����  `    Error Code                         1    	           2    Sets the sum of depth of modulation in ILS mode.     o    Specifies the sum of depth of modulation in %.

Valid range : ifr2025_DEPTH_SDM_MIN to ifr2025_DEPTH_SDM_MAX.     �    Function return value.

Value                 Meaning
========              =========================================
ifr2025_ERROR_DEPTH   Invalid depth value
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
     :    The ViSession parameter which identifies the instrument.    |: � � �  `    Depth                             |� �����  `    Error Code                        }� �   �  `    vi                                 0.0    	           1    /    Configures DDM90 or DDM150 to be predominant.     y    Specifies  depth of modulation for DDM90 or DDM150 in %.

Valid range : ifr2025_DEPTH_DDM_MIN to ifr2025_DEPTH_DDM_MAX.     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
ifr2025_ERROR_DEPTH   Invalid depth value
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
     f    Specifies 90Hz or 150Hz to be predominant.

Valid values are:-

90  ifr2025_DDM90
150 ifr2025_DDM150    ~� � �  `    Depth                             R   �  `    vi                                �����  `    Error Code                        �� � � �       Type                               0.0    1    	         *  DDM150 ifr2025_DDM150 DDM90 ifr2025_DDM90         Sets the ILS ident tone depth.     n    Specifies the ILSID depth of modulation in %.

Valid range : ifr2025_DEPTH_ILS_MIN to ifr2025_DEPTH_ILS_MAX.     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
ifr2025_ERROR_DEPTH   Invalid depth value
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    �3 � � �  `    Depth                             ��   �  `    vi                                ������  `    Error Code                         0.0    1    	           4    Sets the VOR/SUB subcarrier signal (9960Hz) depth.     p    Specifies the VOR/SUB depth of modulation in %.

Valid range : ifr2025_DEPTH_VOR_MIN to ifr2025_DEPTH_VOR_MAX.     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
ifr2025_ERROR_DEPTH   Invalid depth value
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    �� � � �  `    Depth                             �F   �  `    vi                                ��
����  `    Error Code                         0.0    1    	           ,    Sets the REF variable signal (30Hz) depth.     l    Specifies the REF depth of modulation in %.

Valid range : ifr2025_DEPTH_REF_MIN to ifr2025_DEPTH_REF_MAX.     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
ifr2025_ERROR_DEPTH   Invalid depth value
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    �c � � �  `    Depth                             ��   �  `    vi                                �����  `    Error Code                         0.0    1    	           E    Sets the VOR direction TO/FROM a beacon along with a bearing value.     Z    Specifies the bearing in DEG.

Valid range : ifr2025_BEARING_MIN to ifr2025_BEARING_MAX.     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
ifr2025_ERROR_BEARING Invalid bearing value
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
     Y    Sets bearing mode TO/FROM the beacon.

Valid values are :-

  ifr2025_TO
  ifr2025_FROM    � � �  `    Bearing                           �o   �  `    vi                                ������  `    Error Code                        �� � � �       Direction                          0.0    1    	            FROM ifr2025_FROM TO ifr2025_TO         Sets the VOR ident tone depth.     r    Specifies the VORID depth of modulation in %.

Valid range : ifr2025_DEPTH_VORID_MIN to ifr2025_DEPTH_VORID_MAX.     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
ifr2025_ERROR_DEPTH   Invalid depth value
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    �; � � �  `    Depth                             ��   �  `    vi                                ������  `    Error Code                         0.0    1    	           D    Writes current instrument settings to the selected store location.     �    Select type of store and perform checks on the store number.

Value             Range
===============   ===========
ifr2025_MEM_CFRQ  0 to 99
ifr2025_MEM_FULL  100 to 199
ifr2025_MEM_RAM   200 to 299

     W    A number representing the memory location

For valid range, see Store Type parameter
     :    The ViSession parameter which identifies the instrument.    !    Function return value.

Value                 Meaning
========              =========================================
VI_ERROR_PARAMETER2   Invalid store type specified
VI_ERROR_PARAMETER3   Store number out of range
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    �� b � �       Store Type                        �� aD �  `    Store Number                    ���� ] ���                                         ���� m ���                                         ���� | ���                                           �   �  `    vi                                �^����  `    Error Code                                    @CFRQ ifr2025_MEM_CFRQ FULL ifr2025_MEM_FULL RAM ifr2025_MEM_RAM    0    	(0 - 99)    (100 - 199)    (200 - 299)    1    	           �    This function returns the instrument to the settings stored in the specified location.

Note that CFRQ and FULL stores are non-volitile, but RAM contents are lost when the instrument is switched off.    "    Select type of store and perform checks on the store number.

Value             Range
===============   ===========
ifr2025_MEM_CFRQ  0 to 99
ifr2025_MEM_FULL  100 to 199
ifr2025_MEM_RAM   200 to 299
ifr2025_MEM_ALL   000 to 299 and 999

Note. Location 999 is the factory default store.

     W    A number representing the memory location

For valid range, see Store Type parameter
     :    The ViSession parameter which identifies the instrument.    !    Function return value.

Value                 Meaning
========              =========================================
VI_ERROR_PARAMETER2   Invalid store type specified
VI_ERROR_PARAMETER3   Store number out of range
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    �Z m � �       Recall Type                       �� m9 �  `    Recall Number                   ���� h ���                                         ���� x ���                                         ���� � ���                                           ��   �  `    vi                                �%����  `    Error Code                      ���� � ���                                                       TCFRQ ifr2025_MEM_CFRQ FULL ifr2025_MEM_FULL RAM ifr2025_MEM_RAM ALL ifr2025_MEM_ALL    0    	(0 - 99)    (100 - 199)    (200 - 299)    1    	           (000 - 299,999)    B    This function erases the group of 100 instrument store selected.     �    Select type of store to erase.

Value             Range
===============   ===========
ifr2025_MEM_CFRQ  0 to 99
ifr2025_MEM_FULL  100 to 199
ifr2025_MEM_RAM   200 to 299
ifr2025_MEM_ALL   000 to 299
     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
VI_ERROR_PARAMETER2   Invalid store type specified
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    �� ]	 �       Erase Stores                    ���� V#��                                         ���� f#��                                         ���� v#��                                         ���� �#��                                           ��   �  `    vi                                �	����  `    Error Code                                    TCFRQ ifr2025_MEM_CFRQ FULL ifr2025_MEM_FULL RAM ifr2025_MEM_RAM ALL ifr2025_MEM_ALL    	(0 - 99)    (100 - 199)    (200 - 299)    
(0 - 299)    1    	           �    This command specifies either a single location or a block of locations to be write-protected.

Any protection applied to RAM will be lost on power down.     M    Set memory protection On or Off

Valid values : ifr2025_ON and ifr2025_OFF
     I    Specifies the start location to be protected.

Valid values : 0 to 299
     �    Specifies the start location to be protected.

Valid values : Start to 299

Note. Set Start==Stop to protect a single location.
     :    The ViSession parameter which identifies the instrument.    \    Function return value.

Value                 Meaning
========              =========================================
VI_ERROR_PARAMETER2   Invalid selection for ON/OFF
VI_ERROR_PARAMETER3   Start store number out of range
VI_ERROR_PARAMETER4   Stop store number out of range
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    �� m u �       State                             � m � �  `    Start                             �i m �  `    Stop                              ��   �  `    vi                                �5����  `    Error Code                         On ifr2025_ON Off ifr2025_OFF    0    0    1    	           �    This command specifies the power up mode of the instrument to be either with FACTORY setting or one of the CFRQ or FULL stores.     L    Set memory power on mode

Valid values : ifr2025_FACTORY or ifr2025_MEMORY     G    Set the memory location for memory power on.

Valid values : 0 to 199     :    The ViSession parameter which identifies the instrument.        Function return value.

Value                 Meaning
========              =========================================
VI_ERROR_PARAMETER2   Invalid mode specified
VI_ERROR_PARAMETER3   Store number out of range
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    �g m � �       Mode                              �� m �  `    Memory No.                        �
   �  `    vi                                �L����  `    Error Code                       .  Memory ifr2025_MEMORY Factory ifr2025_FACTORY    0    1    	           u    This function is used to enable/disable the RF Output changes when performing download of new instrument settings.
     y    Enable or Disable RF Output changes to allow download of new settings.

Valid Range : ifr2025_ENABLE or ifr2025_DISABLE     :    The ViSession parameter which identifies the instrument.    !    Function return value.

Value                 Meaning
========              =========================================
VI_ERROR_PARAMETER2   Invalid store type specified
VI_ERROR_PARAMETER3   Store number out of range
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    � m � �       RF Output                         �� 	  �  `    vi                                ������  `    Error Code                       . Enable ifr2025_ENABLE Disable ifr2025_DISABLE    1    	           $    Specify the main sweep parameters.        Specifies the sweep start frequency.

Valid range : ifr2025_FREQ_MIN
              to
              mi3002_FREQ_MAX (mi3002, mi2024, ri3271)
              mi2023_FREQ_MAX (mi2023, ifr2023A)
              ifr2023B_FREQ_MAX (ifr2023B)
              ifr2025_FREQ_MAX (ifr2025)
        Specifies the sweep stop frequency.

Valid range : ifr2025_FREQ_MIN
              to
              mi3002_FREQ_MAX (mi3002, mi2024, ri3271)
              mi2023_FREQ_MAX (mi2023, ifr2023A)
              ifr2023B_FREQ_MAX (ifr2023B)
              ifr2025_FREQ_MAX (ifr2025)
    :    Specifies the sweep step frequency. Only valid in linear sweep modes.

Valid range : ifr2025_STEP_FREQ_MIN
              to
              mi3002_FREQ_MAX (mi3002, mi2024, ri3271)
              mi2023_FREQ_MAX (mi2023, ifr2023A)
              ifr2023B_FREQ_MAX (ifr2023B)
              ifr2025_FREQ_MAX (ifr2025)
     _    Specifies the sweep step time.

Valid range : ifr2025_STEP_TIME_MIN to ifr2025_STEP_TIME_MAX
     :    The ViSession parameter which identifies the instrument.    �    Function return value.

Value                   Meaning
========                ========================================
ifr2025_ERROR_STARTFREQ Start frequency out of range
ifr2025_ERROR_STOPFREQ  Stop frequency out of range
ifr2025_ERROR_STEPFREQ  Step frequency out of range
ifr2025_ERROR_STEPTIME  Step time out of range
ifr2025_ERROR_LOGINC    Logarithmic increment out of range
<VI_SUCCESS             Error condition
>=VI_SUCCESS            No errors
     �    Specifies the logarithmic increment as a percentage of current carrier frequency. Only valid in logarithmic sweep mode.

Valid range : 0.01% to 50.00%
    �   � �  `    Start Freq                        � [ � �  `    Stop Freq                         �7 � � �  `    Step Freq                         �y � � �  `    Time per Step                     ��   �  `    vi                                �"
����  `    Error Code                      ���� ]J��                                         ���� �J��                                         ���� J��                                         ���� �J��                                           �� � �  0    Logarithmic Increment           ����J��                                            10.0e3    2.4e9    1.0e3    50.0    1    	           Hz    Hz    Hz    mS    2    %    h    This command defines the carrier mode (SWEPT or FIXED) and the remainder of the SWEPT mode parameters.     M    Sets Carrier frequency mode.

Valid values : ifr2025_FIXED or ifr2025_SWEPT     H    Select sweep mode

Valid values : ifr2025_SINGLE or ifr2025_CONTINUOUS        Sets the trigger mode

Value
=====================
ifr2025_TRIG_OFF        Disables the trigger
ifr2025_TRIG_START      Starts sweep, disables trigger until end
ifr2025_TRIG_STARTSTOP  Starts/stops sweep alternate triggers
ifr2025_TRIG_STEP       Steps sweep on each trigger    x    Selects the trigger source

Value              Source
================   ===============================
ifr2025_TRIG_HOLD  No triggering
ifr2025_TRIG_TTL0  VXI backplane trigger source 0
ifr2025_TRIG_TTL1               "               1
ifr2025_TRIG_TTL2               "               2
ifr2025_TRIG_TTL3               "               3
ifr2025_TRIG_TTL4               "               4
ifr2025_TRIG_TTL5               "               5
ifr2025_TRIG_TTL6               "               6
ifr2025_TRIG_TTL7  VXI backplane trigger source 7
ifr2025_TRIG_BUS   Triggered by VXI command
ifr2025_TRIG_FRONT Use the TRIGGER INPUT socket
     :    The ViSession parameter which identifies the instrument.    �    Function return value.

Value                 Meaning
========              =========================================
VI_ERROR_PARAMETER2   Invalid carrier mode specified
VI_ERROR_PARAMETER3   Invalid sweep mode specified
VI_ERROR_PARAMETER4   Invalid trigger mode specified
VI_ERROR_PARAMETER5   Invalid trigger source specified
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
     H    Select sweep mode

Valid values : ifr2025_SINGLE or ifr2025_CONTINUOUS    �� : / �       Carr Freq                         �/ : � �       Sweep Mode                        � ?j � �    Trigger mode                      �� � U � �    Trigger Source                    �   �  `    vi                                �]����  `    Error Code                        �� � �       Sweep Type                       ( Fixed ifr2025_FIXED Swept ifr2025_SWEPT  4 Single ifr2025_SINGLE Continuous ifr2025_CONTINUOUS              nOff ifr2025_TRIG_OFF Start Only ifr2025_TRIG_START Start / Stop ifr2025_TRIG_STARTSTOP Step ifr2025_TRIG_STEP        
     Hold ifr2025_TRIG_HOLD TTLTRG0 ifr2025_TRIG_TTL0 TTLTRG1 ifr2025_TRIG_TTL1 TTLTRG2 ifr2025_TRIG_TTL2 TTLTRG3 ifr2025_TRIG_TTL3 TTLTRG4 ifr2025_TRIG_TTL4 TTLTRG5 ifr2025_TRIG_TTL5 TTLTRG6 ifr2025_TRIG_TTL6 TTLTRG7 ifr2025_TRIG_TTL7 BUS ifr2025_TRIG_BUS Front Panel ifr2025_TRIG_FRONT    1    	         + Linear ifr2025_LIN Logarithmic ifr2025_LOG    f    This command allows up to 9 sequences, each consisting of a range of memory locations to be defined.     �    Selects the sequence to define

Valid Range: 1 - SEQ1
             2 - SEQ2
             3 - SEQ3
             4 - SEQ4
             5 - SEQ5
             6 - SEQ6
             7 - SEQ7
             8 - SEQ8
             9 - SEQ9
     N    Defines the start store location for the sequence

 Valid values : 0 to 299
     M    Defines the stop store location for the sequence

 Valid values : 0 to 299
     :    The ViSession parameter which identifies the instrument.    K    Function return value.

Value                 Meaning
========              =========================================
VI_ERROR_PARAMETER2   Invalid sequence number
VI_ERROR_PARAMETER3   Start number out of range
VI_ERROR_PARAMETER3   Stop number out of range
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    �p = � �       Set                               �` m � �  `    Start                             �� m �  `    Stop                              �   �  `    vi                                �M����  `    Error Code                                 	   ?SEQ1 1 SEQ2 2 SEQ3 3 SEQ4 4 SEQ5 5 SEQ6 6 SEQ7 7 SEQ8 8 SEQ9 9    0    0    1    	           V    This command allows one of the nine sequences to be defined as the current sequence.    
    Selects the sequence to be active

Valid Range: 0 - OFF (0 to 299)
             1 - SEQ1
             2 - SEQ2
             3 - SEQ3
             4 - SEQ4
             5 - SEQ5
             6 - SEQ6
             7 - SEQ7
             8 - SEQ8
             9 - SEQ9     6    Returns the start location of the selected sequence.     5    Returns the stop location of the selected sequence.     ;    The ViSession parameter which identifies the instrument.      �    Function return value.

Value                 Meaning
========              =========================================
VI_ERROR_PARAMETER2   Invalid sequence number
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    �p - � �       Select                            ł ] � �  `    Start                             �� ]c �  `    Stop                              ��   �  `    vi                                �@����  `    Error Code                                 
   EOFF 0 SEQ1 1 SEQ2 2 SEQ3 3 SEQ4 4 SEQ5 5 SEQ6 6 SEQ7 7 SEQ8 8 SEQ9 9    	            	            1    	           �    This function allows the parameters relating to Sinad measurement to be specified.
If Mode AUTO is selected then an 'Auto Target' value should be specified.     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
        Specifies the type of weighting filter applied in making the Sinad measurement.

Value                Weighting Filter
=================    ===============================
ifr2025_NONE         None
ifr2025_CCITT        CCITT P53
ifr2025_CMESS        CMESSAGE 
     �    Selects the operational state of the Sinad measurement system

Value                  State
=================      ===============================
ifr2025_DISABLE        Disabled
ifr2025_ENABLE         Enabled 
ifr2025_AUTO           Automatic
     Z    Specifies the number of averages used in the Sinad measurement.

Valid range : 1 to 127
     X    Specifies the target value for the Sinad measurement when operating in automatic mode.     X    Specifies the increment step size in dB for RF level when operating in automatic mode.    �`!   �  `    vi                                ɢ����  `    Error Code                        �h L ��      Filter Weighting                  �v L� ��      Mode                              �t S 5         Averages                          �� � � �  `    Auto Target                     ���� � ���                                           �6 �A �  `    Delta Level Step                ���� ����                                            1    	                     None 0 CCITT 1 C-MESS 2               Disable 0 Enable 1 Auto 2                        12.0    dB    1.0    dB    <    This command allows software control over sweep operation.    �    Defines the sweep operation.

Value                Operation
==================   =========================================
ifr2025_SWEEP_GO     Commence sweep (Default)
ifr2025_SWEEP_HALT   Pause sweep
ifr2025_SWEEP_CONT   Continue sweep
ifr2025_SWEEP_RESET  Reset sweep to start values
ifr2025_SWEEP_RETN   Return to original setting
ifr2025_SWEEP_XFER   Transfer current setting as new setting
ifr2025_SWEEP_UP     Go up one step while paused
ifr2025_SWEEP_DOWN   Go down one step while paused     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
VI_ERROR_PARAMETER2   Invalid sweep command
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    �J ? �       Sweep Control                     �D   �  `    vi                                ҆����  `    Error Code                                    �GO ifr2025_SWEEP_GO HALT ifr2025_SWEEP_HALT CONT ifr2025_SWEEP_CONT RESET ifr2025_SWEEP_RESET RETN ifr2025_SWEEP_RETN XFER ifr2025_SWEEP_XFER UP ifr2025_SWEEP_UP DOWN ifr2025_SWEEP_DOWN    1    	           I    Enables memory trigger operation using either *TRG or external sources.     I    Set memory trigger On or Off

Valid values : ifr2025_OFF and ifr2025_ON     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
VI_ERROR_PARAMETER2   Invalid state.
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    �B m � �       State                             Փ   �  `    vi                                ������  `    Error Code                         On ifr2025_ON Off ifr2025_OFF    1    	           =    This command allows memory stores to be stepped up or down.     k    Step up or down through the current sequence setting.

Valid values :  ifr2025_MEM_UP or ifr2025_MEM_DOWN     =    Returns the location effective after the UP/DOWN operation.     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
VI_ERROR_PARAMETER2   Invalid step type
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    �� M � �       Step                              �I M �  `    Store Num                         ؎   �  `    vi                                ������  `    Error Code                       ( Up ifr2025_MEM_UP Down ifr2025_MEM_DOWN    	            1    	           a    This function allows the auto Sinad levelling process to be started (seek) and stopped (pause).     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
     �    Selection to start and stop the automatic Sinad levelling process
.
Value               Comment
=================   ===============================
1                   Start levelling process
0                   Stop levelling process 
    �C!   �  `    vi                                ۅ����  `    Error Code                        �K �  �       State                              1    	           Start 1 Stop 0    ]    VISA required function.

Closes the device session and associated resource manager session.     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    �h   �  `    vi                                ު	����  `    Error Code                         1    	           0    Performs a self test on the instrument (*TST).     �    Function return value.

Value                 Meaning
========              =========================================
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
     :    The ViSession parameter which identifies the instrument.     P    Returns a decimal representing the test result. A value of 0 indicates a PASS.     3    Returns a string containing the self test result.    �#����  `    Error                             �� +  �  `    vi                                �+ � � �  `    Result                            � �< �  `    Message                            	            1    	           	            /    Retrieves the next error from the instrument.     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
     Z    The error code returned from the instrument. A value indicates that there are no errors.     U    A string is returned, as obtained from the instrument, that matches the Error Code.    �� .  �  `    vi                                �4 �����  `    Error                             �� � � �  `    Error Code                        �\ �< �  `    Error Message                      1    	            	           	            �    Retrieves an error message based on an Error Code previously returned from this driver. If the error did not originate in the instrument or driver, a VISA error message will be returned.     V    This is the string message associated with the Error Code supplied to this function.     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
     h    An error of type ViStatus previously returned from the driver. This is used to obtain an error string.    �z �: �  `    Error Message                     �� )  �  `    vi                                �����  `    Error                             �� � � �  `    Error Code                         	            1    	            1    y    Retrieves version information from the driver and the instrument associated with the session supplied to this function.     9    Returns a string containing the version of this driver.     [    Returns a string with the revision of the instrument assoicated with this driver session.     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    �� � � �  `    Driver Revision                   � �5 �  `    Instrument Revision               �k '  �  `    vi                                �����  `    Error                              	            	            1    	            I    Determines the source of the frequency standard for carrier generation.    Z    Select internal or external frequency standard.

Value                  Standard
====================   ======================================
ifr2025_FSTD_INT       Internal source
ifr2025_FSTD_EXT10DIR  External @10MHz
ifr2025_FSTD_EXT1IND   External @1MHz
ifr2025_FSTD_EXT10IND  External @10MHz
ifr2025_FSTD_INT10OUT  Output internal source
     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
VI_ERROR_PARAMETER2   Invalid freq standard 
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    �� M �       Standard                          �#   �  `    vi                                �e����  `    Error Code                                    �INT ifr2025_FSTD_INT EXT10DIR ifr2025_FSTD_EXT10DIR EXT1IND ifr2025_FSTD_EXT1IND EXT10IND ifr2025_FSTD_EXT10IND INT10OUT ifr2025_FSTD_INT10OUT    1    	           -    Resets the elapsed operating hours to zero.     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    ��   �  `    vi                                �����  `    Error Code                         1    	           +    Resets the reverse power protection trip.     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    � �   �  `    vi                                �� �����  `    Error Code                         1    	           �    Returns information about the carrier frequency and RF level of the generator. The units for the returned value of RF level must be specified.     �    Function return value.

Value                 Meaning
========              =========================================
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
     :    The ViSession parameter which identifies the instrument.     '    Returns the actual carrier frequency.     =    Returns the actual RF level. See also RF Units and RF Type.     �    Returns a value indicating whether the output is on or off

Value  Type
=====  ==============
  0    ifr2025_OFF
  1    ifr2025_ON     ~    Returns the type of output selected.

Value  Type
=====  ===============
  0    ifr2025_RFTYPE_EMF
  1    ifr2025_RFTYPE_PD
        Returns the units in which the RF Level is currently set.

Value  Type
=====  ===================
  0    ifr2025_RFUNIT_dBm
  1    ifr2025_RFUNIT_dBV
  2    ifr2025_RFUNIT_dBmV
  3    ifr2025_RFUNIT_dBuV
  4    ifr2025_RFUNIT_V
  5    ifr2025_RFUNIT_mV
  6    ifr2025_RFUNIT_uV
     �    Returns the carrier operation as fixed or swept.

Value  Type
=====  ===============
  0    ifr2025_SWEPT
  1    ifr2025_FIXED
    ��	����  `    Error Code                        �r   �  `    vi                                �� P J �  `    Frequency                         �� P � �  `    RF Level                          �( �> �  `    RF State                          �� �> �  `    RF Type                           �: P< �  `    RF Unit                           �Z P� �  `    Carrier Mode                       	           1    	           	           	            	            	           	            5    Returns the current sweep limits for the generator.     -    Returns the sweep start frequency in Hertz.     ,    Returns the sweep stop frequency in Hertz.     ,    Returns the sweep step frequency in Hertz.     p    Returns the sweep mode.

Value  Mode
=====  ==================
  0    ifr2025_CONTINUOUS
  1    ifr2025_SINGLE     .    Returns the sweep step time in milliseconds.     �    Function return value.

Value                 Meaning
========              =========================================
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
     :    The ViSession parameter which identifies the instrument.     �    Returns the sweep trigger mode.

Value  Mode
=====  ======================
  0    ifr2025_TRIG_OFF
  1    ifr2025_TRIG_START
  2    ifr2025_TRIG_STARTSTOP
  3    ifr2025_TRIG_STEP
     ;    Returns the logarithmic increment value expressed in %.

     k    Returns the sweep type.

Value  Mode
=====  ======================
  0    ifr2025_LIN
  1    ifr2025_LOG
    �! # � �  `    Start Frequency                   �V ^ � �  `    Stop Frequency                    �� � � �  `    Step Frequency                    �� ## �  `    Mode                              �6 � � �  `    Step Time                         �l����  `    Error Code                        �2   �  `    vi                                �t ^# �  `    Trigger                           �2 �# �  `    Log Increment                     �u �# �  `    Type                               	           	           	           	            	            	           1    	            	            	            :    Returns information about any of the modulation sources.     n    AM
==
  Returns the depth in %.

FM
==
  Returns the deviation in Hz.

AM
==
  Returns the deviation in RAD.     �    Returns the modulation source for this channel :-

Value  Source
=====  ==================
  0    ifr2025_SRC_INT
  1    ifr2025_SRC_EXTAC
  2    ifr2025_SRC_EXTALC
  3    ifr2025_SRC_EXTDC
     u    Returns the state of the modulation source :-

Value  State
=====  ===========
  0    ifr2025_OFF
  1    ifr2025_ON     �    AM
==
  Returns the depth increment in %.

FM
==
  Returns the deviation increment in Hz.

AM
==
  Returns the deviation increment in RAD.     >    AM,FM,PM
=========
  Returns the modulation frequency in Hz.     �    Function return value.

Value                 Meaning
========              =========================================
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
     :    The ViSession parameter which identifies the instrument.     �    Selects the modulation channel to be interrogated :-

Values
===========
ifr2025_AM
ifr2025_AM1
ifr2025_AM2
ifr2025_FM
ifr2025_FM1
ifr2025_FM2
ifr2025_PM
ifr2025_PM1
ifr2025_PM2
     �    Returns the modulation waveform shape for this channel :-

Value  Source
=====  ==================
  0    ifr2025_MODF_SIN
  1    ifr2025_MODF_TRI
  2    ifr2025_MODF_SQR
     H    AM,FM,PM
=========
  Returns the modulation frequency increment in Hz.   � 5 f �  `    Depth/Deviation                  # � c �  `    Source                           � �� �  `    State                            h 5 � �  `    Depth/Dev Increment              � x e �  `    Frequency                        B����  `    Error Code                       !   �  `    vi                               J 5 ; ��      Channel                           � � �  `    Shape                            � x � �  `    Frequency Increment                	           	           	            	           	           	           1           	   �AM ifr2025_AM AM1 ifr2025_AM1 AM2 ifr2025_AM2 FM ifr2025_FM FM1 ifr2025_FM1 FM2 ifr2025_FM2 PM ifr2025_PM PM1 ifr2025_PM1 PM2 ifr2025_PM2    	            	           N    Returns information about the modulation and global modes of the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
     :    The ViSession parameter which identifies the instrument.    *    Returns the instrument modulation mode.

Value               Comment
=================   ===============================
ifr2025_MODE_AM     Amplitude modulation
ifr2025_MODE_FM     Frequency modulation 
ifr2025_MODE_PM     Phase modulation
ifr2025_MODE_AMFM   AM(int)+FM(ext) or FM(int)+AM(ext)
ifr2025_MODE_AMPM   AM(int)+PM(ext) or PM(int)+AM(ext)
ifr2025_MODE_2FSK   FM plus logic level on trigger i/p
ifr2025_MODE_4FSK   FM plus trigger i/p and pulse i/p
ifr2025_MODE_ILS    ILS Feature (not ifr2025)
ifr2025_MODE_VOR    VOR Feature (not ifr2025)
     l    Indicates if pulse mode is enabled with modulation.

Valid values : ifr2025_PULSE_OFF or ifr2025_PULSE_ON.     W    Indicates if global modulation is enabled.

Valid values : ifr2025_OFF or ifr2025_ON.     W    Indicates if global pulse mode is enabled.

Valid values : ifr2025_OFF or ifr2025_ON.   
q����  `    Error Code                       7+   �  `    vi                               y O : �  `    Modulation Mode                  � O � �  `    Pulse                             O" �  `    Global Modulation                ~ O� �  `    Global Pulse                       	           1    	            	            	            	            -    Retrieve the current settings for ILS mode.     '    Returns the percentage depth for SDM.     '    Returns the percentage depth for DDM.     )    Returns the percentage depth for ILSID.     V    Indicates which DDM is predominant.

Valid values : ifr2025_DDM90 or ifr2025_DDM150.     �    Function return value.

Value                 Meaning
========              =========================================
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
     :    The ViSession parameter which identifies the instrument.   � 7 8 �  `    SDM Depth                        � 7 � �  `    DDM Depth                        � 7  �  `    ILSID Depth                        7� �  `    DDM Type                         ~����  `    Error Code                       D   �  `    vi                                 	            	            	            	            	           1    -    Retrieve the current settings for VOR mode.     +    Returns the percentage depth for VOR/SUB.     '    Returns the percentage depth for REF.     )    Returns the percentage depth for VORID.     ]    Indicates the direction relative to the beacon.

Valid values : ifr2025_TO or ifr2025_FROM.     �    Function return value.

Value                 Meaning
========              =========================================
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
     :    The ViSession parameter which identifies the instrument.     ;    Returns the current direction to/from the beacon in DEG.
   : 9 8 �  `    VOR Depth                        m 9 � �  `    REF Depth                        � 9  �  `    VORID Depth                      � � � �  `    Direction                        2����  `    Error Code                       �   �  `    vi                               : �  �  `    Bearing                            	            	            	            	            	           1    	            T    Returns the elapsed operating time of the instrument since last reset, e.g. 454.00     E    Returns the number of elapsed operating hours since the last reset.     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
   � = � �  `    Elapsed Time                     �   �  `    vi                               (����  `    Error Code                         	           1    	           Y    This function reads the total number of operating hours on the instrument, e.g. 1453.00     /    Returns the total number of operating hours.
     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    = � �  `    Operating Hours                  B   �  `    vi                               �����  `    Error Code                         	           1    	           A    Returns information about the reverse power protection circuit.     B    Returns the number of times that the RPP circuitry has tripped.
     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
     |    Indicates the current state of the RPP trip circuit.

Value  State
=====  =============
  0    Not tripped
  1    Tripped
   O l0 �  `    RPP Count                        �   �  `    vi                               �����  `    Error Code                       � l � �  `    RPP Tripped                        	            1    	           	            R    This function returns parameter values relating to the Sinad measurement system.     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
     '    Returns the target SINAD set in dB's.     ?    Returns the number of averages used in the Sinad measurement.        Returns the type of weighting filter applied in making the Sinad measurement.

Value                Weighting Filter
=================    ===============================
ifr2025_NONE         None
ifr2025_CCITT        CCITT P53
ifr2025_CMESS        CMESSAGE 
     �    Returns the operational state of the Sinad measurement system

Value                  State
=================      ===============================
ifr2025_DISABLE        Disabled
ifr2025_ENABLE         Enabled 
ifr2025_AUTO           Automatic
     /    Returns the increment step in dB for RF level    | !  �  `    vi                                �����  `    Error Code                       !� � w �  `    Target Sinad                    ���� � ���                                          !� '  �  `    Averages                         !� ' � �  `    Filter Weighting                 # '� �  `    Mode                             $ �a �  `    Delta Level Step                ���� ����                                            1    	           	           dB    	            	            	            	            dB    \    This function returns a status code indicating if a new measured Sinad value is available.     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
    �    Status Code indicates if a new Sinad measurement is ready. If the Status Code indicates that a new measurement is not available then the response to a Sinad Value Query will be delayed until a new measurement is available:

Code                    Status
=================       ===============================
ifr2025_SINAD_READY     New Sinad measurement available
ifr2025_SINAD_NONE      No new Sinad measurement available 
   &� 6  �  `    vi                               '����  `    Error Code                       '� f � �  `    Status Code                        1    	           	            A    This function returns the current measured Sinad value in dB's.     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
     +    Returns the measured SINAD value in dB's.   *�   �  `    vi                               *�����  `    Error Code                       +� y � �  `    Sinad Value                     ���� {H��                                            1    	           	           dB    Z    This function returns the current status code of the automatic Sinad levelling process:
     :    The ViSession parameter which identifies the instrument.     �    Function return value.

Value                 Meaning
========              =========================================
<VI_SUCCESS           Error condition
>=VI_SUCCESS          No errors
     �    Returns the status of the automatic levelling process:

Code                    Status
=================       ===============================
ifr2025_SINAD_IDLE      Idle (Complete or Paused)
ifr2025_SINAD_ACTIVE    Levelling in progress 
   -+    �  `    vi                               -m����  `    Error Code                       .3 � � �  `    Status Code                        1    	           	            �    This function performs the following operations:
                viClose (instrSession) and
                viClose (rmSession).

Note: The instrument must be re-initialized to use it again.

     K    The VISA Instrument Description.

Examples: VXI::5, GPIB-VXI::128::INSTR      `    Function return value.
if ==VI_SUCCESS: No error. 
if !=VI_SUCCESS: Indicates error condition.   0�   �  `    vi                               1����  `    Error Code                         1    	          .         &�  )�     K.    init                              
�         +p  .     G.    rfFreq                          ����         /  2+     K.    rfLevel                           �         3�  5�     K.    rfPhase                         ����         6|  9�     K.    rfType                          ����         ;�  =k     K.    rfState                         ����         ><  A�     K.    rfLimit                         ����         C�  GO     K.    rfOffset                          �         H�  J�     K.    attenLockUnlock                            K�  PS     K.    modMode                           L         R�  T�     K.    modControl                                 V+  Y�     K.    modPhase                          �         Z�  `Y 
    K.    modAM                             �         c�  i^ 
    K.    modFM                             �         l�  rZ 
    K.    modPM                             v         u�  x�     K.    setFSK                            #         z!  {�     K.    dcfmNull                        ����         |   }�     K.    depthSDM                        ����         ~�  ��     K.    depthDDM                        ����         �  ��     K.    depthILSID                      ����         ��  �x     K.    depthVOR                        ����         �/  �	     K.    depthREF                        ����         ��  �     K.    bearingVOR                      ����         �  ��     K.    depthVORID                        G         ��  ��     K.    memStore                          �         ��  �N     K.    memRecall                         �         ��  �     K.    memErase                          1         �   ��     K.    memProtection                              ��  �o     K.    memPowerUp                        �         ��  ��     K.    memDownload                       �         ��  ��     K.    sweep                             �         �j  �G     K.    sweepMode                         V         �        K.    memSequence                       -         �  �4     K.    memSelectSeq                    ����         Ⱥ  ͖ 	    K.    sinad                             \         �  �x     K.    sweepRun                          �         ��  ��     K.    memTrigger                        ?         ב  پ     K.    memStepSeq                      ����         ��  �A     K.    autoSinad                       ����         �  �p     K.    reset                           ����         ��  �     K.    self_test                       ����         �  �     K.    error_query                     ����         �  �P     K.    error_message                   ����         �F  �s     K.    revision_query                    "          �p  �X     K.    setFSTD                           "z         �  ��     K.    resetElapsedTime                  "�         �^  �     K.    rppReset                        ����         �  ��     K.    carrierQuery                    ����         ��  �� 
    K.    sweepQuery                      ����        k  
    K.    modulationQuery                 ����        
 �     K.    modeQuery                       ����        \ �     K.    ilsQuery                        ����         }     K.    vorQuery                          #�        = �     K.    elapsedTimeQuery                  $�        � J     K.    operatingTimeQuery                %*         %     K.    rppQuery                        ����         " $; 	    K.    sinadSetupQuery                 ����        &q )�     K.    sinadReadyQuery                 ����        *N +�     K.    sinadValueQuery                 ����        ,� /-     K.    autoSinadQuery                    %�        /� 1n     K.    close                                 �                                     DInitialize                          �Source Functions                    	�Configure                           
Carrier                              DFrequency                            DLevel                                DPhase                                DRF Type & Units                      DRF State                             DRF Limit                             DRF Offset                            DAttenuator Lock/Unlock              �Modulation                           DMod Mode                             DControl                              DPhase                                DAM                                   DFM                                   DPM                                   DSet FSK Ext                          DDCFM Null                           yILS (not on ifr2025)                 DSum of Depth                         DDifference in Depth                  DIdent Depth                         �VOR (not on ifr2025)                 DSubcarrier Depth                     DREF Signal Depth                     DBearing                              DIdent Tone Depth                    /Memory                               DStore                                DRecall                               DErase                                DProtection                           DPower On                             DDownload                            WSweep                                DParameters                           DSweep Mode                          �Sequencing                           DDefine                               DSelect                               DSinad                               �Initiate Functions                   DRun Sweep                            DMemory Trigger                       DStep through Sequence                DAuto Sinad                          �Utility Functions                    DReset                                DSelf Test                           !�Error Handling                       DError Query                          DError Message                        DRevision Query                       DFrequency Standard                   DElapsed Time Reset                   DRPP Reset                           #bQuery Functions                      DCarrier?                             DSweep?                               DModulation?                          DModulation Modes?                    DILS? (not on ifr2025)                DVOR? (not on ifr2025)                DElapsed Time?                        DOperating Time?                      DReverse Power Protection?            DSinad Setup?                         DSinad Ready?                         DSinad Value?                         DAuto Sinad?                          DClose                           