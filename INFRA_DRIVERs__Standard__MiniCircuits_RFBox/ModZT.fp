s��        g�   ' M  �   �   ����                               ModularZT                                                                                                                                � ��const char *     � ��LCID     	� 	��ERRORINFO  �  � ��HRESULT  � � ��SAFEARRAY *  � 	� 	��LPUNKNOWN     � ��VARIANT  � � ��VBOOL  �  � ��SCODE  � � ��CAObjHandle  � � ��DATE     � ��CURRENCY  h    Use this function to create a new _USB_Control object, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is a RemoteServerName registry entry for this server, the server will be run on the machine specified by the RemoteServerName entry.

If you pass NULL for this parameter and there is no RemoteServerName registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.    (
����  �    Status                            6 -   �  �    Server                            @ - �     �    Support Multithreading            � -� �  �    Locale                            
W �      �    Reserved                          
� � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	          x    Use this function to load an existing _USB_Control object from a file, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.     :    A file containing the data for an ActiveX server object.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is an ActivateAtStorage registry entry for this server, the server will be run on the machine on which the file specified by the filename parameter resides.

If you pass NULL for this parameter and there is no ActivateAtStorage registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.    t
����  �    Status                            � -   �  �    File Name                         � - � �  �    Server                            � -�     �    Support Multithreading            � �  �  �    Locale                            � � �     �    Reserved                          H �� �  �    Object Handle                      	               NULL    1    LOCALE_NEUTRAL    0    	          �    Use this function to get a handle to an active _USB_Control object.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.    �    The name or IP address of the machine on which to look for the active ActiveX server object.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL, the function will look for the active ActiveX server object on the same machine as your program.

NOTE: Windows 95 and Windows NT 4.0 do not support accessing active objects on remote machines.  Future versions of these operating systems may support this functionality.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.    �
����  �    Status                            � -   �  �    Server                            x - �     �    Support Multithreading            4 -� �  �    Locale                             � �      �    Reserved                           � � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	              A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    ^    Documentation for this function, if provided by the server, is located in the function help.

The string passed in this parameter must be allocated by calling the CVI ActiveX Library function CA_AllocMemory.

When it is no longer needed, the string returned in this parameter must be freed by calling the CVI ActiveX Library function CA_FreeMemory.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    #,
����  �    Status                            %K -   �  �    Object Handle                     &� - � �  �    Error Info                        (� -�    �    A0                                ): �     �    A1                                )� � �    �    A2                                * ��    �    A3                                *l �     �    Doc Firmware                      +� � �    �    Arg6                               	                       NULL    	            	            	            	            	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    .�
����  �    Status                            0� -   �  �    Object Handle                     2D - � �  �    Error Info                        4p -�    �    Arg1                               	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    6!
����  �    Status                            8@ -   �  �    Object Handle                     9� - � �  �    Error Info                        ;� -�    �    Arg1                               	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.    6    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.

When it is no longer needed, you must free the string returned in this parameter by calling the CVI ActiveX Library function CA_FreeMemory.    =z
����  �    Status                            ?� -   �  �    Object Handle                     @� - � �  �    Error Info                        C" -�    �    Arg1                               	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    E`
����  �    Status                            G -   �  �    Object Handle                     H� - � �  �    Error Info                        K -�    �    Arg1                               	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    L�
����  �    Status                            N� -   �  �    Object Handle                     P5 - � �  �    Error Info                        Ra -�    �    Arg1                               	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.    ^    Documentation for this function, if provided by the server, is located in the function help.

The string passed in this parameter must be allocated by calling the CVI ActiveX Library function CA_AllocMemory.

