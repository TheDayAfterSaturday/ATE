s��        ��  J �k  ML   �   ����                               ML2430      ML2430 Power Meter                            � � ��ViInt16  �  � ��ViInt32  � � ��ViInt8  � � ��ViUInt8  � � ��ViUInt16  � � ��ViUInt32  � � ��ViReal64     	�  ViInt16[]     	�  ViInt32[]     
�  	ViReal64[]     � ��ViRsrc  � 	� 	��ViSession     �  ViChar[]  �  � ��ViStatus  � 	� 	��ViBoolean     � 	 
ViBoolean[]     � ��ViConstString     � ��struct GPIBStatus     � ��struct SensorStatus     � ��struct ChannelStatus     � ��struct ErrorListSensor     � ��struct ErrorListChannel     � ��struct SRQConditions   K    Functions requiring no input parameters other than the instrument handle.     !    Functions relating to autodial.     !    Functions related to averaging.     #    Functions related to the battery.     '    Functions relating to the back light.         Functions relating to BNC.     !    Functions involving BNC Analog.     !    Function involving calibration.     .    Frequency and voltage calibration functions.     ,    Functions involving the calibration table.     $    Functions that set up the channel.     !    Functions involving the cursor.     /    Functions that change or involve the display.     '    Functions relating to the duty cycle.     L    Functions involving error/fail finding and returning, or error/fail setup.         Functions for GPIB control.         Functions to alter the graph.     *    Functions that use IEEE common commands.     #    Functions that set up the limits.     +    Functions that set the instrument's mode.     "    Functions that alter the offset.     /    Functions that output readings or graph data.          Functions that alter polarity.     !    Functions to setup the printer.     $    Functions that set up the profile.     #    Functions that set up the redial.     $    Functions that check the register.         Functions involving RS232.     #    Functions that set up the sensor.     A    Functions that configure setups using multiple other functions.     )    Functions that control the saved setup.     !    Functions that return a status.         Functions that set up sweep.     %    Functions that set up source sweep.     (    Functions that set up sweep averaging.     )    Functions that set up the text display.     $    Functions that set up the trigger.     +    Functions that setup the profile trigger.         Sets auto-scaling.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.    	�   �       Instrument Handle                 	�����       Status                             vi    	            #    Closes the vi instrument session.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.       �       Instrument Handle                 S����       Status                             vi    	               Allows continuation.









































































































































































































