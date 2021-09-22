@echo off
CALL :HEADER
title Windows Activator Developed by MenTaL-Tech 
cscript | findstr /i /c:"cscript error" >nul
if %errorlevel% EQU 1 (goto ACTIVATION ) else echo CALL :HEADER &echo AN ERROR HAS OCCURED &CALL :HEADER&echo.&echo.&echo FIXING &ping localhost -n 2 >nul&cls&CALL :HEADER&echo.&echo.&echo FIXING .&ping localhost -n 2 >nul&cls&CALL :HEADER&echo.&echo.&echo FIXING ..&ping localhost -n 2 >nul&cls&CALL :HEADER&echo.&echo.&echo FIXING ...&ping localhost -n 2 >nul&cls&CALL :HEADER&echo.&echo.&echo FIXING ....&ping localhost -n 2 >nul&cls&CALL :HEADER&echo.&echo.&echo FIXING .....&ping localhost -n 2 >nul&REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Script Host\Settings" /v Enabled /f>nul& REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Script Host\Settings" /v Enabled /t REG_DWORD /d 1 /f>nul
:ACTIVATION
echo Activating your Windows...
echo.&echo Clearing Key Management Service machine name...&cscript //nologo slmgr.vbs /ckms | findstr /i "successfully">nul && (echo.&echo Key Management Service machine name cleared successfully.&echo -------------------------------------------------------------------------------------------) || (echo Command FAILED to execute &cscript //nologo slmgr.vbs /ckms &echo -------------------------------------------------------------------------------------------)
echo.&echo Unistalling Product Key...&cscript //nologo slmgr.vbs /upk>nul | findstr /i "successfully">nul && (echo.&echo Uninstalled product key successfully.&echo -------------------------------------------------------------------------------------------) || (echo Command FAILED to execute &cscript //nologo slmgr.vbs /upk&echo -------------------------------------------------------------------------------------------)
echo.&echo Clearing Product Key from registry...&cscript //nologo slmgr.vbs /cpky | findstr /i "successfully">nul && (echo.&echo Product key from registry cleared successfully.&echo -------------------------------------------------------------------------------------------) || (echo Command FAILED to execute & cscript //nologo slmgr.vbs /cpky&echo -------------------------------------------------------------------------------------------)
set i=1
echo.&echo Installing product key...
wmic os | findstr /I "enterprise" >nul
if %errorlevel% EQU 0 (cscript //nologo slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 >nul||cscript //nologo slmgr.vbs /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 >nul||cscript //nologo slmgr.vbs /ipk YYVX9-NTFWV-6MDM3-9PT4T-4M68B >nul||cscript //nologo slmgr.vbs /ipk 44RPN-FTY23-9VTTB-MP9BX-T84FV >nul||cscript //nologo slmgr.vbs /ipk WNMTR-4C88C-JK8YV-HQ7T2-76DF9 >nul||cscript //nologo slmgr.vbs /ipk 2F77B-TNFGY-69QQF-B8YKP-D69TJ >nul||cscript //nologo slmgr.vbs /ipk DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ >nul||cscript //nologo slmgr.vbs /ipk QFFDN-GRT3P-VKWWX-X7T3R-8B639 >nul||cscript //nologo slmgr.vbs /ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D >nul||cscript //nologo slmgr.vbs /ipk 92NFX-8DJQP-P6BBQ-THF9C-7CG2H >nul&echo.&echo Product Key installed successfully&goto skms) else wmic os | findstr /I "home" >nul
if %errorlevel% EQU 0 (cscript //nologo slmgr.vbs /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99 >nul||cscript //nologo slmgr.vbs /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM >nul||cscript //nologo slmgr.vbs /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH >nul||cscript //nologo slmgr.vbs /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR >nul&echo.&echo Product Key installed successfully&goto skms) else wmic os | findstr /I "education" >nul
if %errorlevel% EQU 0 (cscript //nologo slmgr.vbs /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 >nul||cscript //nologo slmgr.vbs /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ >nul&echo.&echo Product Key installed successfully&goto skms) else wmic os | findstr /I "10 pro" >nul
if %errorlevel% EQU 0 (cscript //nologo slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX >nul||cscript //nologo slmgr.vbs /ipk MH37W-N47XK-V7XM9-C7227-GCQG9 >nul||cscript //nologo slmgr.vbs /ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J >nul||cscript //nologo slmgr.vbs /ipk 9FNHH-K3HBT-3W4TD-6383H-6XYWF >nul||cscript //nologo slmgr.vbs /ipk 6TP4R-GNPTD-KYYHQ-7B7DP-J447Y >nul||cscript //nologo slmgr.vbs /ipk YVWGF-BXNMC-HTQYQ-CPQ99-66QFC >nul&echo.&echo Product Key installed successfully&goto skms) else (goto notsupported)
:skms
echo -------------------------------------------------------------------------------------------&echo.&echo setting Key Management Service machine name
if %i% GTR 10 goto busy
if %i% EQU 1 set KMS=s8.now.im
if %i% EQU 2 set KMS=kms7.MSGuides.com
if %i% EQU 3 set KMS=s9.now.im
if %i% GTR 3 goto ato
cscript //nologo slmgr.vbs /skms %KMS%:1688 >nul
echo.&echo Key Management Service machine name set to %KMS% successfully.
:ato
echo -------------------------------------------------------------------------------------------&echo.&cscript //nologo slmgr.vbs /ato | find /i "successfully" && (echo.echo Product Activated Successfully&echo -------------------------------------------------------------------------------------------&echo.&echo Thank You for using my program&echo.&echo -------------------------------------------------------------------------------------------&goto exit) || (echo The connection to KMS server failed! Trying to connect to another one... & echo Please wait... & echo. & echo. & set /a i+=1 & goto skms)
:notsupported
echo -------------------------------------------------------------------------------------------&echo.&echo Sorry, your version is not supported.&echo.&goto exit
:busy
echo -------------------------------------------------------------------------------------------&echo.&echo Sorry, the server is busy and can't respond to your request. Please try again.&echo.
:exit
echo To apply changes, RESTART is required
choice /c yn /m "Do You Want To RESTART."
if %errorlevel% EQU 1 shutdown /r /t 10
if %errorlevel% EQU 2 pause>nul
:HEADER
echo   \        /        __   __          ___        ^^    __ _____            _____  __   __ 
echo    \  /\  / ^| ^|\ ^| ^|  \ /  \ \    / (__        /_\  /     ^|   ^| \  /  ^^    ^|   /  \ ^|__)
echo     \/  \/  ^| ^| \^| ^|__/ \__/  \/\/  ___)      /   \ \__   ^|   ^|  \/  / \   ^|   \__/ ^| \
echo.
echo                                                                            DEVELOPED BY
echo                                                          _    _   _____       _____       
echo                                                          ^|\  /^|     ^|   ^|       ^|
echo                                                          ^| \/ ^| E N ^| A ^|__     ^| E C H
echo.
echo -------------------------------------------------------------------------------------------&echo              Activate Microsoft Windows for FREE without additional software&echo -------------------------------------------------------------------------------------------&echo.&echo #Supported products:&echo - Windows 10 Home&echo - Windows 10 Professional&echo - Windows 10 Education&echo - Windows 10 Enterprise&echo.&echo -------------------------------------------------------------------------------------------