When it is no longer needed, the string returned in this parameter must be freed by calling the CVI ActiveX Library function CA_FreeMemory.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    T
����  �    Status                            V1 -   �  �    Object Handle                     W� - � �  �    Error Info                        Y� -�    �    SN_List                           [  �     �    Arg2                               	                       NULL    	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.    ^    Documentation for this function, if provided by the server, is located in the function help.

The string passed in this parameter must be allocated by calling the CVI ActiveX Library function CA_AllocMemory.

When it is no longer needed, the string returned in this parameter must be freed by calling the CVI ActiveX Library function CA_FreeMemory.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    ]
����  �    Status                            _1 -   �  �    Object Handle                     `� - � �  �    Error Info                        b� -�    �    SN_List                           d  �     �    Arg2                               	                       NULL    	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    f
����  �    Status                            h1 -   �  �    Object Handle                     i� - � �  �    Error Info                        k� -�    �    B1                                l  �     �    B2                                l� � �    �    B3                                l� ��    �    B4                                mR �     �    Arg5                               	                       NULL                    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    o�
����  �    Status                            r -   �  �    Object Handle                     sc - � �  �    Error Info                        u� -�    �    B1                                u� �     �    B2                                v[ � �    �    B3                                v� ��    �    B4                                w' �     �    Arg5                               	                       NULL    	            	            	            	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    y�
����  �    Status                            {�    �  �    Object Handle                     }X  � �  �    Error Info                        � �    �    MAC1                              � i     �    MAC2                              �P i �    �    MAC3                              �� i�    �    MAC4                              � �     �    MAC5                              �� � �    �    MAC6                              �� ��    �    Arg7                               	                       NULL    	            	            	            	            	            	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    �
����  �    Status                            �>  	  �  �    Object Handle                     ��  � �  �    Error Info                        ��     �    IP1                               �- �    �    IP2                               �� i 	    �    IP3                               �� i �    �    IP4                               �_ i    �    Mask1                             �� i�    �    Mask2                             �+ � 	    �    Mask3                             �� � � 	   �    Mask4                             �� � 
   �    Gateway1                          �] ��    �    Gateway2                          �� � 	    �    Gateway3                          �) � �    �    Gateway4                          �� �    �    Arg13                              	                       NULL    	            	            	            	            	            	            	            	            	            	            	            	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    �L
����  �    Status                            �k -   �  �    Object Handle                     �� - � �  �    Error Info                        �� -�    �    B1                                �Z �     �    B2                                �� � �    �    B3                                �& ��    �    B4                                �� �     �    Arg5                               	                       NULL    	            	            	            	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    �A
����  �    Status                            �` -   �  �    Object Handle                     �� - � �  �    Error Info                        �� -�    �    B1                                �O �     �    B2                                �� � �    �    B3                                � ��    �    B4                                �� �     �    Arg5                               	                       NULL    	            	            	            	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    �6
����  �    Status                            �U -   �  �    Object Handle                     �� - � �  �    Error Info                        �� -�    �    P                                 �D �     �    Arg2                               	                       NULL        	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    �.
����  �    Status                            �M -   �  �    Object Handle                     �� - � �  �    Error Info                        �� -�    �    P                                 �< �     �    Arg2                               	                       NULL    	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    �.
����  �    Status                            �M -   �  �    Object Handle                     �� - � �  �    Error Info                        �� -� �  �    PWD                               �< �     �    Arg2                               	                       NULL    ""    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.    ^    Documentation for this function, if provided by the server, is located in the function help.

The string passed in this parameter must be allocated by calling the CVI ActiveX Library function CA_AllocMemory.