WAZZZZZZUUUUUUUUUPPPPPPPPP!!!!!!!!!!!!!     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.    L   �       Instrument Handle                 �����       Status                             vi    	            (    Initializes the vi instrument session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     (    Input for the resource manager handle.     +    Output for the opened instrument session.         Input for the GPIB address.     A    Selects whether to reset upon beginning the instrument session.    �����       Status                                 �       Resource Manager                  E  �          Instrument Handle                 x �  �      GPIB Address                      �  � `    Reset?                             	                        vi                                    $No Reset Switch_Off Reset Switch_On        Initializes the modem.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.    w   �       Instrument Handle                 �����       Status                             vi    	            _    Resets the instrument, except the offset tables, GPIB address, queues, and status registers.      9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.    	   �       Instrument Handle                 J����       Status                             vi    	            /    Resets the instrument to the factory preset.      9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.    k   �       Instrument Handle                 �����       Status                             vi    	                Zeroes the analog input.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.    �   �       Instrument Handle                 �����       Status                             vi    	            '    Sets the power-on autodial on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Sets the autodial on or off.       �       Instrument Handle                 S����       Status                            � +  � `    Autodial                           vi    	                       (Disabled AD_Disabled Enabled AD_Enabled    5    Returns whether the power-on autodial is on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     ,    Returns whether the autodial is on or off.       �       Instrument Handle                 M����       Status                            � $� �       Autodial                           vi    	            	            *    Sets the range-error autodial on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Sets the autodial on or off.    �   �       Instrument Handle                 ����       Status                            � +  � `    Autodial                           vi    	                       (Disabled AD_Disabled Enabled AD_Enabled    8    Returns whether the range-error autodial is on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     ,    Returns whether the autodial is on or off.    �   �       Instrument Handle                 ����       Status                            � $� �       Autodial                           vi    	            	                Sets the autodial on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Sets the autodial on or off.    �   �       Instrument Handle                 �����       Status                            P +  � `    Autodial                           vi    	                       (Disabled AD_Disabled Enabled AD_Enabled    ,    Returns whether the autodial is on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     ,    Returns whether the autodial is on or off.     �   �       Instrument Handle                  �����       Status                            !A $� �       Autodial                           vi    	            	            !    Sets the autodial phone number.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Input for the phone number.    "[   �       Instrument Handle                 "�����       Status                            #
 $  �       Phone Number                       vi    	                $    Returns the autodial phone number.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     $    Outputs the autodial phone number.    $   �       Instrument Handle                 $Q����       Status                            $� $� �       Phone Number                       vi    	            	            &    Sets the low level averaging window.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.     +    Sets the low level averaging window mode.    %�   �       Instrument Handle                 &����       Status                            &� +  � `    Sensor                            &� �  � `    Mode                               vi    	                       A SensorA B SensorB               <Off Mode_Off Low Mode_Low Medium Mode_Medium High Mode_High    )    Returns the low level averaging window.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the sensor (A or B).     J    Returns the low level averaging window mode (Off, Low, Medium, or High).         Selects which sensor.    (\   �       Instrument Handle                 (�����       Status                            ) $� �       Out Sensor                        )1 ~� �       Mode                              )� $  � `    In Sensor                          vi    	            	            	                       A SensorA B SensorB    ,    Sets the averaging type to moving or auto.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the averaging type.    +,   �       Instrument Handle                 +m����       Status                            +� 8  � `    Averaging Type                     vi    	                       "Moving Type_Moving Auto Type_Auto    !    Sets up averaging for a sensor.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Sets the averaging type.         Sets the number of readings.    -   �       Instrument Handle                 -L����       Status                            -� +  � `    Sensor                            -� t  � `    Averaging Type                    -� � " �      Number of Readings                 vi    	                       A SensorA B SensorB               QOff TypeMode_Off Moving TypeMode_Mov Repeat TypeMode_Rpt Automatic TypeMode_Auto             @           +    Returns the averaging setup for a sensor.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the sensor (A or B).     <    Returns the averaging type (Off, Moving, Repeat, or Auto).     &    Returns the number of readings made.         Selects which sensor.    0	   �       Instrument Handle                 0J����       Status                            0� $� �       Out Sensor                        0� s� �       Averaging Type                    1" �� �       Number of Readings                1P $  � `    In Sensor                          vi    	            	            	            	                       A SensorA B SensorB        Sets the averaging on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Sets the averaging on or off.    3-   �       Instrument Handle                 3n����       Status                            3� 8  � `    Averaging?                         vi    	                       0Averaging Off Switch_Off Averaging On Switch_On    )    Sets the battery auto turn off minutes.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     !    Sets the auto turn off minutes.    5$   �       Instrument Handle                 5e����       Status                            5� 5 % �      Minutes                            vi    	               �   
   
           ,    Returns the battery auto turn off minutes.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     $    Outputs the auto turn off minutes.    6�   �       Instrument Handle                 79����       Status                            7� $� �       Minutes                            vi    	            	            8    Sets the battery auto turn off to disabled or enabled.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     0    Sets the auto turn off to disabled or enabled.    8�   �       Instrument Handle                 9����       Status                            9 3  � `    Auto Turn Off                      vi    	                       $Disable BA_Disable Enable BA_Enable    J    Returns whether the battery auto turn off is set to disabled or enabled.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     ;    Outputs whether the auto turn off is disabled or enabled.    :�   �       Instrument Handle                 ;.����       Status                            ;� $� �       Auto Turn Off                      vi    	            	                Sets the back light timer.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Input for the time.    <�   �       Instrument Handle                 =����       Status                            =o 5 & �      Time                               vi    	         ?�      @Y      ?�      ?�                       Returns the back light timer.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Outputs the time.    >�   �       Instrument Handle                 >�����       Status                            ?> $� �       Time                               vi    	            	           '    Sets the battery LCD back light mode.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the back light mode.    @E   �       Instrument Handle                 @�����       Status                            @� 3  � `    Mode                               vi    	                       &On LCD_On Off LCD_Off Timed LCD_Timed    *    Returns the battery LCD back light mode.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Outputs the back light mode.    B2   �       Instrument Handle                 Bs����       Status                            B� $� �       Mode                               vi    	            	            .    Sets the BNC out port channel configuration.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the port.         Selects the channel.    C�   �       Instrument Handle                 D;����       Status                            D� 3  � `    Port Selector                     D� �  � `    Channel Select                     vi    	                       Port 1 Port_1 Port 2 Port_2               "Chan 1 Channel_1 Chan 2 Channel_2    1    Returns the BNC out port channel configuration.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Outputs the channel (1 or 2).         Selects the port.    F]   �       Instrument Handle                 F�����       Status                            G (� �       Channel Output                    G3 (  � `    Port Selector                      vi    	            	                       Port 1 Port_1 Port 2 Port_2        Sets the BNC output mode.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the channel.         Selects the output mode.    H�   �       Instrument Handle                 H�����       Status                            I= 3  � `    Channel Select                    I[ �  � `    Mode                               vi    	                       "Chan 1 Channel_1 Chan 2 Channel_2               �Off BNCMode_OFF AOUT BNCMode_AOUT PASS/FAIL BNCMode_PASS_FAIL SIGA BNCMode_SIGA LVLA1 BNCMode_LVLA1 LVLA2 BNCMode_LVLA2 LVLB1 BNCMode_LVLB1 LVLB2 BNCMode_LVLB2 ACMOD BNCMode_ACMOD RFB BNCMode_RFB SIGB BNCMode_SIGB        Returns the BNC output mode.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Outputs the channel (1 or 2).     e    Returns the output mode (Off, AOUT, PASS/FAIL, SIGA, LVLA1, LVLA2, LVLB1, LVLB2, ACMOD, RFB, SIGB).         Selects the channel.    K�   �       Instrument Handle                 K�����       Status                            LN -� �       Out Channel                       Lu �� �       Mode                              L� -  � `    In Channel Select                  vi    	            	            	                       "Chan 1 Channel_1 Chan 2 Channel_2    $    Sets the BNC pass-fail pass level.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the port.         Selects the pass-fail level.    N�   �       Instrument Handle                 N�����       Status                            O? 0  � `    Port Selector                     OZ �  � `    Level                              vi    	                       Port 1 Port_1 Port 2 Port_2               High PFL_High Low PFL_Low    '    Returns the BNC pass-fail pass level.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Outputs the pass-fail level.         Selects the port.    P�   �       Instrument Handle                 Q*����       Status                            Q� 3� �       Level                             Q� 3  � `    Port Selector                      vi    	            	                       Port 1 Port_1 Port 2 Port_2        Sets the BNC RF blanking.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the output level.    S   �       Instrument Handle                 SZ����       Status                            S� +  � `    Output Level                       vi    	                       Low PFL_Low High PFL_High        Returns the BNC RF blanking.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     )    Returns the output level (Low or High).    T�   �       Instrument Handle                 U,����       Status                            U� $� �       Output Level                       vi    	            	            *    Sets the BNC analog display start value.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the channel.         Selects the units.         Inputs the start value.    V�   �       Instrument Handle                 V�����       Status                            Wi 3  � `    Channel Select                    W� y  � `    Units                             W� � % �      Value                              vi    	                       "Chan 1 Channel_1 Chan 2 Channel_2               :W BNC_W DB BNC_DB DBM BNC_DBM DBUV BNC_DBUV DBMV BNC_DBMV ?�      @c@     �Q�                          -    Returns the BNC analog display start value.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Outputs the channel (1 or 2).         Outputs the units.         Outputs the start value.         Selects the channel.    Y�   �       Instrument Handle                 Y�����       Status                            Zh (� �       Out Channel                       Z� u� �       Units                             Z� �� �       Value                             Z� (  � `    In Channel Select                  vi    	            	            	            	                      "Chan 1 Channel_1 Chan 2 Channel_2    )    Sets the BNC analog display stop value.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the channel.         Selects the units.         Inputs the stop value.    \�   �       Instrument Handle                 ]����       Status                            ]p 3  � `    Channel Select                    ]� y  � `    Units                             ]� � % �      Value                              vi    	                       "Chan 1 Channel_1 Chan 2 Channel_2               :W BNC_W DB BNC_DB DBM BNC_DBM DBUV BNC_DBUV DBMV BNC_DBMV ?�      @c@     �Q�                          ,    Returns the BNC analog display stop value.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Outputs the channel (1 or 2).         Outputs the units.         Outputs the stop value.         Selects the channel.    _�   �       Instrument Handle                 _�����       Status                            `m (� �       Out Channel                       `� u� �       Units                             `� �� �       Value                             `� (  � `    In Channel Select                  vi    	            	            	            	                      "Chan 1 Channel_1 Chan 2 Channel_2    1    Sets the BNC analog output start voltage scale.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the port.         Inputs the start value.    b�   �       Instrument Handle                 c����       Status                            c| 3  � `    Port Selector                     c� � % �      Start Value                        vi    	                       Port 1 Port_1 Port 2 Port_2 ?�      @      �                           4    Returns the BNC analog output start voltage scale.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Outputs the port (1 or 2).         Outputs the start value.         Selects the port.    e0   �       Instrument Handle                 eq����       Status                            e� (� �       Out Port                          f �� �       Start Value                       f% (  � `    In Port Selector                   vi    	            	            	                      Port 1 Port_1 Port 2 Port_2    0    Sets the BNC analog output stop voltage scale.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the port.         Inputs the stop value.    g�   �       Instrument Handle                 h����       Status                            h� 3  � `    Port Selector                     h� � % �      Stop Value                         vi    	                       Port 1 Port_1 Port 2 Port_2 ?�      @      �                           3    Returns the BNC analog output stop voltage scale.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Outputs the port (1 or 2).         Outputs the stop value.         Selects the port.    j7   �       Instrument Handle                 jx����       Status                            j� (� �       Out Port                          k
 �� �       Stop Value                        k+ (  � `    In Port Selector                   vi    	            	            	                      Port 1 Port_1 Port 2 Port_2    +    Adds an entry pair to a cal factor table.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Selects the table.         Selects the units.         Inputs the value.         Sets the cal frequency value.    l�   �       Instrument Handle                 m����       Status                            m� %  � `    Sensor                            m� x  �      Table                             m� x � � `    Units                             m� % � �      Value                             m� �  �      Frequency                          vi    	                       A SensorA B SensorB       n                            0% Cal_Percent PCT Cal_PCT DB Cal_DB DBM Cal_DBM ?�      @b�     ��(�\)                  ?�      B<g�D   @È     @È                  .    Returns the currently used cal factor value.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.     %    Output of current cal factor value.    p�   �       Instrument Handle                 p�����       Status                            qX %  � `    Sensor                            qw %� �       Value                              vi    	                       A SensorA B SensorB    	           #    Returns whether the cal is valid.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Selects table number.     .    Returns whether the cal is valid or invalid.    r�   �       Instrument Handle                 s%����       Status                            s� '  � `    Sensor                            s� � $ �      Table                             s� '� �       Validity                           vi    	                       A SensorA B SensorB       n                 	                Calibrates the sensor.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.    u�   �       Instrument Handle                 u�����       Status                            v7 %  � `    Sensor                             vi    	                       A SensorA B SensorB        Sets the calibration factor.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Selects the units.         Inputs the value.    wP   �       Instrument Handle                 w�����       Status                            w� +  � `    Sensor                            x x  � `    Units                             x: � $ �      Value                              vi    	                       A SensorA B SensorB               PCT Cal_PCT DBM Cal_DBM ?�      @b�     ��(�\)                     !    Returns the calibration factor.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the sensor (A or B).     )    Returns the units (%, PCT, DB, or DBM).         Selects which sensor.         Output of factor value.    z   �       Instrument Handle                 zO����       Status                            z� $� �       Out Sensor                        z� v� �       Units                             { $  � `    In Sensor                         {3 �� �       Value                              vi    	            	            	                       A SensorA B SensorB    	               Sets the cal units display.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Selects the units.    }   �       Instrument Handle                 }Q����       Status                            }� +  � `    Sensor                            }� �  � `    Units                              vi    	                       A SensorA B SensorB               PCT Cal_PCT DBM Cal_DBM         Returns the cal units display.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the sensor (A or B).     )    Returns the units (%, PCT, DB, or DBM).         Selects which sensor.    R   �       Instrument Handle                 �����       Status                            � $� �       Out Sensor                        �' �� �       Units                             �X $  � `    In Sensor                          vi    	            	            	                       A SensorA B SensorB        Sets the cal factor number.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Inputs the value.         Selects the units.    ��   �       Instrument Handle                 �3����       Status                            �� +  � `    Sensor                            �� � $ �      Value                             �� y  � `    Units                              vi    	                       A SensorA B SensorB ?�      @b�     ��(�\)                                PCT Cal_PCT DBM Cal_DBM         Returns the cal factor number.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the sensor (A or B).     )    Returns the units (%, PCT, DB, or DBM).         Selects which sensor.         Output of factor value.    ��   �       Instrument Handle                 ������       Status                            �^ $� �       Out Sensor                        �� v� �       Units                             �� $  � `    In Sensor                         �� �� �       Value                              vi    	            	            	                       A SensorA B SensorB    	               Sets the cal source.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Selects the source.    ��   �       Instrument Handle                 ������       Status                            �Y +  � `    Sensor                            �x �  � `    Source                             vi    	                       A SensorA B SensorB               1Frequency Src_FREQ Manual Src_MAN V/GHZ Src_VGHZ        Returns the cal source.       9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the sensor (A or B).     3    Returns the source (Frequency, Manual, or V/GHZ).         Selects which sensor.    �   �       Instrument Handle                 �B����       Status                            �� $� �       Out Sensor                        �� �� �       Source                            � $  � `    In Sensor                          vi    	            	            	                       A SensorA B SensorB        Returns the calibrator data.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.     /    Returns whether any calibrator data was read.     $    Returns the calibrator zero value.     $    Returns the calibrator upper data.     $    Returns the calibrator lower data.    ��   �       Instrument Handle                 ������       Status                            �[   � `    Sensor                            �z  �       State                             �� q �       Zero Value                        �� �; �       Upper Values                      �	 �� �       Lower Values                       vi    	                       A SensorA B SensorB    	            	            	            	            '    Sets the RF ref calibrator on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     5    Selects whether the RF ref calibrator is on or off.    �<   �       Instrument Handle                 �}����       Status                            �� +  � `    RF Ref Calibrator                  vi    	                       Off Switch_Off On Switch_On    5    Returns whether the RF ref calibrator is on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     5    Returns whether the RF ref calibrator is on or off.    �A   �       Instrument Handle                 ������       Status                            �� $� �       RF Ref Calibrator                  vi    	            	                Sets the cal frequency.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Selects the units.         Inputs the value.    �   �       Instrument Handle                 �L����       Status                            �� +  � `    Sensor                            �� x  � `    Units                             �� � $ �      Value                              vi    	                       A SensorA B SensorB              ,Hz Frq_Hz kHz Frq_kHz MHz Frq_Hz GHz Frq_Hz ?�      B<g�D   @È     @È                      Returns the cal frequency.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the sensor (A or B).     +    Returns the units (Hz, kHz, MHz, or GHz).         Selects which sensor.         Output of factor value.    ��   �       Instrument Handle                 �����       Status                            �� $� �       Out Sensor                        �� v� �       Units                             �� $  � `    In Sensor                         �� �� �       Value                              vi    	            	            	                       A SensorA B SensorB    	               Sets the cal start frequency.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Inputs the start frequency.    ��   �       Instrument Handle                 �����       Status                            �� +  � `    Sensor                            �� � $ �      Start Frequency                    vi    	                       A SensorA B SensorB ?�      B<g�D   @È     @È                  $    Returns the cal start frequency.       9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Output of start frequency.    �1   �       Instrument Handle                 �r����       Status                            �� $  � `    Sensor                            �� $� �       Value                              vi    	                       A SensorA B SensorB    	               Sets the cal stop frequency.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Inputs the stop frequency.    �^   �       Instrument Handle                 ������       Status                            � +  � `    Sensor                            �, � & �      Stop Frequency                     vi    	                       A SensorA B SensorB ?�      B<g�D   @È     @È                  #    Returns the cal stop frequency.       9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Output of stop frequency.    ��   �       Instrument Handle                 ������       Status                            �^ $  � `    Sensor                            �} $� �       Stop Frequency                     vi    	                       A SensorA B SensorB    	               Sets the cal start voltage.      9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Inputs the start voltage.    ��   �       Instrument Handle                 �����       Status                            �� +  � `    Sensor                            �� � $ �      Start Voltage                      vi    	                       A SensorA B SensorB ?�      @4�     ��      ��                        Returns the cal start voltage.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Output of start voltage.    �(   �       Instrument Handle                 �i����       Status                            �� $  � `    Sensor                            �� $� �       Start Voltage                      vi    	                       A SensorA B SensorB    	               Sets the cal stop voltage.      9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Inputs the stop voltage.    �R   �       Instrument Handle                 ������       Status                            � +  � `    Sensor                            �  � $ �      Stop Voltage                       vi    	                       A SensorA B SensorB ?�      @4�     ��      ��                       Returns the cal stop voltage.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Output of stop voltage.    ��   �       Instrument Handle                 ������       Status                            �L $  � `    Sensor                            �k $� �       Stop Voltage                       vi    	                       A SensorA B SensorB    	               Clears the cal table.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Selects the table.    ��   �       Instrument Handle                 �����       Status                            �o %  � `    Sensor                            �� �  �      Table Number                       vi    	                       A SensorA B SensorB       n                     Sets the cal table identity.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Selects table number.         Input for identity.    ��   �       Instrument Handle                 �1����       Status                            �� +  � `    Sensor                            �� w $ �      Table                             �� �  �       Identity                           vi    	                       A SensorA B SensorB       n                     !    Returns the cal table identity.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the sensor (A or B).         Selects which sensor.     !    Output for the identity string.         Sets the table.    �|   �       Instrument Handle                 ������       Status                            �+ $� �       Out Sensor                        �Q $  � `    In Sensor                         �p �� �       Identity                          �� � # �      Table                              vi    	            	                       A SensorA B SensorB    	                                      Sets the cal table.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Selects table number.         Input for identity.     !    Input for array of frequencies.          Input for array of cal values.     "    Input for array size to be read.    �q   �       Instrument Handle                 ������       Status                            �  *  � `    Sensor                            �? { $ �      Table                             �^ �  �       Identity                          �{ * � �       Frequency Array                   �� { � �       Cal Array                         �� � � �      Array Size                         vi    	                       A SensorA B SensorB       n                             ����                      Returns the cal table.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Selects table number.         Input for identity.     "    Output for array of frequencies.     !    Output for array of cal values.     $    Input for array size to be loaded.    �-   �       Instrument Handle                 �n����       Status                            �� .  � `    Sensor                            �� ~ $ �      Table                             � �  �       Identity                          �7 .� �       Frequency Array                   �a �� �       Cal Array                         �� . � �      Array Size                         vi    	                       A SensorA B SensorB       n                     	            	            ����                      Sets the cal table preset.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Selects table number.    �   �       Instrument Handle                 �B����       Status                            �� +  � `    Sensor                            �� � $ �      Table                              vi    	                       A SensorA B SensorB       n                     Saves the cal table.       9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.    �.   �       Instrument Handle                 �o����       Status                             vi    	                Selects the cal table.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Selects table number.    �y   �       Instrument Handle                 ������       Status                            �( +  � `    Sensor                            �G � $ �      Table                              vi    	                       A SensorA B SensorB       n                 #    Returns the number of cal tables.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Output for number of tables.    ��   �       Instrument Handle                 ������       Status                            �` +  � `    Sensor                            � +� �       Number of Tables                   vi    	                       A SensorA B SensorB    	            (    Returns the number of cal tables used.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Output for number of tables.    ��   �       Instrument Handle                 �+����       Status                            Ù +  � `    Sensor                            ø +� �       Number of Tables                   vi    	                       A SensorA B SensorB    	            '    Sets the channel input configuration.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the channel.         Selects the configuration.    �"   �       Instrument Handle                 �c����       Status                            �� -  � `    Channel Select                    �� �  � `    Input Configuration                vi    	                       "Chan 1 Channel_1 Chan 2 Channel_2               �OFF Config_OFF Sensor A Config_A Sensor B Config_B External Volts Config_V A-B Config_A_B B-A Config_B_A A/B Config_AslashB B/A Config_BslashA    +    Returns the channel input configuration.      9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the channel.         Outputs the channel (1 or 2).     =    Output of configuration (OFF, A, B, V, A-B, B-A, A/B, B/A).    ��   �       Instrument Handle                 �<����       Status                            Ȫ )  � `    In Channel Select                 �� )� �       Out Channel                       �� �� �       Input Configuration                vi    	                       "Chan 1 Channel_1 Chan 2 Channel_2    	            	                Sets the channel resolution.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the channel.         Selects the resolution.    ʾ   �       Instrument Handle                 ������       Status                            �m -  � `    Channel Select                    ˋ �  � `    Resolution                         vi    	                       "Chan 1 Channel_1 Chan 2 Channel_2               1 Res_1 2 Res_2 3 Res_3    !    Returns the channel resolution.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the channel.         Outputs the channel (1 or 2).     $    Output of resolution (1, 2, or 3).    �   �       Instrument Handle                 �T����       Status                            �� )  � `    In Channel Select                 �� )� �       Out Channel                       � �� �       Resolution                         vi    	                       "Chan 1 Channel_1 Chan 2 Channel_2    	            	                Sets the channel units.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the channel.         Selects the units.    ϸ   �       Instrument Handle                 ������       Status                            �g -  � `    Channel Select                    Ѕ �  � `    Units                              vi    	                       "Chan 1 Channel_1 Chan 2 Channel_2               &Watts Res_1 dB Res_2 dBuV Res_3 dBmV         Returns the channel units.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the channel.         Outputs the channel (1 or 2).     )    Output of units (W, dB, dBuV, or dBmV).    �   �       Instrument Handle                 �R����       Status                            �� )  � `    In Channel Select                 �� )� �       Out Channel                       � �� �       Units                              vi    	                       "Chan 1 Channel_1 Chan 2 Channel_2    	            	                Selects the profile channel.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the channel.    ��    �       Instrument Handle                 �����       Status                            �o 2   � `    Channel Select                     vi    	                       "Chan 1 Channel_1 Chan 2 Channel_2        Returns the profile channel.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Outputs the channel (1 or 2).    ֕   �       Instrument Handle                 ������       Status                            �D '� �       Profile Channel                    vi    	            	                Selects the cursor.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the cursor.         Inputs the value.    �E   �       Instrument Handle                 ؆����       Status                            �� 5  � `    Cursor Selector                   � �  �      Value                              vi    	                       1 Cursor_1 2 Cursor_2 ?�      �      ��                           !    Sets the cursor data on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     !    Sets the cursor data on or off.    ڋ   �       Instrument Handle                 ������       Status                            �: $  � `    Cursor Data                        vi    	                       Off Switch_Off On Switch_On    /    Returns whether the cursor data is on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     .    Output whether cursor data is set on or off.    �v   �       Instrument Handle                 ܷ����       Status                            �% � �       Cursor Data                        vi    	            	            (    Sets the link graph cursors on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     (    Sets the link graph cursors on or off.    �H   �       Instrument Handle                 މ����       Status                            �� /  � `    Link Cursors?                      vi    	                       *No Link Switch_Off Link Cursors Switch_On    7    Returns whether the link graph cursors are on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     1    Returns whether the link cursors are on or off.    �P   �       Instrument Handle                 ������       Status                            �� &� �       Link Cursors?                      vi    	            	                Sets the data display time.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the units.         Sets the time.    �   �       Instrument Handle                 �[����       Status                            �� �  � `    Units                             �� & % �      Time                               vi    	                       &Minutes Time_Minutes Hours Time_Hours ?�      @��     ?�      ?�                        Returns the data display time.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     "    Output of the data display time.    �k   �       Instrument Handle                 �����       Status                            � � �       Time                               vi    	            	           $    Selects the display contrast step.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the step.    �-   �       Instrument Handle                 �n����       Status                            �� -  � `    Step                               vi    	                       Up Step_Up Down Step_Down        Sets the display contrast.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Sets the contrast.    ��   �       Instrument Handle                 �6����       Status                            � & % �      Display Contrast                   vi    	               
                     Returns the display contrast.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     !    Output of the display contrast.    �   �       Instrument Handle                 ������       Status                            �^ � �       Display Contrast                   vi    	            	                Sets the display on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Sets the display on or off.    �i   �       Instrument Handle                 �����       Status                            � $  � `    Display                            vi    	                       Off Switch_Off On Switch_On    +    Returns whether the display is on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     *    Output whether display is set on or off.    �L   �       Instrument Handle                 �����       Status                            �� � �       Display                            vi    	            	            !    Sets the display trigger delay.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     !    Sets the display trigger delay.    �   �       Instrument Handle                 �T����       Status                            �� 3 & �      Display Trigger Delay              vi    	         ?�      @                                   $    Returns the display trigger delay.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     $    Outputs the display trigger delay.    ��   �       Instrument Handle                 �4����       Status                            � � �       Display Trigger Delay              vi    	            	               Sets the display.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.          Selects on or off for display.     !    Selects the peak meter display.         Sets the display contrast.    �   �       Instrument Handle                 ������       Status                            �U w  � `    Display                           �} $  � `    Peak Meter Display                � � & �      Display Contrast                   vi    	                      Off Switch_Off On Switch_On               !A PkDsp_A B PkDsp_B A&B PkDsp_AB       
                 .    Sets the frequency offset display on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     *    Sets frequency offset display on or off.    ��   �       Instrument Handle                 ������       Status                            �< *  � `    Display                            vi    	                      Off Switch_Off On Switch_On    <    Returns whether the frequency offset display is on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     <    Returns whether the frequency offset display is on or off.    ��   �       Instrument Handle                 ������       Status                            �= )� �       Display                            vi    	            	            3    Sets the peak meter display to off, A, B, or A&B.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     !    Selects the peak meter display.    �y   �       Instrument Handle                 ������       Status                            �( +  � `    Peak Meter Display                 vi    	                       /Off PkDsp_Off A PkDsp_A B PkDsp_B A&B PkDsp_AB    E    Returns whether the peak meter display is set to off, A, B, or A&B.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     E    Returns whether the peak meter display is set to off, A, B, or A&B.    ��   �       Instrument Handle                 ������       Status                            �< $� �       Peak Meter Display                 vi    	            	                Sets the duty cycle state.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Sets the state on or off.    �j   �       Instrument Handle                 ������       Status                            � +  � `    Sensor                            �8 �  � `    State                              vi    	                       A SensorA B SensorB              Off Switch_Off On Switch_On        Returns the duty cycle state.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the sensor (A or B).          Returns the state (on or off).         Selects which sensor.    ��   �       Instrument Handle                 ������       Status                            e $� �       Out Sensor                        � ~� �       State                             � $  � `    In Sensor                          vi    	            	            	                       A SensorA B SensorB        Sets the duty cycle.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Sets the duty cycle percent.   F   �       Instrument Handle                �����       Status                           � +  � `    Sensor                            � ' �      Duty Cycle                         vi    	                       A SensorA B SensorB ?�������@Y      ?�������?�������                 Returns the duty cycle.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the sensor (A or B).         Returns the duty cycle.         Selects which sensor.   �   �       Instrument Handle                �����       Status                           > $� �       Out Sensor                       d �� �       Duty Cycle                       � $  � `    In Sensor                          vi    	            	            	                      A SensorA B SensorB    &    Sets the entry error beep on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     &    Sets the entry error beep on or off.   (   �       Instrument Handle                i����       Status                           � $  � `    Entry Error Beep                   vi    	                       Off Switch_Off On Switch_On    4    Returns whether the entry error beep is on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     4    Returns whether the entry error beep is on or off.   	   �       Instrument Handle                	^����       Status                           	� � �       Entry Error Beep                   vi    	            	                Lists all received errors.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.    v    Struct of Sensor A errors.

struct ErrorListSensor
{
    ViInt32 ZeroState;         
    ViInt32 CALState;
    ViInt32 RangeHold;
    ViInt32 FittedUsedState;
};

enum ZeroStateEnum {ZeroDone, NotDone, ZeroFailed}; 
enum CalStateEnum {CalDone, CalFailed};             
enum RangeHoldEnum {RangeOK, OverRange, UnderRange};
enum FittedUsedEnum {FittedFitted, NotFittedUsed};    v    Struct of Sensor B errors.

struct ErrorListSensor
{
    ViInt32 ZeroState;         
    ViInt32 CALState;
    ViInt32 RangeHold;
    ViInt32 FittedUsedState;
};

enum ZeroStateEnum {ZeroDone, NotDone, ZeroFailed}; 
enum CalStateEnum {CalDone, CalFailed};             
enum RangeHoldEnum {RangeOK, OverRange, UnderRange};
enum FittedUsedEnum {FittedFitted, NotFittedUsed};    !    List of Channel 1 errors.

struct ErrorListChannel
{
    ViInt32 OutOfRange;
    ViInt32 IllegalLogOp;
    ViInt32 LimitsState;
};

enum RangeHoldEnum {RangeOK, OverRange, UnderRange};
enum LogOperation {LogOK, LogError};
enum LimitsState {LimitsPassed, LimitsHiFailed, LimitsLoFailed};
    !    List of Channel 2 errors.

struct ErrorListChannel
{
    ViInt32 OutOfRange;
    ViInt32 IllegalLogOp;
    ViInt32 LimitsState;
};

enum RangeHoldEnum {RangeOK, OverRange, UnderRange};
enum LogOperation {LogOK, LogError};
enum LimitsState {LimitsPassed, LimitsHiFailed, LimitsLoFailed};
         Output for printer errors.     &    Outputs text about execution errors.     $    Outputs text about command errors.   
�   �       Instrument Handle                *����       Status                           � ) � �       Sensor A                          x � �       Sensor B                         � � � �       Channel 1                        � � �       Channel 2                        � )� �       Printer Error                    
 x� �       Execution Error                  8 �� �       Command Error                      vi    	            	            	            	            	            	            	            	                Sets the fail beep on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Sets the fail beep on or off.         Selects the channel.   �   �       Instrument Handle                ����       Status                           } �  � `    Fail Beep                        � ,  � `    Channel Select                     vi    	                       Off Switch_Off On Switch_On               "Chan 1 Channel_1 Chan 2 Channel_2    -    Returns whether the fail beep is on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     -    Returns whether the fail beep is on or off.         Selects the channel.         Outputs the channel (1 or 2).   9   �       Instrument Handle                z����       Status                           � �� �       Fail Beep                         +  � `    In Channel Select                ; +� �       Out Channel                        vi    	            	                       "Chan 1 Channel_1 Chan 2 Channel_2    	            )    Sets the fail indicator hold on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     )    Sets the fail indicator hold on or off.         Selects the channel.   �   �       Instrument Handle                8����       Status                           � �  � `    Fail Indicator Hold              � ,  � `    Channel Select                     vi    	                       Off Switch_Off On Switch_On               "Chan 1 Channel_1 Chan 2 Channel_2    "    Returns the fail indicator hold.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     7    Returns whether the fail indicator hold is on or off.         Selects the channel.         Outputs the channel (1 or 2).   a   �       Instrument Handle                �����       Status                            �� �       Fail Indicator Hold              O +  � `    In Channel Select                m +� �       Out Channel                        vi    	            	                       "Chan 1 Channel_1 Chan 2 Channel_2    	                Sets the configuration.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Sets the GET trigger action.         Sets the trigger mode.      �       Instrument Handle                Z����       Status                           � 1  � `    GET Action                       � �  � `    Trigger Mode                       vi    	                       GIgnore Type_Ignore TR1 Trigger Type Type_TR1 TR2 Trigger Type Type_TR2               %FREE RUN Mode_FreeRun HOLD Mode_Hold        Sets the GPIB Address.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Sets the GPIB address.    �   �       Instrument Handle                 �����       Status                           !M . ' �      GPIB Address                       vi    	                                    Returns the GPIB address.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the GPIB address.   "X   �       Instrument Handle                "�����       Status                           # .� �       GPIB Address                       vi    	            	                Sets the GET trigger type.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Sets the GET trigger action.   $   �       Instrument Handle                $L����       Status                           $� 1  � `    GET Action                         vi    	                       GIgnore Type_Ignore TR1 Trigger Type Type_TR1 TR2 Trigger Type Type_TR2    -    Sets the GPIB response buffering on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     -    Sets the GPIB response buffering on or off.   &   �       Instrument Handle                &]����       Status                           &� .  � `    Response Buffering                 vi    	                       Off Switch_Off On Switch_On        Sets the GPIB trigger mode.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Sets the channel.         Sets the GPIB trigger mode.   (   �       Instrument Handle                (B����       Status                           (� .  � `    Channel Selector                 (� �  �      Trigger Mode                       vi    	                       Off Switch_Off On Switch_On              nHold Mode Mode_Hold Immediate Mode_Immediate With Settling Delay Mode_WithSettlingDelay Free Run Mode_FreeRun    %    Returns the graph data information.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Output for the channel number         Output for the minimum value.         Output for the maximum value.         Output for cursor 1 value.         Output for cursor 2 value.         Output for the delta power.         Output for the delta time.         Output for the average.   *�   �       Instrument Handle                *�����       Status                           +Z  � �       Channel Number                   +� Z � �       Minimum Value                    +� Z/ �       Maximum Value                    +� � � �       Cursor 1                         +� �/ �       Cursor 2                         , � � �       Delta Power                      ,< �/ �       Delta Time                       ,`  � �       Average                            vi    	            	            	           	           	           	           	           	           	           '    Sets the graph pretrigger percentage.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     '    Sets the graph pretrigger percentage.   /4   �       Instrument Handle                /u����       Status                           /� . ' �      Percent                            vi    	               d                   *    Returns the graph pretrigger percentage.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     *    Returns the graph pretrigger percentage.   1   �       Instrument Handle                1M����       Status                           1� .� �       Percent                            vi    	            	                Resets the min/max graph.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.   2�   �       Instrument Handle                3����       Status                             vi    	                Resets the min/max tracking.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the channel.   4   �       Instrument Handle                4_����       Status                           4� (  � `    Channel Select                     vi    	                       "Chan 1 Channel_1 Chan 2 Channel_2    (    Returns the instrument identification.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     -    Output for the instrument's identification.   5�   �       Instrument Handle                6>����       Status                           6� $� �       Identification                     vi    	            	            1    Returns 1 if the self test passed, 0 if failed.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     1    Returns 1 if the self test passed, 0 if failed.   7�   �       Instrument Handle                8����       Status                           8� $� �       Status                             vi    	            	            ?    Sets the operation complete bit in the Event Status Register.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.   9�   �       Instrument Handle                :����       Status                             vi    	            1    Returns a '1' when all operations are complete.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     0    Output for operation status (1 when complete).   ;'   �       Instrument Handle                ;h����       Status                           ;� (� �       Status                             vi    	            	                Clears the status bytes.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.   <�   �       Instrument Handle                =.����       Status                             vi    	                Enables event status.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Input for mask.   >7   �       Instrument Handle                >x����       Status                           >� ) $ �      Mask                               vi    	               �                        Returns the event status byte.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Output for the status byte.   ?�   �       Instrument Handle                @0����       Status                           @� (� �       Byte                               vi    	            	            )    Returns the event status register byte.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Output for event status byte.   A�   �       Instrument Handle                A�����       Status                           B` &� �       Byte                               vi    	            	            0    Sets the service request enable register byte.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Input for mask.   C|   �       Instrument Handle                C�����       Status                           D+ ) $ �      Mask                               vi    	               �                   3    Returns the service request enable register byte.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Output for the SRQ byte.   EG   �       Instrument Handle                E�����       Status                           E� (� �       Byte                               vi    	            	                Returns the status byte.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Output for status byte.   F�   �       Instrument Handle                G8����       Status                           G� &� �       Byte                               vi    	            	            ;    Returns a trigger and output for each channel that is on.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Output from *TRG.   H�   �       Instrument Handle                I����       Status                           Iv $� �       Buffer                             vi    	            	                Saves the instrument setup.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     +    Sets the slot in which to save the setup.   Js   �       Instrument Handle                J�����       Status                           K" , ' �      Save Address                       vi    	               
                     Recalls the instrument setup.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     /    Sets the slot from which to recall the setup.   LD   �       Instrument Handle                L�����       Status                           L� , ' �      Recall Address                     vi    	               
                     Sets the limits on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.          Sets the high limit on or off.         Selects the channel.         Sets the low limit on or off.   N   �       Instrument Handle                NW����       Status                           N� u  � `    Higher Limit                     N� ,  � `    Channel Select                   O �  � `    Lower Limit                        vi    	                       Off Switch_Off On Switch_On               "Chan 1 Channel_1 Chan 2 Channel_2               Off Switch_Off On Switch_On    +    Returns whether the limits are on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     -    Returns whether the low limit is on or off.         Selects the channel.     .    Returns whether the high limit is on or off.   Q   �       Instrument Handle                QH����       Status                           Q� �� �       Lower Limit                      Q� +  � `    Channel Select                   R	 +� �       Higher Limit                       vi    	            	                       "Chan 1 Channel_1 Chan 2 Channel_2    	                Sets the limits.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the channel.         Sets the high limit.         Sets the low limit.   S�   �       Instrument Handle                S�����       Status                           Tl ,  � `    Channel Select                   T� v ' �      High Limit                       T� � ' �      Low Limit                          vi    	                       "Chan 1 Channel_1 Chan 2 Channel_2 ?�      @i�     �Y                        ?�      @i�     �Y                               Returns the limits.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the low limit.         Selects the channel.         Returns the high limit.   V�   �       Instrument Handle                V�����       Status                           W3 �� �       Lower Limit                      WS +  � `    Channel Select                   Wq +� �       Higher Limit                       vi    	            	                      "Chan 1 Channel_1 Chan 2 Channel_2    	               Sets the emulation.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Sets the emulation mode.   Y   �       Instrument Handle                YT����       Status                           Y� 3  � `    Emulation Mode                     vi    	                       _ML24XX Emul_ML24XX HP436A Emul_HP436A HP437B Emul_HP437B HP438A Emul_HP438A ML4803 Emul_ML4803        Sets fast on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Sets fast on or off.   [!   �       Instrument Handle                [b����       Status                           [� 1  � `    Fast                               vi    	                       Off Switch_Off On Switch_On        Sets the hold on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Sets hold on or off.   \�   �       Instrument Handle                ]-����       Status                           ]� /  � `    Hold                               vi    	                      Off Switch_Off On Switch_On    (    Returns whether the hold is on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     (    Returns whether the hold is on or off.   ^�   �       Instrument Handle                _����       Status                           _t &� �       Hold                               vi    	            	            %    Sets the key click sound on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     %    Sets the key click sound on or off.   `�   �       Instrument Handle                `�����       Status                           a= /  � `    Sound                              vi    	                       Off Switch_Off On Switch_On    3    Returns whether the key click sound is on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     3    Returns whether the key click sound is on or off.   b�   �       Instrument Handle                b�����       Status                           c0 0� �       Sound                              vi    	            	            &    Sets the min max tracking on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     "    Sets min max tracking on or off.         Selects the channel.   dV    �       Instrument Handle                d�����       Status                           e �   � `    Min/Max Tracking                 e/ 2   � `    Channel Select                     vi    	                       Off Switch_Off On Switch_On               "Chan 1 Channel_1 Chan 2 Channel_2    4    Returns whether the min max tracking is on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     0    Returns whether min max tracking is on or off.         Selects the channel.         Outputs the channel (1 or 2).   f�   �       Instrument Handle                g����       Status                           gz �� �       Tracking                         g� '  � `    In Channel Select                g� '� �       Out Channel                        vi    	            	                       "Chan 1 Channel_1 Chan 2 Channel_2    	                Sets the operation mode.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the operation mode.   i}   �       Instrument Handle                i�����       Status                           j, +  � `    Operation Mode                     vi    	                       ZDigit Mode_Digit Profile Mode_Profile Power vs. Time Mode_Pwrtim Source Sweep Mode_Srcswp        Returns the operation mode.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the operation mode.   k�   �       Instrument Handle                k�����       Status                           l? $� �       Mode                               vi    	            	            !    Sets the relative control mode.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the channel.     $    Selects the relative control mode.   mJ   �       Instrument Handle                m�����       Status                           m� -  � `    Channel Select                   n �  � `    Relative Control Mode              vi    	                       "Chan 1 Channel_1 Chan 2 Channel_2               aOFF RelControl_OFF ON, new reference RelControl_ON_NewRef ON, old reference RelControl_ON_OldRef    $    Returns the relative control mode.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the channel.     $    Returns the relative control mode.   o�   �       Instrument Handle                p7����       Status                           p� )  � `    Channel Select                   p� )� �       Mode                               vi    	                       "Chan 1 Channel_1 Chan 2 Channel_2    	            ,    Sets the secure system state to on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     ,    Sets the secure system state to on or off.   rF   �       Instrument Handle                r�����       Status                           r� +  � `    System State                       vi    	                       Off Switch_Off On Switch_On    >    Returns whether the secure system state is set to on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     >    Returns whether the secure system state is set to on or off.   tK   �       Instrument Handle                t�����       Status                           t� $� �       System State                       vi    	            	                Sets the offset fixed value.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Sets the offset fixed value.   v#   �       Instrument Handle                vd����       Status                           v� +  � `    Sensor                           v� � & �      Fixed Offset                       vi    	                       A SensorA B SensorB ?�      �      ��                           !    Returns the offset fixed value.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the sensor (A or B).     !    Returns the offset fixed value.         Selects which sensor.   xt   �       Instrument Handle                x�����       Status                           y# $� �       Out Sensor                       yI �� �       Fixed Offset                     yr $  � `    In Sensor                          vi    	            	            	                      A SensorA B SensorB        Clears the offset table.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which table.   {	   �       Instrument Handle                {J����       Status                           {� $ # �      Table                              vi    	                                    Updates an offset table.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the table number.          Input for the frequency array.         Input for the offset array.          Sets the array size for input.   |�   �       Instrument Handle                }����       Status                           }o , & �      Table Number                     }� h  �       Frequency                        }� �  �       Offset                           }� � & �      Array Size                         vi    	                                        ����                      Outputs an offset table.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Output of frequency array.         Selects the table number.         Output of offset array.          Sets the array size for input.   �   �       Instrument Handle                �����       Status                           �^ .� �       Frequency                        �� . ' �      Table Number                     �� �� �       Offset                           �� � ' �      Array Size                         vi    	            	                                	            ����                      Sets the offset table.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Selects the table number.   ��   �       Instrument Handle                ������       Status                           �S +  � `    Sensor                           �r � $ �      Table Number                       vi    	                       A SensorA B SensorB                            Returns the offset table.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the sensor (A or B).     "    Returns the offset table number.         Selects which sensor.   ��   �       Instrument Handle                �����       Status                           �� $� �       Out Sensor                       �� �� �       Table Number                     �� $  � `    In Sensor                          vi    	            	            	                       A SensorA B SensorB        Outputs graph binary data.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.   �p   �       Instrument Handle                ������       Status                             vi    	                Returns output graph data.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Output for number of points.         Returns output graph data.   ��   �       Instrument Handle                � ����       Status                           �n 2� �       Number of Points                 �� �� �       Graph Data                         vi    	            	            	                 Outputs max graph binary data.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.   ��   �       Instrument Handle                �����       Status                             vi    	                Outputs max graph data.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.   �*   �       Instrument Handle                �k����       Status                             vi    	                 Outputs min graph binary data.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.   �}   �       Instrument Handle                ������       Status                             vi    	                Outputs min graph data.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.   ��   �       Instrument Handle                �
����       Status                             vi    	            '    Outputs a number of channel readings.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the channel.     &    Sets the number of readings to take.     $    Output of channel readings result.   �#   �       Instrument Handle                �d����       Status                           �� )  � `    Channel Select                   �� �  �      Number of Readings               � )� �       Result                             vi    	                       "Chan 1 Channel_1 Chan 2 Channel_2      ��      d           	                Outputs one channel reading.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the channel.     #    Output of channel reading result.   ��   �       Instrument Handle                � ����       Status                           �� )  � `    Channel Select                   �� )� �       Result                             vi    	                       "Chan 1 Channel_1 Chan 2 Channel_2    	               Outputs a sample array.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.   �   �       Instrument Handle                �\����       Status                             vi    	                Sets the AC polarity.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Sets the polarity.   �e   �       Instrument Handle                ������       Status                           � +  �      Polarity                           vi    	                       <Negative Polarity NegPolarity Positive Polarity PosPolarity        Returns the AC polarity.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the polarity.   �N   �       Instrument Handle                ������       Status                           �� $� �       Polarity                           vi    	            	                Sets the blanking polarity.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Sets the polarity.   ��   �       Instrument Handle                �?����       Status                           �� 6  �      TTL Blanking Polarity              vi    	                      <Negative Polarity NegPolarity Positive Polarity PosPolarity         Returns the blanking polarity.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     -    Outputs the blanking polarity (Pos or Neg).   ��   �       Instrument Handle                �.����       Status                           �� $� �       TTL Blanking Polarity              vi    	            	            	    Prints.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.   ��   �       Instrument Handle                ������       Status                             vi    	                Selects the printer.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the printer.   ��   �       Instrument Handle                �)����       Status                           �� +  � `    Select Printer                     vi    	                       (HP340 Printer_HP340 BJC80 Printer_BJC80        Returns the selected printer.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the selected printer.   ��   �       Instrument Handle                �����       Status                           �s $� �       Select Printer                     vi    	            	            4    Sets on or off averaging between the file cursors.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     .    Selects averaging between cursors on or off.   ��   �       Instrument Handle                ������       Status                           �B $  � `    Averaging Between Cursors?         vi    	                       Off Switch_Off On Switch_On    B    Returns whether averaging between the file cursors is on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     ;    Output of whether averaging between cursors is on or off.   ��   �       Instrument Handle                ������       Status                           �M � �       Averaging                          vi    	            	            (    Sets profile connect points on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     (    Sets profile connect points on or off.   �}   �       Instrument Handle                ������       Status                           �, +  � `    Connect Points?                    vi    	                      Off Switch_Off On Switch_On    6    Returns whether profile connect points is on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     6    Returns whether profile connect points is on or off.   �v   �       Instrument Handle                ������       Status                           �% $� �       Connect Points                     vi    	            	            *    Sets the profile data collection period.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     *    Sets the collection period (in seconds).   �R   �       Instrument Handle                ������       Status                           � 7 # �      Collection Period                  vi    	         ?�      @      >z�򚼯H?�z�G�{             -    Returns the profile data collection period.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     -    Returns the profile data collection period.   �D   �       Instrument Handle                ������       Status                           �� $� �       Collection Period                  vi    	            	           )    Sets the profile min max tracking mode.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     ,    Selects the profile min max tracking mode.   �   �       Instrument Handle                �W����       Status                           �� 5  � `    Tracking Mode                      vi    	                       0Single Profile_Single Infinite Profile_Infinite    ,    Returns the profile min max tracking mode.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     ,    Returns the profile min max tracking mode.   �   �       Instrument Handle                �^����       Status                           �� $� �       Tracking Mode                      vi    	            	            ,    Sets the profile reference line on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     ,    Sets the profile reference line on or off.   ��   �       Instrument Handle                �2����       Status                           �� +  � `    Reference Line                     vi    	                       Off Switch_Off On Switch_On    :    Returns whether the profile reference line is on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     :    Returns whether the profile reference line is on or off.   ��   �       Instrument Handle                �3����       Status                           �� $� �       Reference Line                     vi    	            	                Sets the profile reset mode.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Sets the profile reset mode.   ��   �       Instrument Handle                �����       Status                           �u +  � `    Mode                               vi    	                       HMin/Max Values Profile_MinMaxValues Sweep to Sweep Profile_SweepToSweep        Sets the profile type.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the profile type.   ��   �       Instrument Handle                �����       Status                           �r +  � `    Profile Type                       vi    	                       kNormal Profile_NORM Min and Max Profile_MINMAX Minimum Profile_MIN Maximum Profile_MAX Average Profile_AVG        Returns the profile type.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the profile type.   ��   �       Instrument Handle                �$����       Status                           �� $� �       Profile Type                       vi    	            	            '    Sets the profile Y-axis scale limits.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     &    Sets the profile Y-axis upper limit.     &    Sets the profile Y-axis lower limit.   ��   �       Instrument Handle                ������       Status                           �P 7 " �      Upper Limit                      �~ � " �      Lower Limit                        vi    	         ?�������@Y      �Y                        ?�������@Y      �Y                           *    Returns the profile Y-axis scale limits.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     )    Returns the profile Y-axis upper limit.     )    Returns the profile Y-axis lower limit.   �   �       Instrument Handle                �[����       Status                           �� $� �       Upper Limit                      �� �� �       Lower Limit                        vi    	            	           	           #    Sets the modem redial delay time.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     #    Sets the modem redial delay time.   �T   �       Instrument Handle                ������       Status                           � , ' �      Delay Time                         vi    	               
                 &    Returns the modem redial delay time.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     &    Returns the modem redial delay time.   �$   �       Instrument Handle                �e����       Status                           �� .� �       Delay                              vi    	            	                Sets the redial count.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Sets the redial count.   ��   �       Instrument Handle                �����       Status                           č 7 $ �      Redial Count                       vi    	               
                       Returns the redial count.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the redial count.   Ř   �       Instrument Handle                ������       Status                           �G $� �       Redial Count                       vi    	            	            "    Sets the conditions for the SRQ.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.    �    Input of a struct SRQConditions for the SRQ events.

struct SRQConditions
{
    ViBoolean OpComp;      // OPC
    ViBoolean ReqCont;     // RQC
    ViBoolean QuerErr;     // QYE
    ViBoolean DevDepErr;   // DDE
    ViBoolean ExeErr;      // EXE
    ViBoolean ComErr;      // CME
    ViBoolean UsrReq;      // URQ
    ViBoolean PowOn;       // PON
    ViBoolean MsgAvail;      // MAV
};   �Q   �       Instrument Handle                ǒ����       Status                           �  5  �       SRQ Events                         vi    	                �    Sets the event status enable register based on the eight bits:      
Operation Complete, Request Control, Query Error, Device Dependent Error, Execution Error, Command Error, User Request, and Power On.
     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     �    Sets the event status enable register based on the eight bits:      
Operation Complete, Request Control, Query Error, Device Dependent Error, Execution Error, Command Error, User Request, and Power On.
   �   �       Instrument Handle                �W����       Status                           �� $ ! �      Status Register Byte               vi    	              ��                   �    Returns the event status enable register based on the eight bits: Operation Complete, Request Control, Query Error, Device Dependent Error, Execution Error, Command Error, User Request, and Power On.
     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     �    Returns the event status enable register based on the eight bits: Operation Complete, Request Control, Query Error, Device Dependent Error, Execution Error, Command Error, User Request, and Power On.
   �4   �       Instrument Handle                �u����       Status                           �� -� �       Status Register Byte               vi    	            	            �    Sets the SRQ enable register based on the eight bits:               
Operation Complete, Request Control, Query Error, Device Dependent Error, Execution Error, Command Error, User Request, and Power On.
     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     �    Sets the SRQ enable register based on the eight bits:               
Operation Complete, Request Control, Query Error, Device Dependent Error, Execution Error, Command Error, User Request, and Power On.
   �G   �       Instrument Handle                ш����       Status                           �� $ ! �      SRQ Byte                           vi    	              ��                   �    Returns the SRQ enable register based on the eight bits:            
Operation Complete, Request Control, Query Error, Device Dependent Error, Execution Error, Command Error, User Request, and Power On.
     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     �    Returns the SRQ enable register based on the eight bits:            
Operation Complete, Request Control, Query Error, Device Dependent Error, Execution Error, Command Error, User Request, and Power On.
   �h   �       Instrument Handle                ԩ����       Status                           � -� �       SRQ Byte                           vi    	            	                Sets the baud rate.      9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the baud rate.   ��   �       Instrument Handle                �����       Status                           �v $  � `    RS-232 Baud Rate                   vi    	                      ^1200 Baud_1200 2400 Baud_2400 4800 Baud_4800 9600 Baud_9600 19200 Baud_19200 38400 Baud_38400        Returns the baud rate.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     (    Returns the baud rate (as an integer).   ��   �       Instrument Handle                �����       Status                           ك $� �       Baud Rate                          vi    	            	                 Sets the RS232 operating mode.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.          Sets the RS232 operating mode.   ژ &  �       Instrument Handle                ������       Status                           �G ,  � �    RS-232 Mode                        vi    	                       =External communication Mode_ExtComm Source sweep Mode_SrcSwp    #    Returns the RS232 operating mode.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     #    Returns the RS232 operating mode.   ܗ   �       Instrument Handle                ������       Status                           �F $� �       RS232 Mode                         vi    	            	                Selects the sensor offset.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Sets the offset type.         Selects which sensor.   �R   �       Instrument Handle                ޓ����       Status                           � �  � `    Offset Type                      �    � `    Sensor                             vi    	                       /Off Type_Off Fixed Type_Fixed Table Type_Table               A SensorA B SensorB        Returns the sensor offset.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     !    Returns the sensor offset type.         Selects which sensor.   �   �       Instrument Handle                ������       Status                           �Y $� �       Offset Type                      � $  � `    Sensor                             vi    	            	                       A SensorA B SensorB    !    Returns the sensor information.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.     !    Returns the sensor information.     a    Size of the array (including terminating NULL) into which the sensor information will be read.
   ��   �       Instrument Handle                � ����       Status                           � ,  � `    Sensor                           � ,� �       Sensor Info                      �� k  �       Info Size                          vi    	                       A SensorA B SensorB    	            100    &    Selects the sensor measurement mode.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.     &    Selects the sensor measurement mode.   �   �       Instrument Handle                ������       Status                           �m   � `    Sensor                           � �  � `    Measurement Mode                   vi    	                       A SensorA B SensorB               ;Default Mode_DEFAULT Modulated Mode_MOD Custom Mode_CUSTOM    &    Returns the sensor measurement mode.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     &    Returns the sensor measurement mode.         Selects which sensor.   �;   �       Instrument Handle                �|����       Status                           �� $� �       Mode                             � $  � `    Sensor                             vi    	            	                       A SensorA B SensorB    "    Returns the sensor offset value.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     "    Returns the sensor offset value.         Selects which sensor.   �v   �       Instrument Handle                �����       Status                           �% !� �       Sensor Offset                    �O !  � `    Sensor                             vi    	            	                      A SensorA B SensorB         Selects the sensor range hold.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Selects the table number.   �   �       Instrument Handle                ������       Status                           �Z   � `    Sensor                           �y �  �      Table Number                       vi    	                       A SensorA B SensorB                               Returns the sensor range hold.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the table number.         Selects which sensor.   ��   �       Instrument Handle                �%����       Status                           � �� �       Table Number                     � $  � `    InSensor                        ���� $�          OutSensor                          vi    	            	                       A SensorA B SensorB    	            $    Sets the sensor settle percentage.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.     $    Sets the sensor settle percentage.   �W   �       Instrument Handle                �����       Status                           �   � `    Sensor                           �% �  �      Settle Percentage                  vi    	                       A SensorA B SensorB ?�z�G�{@$      ?�z�G�{?�z�G�{             '    Returns the sensor settle percentage.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the sensor.         Selects which sensor.     '    Returns the sensor settle percentage.   �   �       Instrument Handle                ������       Status                           �c $� �       Out Sensor                       � $  � `    In Sensor                        �� �� �       Settle Percentage                  vi    	            	                       A SensorA B SensorB    	           (    Zeroes out noise from selected sensor.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.   �T   �       Instrument Handle                ������       Status                           � #  � `    Sensor                             vi    	                       A SensorA B SensorB    -    Configures the setup for BNC analog output.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which port.         Input for start voltage.         Input for stop voltage.         Input for start units.         Input for stop units.         Input for start value.         Input for stop value.   �+   �       Instrument Handle                �l����       Status                           ��  � � `    Port                             �� ` b �      Start Voltage                    � � b �      Stop Voltage                     �: vo � `    Start Value Units                �Z �o � `    Stop Value Units                 �y Hz �      Start Value                      �� �z �      Stop Value                         vi    	                       1 Port_1 2 Port_2 ?�      �      ��      �                ?�      �      ��      �                              :W BNC_W DB BNC_DB DBM BNC_DBM DBUV BNC_DBUV DBMV BNC_DBMV               :W BNC_W DB BNC_DB DBM BNC_DBM DBUV BNC_DBUV DBMV BNC_DBMV ?�      �      ��                        ?�      �      ��                           #    Configures the calibration setup.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Selects the source.         Sets the cal frequency.         Selects the frequency units.         Sets the cal adjust value.         Sets the cal adjust units.         Sets the cal manual value.         Selects the cal manual units.         Sets the table number.   �1   �       Instrument Handle                �r����       Status                           �� %  � `    Sensor                           �� a  � `    Source                           � �  �      Cal-F Frequency                  �= �  � `    Cal-F Frequency Units            �c % � �      Cal-F Adjust Value               �� a � � `    Cal-F Adjust Units               �� � � �      Cal-F Manual Value               �� � � � `    Cal-F Manual Units               �� � 	�      Table Number                       vi    	                       A SensorA B SensorB               1Frequency Src_FREQ Manual Src_MAN V/GHZ Src_VGHZ ?�      �      ��      @I                             .Hz Frq_Hz kHz Frq_kHz MHz Frq_MHz GHz Frq_GHz ?�      �      ��      @Y                              PCT Cal_PCT DBM Cal_DBM ?�      �      ��      @Y                              PCT Cal_PCT DBM Cal_DBM       n                       Configures the channel setup.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which channel.     "    Selects the input configuration.         Sets the resolution.     "    Sets min/max tracking on or off.         Sets the units.      �       Instrument Handle                ]����       Status                           � Q  � `    Channel                          � Q � � `    Input Configuration               �  � `    Decimal Resolution               3 � � � `    Min/Max Tracking                 ] � � � `    Units                              vi    	                       1 Channel_1 2 Channel_2               tOFF Config_OFF A Config_A B Config_B V Config_V A-B Config_A_B B-A Config_B_A A/B Config_AslashB B/A Config_BslashA              1 Res_1 2 Res_2 3 Res_3               Off Switch_Off On Switch_On               :Watts Chan_Watts dB Chan_dB dBuV Chan_dBuV dBmV Chan_dBmV        Configures the limits setup.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which channel.     "    Sets the higher limit on or off.     !    Sets the lower limit on or off.         Sets the high limit value.         Sets the low limit value.         Sets the fail beep on or off.     )    Sets the fail indicator hold on or off.   f   �       Instrument Handle                �����       Status                             � � `    Channel                          5 � ` � `    Higher Limit                     _ � ` � `    Lower Limit                      � O � �      High Limits                      � � � �      Low Limits                       � �w � `    Fail Beep                        � �w � `    Fail Indicator Hold                vi    	                       1 Channel_1 2 Channel_2               Off Switch_Off On Switch_On               Off Switch_Off On Switch_On ?�      �      ��                        ?�      �      ��                                      Off Switch_Off On Switch_On               Off Switch_Off On Switch_On    &    Configures the sensor average setup.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Sets the averaging type.         Sets the mode.         Sets the number of reading.   m   �       Instrument Handle                �����       Status                            "  � `    Sensor Selector                  ; a  � `    Averaging Type                   ] �  � `    Mode                             u � # �      Number of Readings                 vi    	                       A SensorA B SensorB               QOff TypeMode_Off Moving TypeMode_Mov Repeat TypeMode_Rpt Automatic TypeMode_Auto               <Off Mode_Off Low Mode_Low Medium Mode_Medium High Mode_High             @               Configures the sensor setup.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Sets the measurement mode.         Sets the settle percentage.         Sets the table number.   �   �       Instrument Handle                6����       Status                           � "  � `    Sensor Selector                  � a  � `    Measurement Mode                 � � " �      Settle Percentage                 � # �      Table Number                       vi    	                       A SensorA B SensorB               ;Default Mode_DEFAULT Modulated Mode_MOD Custom Mode_CUSTOM ?�������@$                                                             Configures the trigger setup.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects profile or readout.         Selects which channel.         Sets the trigger source.         Sets the gate width.         Sets the delay value.          Sets trigger arming on or off.         Sets the trigger type.         Sets the trigger level.     !    Sets the external trigger type.   R   �       Instrument Handle                �����       Status                            +  � `    Profile/Readout                  & h  � `    Channel                          F + � � `    Trigger Source                   h h � �      Gate Width                       � � � �      Delay Value                      � � � � `    Trigger Arming                   � +1 � `    Trigger Type                     � h< �      Trigger Level                     �1 	� `    Ext. Trigger Type                  vi    	                       &Profile PR_Profile Readout PR_Readout               1 Channel_1 2 Channel_2              rSensor A Profile_INTA Sensor B Profile_INTB External Profile_EXTTTL Manual Profile_MANUAL Continuous Profile_CONT ?�      �      ��                        ?�      �      ��                                      Off Switch_Off On Switch_On               $Rise Profile_Rise Fall Profile_Fall ?�      �      ��      �.                              $Rise Profile_Rise Fall Profile_Fall        Sets the saved set naming.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Sets the store number.         Sets the text.   �   �       Instrument Handle                �����       Status                           R 7 $ �      Store Number                     r �  �       Text                               vi    	               
                         Returns the saved set naming.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the text.         Sets the store number.   �   �       Instrument Handle                �����       Status                           a $� �       Text                             | $ # �      Store Number                       vi    	            	               
                     Sets the saved setup.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Sets the store number.         Sets the setup data.     Y    Input for number of bytes to be loaded. Use number of bytes read from Saved Setup Read.   �   �       Instrument Handle                ����       Status                           s 7 $ �      Setup Number                     � �  �       Setup Data to Meter              � �  �       Number of Bytes                    vi    	               
                              Returns the saved setup.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the setup data.         Sets the store number.     e    Output for number of bytes read from the power meter. Use this number when loading the Saved Setup.     3    Maximum number of data bytes to put in the array.    n   �       Instrument Handle                 �����       Status                           ! $� �       Setup Data                       !> $ # �      Store Number                     !^ �� �       Number of Bytes                  !� � # �      Data Size                          vi    	            	               
                 	            ���      �               Returns the self test status.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     S    Returns the status of Flash: 0000 passed
                             ffff failed     U    Returns the status of CALDAT: 0000 passed
                              ffff failed     _    Returns the status of Personality: 0000 passed
                                   ffff failed     O    Returns the status of RAM: 0000 passed
                           ffff failed     �    Returns the status of Nonvolatile RAM: 

    0000 passed
    0001 software version fail
    0002 current store fail
    0004 saved store fail
    0008 secure mode fail
    ffff read failure     O    Returns the status of LCD: 0000 passed
                           ffff failed     O    Returns the status of KBD: 0000 passed
                           ffff failed     T    Returns the status of DSP: 0000 passed
                           else FATAL error   #�   �       Instrument Handle                $����       Status                           $r ( � �       Flash                            $� p � �       CALDAT                           %* � � �       Personality                      %� � �       RAM                              %� (, �       Nonvolatile                      &� p, �       LCD                              ' �, �       KBD                              '], �       DSP                                vi    	            	            	            	            	            	            	            	            	                Startup self test.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     E    Returns the status result (failed, passed and running, or running).   *Y   �       Instrument Handle                *�����       Status                           + ,� �       Startup Status                     vi    	            	            �    Returns the GPIB status, the status of both channels, and the status of both sensors.                                                    
     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Output of operating mode.    j    Output for the GPIB status.

struct GPIBStatus
{
    ViUInt8 TrgMde;
    ViUInt8 GrpTrgMde;
    ViUInt8 CalSt;
    ViUInt8 DspComSt;
    ViUInt8 FastSt;
};

enum GETTriggerMode {Mode_Hold, Mode_Immediate,
                     Mode_WithSettlingDelay, Mode_FreeRun};
enum GroupTriggerMode {Mode_GT0, Mode_GT1, Mode_GT2};
enum SwitchOnOff {Switch_Off, Switch_On};    �    Output for the status of channel 1.

struct ChannelStatus
{
    ViUInt8 InptCnfg;
    ViUInt8 Unts;
    ViUInt8 RelSt;
    ViUInt8 LLSt;
    ViUInt8 HLSt;
};

enum ChannelInputConfig {Config_OFF, Config_A, Config_B, 
                         Config_V, Config_A_B, Config_B_A,
                         Config_AslashB, Config_BslashA};
enum ChannelUnits {Chan_Watts, Chan_dB, Chan_dBuV, Chan_dBmV};
enum SwitchOnOff {Switch_On, Switch_Off};    �    Output for the status of channel 2.

struct ChannelStatus
{
    ViUInt8 InptCnfg;
    ViUInt8 Unts;
    ViUInt8 RelSt;
    ViUInt8 LLSt;
    ViUInt8 HLSt;
};

enum ChannelInputConfig {Config_OFF, Config_A, Config_B, 
                         Config_V, Config_A_B, Config_B_A,
                         Config_AslashB, Config_BslashA};
enum ChannelUnits {Chan_Watts, Chan_dB, Chan_dBuV, Chan_dBmV};
enum SwitchOnOff {Switch_On, Switch_Off};    �    Output for the status of sensor A.

struct SensorStatus
{
    ViUInt16 MeasMde;
    ViUInt16 RngeHld;  //not enum
    ViUInt16 AvgMde;
    ViUInt16 AvgNum;   //not enum
    ViUInt16 LLAvg;
    ViUInt16 ZerSt;
};

enum SensorMeasMode {Mode_DEFAULT, Mode_MOD, Mode_CUSTOM};
enum AveragingTypeMode {TypeMode_Off, TypeMode_Mov,
                        TypeMode_Rpt, TypeMode_Auto};;
enum AveragingMode {Mode_Off, Mode_Low, Mode_Medium, Mode_High};
enum ZeroedState {Not_Zeroed, Zeroed_Zeroed};
    �    Output for the status of sensor B.

struct SensorStatus
{
    ViUInt16 MeasMde;
    ViUInt16 RngeHld;   //not enum
    ViUInt16 AvgMde;
    ViUInt16 AvgNum;    //not enum
    ViUInt16 LLAvg;
    ViUInt16 ZerSt;
};

enum SensorMeasMode {Mode_DEFAULT, Mode_MOD, Mode_CUSTOM};
enum AveragingTypeMode {TypeMode_Off, TypeMode_Mov,
                        TypeMode_Rpt, TypeMode_Auto};;
enum AveragingMode {Mode_Off, Mode_Low, Mode_Medium, Mode_High};
enum ZeroedState {Not_Zeroed, Zeroed_Zeroed};
   ,�   �       Instrument Handle                ,�����       Status                           -U  � �       Operating Mode                   -x by �       GPIB Status                      .� b V �       Channel  1 Status                0� � V �       Channel  2 Status                2j b � �       Sensor A Status                  4^ � � �       Sensor B Status                    vi    	            	            	            	            	            	            	            "    Returns the source sweep status.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the mode.         Returns the start power.         Returns the stop power.         Returns the start frequency.         Returns the stop frequency.   8�   �       Instrument Handle                8�����       Status                           9/ 1 �       Mode                             9J � �       Start Power                      9l Y� �       Stop Power                       9� �� �       Start Frequency                  9� �� �       Stop Frequency                     vi    	            	            	           	           	           	               Sets the source sweep mode.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Sets the source sweep mode.   ;�   �       Instrument Handle                ;�����       Status                           <m +  � `    Source Sweep Mode                  vi    	                       %Frequency Mode_FREQ Power Mode_POWER         Returns the source sweep mode.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.          Returns the source sweep mode.   =�   �       Instrument Handle                =�����       Status                           >N "� �       Mode                               vi    	            	            (    Sets the source sweep start frequency.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     (    Sets the source sweep start frequency.   ?c   �       Instrument Handle                ?�����       Status                           @ $   �      Start Frequency                    vi    	         ?�      A�-�@   @È     @È                  +    Returns the source sweep start frequency.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     +    Returns the source sweep start frequency.   AQ   �       Instrument Handle                A�����       Status                           B  "� �       Start Frequency                    vi    	            	           '    Sets the source sweep stop frequency.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     '    Sets the source sweep stop frequency.   C   �       Instrument Handle                C`����       Status                           C� $   �      Stop Frequency                     vi    	         ?�      A�-�@   @È     @È                  *    Returns the source sweep stop frequency.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     *    Returns the source sweep stop frequency.   E   �       Instrument Handle                EL����       Status                           E� "� �       Stop Frequency                     vi    	            	           $    Sets the source sweep start power.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     $    Sets the source sweep start power.   F�   �       Instrument Handle                G����       Status                           G� $   �      Start Power                        vi    	         ?�      �      ��      �$                   '    Returns the source sweep start power.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     '    Returns the source sweep start power.   H�   �       Instrument Handle                H�����       Status                           Ij "� �       Start Power                        vi    	            	           #    Sets the source sweep stop power.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     #    Sets the source sweep stop power.   J�   �       Instrument Handle                J�����       Status                           K0 $   �      Stop Power                         vi    	         ?�      �      ��      @$                   &    Returns the source sweep stop power.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     &    Returns the source sweep stop power.   Le   �       Instrument Handle                L�����       Status                           M "� �       Stop Power                         vi    	            	           "    Sets the sweep averaging points.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which sensor.         Selects the points.   N)   �       Instrument Handle                Nj����       Status                           N�   � `    Sensor                           N� �  �      Points                             vi    	                       A SensorA B SensorB                        %    Returns the sweep averaging points.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the sensor.         Selects which sensor.         Returns the points.   Pa   �       Instrument Handle                P�����       Status                           Q $� �       Out Sensor                       Q- $  � `    In Sensor                        QL �� �       Points                             vi    	            	                       A SensorA B SensorB    	                Resets the sweep averaging.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.   R�   �       Instrument Handle                S%����       Status                             vi    	            !    Sets the sweep averaging state.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     !    Sets the sweep averaging state.   T8   �       Instrument Handle                Ty����       Status                           T� +  � `    Sweep Averaging                    vi    	                       Off Switch_Off On Switch_On    $    Returns the sweep averaging state.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     $    Returns the sweep averaging state.   V   �       Instrument Handle                VY����       Status                           V� $� �       Sweep Averaging                    vi    	            	            "    Sets the text display on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     "    Sets the text display on or off.   W�   �       Instrument Handle                X����       Status                           X� +  � `    Text Display                       vi    	                       Off Switch_Off On Switch_On    0    Returns whether the text display is on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     0    Returns whether the text display is on or off.   Y�   �       Instrument Handle                Z����       Status                           Zv $� �       Text Display                       vi    	            	                Sets the text.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Input for text.   [�   �       Instrument Handle                [�����       Status                           \2 +  �       Text                               vi    	                    Returns the text.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Output for text.   ]   �       Instrument Handle                ]\����       Status                           ]� $� �       Text                               vi    	            	                Triggers a single reading.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which channel.     "    Returns the readout mode result.         Sets trigger mode.     "    Returns the profile mode result.   ^�   �       Instrument Handle                _����       Status                           _t ,  � `    Channel Selector                 _� ,� �       Readout Mode Result              _� �  �      Trigger                          _� �� �       Profile Mode Result                vi    	                       1 Channel_1 2 Channel_2    	                      VTrigger Immediately Mode_Immediate Trigger with Settling Delay Mode_WithSettlingDelay    	            $    Sets the trigger arming on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     $    Sets the trigger arming on or off.         Selects which channel.   b$   �       Instrument Handle                be����       Status                           b� �  � `    Trigger Arming                   b� +  � `    Channel                            vi    	                       Off Switch_Off On Switch_On               (1 Channel 1 2 Channel 2 1&2 Channel_1_2    2    Returns whether the trigger arming is on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     2    Returns whether the trigger arming is on or off.         Selects which channel.         Returns the channel.   d�   �       Instrument Handle                d�����       Status                           eP �� �       Trigger Arming                   e� (  � `    In Channel                       e� (� �       Out Channel                        vi    	            	                       (1 Channel_1 2 Channel_2 1&2 Channel_1_2    	                Sets the trigger delay.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which channel.         Sets the trigger delay.   gS   �       Instrument Handle                g�����       Status                           h   � `    Channel                          h" �  �      Trigger Sample Delay               vi    	                       (1 Channel 1 2 Channel 2 1&2 Channel_1_2 ?�z�G�{?�                                       Returns the trigger delay.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the channel.         Selects which channel.         Returns the trigger delay.   i�   �       Instrument Handle                i�����       Status                           j^ $� �       Out Channel                      j| $  � `    In Channel                       j� �� �       Trigger Delay                      vi    	            	                       (1 Channel_1 2 Channel_2 1&2 Channel_1_2    	           !    Sets the trigger external edge.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which channel.         Sets the trigger type.   lS   �       Instrument Handle                l�����       Status                           m   � `    Channel                          m" �  � `    Trigger Type                       vi    	                       (1 Channel 1 2 Channel 2 1&2 Channel_1_2               $Rise Profile_Rise Fall Profile_Fall    $    Returns the trigger external edge.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the channel.         Selects which channel.     $    Returns the trigger external edge.   n�   �       Instrument Handle                n�����       Status                           om $� �       Out Channel                      o� $  � `    In Channel                       o� �� �       Trigger Type                       vi    	            	                       (1 Channel_1 2 Channel_2 1&2 Channel_1_2    	                Sets the trigger gate width.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     +    Sets the trigger gate width (in seconds).         Selects which channel.   qg   �       Instrument Handle                q�����       Status                           r � ! �      Trigger Gate Width               rI 4  � `    Channel                            vi    	         ?PbM���@      >Ey��0�:>Ey��0�:                        (1 Channel 1 2 Channel 2 1&2 Channel_1_2    !    Returns the trigger gate width.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     !    Returns the trigger gate width.         Selects which channel.         Returns the channel.   s�   �       Instrument Handle                t����       Status                           t� �� �       Gate Width                       t� .  � `    In Channel                       t� .� �       Out Channel                        vi    	            	                      (1 Channel_1 2 Channel_2 1&2 Channel_1_2    	                Sets the trigger level.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Sets the trigger level.         Selects which channel.   v{   �       Instrument Handle                v�����       Status                           w* � ( �      Trigger Level                    wK 3  � `    Channel                            vi    	         ?�      @4      �>                                      (1 Channel 1 2 Channel 2 1&2 Channel_1_2        Returns the trigger level.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the trigger level.         Selects which channel.         Returns the channel.   x�   �       Instrument Handle                y����       Status                           y� �� �       Trigger Level                    y�   � `    In Channel                       y� � �       Out Channel                        vi    	            	                      (1 Channel_1 2 Channel_2 1&2 Channel_1_2    	            %    Sets the trigger linking on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     %    Sets the trigger linking on or off.   {   �       Instrument Handle                {�����       Status                           |. +  � `    Trigger Linking                    vi    	                      Off Switch_Off On Switch_On    3    Returns whether the trigger linking is on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     3    Returns whether the trigger linking is on or off.   }r   �       Instrument Handle                }�����       Status                           ~! $� �       Trigger Linking                    vi    	            	                Sets the trigger mode.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the trigger mode.   9   �       Instrument Handle                z����       Status                           � +  � `    Trigger Mode                       vi    	                       2Individual Mode_Individual Combined Mode_Combined        Returns the trigger mode.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the trigger mode.   �    �       Instrument Handle                �a����       Status                           �� $� �       Mode                               vi    	            	                Sets the trigger source.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects which channel.         Selects the trigger source.   ��   �       Instrument Handle                �����       Status                           �� 3  � `    Channel                          �� �  � `    Trigger Source                     vi    	                       (1 Channel 1 2 Channel 2 1&2 Channel_1_2              rSensor A Profile_INTA Sensor B Profile_INTB External Profile_EXTTTL Manual Profile_MANUAL Continuous Profile_CONT        Returns the trigger source.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the trigger source.         Selects which channel.         Returns the channel.   ��   �       Instrument Handle                ������       Status                           �7 �� �       Trigger Source                   �\   � `    In Channel                       �| � �       Out Channel                        vi    	            	                       (1 Channel_1 2 Channel_2 1&2 Channel_1_2    	                Sets the trigger type.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Selects the trigger type.         Selects which channel.   �$   �       Instrument Handle                �e����       Status                           �� �  � `    Trigger                          �� (  � `    Channel                            vi    	                       $Rise Profile_Rise Fall Profile_Fall               (1 Channel 1 2 Channel 2 1&2 Channel_1_2        Returns the trigger type.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.         Returns the trigger type.         Selects which channel.         Returns the channel.   ��   �       Instrument Handle                ������       Status                           �8 �� �       Trigger                          �[ +  � `    In Channel                       �{ +� �       Out Channel                        vi    	            	                       (1 Channel_1 2 Channel_2 1&2 Channel_1_2    	            )    Sets the profile external trigger edge.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     )    Sets the profile external trigger edge.   �4   �       Instrument Handle                �u����       Status                           �� 5  � `    Trigger                            vi    	                       $Rise Profile_Rise Fall Profile_Fall    ,    Returns the profile external trigger edge.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     ,    Returns the profile external trigger edge.   �,   �       Instrument Handle                �m����       Status                           �� $� �       Trigger                            vi    	            	            :    Sets the profile trigger to armed (on) or unarmed (off).     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     :    Sets the profile trigger to armed (on) or unarmed (off).   �   �       Instrument Handle                �O����       Status                           �� +  � `    Trigger State                      vi    	                       Off Switch_Off On Switch_On    3    Returns whether the profile trigger is on or off.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     3    Returns whether the profile trigger is on or off.   �   �       Instrument Handle                �W����       Status                           �� $� �       Trigger State                      vi    	            	            !    Sets the profile trigger delay.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     !    Sets the profile trigger delay.   ��   �       Instrument Handle                �'����       Status                           �� 7 # �      Time Delay                         vi    	         ?PbM���?�                                   $    Returns the profile trigger delay.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     $    Returns the profile trigger delay.   ��   �       Instrument Handle                �����       Status                           �u $� �       Time Delay                         vi    	            	           &    Sets the profile trigger gate width.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     3    Sets the profile trigger gate width (in seconds).   ��   �       Instrument Handle                ������       Status                           �; 7 $ �      Gate Width                         vi    	         ?PbM���@      >z�򚼯H>z�򚼯H             )    Returns the profile trigger gate width.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     )    Returns the profile trigger gate width.   ��   �       Instrument Handle                ������       Status                           �2 $� �       Gate Width                         vi    	            	           !    Sets the profile trigger level.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     !    Sets the profile trigger level.   �I   �       Instrument Handle                ������       Status                           �� 7 $ �      Trigger Level                      vi    	         ?PbM���@4      �>                           &    Returns the profile trigger level.       9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     &    Returns the profile trigger level.     �+   �       Instrument Handle                �l����       Status                           �� $� �       Trigger Level                      vi    	            	           "    Sets the profile trigger source.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     %    Selects the profile trigger source.   ��   �       Instrument Handle                �0����       Status                           �� +  � `    Trigger Source                     vi    	                       rSensor A Profile_INTA Sensor B Profile_INTB External Profile_EXTTTL Manual Profile_MANUAL Continuous Profile_CONT    %    Returns the profile trigger source.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     %    Returns the profile trigger source.   �*   �       Instrument Handle                �k����       Status                           �� $� �       Trigger Source                     vi    	            	                 Sets the profile trigger type.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     #    Selects the profile trigger type.   ��   �       Instrument Handle                �,����       Status                           �� +  � `    Trigger                            vi    	                       $Rise Profile_Rise Fall Profile_Fall    #    Returns the profile trigger type.     9    Sets the instrument handle for a particular vi session.     f    Reports the status of the operation.

0 represents a success.
A negative number represents an error.     #    Returns the profile trigger type.   ��   �       Instrument Handle                �����       Status                           �� $� �       Trigger                            vi    	            	         ����         	�  
k     K.    AutoScaling                     ����         
�  �     K.    Close                           ����         =  �     K.    Continue                        ����         w  �     K.    Initialize                      ����         W  &     K.    InitializeModem                 ����         �  �     K.    Reset                           ����         4       K.    ResetToFactory                  ����         �  g     K.    ZeroAnalogInput                 ����         �  �     K.    SetAutodialEnableForPower       ����         �  �     K.    GetAutodialEnableForPower       ����         �  �     K.    SetAutodialEnableForRange       ����         �  �     K.    GetAutodialEnableForRange       ����         {  v     K.    SetAutodialEnable               ����          ^  !u     K.    GetAutodialEnable               ����         "2  #/     K.    SetAutodialPhoneNumber          ����         #�  $�     K.    GetAutodialPhoneNumber          ����         %�  &�     K.    SetAveragingAutoLowLevel        ����         (+  )�     K.    GetAveragingAutoLowLevel        ����         *�  ,      K.    AveragingMoving                 ����         ,�  .!     K.    SetAveragingSetup               ����         /�  1o     K.    GetAveragingSetup               ����         3  4     K.    AvgBetweenProfileCursors        ����         4�  5�     K.    SetBatteryAutoTurnOffMinutes    ����         6�  7�     K.    GetBatteryAutoTurnOffMinutes    ����         8�  9�     K.    SetBatteryAutoTurnOff           ����         :�  ;�     K.    GetBatteryAutoTurnOff           ����         <�  =�     K.    SetBackLightTimer               ����         >h  ?Y     K.    GetBackLightTimer               ����         @  A     K.    SetBatteryLCDBackLightMode      ����         B   C     K.    GetBatteryLCDBackLightMode      ����         C�  D�     K.    SetBNCOutPortChannel            ����         F$  GN     K.    GetBNCOutPortChannel            ����         Hk  I}     K.    SetBNCOutputMode                ����         Ky  M      K.    GetBNCOutputMode                ����         Nd  O�     K.    SetBNCPassLevel                 ����         P�  Q�     K.    GetBNCPassLevel                 ����         R�  S�     K.    SetBNCRFBlanking                ����         T�  U�     K.    GetBNCRFBlanking                ����         V�  W�     K.    SetBNCAnalogOutDisplayStart     ����         Y�  Z�     K.    GetBNCAnalogOutDisplayStart     ����         \�  ]�     K.    SetBNCAnalogOutDisplayStop      ����         _�  `�     K.    GetBNCAnalogOutDisplayStop      ����         b�  c�     K.    SetBNCAnalogOutputStartVolt     ����         d�  f@     K.    GetBNCAnalogOutputStartVolt     ����         g�  h�     K.    SetBNCAnalogOutputStopVolt      ����         i�  kF     K.    GetBNCAnalogOutputStopVolt      ����         l�  n     K.    CalAddEntry                     ����         ps  q�     K.    CalCurrentValue                 ����         r�  t     K.    CalValidityCheck                ����         uh  vV     K.    CalibrateSensor                 ����         w*  xU     K.    SetCalAdjust                    ����         y�  {T     K.    GetCalAdjust                    ����         |�  }�     K.    SetCalDisplayUnits              ����         *  �w     K.    GetCalDisplayUnits              ����         ��  ��     K.    SetCalManual                    ����         ��  ��     K.    GetCalManual                    ����         ��  ��     K.    SetCalSource                    ����         ��  �0     K.    GetCalSource                    ����         ��  �5     K.    RangeCalibratorDataQuery        ����         �  �(     K.    SetRFRefCalibratorOnOff         ����         �  �-     K.    GetRFRefCalibratorOnOff         ����         ��  �     K.    SetCalFrequency                 ����         ��  �      K.    GetCalFrequency                 ����         ��  ��     K.    SetCalStartFrequency            ����         �  �#     K.    GetCalStartFrequency            ����         �8  �P     K.    SetCalStopFrequency             ����         ��  ��     K.    GetCalStopFrequency             ����         ��  ��     K.    SetCalStartVoltage              ����         �   �     K.    GetCalStartVoltage              ����         �-  �B     K.    SetCalStopVoltage               ����         �v  ��     K.    GetCalStopVoltage               ����         ��  ��     K.    CalTableClear                   ����         ��  ��     K.    SetCalTableIdentity             ����         �S  ��     K.    GetCalTableIdentity             ����         �T  ��     K.    SetCalTableLoadRead             ����         �  ��     K.    GetCalTableLoadRead             ����         ��  ��     K.    CalTablePreset                  ����         �  ��     K.    CalTableSave                    ����         �Y  �f     K.    CalTableSelect                  ����         ��  ��     K.    CalTablesCount                  ����         º  ��     K.    CalTablesUsed                   ����         ��  �     K.    SetChannelInputConfig           ����         ��  �4     K.    GetChannelInputConfig           ����         ʘ  ˬ     K.    SetChannelResolution            ����         ��  �3     K.    GetChannelResolution            ����         ϗ  С     K.    SetChannelUnits                 ����         ��  �6     K.    GetChannelUnits                 ����         Ԛ  Ս     K.    SetProfileChannelSelection      ����         �o  �k     K.    GetProfileChannelSelection      ����         �(  �,     K.    Cursor                          ����         �b  �c     K.    SetDisplayGraphCursor           ����         �?  �[     K.    GetDisplayGraphCursor           ����         �  �'     K.    SetLinkGraphCursors             ����         �  �8     K.    GetLinkGraphCursors             ����         ��  ��     K.    SetDataDisplayTime              ����         �C  �D     K.    GetDataDisplayTime              ����         �  ��     K.    DisplayContrastStep             ����         ��  ��     K.    SetDisplayContrast              ����         �  �     K.    GetDisplayContrast              ����         �D  �=     K.    SetDisplayOnOff                 ����         �  �-     K.    GetDisplayOnOff                 ����         ��  ��     K.    SetDisplayTriggerDelay          ����         ��  ��     K.    GetDisplayTriggerDelay          ����         �  ��     K.    Display                         ����         �W  �n     K.    SetFrequencyOffsetDisplay       ����         �J  ��     K.    GetFrequencyOffsetDisplay       ����         �>  �Q     K.    SetPeakMeterDisplay             ����         �@  ��     K.    GetPeakMeterDisplay             ����         �F  �[     K.    SetDutyCycleState               ����         ��  �     K.    GetDutyCycleState               ����        ( :     K.    SetDutyCycle                    ����        n �     K.    GetDutyCycle                    ����        �      K.    SetEntryErrorBeep               ����        � 
     K.    GetEntryErrorBeep               ����        
� d 	    K.    ErrorListing                    ����        � �     K.    SetFailBeepOnOff                ����         b     K.    GetFailBeepOnOff                ����        � �     K.    SetFailIndicatorHold            ����        7 �     K.    GetFailIndicatorHold            ����        �      K.    GETConfiguration                ����         ~ !m     K.    SetGPIBAddress                  ����        "5 #*     K.    GetGPIBAddress                  ����        #� $�     K.    GPIBGETTriggerType              ����        %� '      K.    GPIBResponseBuffering           ����        '� (�     K.    GPIBTriggerMode                 ����        *~ ,� 
    K.    GraphDataInformation            ����        / 0     K.    SetGraphPretriggerPercentage    ����        0� 1�     K.    GetGraphPretriggerPercentage    ����        2� 3|     K.    ResetMinMaxGraph                ����        3� 4�     K.    MinMaxTrackingReset             ����        5� 6�     K.    Identification                  ����        7� 8�     K.    TestSelf                        ����        9| :r     K.    SetOperationComplete            ����        :� <     K.    GetOperationComplete            ����        <� =�     K.    ClearStatusBytes                ����        > >�     K.    SetEventStatusByteEnable        ����        ?� @�     K.    GetEventStatusByteEnable        ����        A� B�     K.    EventStatusRegister             ����        CD DD     K.    SetServiceRequestRegister       ����        E F     K.    GetServiceRequestRegister       ����        F� G�     K.    StatusByteRegister              ����        H� I�     K.    GroupExecuteTrigger             ����        JN KU     K.    SaveInstrumentSetup             ����        L M*     K.    RecallInstrumentSetup           ����        M� O2     K.    SetLimitsOnOff                  ����        P� R?     K.    GetLimitsOnOff                  ����        S� T�     K.    SetLimitsSetting                ����        Vg W�     K.    GetLimitsSetting                ����        X� Y�     K.    Emulation                       ����        [ [�     K.    Fast                            ����        \� ]�     K.    SetHold                         ����        ^� _�     K.    GetHold                         ����        `a aj     K.    SetKeyClickSoundOnOff           ����        bF ck     K.    GetKeyClickSoundOnOff           ����        d( eM     K.    SetMinMaxTracking               ����        f� g�     K.    GetMinMaxTracking               ����        i[ jQ     K.    SetOperationMode                ����        kk ld     K.    GetOperationMode                ����        m! nC     K.    SetRelativeControl              ����        o� p�     K.    GetRelativeControl              ����        r s)     K.    SetSecureSystemState            ����        t u@     K.    GetSecureSystemState            ����        u� w     K.    SetOffsetFixedValue             ����        xK y�     K.    GetOffsetFixedValue             ����        z� {�     K.    OffsetTableClear                ����        |� ~     K.    SetOffsetTableOutputUpdate      ����        � ��     K.    GetOffsetTableOutputUpdate      ����        �� ��     K.    SetOffsetTable                  ����        �� ��     K.    GetOffsetTable                  ����        �L �     K.    OutputGraphBinaryData           ����        �� ��     K.    OutputGraphData                 ����        �� ��     K.    OutputMaxGraphBinaryData        ����        �	 ��     K.    OutputMaxGraphData              ����        �U �,     K.    OutputMinGraphBinaryData        ����        �� �x     K.    OutputMinGraphData              ����        �� �J     K.    OutputNumberOfChannelReadings   ����        �� ��     K.    OutputOneReading                ����        �� ��     K.    OutputValidSampleArray          ����        �F �0     K.    SetACModOutputConfig            ����        �, �     K.    GetACModOutputConfig            ����        �� ��     K.    SetBlankingInputPolarity        ����        �� ��     K.    GetBlankingInputPolarity        ����        �� �N     K.    Print                           ����        �� ��     K.    SetPrinterSelect                ����        �� ��     K.    GetPrinterSelect                ����        �W �x     K.    SetConnectPointsOnProfile       ����        �T ��     K.    GetConnectPointsOnProfile       ����        �M �\     K.    SetProfileConnectPoints         ����        �8 �c     K.    GetProfileConnectPoints         ����        �  �3     K.    SetProfileDataCollectionPeriod  ����        � �(     K.    GetProfileDataCollectionPeriod  ����        �� ��     K.    SetProfileMinMaxTrackingMode    ����        �� �      K.    GetProfileMinMaxTrackingMode    ����        �� ��     K.    SetProfileReferenceLineState    ����        �� ��     K.    GetProfileReferenceLineState    ����        �� ��     K.    ProfileReset                    ����        �� ��     K.    SetProfileType                  ����        �� ��     K.    GetProfileType                  ����        �r ��     K.    SetProfileYAxisScale            ����        �� �+     K.    GetProfileYAxisScale            ����        �) �.     K.    SetModemRedialDelayTime         ����        �� �     K.    GetModemRedialDelayTime         ����        þ ĭ     K.    SetRedialCount                  ����        �u �j     K.    GetRedialCount                  ����        �' Ɍ     K.    ConditionsForSRQ                ����        �A ̚     K.    SetQueryEventStatusRegister     ����        �b ϵ     K.    GetQueryEventStatusRegister     ����        �r ��     K.    SetQuerySRQEnableRegister       ����        ӓ ��     K.    GetQuerySRQEnableRegister       ����        ֩ ז     K.    SetRS232BaudRate                ����        ش ٳ     K.    GetRS232BaudRate                ����        �p �o     K.    SetRS232OperatingMode           ����        �l �q     K.    GetRS232OperatingMode           ����        �. �?     K.    SetSelectSensorOffset           ����        �� �     K.    GetSelectSensorOffset           ����        � �?     K.    SensorInformation               ����        � �     K.    SetSensorMeasurementMode        ����        � �7     K.    GetSensorMeasurementMode        ����        �L �n     K.    SensorOffsetValue               ����        � �     K.    SetSensorRangeHold              ����        � ��     K.    GetSensorRangeHold              ����        �+ �Q     K.    SetSensorSettlePercentage       ����        � ��     K.    GetSensorSettlePercentage       ����        �$ �"     K.    ZeroSensor                      ����        �� �� 	    K.    SetupBNCAnalogOutput            ����        � �     K.    SetupCalFactorConfig            ����        � v     K.    SetupChannelConfig              ����        @ 	' 	    K.    SetupLimits                     ����        ? �     K.    SetupSensorAverage              ����        � ,     K.    SetupSensorConfig               ����        + 7     K.    SetupTriggerConfig              ����         �     K.    SetSavedSetNaming               ����        � �     K.    GetSavedSetNaming               ����        �      K.    LoadSavedSetup                  ����         L "     K.    ReadSavedSetup                  ����        #� '� 
    K.    SelfTestStatus                  ����        *= +U     K.    Start                           ����        , 6T     K.    StatusMessage                   ����        8V 9�     K.    SourceSweepModeStatusRequest    ����        ;� <�     K.    SetSourceSweepMode              ����        =w >v     K.    GetSourceSweepMode              ����        ?3 @B     K.    SetSourceSweepStartFrequency    ����        A B3     K.    GetSourceSweepStartFrequency    ����        B� C�     K.    SetSourceSweepStopFrequency     ����        D� E�     K.    GetSourceSweepStopFrequency     ����        F� G�     K.    SetSourceSweepStartPower        ����        H� I�     K.    GetSourceSweepStartPower        ����        JV K[     K.    SetSourceSweepStopPower         ����        L7 MB     K.    GetSourceSweepStopPower         ����        M� O     K.    SetSweepAveragingPoints         ����        P4 Qi     K.    GetSweepAveragingPoints         ����        R� S�     K.    ResetSweepAveraging             ����        T U     K.    SetSweepAveragingState          ����        U� V�     K.    GetSweepAveragingState          ����        W� X�     K.    SetTextDisplay                  ����        Y� Z�     K.    GetTextDisplay                  ����        [k \K     K.    SetText                         ����        ]  ]�     K.    GetText                         ����        ^� `     K.    TriggerAReading                 ����        a� c     K.    SetTriggerArming                ����        dg e�     K.    GetTriggerArming                ����        g2 hC     K.    SetTriggerDelay                 ����        i� j�     K.    GetTriggerDelay                 ����        l* mB     K.    SetTriggerExternalEdge          ����        n� o�     K.    GetTriggerExternalEdge          ����        qA ri     K.    SetTriggerGateWidth             ����        s� t�     K.    GetTriggerGateWidth             ����        vZ wk     K.    SetTriggerLevel                 ����        x� y�     K.    GetTriggerLevel                 ����        {R |[     K.    SetTriggerLinking               ����        }7 ~\     K.    GetTriggerLinking               ����         �     K.    SetTriggerMode                  ����        �� ��     K.    GetTriggerMode                  ����        �� ��     K.    SetTriggerSource                ����        �c ��     K.    GetTriggerSource                ����        � �     K.    SetTriggerType                  ����        �f ��     K.    GetTriggerType                  ����        � �     K.    SetProfileExternalTriggerEdge   ����        �� �     K.    GetProfileExternalTriggerEdge   ����        �� ��     K.    SetProfileTriggerArming         ����        �� �      K.    GetProfileTriggerArming         ����        �� ��     K.    SetProfileTriggerDelay          ����        �� ��     K.    GetProfileTriggerDelay          ����        �^ �v     K.    SetProfileTriggerGateWidth      ����        �R �c     K.    GetProfileTriggerGateWidth      ����        �  �!     K.    SetProfileTriggerLevel          ����        �� �     K.    GetProfileTriggerLevel          ����        �� ��     K.    SetProfileTriggerSource         ����        �� �     K.    GetProfileTriggerSource         ����        �� ��     K.    SetProfileTriggerType           ����        �� ��     K.    GetProfileTriggerType               ����                                    �No Extra Parameter Functions         DAuto Scaling                         DClose                                DContinue                             DInitialize                           DInitialize Modem                     DReset                                DReset To Factory                     DZero Analog Input                   �Autodial Functions                   DAutodial Enable For Power Set        DAutodial Enable For Power Get        DAutodial Enable For Range Set        DAutodial Enable For Range Get        DAutodial Enable Set                  DAutodial Enable Get                  DAutodial Phone Number Set            DAutodial Phone Number Get           Averaging Functions                  DAveraging Auto Low Level Set         DAveraging Auto Low Level Get         DAveraging Moving                     DAveraging Setup Set                  DAveraging Setup Get                  DAvg Between Profile Cursors         ABattery Functions                    DBattery Auto Turn Off Min Set        DBattery Auto Turn Off Min Get        DBattery Auto Turn Off Set            DBattery Auto Turn Off Get           lBattery Back Light Functions         DBack Light Timer Set                 DBack Light Timer Get                 DBattery LCD Back Light Mode Set      DBattery LCD Back Light Mode Get     �BNC Functions                        DBNC Out Port Channel Set             DBNC Out Port Channel Get             DBNC Output Mode Set                  DBNC Output Mode Get                  DBNC Pass Level Set                   DBNC Pass Level Get                   DBNC RF Blanking Set                  DBNC RF Blanking Get                 �BNC Analog Functions                 DBNC Analog OutDisplay Start Set      DBNC Analog OutDisplay Start Get      DBNC Analog Out Display Stop Set      DBNC Analog Out Display Stop Get      DBNC Analog OutputStart Volt Set      DBNC Analog OutputStart Volt Get      DBNC Analog Output Stop Volt Set      DBNC Analog Output Stop Volt Get     �Cal Functions                        DCal Add Entry                        DCal Current Value                    DCal Validity Check                   DCalibrate Sensor                     DCal Adjust Set                       DCal Adjust Get                       DCal Display Units Set                DCal Display Units Get                DCal Manual Set                       DCal Manual Get                       DCal Source Set                       DCal Source Get                       DRange Calibrator Data Query          DRF Ref Calibrator On-Off Set         DRF Ref Calibrator On-Off Get        Cal Frequency/Voltage Functions      DCal Frequency Set                    DCal Frequency Get                    DCal Start Frequency Set              DCal Start Frequency Get              DCal Stop Frequency Set               DCal Stop Frequency Get               DCal Start Voltage Set                DCal Start Voltage Get                DCal Stop Voltage Set                 DCal Stop Voltage Get                GCal Table Functions                  DCal Table Clear                      DCal Table Identity Set               DCal Table Identity Get               DCal Table Load-Read Set              DCal Table Load-Read Get              DCal Table Preset                     DCal Table Save                       DCal Table Select                     DCal Tables Count                     DCal Tables Used                     {Channel Functions                    DChannel Input Config Set             DChannel Input Config Get             DChannel Resolution Set               DChannel Resolution Get               DChannel Units Set                    DChannel Units Get                    DProfile Channel Selection Set        DProfile Channel Selection Get       �Cursor Functions                     DCursor                               DDisplay Graph Cursor Set             DDisplay Graph Cursor Get             DLink Graph Cursors Set               DLink Graph Cursors Get              �Display Functions                    DData Display Time Set                DData Display Time Get                DDisplay Contrast Step                DDisplay Contrast Set                 DDisplay Contrast Get                 DDisplay On-Off Set                   DDisplay On-Off Get                   DDisplay Trigger Delay Set            DDisplay Trigger Delay Get            DDisplay                              DFrequency Offset Display Set         DFrequency Offset Display Get         DPeak Meter Display Set               DPeak Meter Display Get              Duty Cycle Functions                 DDuty Cycle State Set                 DDuty Cycle State Get                 DDuty Cycle Set                       DDuty Cycle Get                      6Error/Fail Functions                 DEntry Error Beep Set                 DEntry Error Beep Get                 DError Listing                        DFail Beep On-Off Set                 DFail Beep On-Off Get                 DFail Indicator Hold Set              DFail Indicator Hold Get             �GPIB Functions                       DGET Configuration                    DGPIB Address Set                     DGPIB Address Get                     DGPIB GET Trigger Type                DGPIB Response Buffering              DGPIB Trigger Mode                   �Graph Functions                      DGraph Data Information               DGraph Pretrigger Percentage Set      DGraph Pretrigger Percentage Get      DReset Min/Max Graph                  DMin/Max Tracking Reset              �IEEE Commom Commands                 DIdentification                       DSelf Test                            DOperation Complete Set               DOperation Complete Get               DClear Status Bytes                   DEvent Status Byte Enable Set         DEvent Status Byte Enable Get         DEvent Status Register                DService Request Register Set         DService Request Register Get         DStatus Byte Register                 DGroup Execute Trigger                DSave Instrument Setup                DRecall Instrument Setup             Limits Functions                     DLimits On-Off Set                    DLimits On-Off Get                    DLimits Setting Set                   DLimits Setting Get                  3Mode Functions                       DEmulation                            DFast                                 DHold Set                             DHold Get                             DKey Click Sound On-Off Set           DKey Click Sound On-Off Get           DMin Max Tracking Set                 DMin Max Tracking Get                 DOperation Mode Set                   DOperation Mode Get                   DRelative Control Set                 DRelative Control Get                 DSecure System State Set              DSecure System State Get             fOffset Functions                     DOffset Fixed Value Set               DOffset Fixed Value Get               DOffset Table Clear                   DOffset Table Output Update Set       DOffset Table Output Update Get       DOffset Table Set                     DOffset Table Get                    �Output Functions                     DOutput Graph Binary Data             DOutput Graph Data                    DOutput Max Graph Binary Data         DOutput Max Graph Data                DOutput Min Graph Binary Data         DOutput Min Graph Data                DOutput NumberOfChannel Readings      DOutput One Reading                   DOutput Valid Sample Array           �Polarity Functions                   DAC Mod Output Config Set             DAC Mod Output Config Get             DBlanking Input Polarity Set          DBlanking Input Polarity Get         �Printer Functions                    DPrint                                DPrinter Select Set                   DPrinter Select Get                  Profile Functions                    DConnect Points On Profile Set        DConnect Points On Profile Get        DProfile Connect Points Set           DProfile Connect Points Get           DProfile Data Collect Period Set      DProfile Data Collect Period Get      DProfile Min/Max Track Mode Set       DProfile Min/Max Track Mode Get       DProfile ReferenceLine State Set      DProfile ReferenceLine State Get      DProfile Reset                        DProfile Type Set                     DProfile Type Get                     DProfile Y-Axis Scale Set             DProfile Y-Axis Scale Get            DRedial Functions                     DModem Redial Delay Time Set          DModem Redial Delay Time Get          DRedial Count Set                     DRedial Count Get                    oRegister Functions                   DConditions For SRQ                   DSet Query Event Status Register      DGet Query Event Status Register      DSet Query SRQ Enable Register        DGet Query SRQ Enable Register       �RS-232 Functions                     DRS232 Baud Rate Set                  DRS232 Baud Rate Get                  DRS232 Operating Mode Set             DRS232 Operating Mode Get            �Sensor Functions                     DSelect Sensor Offset Set             DSelect Sensor Offset Get             DSensor Information                   DSensor Measurement Mode Set          DSensor Measurement Mode Get          DSensor Offset Value                  DSensor Range Hold Set                DSensor Range Hold Get                DSensor Settle Percentage Set         DSensor Settle Percentage Get         DZero Sensor                         �Setup Functions                      DSetup BNC Analog Output              DSetup Cal Factor Config              DSetup Channel Config                 DSetup Limits                         DSetup Sensor Average                 DSetup Sensor Config                  DSetup Trigger Config                3Saved Setup Functions                DSaved Set Naming Set                 DSaved Set Naming Get                 DSaved Setup Load                     DSaved Setup Read                    dStatus Functions                     DSelf Test Status                     DStart                                DStatus Message                      �Sweep Functions                     �Source Sweep Functions               DSourceSweep Mode Status Request      DSource Sweep Mode Set                DSource Sweep Mode Get                DSourceSweep Start Frequency Set      DSourceSweep Start Frequency Get      DSource Sweep Stop Frequency Set      DSource Sweep Stop Frequency Get      DSource Sweep Start Power Set         DSource Sweep Start Power Get         DSource Sweep Stop Power Set          DSource Sweep Stop Power Get         �Sweep Averaging Functions            DSweep Averaging Points Set           DSweep Averaging Points Get           DReset Sweep Averaging                DSweep Averaging State Set            DSweep Averaging State Get           	Text Functions                       DText Display Set                     DText Display Get                     DText Set                             DText Get                            	ATrigger Functions                    DTrigger A Reading                    DTrigger Arming Set                   DTrigger Arming Get                   DTrigger Delay Set                    DTrigger Delay Get                    DTrigger External Edge Set            DTrigger External Edge Get            DTrigger Gate Width Set               DTrigger Gate Width Get               DTrigger Level Set                    DTrigger Level Get                    DTrigger Linking Set                  DTrigger Linking Get                  DTrigger Mode Set                     DTrigger Mode Get                     DTrigger Source Set                   DTrigger Source Get                   DTrigger Type Set                     DTrigger Type Get                    	mProfile Trigger Functions            DProfile ExternalTriggerEdge Set      DProfile ExternalTriggerEdge Get      DProfile Trigger Arming Set           DProfile Trigger Arming Get           DProfile Trigger Delay Set            DProfile Trigger Delay Get            DProfile Trigger Gate Width Set       DProfile Trigger Gate Width Get       DProfile Trigger Level Set            DProfile Trigger Level Get            DProfile Trigger Source Set           DProfile Trigger Source Get           DProfile Trigger Type Set             DProfile Trigger Type Get        