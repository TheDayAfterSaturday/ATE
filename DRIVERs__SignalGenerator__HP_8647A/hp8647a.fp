s��         ��     �:  �                                           hp8647a     HP 8647A RF Signal Generator                  �     Instrument Name: HP 8647A RF Signal Generator

 Description:     This instrument module provides
                  programming support for the
                  HP 8647A Signal Generator. The
                  module is divided into the
                  following functions:

 Functions/Classes:

 (1) Initialize:
     Initialize the instrument and set to default
     configuration.

 (2) Application Functions: (Class)
     Provides high level functions to communicate
     with the instrument, and change instrument
     parameters.

 (3) Configure: (Class)
     Provides function to configure the instrument
     to generate an RF signal.

 (4) Generate Signal:
     Sets the instrument to generate the
     configured RF signal.

 (5) Low Level Functions: (Class)
     Provides lower level functions to communicate
     with the instrument, and change instrument
     parameters.

 (6) Close:
     Take the instrument offline.    (     Panel Name:    Initialize

 Description:   Initializes the instrument in the
                following ways:

                - opens the instrument and sets
                  its GPIB address to the speci-
                  fied value

                - performs an identification query
                  on the instrument

                - sets the instrument to a default
                  configuration

                - returns an instrument ID which
                  is used to identify the
                  instrument in subsequent calls.    �     Class Name:    Application Functions

 Description:   This class provides high-level
                functions which call multiple
                lower level functions within the
                instrument driver to configure,
                trigger, and force the instrument
                to perform a desired action.

 Functions:

 (1) Output RF Signal:
     Configures the instrument to generate a
     Modulated RF Signal.    
     Panel Name:    Output RF Signal

 Description:   Configures the instrument to
                generate a Modulated RF Signal.

 Note:  This function disables the Amplitude
        Reference mode and enables both the
        Automatic Attenuator and the RF output.         Class Name:    Configure

 Description:   Provides function to configure the
                instrument to generate an RF
                signal.

 Functions:

 (1) RF Signal:
     Configures the RF Signal.

 (2) Modulation:
     Configures the instrument for Modulation.     �     Panel Name:    RF Signal

 Description:   Configures the RF Signal. It sets
                the frequency and amplitude of the
                signal.     �     Panel Name:    Modulation

 Description:   Configures the instrument for
                Modulation. It selects the
                modulation type (AM, FM or PM) and
                the modulating signal.
     �     Panel Name:    Generate Signal

 Description:   Sets the instrument to generate
                the configured RF signal with or
                without the configured modulation.    U     Class Name:    Low Level Functions

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
     it to the specified variable in memory.

 (3) Reset:
     This function resets the instrument to its
     default state.

 (4) Self Test:
     This function runs the instrument self test
     and returns the test code.

 (5) Revision Query:
     This function returns the revision numbers of
     the instrument driver and instrument
     firmware.

 (6) Reference & Attenuation:
     Disables/Enables the Amplitude Reference and
     the Automatic Attenuation modes.

 (7) Determine Modulation Setting:
     Determines the Modulation level to be set
     when internal and external modulating signals
     are used.

 (8) Modulation  On/Off:
     Turns the selected modulation On or Off.     �     Panel Name:    Write To Instrument

 Description:   Writes commands and queries to the
                instrument to modify parameters
                and query device settings.    �     Panel Name:    Read Instrument Data

 Description:   Reads data from instrument buffer
                and returns it to the specified
                variable in memory.

 NOTES: (1) Because the instrument may return both
            numeric and text data in response to
            queries this function returns the data
            in string format.

        (2) If valid data is NOT available at the
            instrument's output buffer when this
            function is called the instrument will
            hang up and the function will not
            return until it times out.  If the
            time-out is disabled this function
            will hang indefinitely and it may be
            necessary to reboot the computer to
            break out.     r     Panel Name:    Reset

 Description:   This function resets the
                instrument to its default state.     �     Panel Name:    Self Test

 Description:   This function runs the instrument
                self test and returns the test
                code.    �     Panel Name:    Revision Query

 Description:   This function returns the revision
                numbers of the instrument driver
                and instrument firmware, and tells
                the user what firmware the driver
                is compatible with.

 Note: This instrument driver was written with
       revision "A1.0" and is compatable with
       Firmware Revision "A.01.02".     �     Panel Name:    Reference & Attenuation

 Description:   Disables/Enables the Amplitude
                Reference and the Automatic
                Attenuation modes.    A     Panel Name:    Determine Modulation Setting

 Description:   Determines the Modulation level to
                be set for Depth(AM),
                Deviation(FM), or Deviation(PM)
                when the internal and external
                modulating sources are used with
                the selected modulation.     n     Panel Name:    Modulation  On/Off

 Description:   Turns the selected modulation On
                or Off.     �     Panel Name:    Close

 Description:   Closes the instrument and takes it
                off line.

 Note: The instrument must be reinitialized to use
       it again.    K     Control Name:  GPIB Address

 Description:   Specifies the address on the GPIB
                to be used to communicate
                with the instrument.  This value
                must correspond to the current
                internal setting of the
                instrument.

 Variable Type: Integer

 Valid Range:   0 to 30

 Default Value: 20

 NOTE:  The Default Value of this control should
        be set to the factory default of the
        instrument, however if your instrument's
        actual setting is different this control's
        default should be changed.    �     Control Name:  ID Query

 Description:   Specifies if an ID Query is sent
                to the instrument during the
                initialization procedure.

 Variable Type: Integer

 Valid Range:   1 = Do Query
                0 = Skip Query

 Default Value: 1 - Do Query

 NOTE:  Under normal circumstances the ID Query
        insures that the instrument initialized
        over the GPIB is the type supported by
        this driver.  However circumstances may
        arise where it is undesirable to send an
        ID Query to the instrument.  In those
        cases; set this control to "Skip Query"
        and this function will initialize the
        GPIB and the Command arrays in the driver,
        without doing an ID Query.    �     Control Name:  Reset Device

 Description:   Specifies if the instrument is to
                be reset to its power-on settings
                during the initialization
                procedure.

 Variable Type: Integer

 Valid Range:   1 = Reset Device
                0 = Don't Reset

 Default Value: 1 - Reset Device

 NOTE: If you do not want the instrument reset.
       Set this control to "Don't Reset" while
       initializing the instrument.    
     Control Name:  Instrument ID

 Description:   Returns an Instrument ID that is
                used in all subsequent function
                calls to select the instrument at
                the Address specified.

                If more than one instrument of the
                same type is used, this value will
                be used to differentiate between
                them. The first instrument
                initialized will be assigned an
                Instrument ID of 1.

 Variable Type: Integer    l     Control Name:  Error Code

 Description:   Displays the results of the
                function call.

 Variable Type: Integer

 Error Codes:

        0   Success

       -1   GPIB Address out of range
       -2   ID Query out of range
       -3   Reset Device out of range

      220   Unable to open instrument
      221   Unable to close instrument
      223   Instrument identification query failed
      230   Error writing to instrument
      231   Error reading from instrument
      232   Instrument not initialized
      233   Error configuring GPIB address
      236   Error interpreting instrument response    i = =           GPIB Address                      � = �          ID Query                          � =\          Reset Device                      ! � �          Instrument ID                     #� ����         Error Code                      ����  :��                                            20   Do Query 1 Skip Query 0   Reset Device 1 Don't Reset 0    	            	            FCopyright 1994 National Instruments Corporation. All Rights Reserved.    �     Control Name:  RF Frequency (MHz)

 Description:   Set the Frequency in MHz for the
                RF signal.

 Variable Type: Double

 Valid Range:   0.250 - 1000.0

 Default Value: 0.250

 Note:  AM is unspecified at or below 1.5 MHz.    t     Control Name:  RF Amplitude (dBm)

 Description:   Set the Amplitude in dBm for the
                RF signal. The value may be up to
                4 digits plus a sign. The
                reference mode is disabled in this
                function.

 Variable Type: Double

 Valid Range:   -136.0 - +10.0

 Default Value: 0.0

 Note:  AM is unspecified above 4 dBm.         Control Name:  Modulation

 Description:   Select the desired modulation to
                modulate the RF signal.

 Variable Type: Integer

 Valid Range:   0 - Amplitude Modulation
                1 - Frequency Modulation
                2 - Phase Modulation

 Default Value: 0 - Amplitude Modulation

 Note (1)  The following restrictions apply to AM:
           - AM is unspecified at or below 1.5 MHz
           - AM is unspecified above 4 dBm
           - No external DC coupling for AM

 Note (2)  No external DC coupling for PM.    R     Control Name:  Modulation Level

 Description:   Sets the Modulation Level for the
                selected modulation. If AM  is
                selected, it sets the AM depth. If
                FM is selected, it sets the FM
                deviation. If PM is selected, it
                sets the PM deviation.

 Variable Type: Double

 Valid Range:   The range of the Level is
                dependent upon the selected
                modulation.

                AM: 0.0 - 100.0  (%)
                FM: 0.0 - 100.0  (kHz)
                PM: 0.0 - 10.0   (RAD)

 Default Value: 0.0         Control Name:  Modulating Signal

 Description:   Select the modulating signal to
                modulate the RF signal.

 Variable Type: Integer

 Valid Range:   0 - Internal
                1 - External
                2 - Internal & External

 Default Value: 0 - Internal         Control Name:  Internal Frequency

 Description:   Sets the Internal Frequency to be
                used as the frequency of the
                internal modulating signal.

 Variable Type: Integer

 Valid Range:   0 - 400 kHz
                1 - 1 kHz

 Default Value: 0 - 400 kHz         Control Name:  External Coupling

 Description:   Sets the External Coupling to be
                used with the external modulating
                signal.

 Variable Type: Integer

 Valid Range:   0 - DC. Valid only with FM.
                1 - AC

 Default Value: 0 - DC    X     Control Name:  Instrument ID

 Description:   Accepts the Instrument ID returned
                by the Initialize function to
                select the desired instrument.

 Variable Type: Integer

 Valid Range:   1 to  Maximum Instances of
                      this Instrument

                The Maximum Instances of this
                Instrument is the maximum number
                of instruments that can be
                controlled by this driver in a
                single system. The value is set
                internally in the driver. The
                typical value is 10.    �     Control Name:  Error Code

 Description:   Displays the results of the
                function call.

 Variable Type: Integer

 Error Codes:

        0   Success

       -1   Instrument ID out of range
       -2   RF Frequency out of range
       -3   RF Amplitude out of range
       -4   Modulation out of range
       -5   Modulation Level out of range
       -6   Modulating Signal out of range
       -7   Internal Frequency out of range
       -8   External Coupling out of range

      230   Error writing to instrument
      232   Instrument not initialized

      312   No external DC coupling for AM or PM
      313   AM unspecified above 4 dBm
      314   AM unspecified at or below 1.5 MHz    '� - !         RF Frequency (MHz)                (� - �         RF Amplitude (dBm)                *Y -v          Modulation                        ,| -�         Modulation Level                  .� } y          Modulating Signal                 /� } �          Internal Frequency                1 }�          External Coupling                 25 �            Instrument ID                     4� ����         Error Code                         0.25    0.0               AM 0 FM 1 PM 2    0.0               Int 0 Ext 1 Int & Ext 2    1 kHz 1 400 Hz 0  
  AC 1 DC 0    1    	            �     Control Name:  RF Frequency (MHz)

 Description:   Set the Frequency in MHz for the
                RF signal.

 Variable Type: Double

 Valid Range:   0.250 - 1000.0

 Default Value: 0.250

 Note:  AM is unspecified at or below 1.5 MHz.     �     Control Name:  Amplitude Reference

 Description:   Disable/Enable the Amplitude
                Reference mode.

 Variable Type: Integer

 Valid Range:   0 - Disable
                1 - Enable

 Default Value: 0 - Disable     �     Control Name:  Reference Value (dBm)

 Description:   Holds the Reference value in dBm
                to be used with the Amplitude
                Reference mode.

 Variable Type: Double

 Valid Range:   -136.0 - +10.0

 Default Value: 0.0    /     Control Name:  RF Amplitude (dBm)

 Description:   Set the Amplitude in dBm for the
                RF signal. The value may be up to
                4 digits plus a sign.

 Variable Type: Double

 Valid Range:   The range of the Amplitude is
                dependent upon the reference mode.

                Reference mode enabled:
                    (-136.0 - Reference) to
                    (+10.0  - Reference)
                Reference mode disabled:
                    -136.0 - +10.0

 Default Value: 0.0

 Note:  AM is unspecified above 4 dBm.         Control Name:  Automatic Attenuator

 Description:   Disable/Enable the Automatic
                Attenuator control.

 Variable Type: Integer

 Valid Range:   0 - Disable
                1 - Enable

 Default Value: 0 - Disable

 Note:  When Automatic Attenuator is disabled and
        the amplitude is set to a level that
        exceeds the vernier range limits by
        greater than 5 dBm, the instrument
        displays the message "011 Amplitude
        exceeds ATTN HOLD limits". This message
        does not indicate an error.
    X     Control Name:  Instrument ID

 Description:   Accepts the Instrument ID returned
                by the Initialize function to
                select the desired instrument.

 Variable Type: Integer

 Valid Range:   1 to  Maximum Instances of
                      this Instrument

                The Maximum Instances of this
                Instrument is the maximum number
                of instruments that can be
                controlled by this driver in a
                single system. The value is set
                internally in the driver. The
                typical value is 10.    �     Control Name:  Error Code

 Description:   Displays the results of the
                function call.

 Variable Type: Integer

 Error Codes:

        0   Success

       -1   Instrument ID out of range
       -2   RF Frequency out of range
       -3   Amplitude Reference out of range
       -4   Reference Value out of range
       -5   RF Amplitude out of range
       -6   Automatic Attenuator out of range

      230   Error writing to instrument
      232   Instrument not initialized    9� - /         RF Frequency (MHz)                :� - �          Amplitude Reference               ;� -         Reference Value dBm               <� � �         RF Amplitude (dBm)                >� �2          Automatic Attenuator              A �            Instrument ID                     Cb ����         Error Code                         0.25    Enable 1 Disable 0    0.0    0.0    Enable 1 Disable 0    1    	                Control Name:  Modulation

 Description:   Select the desired modulation to
                modulate the RF signal.

 Variable Type: Integer

 Valid Range:   0 - Amplitude Modulation
                1 - Frequency Modulation
                2 - Phase Modulation

 Default Value: 0 - Amplitude Modulation

 Note (1)  The following restrictions apply to AM:
           - AM is unspecified at or below 1.5 MHz
           - AM is unspecified above 4 dBm
           - No external DC coupling for AM

 Note (2)  No external DC coupling for PM.    �     Control Name:  Modulation Level

 Description:   Sets the Modulation Level for the
                selected modulation. If AM  is
                selected, it sets the AM depth. If
                FM is selected, it sets the FM
                deviation. If PM is selected, it
                sets the PM deviation.

 Variable Type: Double

 Valid Range:   The range of the Level is
                dependent upon the selected
                modulation.

                AM:
                    0.0 - 100.0  (%)
                FM:
                    0.0 - 100.0  (kHz)
                PM:
                    0.0 - 10.0   (RAD)

 Default Value: 0.0         Control Name:  Modulating Signal

 Description:   Select the modulating signal to
                modulate the RF signal.

 Variable Type: Integer

 Valid Range:   0 - Internal
                1 - External
                2 - Internal & External

 Default Value: 0 - Internal         Control Name:  Internal Frequency

 Description:   Sets the Internal Frequency to be
                used as the frequency of the
                internal modulating signal.

 Variable Type: Integer

 Valid Range:   0 - 400 kHz
                1 - 1 kHz

 Default Value: 0 - 400 kHz         Control Name:  External Coupling

 Description:   Sets the External Coupling to be
                used with the external modulating
                signal.

 Variable Type: Integer

 Valid Range:   0 - DC. Valid only with FM.
                1 - AC

 Default Value: 0 - DC    X     Control Name:  Instrument ID

 Description:   Accepts the Instrument ID returned
                by the Initialize function to
                select the desired instrument.

 Variable Type: Integer

 Valid Range:   1 to  Maximum Instances of
                      this Instrument

                The Maximum Instances of this
                Instrument is the maximum number
                of instruments that can be
                controlled by this driver in a
                single system. The value is set
                internally in the driver. The
                typical value is 10.         Control Name:  Error Code

 Description:   Displays the results of the
                function call.

 Variable Type: Integer

 Error Codes:

        0   Success

       -1   Instrument ID out of range
       -2   Modulation out of range
       -3   Modulation Level out of range
       -4   Modulating Signal out of range
       -5   Internal Frequency out of range
       -6   External Coupling out of range

      230   Error writing to instrument
      232   Instrument not initialized

      312   No external DC coupling for AM or PM    G - s          Modulation                        I@ - �         Modulation Level                  K� -�          Modulating Signal                 L� � �          Internal Frequency                N �U          External Coupling                 O5 �            Instrument ID                     Q� ����         Error Code                                    AM 0 FM 1 PM 2    0.0               Int 0 Ext 1 Int & Ext 2    1 kHz 1 400 Hz 0  
  AC 1 DC 0    1    	            �     Control Name:  Modulation OFF

 Description:   Select whether or not to disable
                the Modulation.

 Variable Type: Integer

 Valid Range:   0 - No
                1 - Yes

 Default Value: 0 - No     �     Control Name:  RF Output Signal

 Description:   Turns the RF Output On or Off.

 Variable Type: Integer

 Valid Range:   0 - Off
                1 - On

 Default Value: 0 - Off    X     Control Name:  Instrument ID

 Description:   Accepts the Instrument ID returned
                by the Initialize function to
                select the desired instrument.

 Variable Type: Integer

 Valid Range:   1 to  Maximum Instances of
                      this Instrument

                The Maximum Instances of this
                Instrument is the maximum number
                of instruments that can be
                controlled by this driver in a
                single system. The value is set
                internally in the driver. The
                typical value is 10.    o     Control Name:  Error Code

 Description:   Displays the results of the
                function call.

 Variable Type: Integer

 Error Codes:

        0   Success

       -1   Instrument ID out of range
       -2   Modulation OFF out of range
       -3   RF Output Signal out of range

      230   Error writing to instrument
      232   Instrument not initialized    U� M �          Modulation OFF                    V� M2          RF Output Signal                  WD �            Instrument ID                     Y� ����         Error Code                         Yes 1 No 0    On 1 Off 0    1    	           T     Control Name:  Write Buffer

 Description:   The user can use this control to
                send common commands and queries
                to the instrument. This control
                can also be used to write any
                valid command to the instrument.

 Variable Type: String

 Default Value: "*RST"

 NOTES: (1) The command or query to be sent to the
            instrument may be a literal enclosed
            in double quotes i.e. "*RST" or may be
            contained in a variable of type
            string.

        (2) If the number of bytes to be written
            is greater than the size of "cmd" in
            the source code then the size of cmd
            must be increased. The original size
            of cmd is 200 bytes (cmd[200]) the
            largest cmd may be declared as is
            32,767 bytes.    X     Control Name:  Instrument ID

 Description:   Accepts the Instrument ID returned
                by the Initialize function to
                select the desired instrument.

 Variable Type: Integer

 Valid Range:   1 to  Maximum Instances of
                      this Instrument

                The Maximum Instances of this
                Instrument is the maximum number
                of instruments that can be
                controlled by this driver in a
                single system. The value is set
                internally in the driver. The
                typical value is 10.         Control Name:  Error Code

 Description:   Displays the results of the
                function call.

 Variable Type: Integer

 Error Codes:

        0   Success

       -1   Instrument ID out of range

      230   Error writing to instrument
      232   Instrument not initialized    \ M �         Write Buffer                      _x �            Instrument ID                     a� ����         Error Code                         "*RST"    1    	           �     Control Name:  Number of Bytes to Read

 Description:   The number of bytes specified by
                this control should be greater
                than or equal to the number of
                bytes which are to be read from
                the instrument. If the actual
                number of bytes to be read is
                greater than the number this
                control specifies then multiple
                reads will be necessary to empty
                the instrument's output buffer.

                If the instrument's output buffer
                is not emptied the instrument may
                return invalid data when future
                reads are performed.

 Variable Type: Integer

 Default Value: 50 (See NOTE 2)

 NOTES: (1) If NO DATA is available at the
            instrument's output buffer when this
            function is called the instrument will
            hang up and the function will not
            return until it times out.  If the
            time-out is disabled, this function
            will hang indefinitely and it may be
            necessary to reboot the computer.

        (2) If the number of bytes expected is
            greater than 50 the value of this
            control may be increased. If the
            actual number of bytes read is larger
            than the declared size of the read
            buffer a run-time error will be
            generated.    �     Control Name:  Read Buffer

 Description:   The incoming data from the
                instrument is placed into this
                variable.

 Variable Type: String

 NOTES: (1) Because the Instrument may return both
            numeric and text data in response to
            queries this function returns the data
            in string form.

        (2) This function does not overwrite any
            old data left in the string variable
            from the last time the function was
            called. String data in LabWindows is
            terminated with an ASCII null(Hex 0)
            and string manipulation functions will
            only recognize data before the ASCII
            null.

        (3) The declared size of the string
            variable must be greater than the
            actual number of bytes read from the
            instrument if it is not a run-time
            error will be generated.    �     Control Name:  Number of Bytes Read

 Description:   This variable contains the actual
                number of bytes read from the
                instrument. This is the value
                which is returned by ibrd in the
                global variable ibcnt.

 Variable Type: Integer

 NOTE: If the actual number of bytes read is less
       than the number of bytes specified in
       number of bytes to read then the output
       buffer is probably empty. If the number of
       bytes read is 0 and the instrument returns
       a 231 error code the read function failed.
       The most probable cause for the read to
       fail is because there was no data available
       at the instrument's output buffer.    X     Control Name:  Instrument ID

 Description:   Accepts the Instrument ID returned
                by the Initialize function to
                select the desired instrument.

 Variable Type: Integer

 Valid Range:   1 to  Maximum Instances of
                      this Instrument

                The Maximum Instances of this
                Instrument is the maximum number
                of instruments that can be
                controlled by this driver in a
                single system. The value is set
                internally in the driver. The
                typical value is 10.         Control Name:  Error Code

 Description:   Displays the results of the
                function call.

 Variable Type: Integer

 Error Codes:

        0   Success

       -1   Instrument ID out of range

      231   Error reading from instrument
      232   Instrument not initialized    c� M K          Number Bytes To Read              ia M �         Read Buffer                       m Mx          NumBytes Read                     o� �            Instrument ID                     rQ ����         Error Code                         50    	            	            1    	           X     Control Name:  Instrument ID

 Description:   Accepts the Instrument ID returned
                by the Initialize function to
                select the desired instrument.

 Variable Type: Integer

 Valid Range:   1 to  Maximum Instances of
                      this Instrument

                The Maximum Instances of this
                Instrument is the maximum number
                of instruments that can be
                controlled by this driver in a
                single system. The value is set
                internally in the driver. The
                typical value is 10.    !     Control Name:  Error Code

 Description:   Displays status relating to the
                function call.

 Variable Type: Integer

 Error Codes:

        0   Success

       -1   Instrument ID out of range

      230   Error writing to instrument
      232   Instrument not initialized    t� �            Instrument ID                     w ����         Error Code                         1    	            �     Control Name:  Pass/Fail Code

 Description:   This is the value returned by the
                self test.  Zero means success.
                For any other code, see the
                Device's operator's manual.

 Variable Type: Integer *         Control Name:  Self Test Message

 Description:   This is the string returned by the
                self test.  See the Device's
                operation manual for an
                explanation of the string's
                contents.

 Variable Type: String (char *)    X     Control Name:  Instrument ID

 Description:   Accepts the Instrument ID returned
                by the Initialize function to
                select the desired instrument.

 Variable Type: Integer

 Valid Range:   1 to  Maximum Instances of
                      this Instrument

                The Maximum Instances of this
                Instrument is the maximum number
                of instruments that can be
                controlled by this driver in a
                single system. The value is set
                internally in the driver. The
                typical value is 10.    V     Control Name:  Error Code

 Description:   Displays status relating to the
                function call.

 Variable Type: Integer

 Error Codes:

        0   Success

      230   Error writing to instrument
      231   Error reading from instrument
      232   Instrument not initialized
      236   Error interpreting instrument response    x� = |          Pass/Fail Code                    y� =@         Self-Test Message                 z� �            Instrument ID                     }- ����         Error Code                         	           	            1    	            �     Control Name:  Driver Revision

 Description:   This control returns the
                Instrument Driver Revision.

 Variable Type: String (char *)     �     Control Name:  Driver Revision

 Description:   This control returns the
                Instrument Driver's Firmware
                Revision.

 Variable Type: String (char *)    X     Control Name:  Instrument ID

 Description:   Accepts the Instrument ID returned
                by the Initialize function to
                select the desired instrument.

 Variable Type: Integer

 Valid Range:   1 to  Maximum Instances of
                      this Instrument

                The Maximum Instances of this
                Instrument is the maximum number
                of instruments that can be
                controlled by this driver in a
                single system. The value is set
                internally in the driver. The
                typical value is 10.    V     Control Name:  Error Code

 Description:   Displays status relating to the
                function call.

 Variable Type: Integer

 Error Codes:

        0   Success

      230   Error writing to instrument
      231   Error reading from instrument
      232   Instrument not initialized
      236   Error interpreting instrument response    � = |         Driver Revision                   �( =@         Firmware Revision                 �� �            Instrument ID                     �C ����         Error Code                         	            	            1    	            �     Control Name:  Amplitude Reference

 Description:   Disable/Enable the Amplitude
                Reference mode.

 Variable Type: Integer

 Valid Range:   0 - Disable
                1 - Enable

 Default Value: 0 - Disable     �     Control Name:  Automatic Attenuator

 Description:   Disable/Enable the Automatic
                Attenuator control.

 Variable Type: Integer

 Valid Range:   0 - Disable
                1 - Enable

 Default Value: 0 - Disable    X     Control Name:  Instrument ID

 Description:   Accepts the Instrument ID returned
                by the Initialize function to
                select the desired instrument.

 Variable Type: Integer

 Valid Range:   1 to  Maximum Instances of
                      this Instrument

                The Maximum Instances of this
                Instrument is the maximum number
                of instruments that can be
                controlled by this driver in a
                single system. The value is set
                internally in the driver. The
                typical value is 10.    x     Control Name:  Error Code

 Description:   Displays the results of the
                function call.

 Variable Type: Integer

 Error Codes:

        0   Success

       -1   Instrument ID out of range
       -2   Amplitude Reference out of range
       -3   Automatic Attenuator out of range

      230   Error writing to instrument
      232   Instrument not initialized    �� = �          Amplitude Reference               �� =@          Automatic Attenuator              �u �            Instrument ID                     �� ����         Error Code                         Enable 1 Disable 0    Enable 1 Disable 0    1    	           �     Control Name:  Selected Modulation

 Description:   Select the Modulation for which to
                determine the modulation level
                when internal and external
                modulating signals are used.

 Variable Type: Integer

 Valid Range:   0 - Amplitude Modulation
                1 - Frequency Modulation
                2 - Phase Modulation

 Default Value: 0 - Amplitude Modulation    �     Control Name:  Desired Modulation Value

 Description:   Indicates the desired depth or
                deviation for the specified
                modulation.

 Variable Type: Double

 Valid Range:   The range of this control is
                dependent upon the selected
                modulation.

                AM:
                    0.0 - 100.0  (%)
                FM:
                    0.0 - 100.0  (kHz)
                PM:
                    0.0 - 10.0   (RAD)

 Default Value: 3.0    �     Control Name:  Ext Mod Signal Level (Volt)

 Description:   Indicates the level of the
                external modulating signal.

 Variable Type: Double

 Valid Range:   0.0 - 0.5

 Default Value: 0.0

 Note:  If the level of the external modulating
        signal is equal to 0.5, this signal
        provides 1/3 of the desired modulation
        depth or deviation. If the level is less
        than 0.5, this signal provides less than
        1/3 of the desired depth or deviation.    �     Control Name:  Value To Set For Modulation

 Description:   Returns the depth or deviation
                value to set for the specified
                modulation's Level. It holds the
                percent depth (AM), deviation
                (FM), or the deviation (PM).

 Variable Type: Double

 Note:  This control returns an AM (% depth),
        FM (kHz Deviation), or PM (RAD Deviation)
        value dependent on the level of the
        external modulating signal. Using the
        following abbreviations:

        D = Desired Modulation Level
        E = External Source Level
        S = Setting for the Modulation Level

        If E = 0.5
            S = 2/3 * D

        If E < 0.5
            S = D / (1 + E)    -     Control Name:  Error Code

 Description:   Displays the results of the
                function call.

 Variable Type: Integer

 Error Codes:

        0   Success

       -1   Selected Modulation out of range
       -2   Desired Modulation Level
       -3   Ext Modulating Signal Level out of range    �f - H           Selected Modulation               �	 - �         Desired Modul Value               � -*         Ext Mod Signal Level              �� -�         Value To Set Modul                �� ����         Error Code                      ���� � ��                                                       AM 0 FM 1 PM 2    3.0    0.5    	           	            F     This Function        
Does Not Communicate
  With The Instrument   �     Control Name:  Select Modulation

 Description:   Select the desired modulation to
                enable or disable. If one
                modulation is enabled, the other
                two are disabled.

 Variable Type: Integer

 Valid Range:   0 - Amplitude Modulation
                1 - Frequency Modulation
                2 - Phase Modulation

 Default Value: 0 - Amplitude Modulation     �     Control Name:  Modulation

 Description:   Disable/Enable the selected
                modulation.

 Variable Type: Integer

 Valid Range:   0 - Disable
                1 - Enable

 Default Value: 0 - Disable    X     Control Name:  Instrument ID

 Description:   Accepts the Instrument ID returned
                by the Initialize function to
                select the desired instrument.

 Variable Type: Integer

 Valid Range:   1 to  Maximum Instances of
                      this Instrument

                The Maximum Instances of this
                Instrument is the maximum number
                of instruments that can be
                controlled by this driver in a
                single system. The value is set
                internally in the driver. The
                typical value is 10.    m     Control Name:  Error Code

 Description:   Displays the results of the
                function call.

 Variable Type: Integer

 Error Codes:

        0   Success

       -1   Instrument ID out of range
       -2   Select Modulation out of range
       -3   Modulation out of range


      230   Error writing to instrument
      232   Instrument not initialized    �� = �          Select Modulation                 �r =2          Modulation                        �M �            Instrument ID                     �� ����         Error Code                                    AM 0 FM 1 PM 2    Enable 1 Disable 0    1    	           X     Control Name:  Instrument ID

 Description:   Accepts the Instrument ID returned
                by the Initialize function to
                select the desired instrument.

 Variable Type: Integer

 Valid Range:   1 to  Maximum Instances of
                      this Instrument

                The Maximum Instances of this
                Instrument is the maximum number
                of instruments that can be
                controlled by this driver in a
                single system. The value is set
                internally in the driver. The
                typical value is 10.         Control Name:  Error Code

 Description:   Displays the results of the
                function call.

 Variable Type: Integer

 Error Codes:

        0   Success

       -1   Instrument ID out of range

      221   Unable to close instrument
      232   Instrument not initialized    �; �            Instrument ID                     �� ����         Error Code                         1    	           /       ����  &     K.    init                                     ����  7^ 	    K.    output_signal                     
D       ����  EW     K.    rf_signal                         
�       ����  S�     K.    modulation                        �       ����  [     K.    gen_signl                         �       ����  b�     K.    write                             �       ����  sx     K.    read                              �       ����  x9     K.    reset                                    ����  ~�     K.    self_test                         �       ����  ��     K.    revision_query                    H       ����  �U     K.    set_ref_att                       �       ����  �     K.    det_mod_set                       A       ����  �"     K.    mod_on_off                        �       ����  ��     K.    close                                  �                                     DInitialize                          _Application Functions                DOutput RF Signal                    	*Configure                            DRF Signal                            DModulation                           DGenerate Signal                     |Low Level Functions                  DWrite To Instrument                  DRead Instrument Data                 DReset                                DSelf-Test                            DRevision Query                       DReference & Attenuation              DDetermine Modul Setting              DModulation On/Off                    DClose                           