When it is no longer needed, the string returned in this parameter must be freed by calling the CVI ActiveX Library function CA_FreeMemory.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    �(
����  �    Status                            �G -   �  �    Object Handle                     ä - � �  �    Error Info                        �� -�    �    PWD                               �6 �     �    Arg2                               	                       NULL    	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    �(
����  �    Status                            �G -   �  �    Object Handle                     ̤ - � �  �    Error Info                        �� -�    �    Arg1                               	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    Ё
����  �    Status                            Ҡ -   �  �    Object Handle                     �� - � �  �    Error Info                        �) -�    �    Use Pwd                           ֏ �     �    Arg2                               	                       NULL        	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    �y
����  �    Status                            ژ -   �  �    Object Handle                     �� - � �  �    Error Info                        �! -�    �    Use DHCP                          އ �     �    Arg2                               	                       NULL        	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    �q
����  �    Status                            � -   �  �    Object Handle                     �� - � �  �    Error Info                        � -�    �    Arg1                               	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    ��
����  �    Status                            �� -   �  �    Object Handle                     �F - � �  �    Error Info                        �r -�    �    B1                                �� �     �    B2                                �> � �    �    B3                                � ��    �    B4                                �
 �     �    Arg5                               	                       NULL                    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    �
����  �    Status                            � -   �  �    Object Handle                     � - � �  �    Error Info                        �G -�    �    B1                                �� �     �    B2                                � � �    �    B3                                �y ��    �    B4                                �� �     �    Arg5                               	                       NULL                    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.    ^    Documentation for this function, if provided by the server, is located in the function help.

The string passed in this parameter must be allocated by calling the CVI ActiveX Library function CA_AllocMemory.

When it is no longer needed, the string returned in this parameter must be freed by calling the CVI ActiveX Library function CA_FreeMemory.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.    �t
����  �    Status                            �� -   �  �    Object Handle                     �� - � �  �    Error Info                        -�    �    Model Name                       � �     �    Arg2                               	                       NULL    	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.   t
����  �    Status                           � -   �  �    Object Handle                    � - � �  �    Error Info                       
 -�    �    Arg1                               	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.    ^    Documentation for this function, if provided by the server, is located in the function help.

The string passed in this parameter must be allocated by calling the CVI ActiveX Library function CA_AllocMemory.

When it is no longer needed, the string returned in this parameter must be freed by calling the CVI ActiveX Library function CA_FreeMemory.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.   �
����  �    Status                           � -   �  �    Object Handle                    I - � �  �    Error Info                       u -�    �    SN                               � �     �    Arg2                               	                       NULL    	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.   �
����  �    Status                           � -   �  �    Object Handle                    I - � �  �    Error Info                       u -�    �    Address                          � �     �    Arg2                               	                       NULL    	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.   �
����  �    Status                           � -   �  �    Object Handle                     I - � �  �    Error Info                       "u -�    �    Arg1                               	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.    ^    Documentation for this function, if provided by the server, is located in the function help.

The string passed in this parameter must be allocated by calling the CVI ActiveX Library function CA_AllocMemory.

When it is no longer needed, the string returned in this parameter must be freed by calling the CVI ActiveX Library function CA_FreeMemory.    ^    Documentation for this function, if provided by the server, is located in the function help.

The string passed in this parameter must be allocated by calling the CVI ActiveX Library function CA_AllocMemory.

When it is no longer needed, the string returned in this parameter must be freed by calling the CVI ActiveX Library function CA_FreeMemory.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.   $&
����  �    Status                           &E -   �  �    Object Handle                    '� - � �  �    Error Info                       )� -�    �    Snd STR                          +4 �     �    Ret STR                          ,� � �    �    Arg3                               	                       NULL    	            	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.   .�
����  �    Status                           0� -   �  �    Object Handle                    2I - � �  �    Error Info                       4u -�    �    Val                              4� �     �    Arg2                               	                       NULL        	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.   6�
����  �    Status                           8� -   �  �    Object Handle                    :A - � �  �    Error Info                       <m -� �  �    SN                               <� �     �    Arg2                               	                       NULL    ""    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     �    You can pass NULL for this parameter if you do not need this information.

Documentation for this function, if provided by the server, is located in the function help.   >�
����  �    Status                           @� -   �  �    Object Handle                    B; - � �  �    Error Info                       Dg -�    �    Address                          D� �     �    Arg2                               	                       NULL        	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from New_USB_Control, Open_USB_Control, Active_USB_Control, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.   F�
����  �    Status                           H� -   �  �    Object Handle                    J3 - � �  �    Error Info                         	                       NULL ����         �  z             K.        New_USB_Control                                                                                                                         ����         �  !             K.        Open_USB_Control                                                                                                                        ����         �  !�             K.        Active_USB_Control                                                                                                                      ����       ����  ,�         	    K.        _USB_ControlGetExtFirmware                                                                                                              ����       ����  5!             K.        _USB_ControlResetCPU                                                                                                                    ����       ����  <z             K.        _USB_ControlResetDevice                                                                                                                 ����       ����  D`             K.        _USB_ControlGetUSBDeviceName                                                                                                            ����       ����  K�             K.        _USB_ControlGetConnectionStatus                                                                                                         ����       ����  S             K.        _USB_ControlGetUSBConnectionStatus                                                                                                      ����       ����  [�             K.        _USB_ControlGet_Available_SN_List                                                                                                       ����       ����  d�             K.        _USB_ControlGet_Available_Address_List                                                                                                  ����       ����  n             K.        _USB_ControlSaveEthernet_IPAddress                                                                                                      ����       ����  w�             K.        _USB_ControlGetEthernet_IPAddress                                                                                                       ����       ����  ��         
    K.        _USB_ControlGetEthernet_MACAddress                                                                                                      ����       ����  �@             K.        _USB_ControlGetEthernet_CurrentConfig                                                                                                   ����       ����  �=             K.        _USB_ControlGetEthernet_SubNetMask                                                                                                      ����       ����  �2             K.        _USB_ControlGetEthernet_NetworkGateway                                                                                                  ����       ����  ��             K.        _USB_ControlSaveEthernet_TCPIPPort                                                                                                      ����       ����  ��             K.        _USB_ControlGetEthernet_TCPIPPort                                                                                                       ����       ����  ��             K.        _USB_ControlSaveEthernet_PWD                                                                                                            ����       ����  ��             K.        _USB_ControlGetEthernet_PWD                                                                                                             ����       ����  ρ             K.        _USB_ControlGetEthernet_UseDHCP                                                                                                         ����       ����  �@             K.        _USB_ControlSaveEthernet_UsePWD                                                                                                         ����       ����  �8             K.        _USB_ControlSaveEthernet_UseDHCP                                                                                                        ����       ����  ��             K.        _USB_ControlGetEthernet_UsePWD                                                                                                          ����       ����  �             K.        _USB_ControlSaveEthernet_SubnetMask                                                                                                     ����       ����  ��             K.        _USB_ControlSaveEthernet_NetworkGateway                                                                                                 ����       ���� 3             K.        _USB_ControlRead_ModelName                                                                                                              ����       ���� 
�             K.        _USB_ControlGetFirmware                                                                                                                 ����       ���� �             K.        _USB_ControlRead_SN                                                                                                                     ����       ���� �             K.        _USB_ControlSet_Address                                                                                                                 ����       ���� #&             K.        _USB_ControlGet_Address                                                                                                                 ����       ���� -K             K.        _USB_ControlSend_SCPI                                                                                                                   ����       ���� 5�             K.        _USB_ControlWriteEEPROM_LastByte                                                                                                        ����       ���� =�             K.        _USB_ControlConnect                                                                                                                     ����       ���� E~             K.        _USB_ControlConnectByAddress                                                                                                            ����       ���� L_             K.        _USB_ControlDisconnect                                                                                                                      ����                                                                                  ����_USB_Control                                                                         �New _USB_Control                                                                     �Open _USB_Control                                                                    �Active _USB_Control                                                                  �Get Ext Firmware                                                                     �Reset CPU                                                                            �Reset Device                                                                         �Get USB Device Name                                                                  �Get Connection Status                                                                �Get USB Connection Status                                                            �Get_Available_SN_List                                                                �Get_Available_Address_List                                                           �Save Ethernet_IP Address                                                             �Get Ethernet_IP Address                                                              �Get Ethernet_MAC Address                                                             �Get Ethernet_Current Config                                                          �Get Ethernet_Sub Net Mask                                                            �Get Ethernet_Network Gateway                                                         �Save Ethernet_TCPIP Port                                                             �Get Ethernet_TCPIP Port                                                              �Save Ethernet_PWD                                                                    �Get Ethernet_PWD                                                                     �Get Ethernet_Use DHCP                                                                �Save Ethernet_Use PWD                                                                �Save Ethernet_Use DHCP                                                               �Get Ethernet_Use PWD                                                                 �Save Ethernet_Subnet Mask                                                            �Save Ethernet_Network Gateway                                                        �Read_Model Name                                                                      �Get Firmware                                                                         �Read_SN                                                                              �Set_Address                                                                          �Get_Address                                                                          �Send_SCPI                                                                            �Write EEPROM_Last Byte                                                               �Connect                                                                              �Connect By Address                                                                   �Disconnect                                                                      