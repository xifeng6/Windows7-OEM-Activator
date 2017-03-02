@echo off
:InstallOrNot
cls
@echo off
setlocal ENABLEEXTENSIONS
mode con: cols=100 lines=35
REM  https://github.com/mgiljum/Windows-7-Pro-Activator
echo   __        _____ _   _     _____     ____  ____   ___     
echo " \ \      / /_ _| \ | |   |___  |   |  _ \|  _ \ / _ \    "
echo "  \ \ /\ / / | ||  \| |      / /    | |_) | |_) | | | |   "
echo "   \ V  V /  | || |\  |     / /     |  __/|  _ <| |_| |   "
echo "    \_/\_/  |___|_| \_|    /_/      |_|   |_| \_\\___/    "
echo       _    ____ _____ _____     ___  _____ ___  ____     ____   ____ ____  ___ ____ _____  
echo "    / \  / ___|_   _|_ _\ \   / / \|_   _/ _ \|  _ \   / ___| / ___|  _ \|_ _|  _ \_   _| "
echo "   / _ \| |     | |  | | \ \ / / _ \ | || | | | |_) |  \___ \| |   | |_) || || |_) || |   "
echo "  / ___ \ |___  | |  | |  \ V / ___ \| || |_| |  _ <    ___) | |___|  _ < | ||  __/ | |   "
echo " /_/   \_\____| |_| |___|  \_/_/   \_\_| \___/|_| \_\  |____/ \____|_| \_\___|_|    |_|   "
echo.
echo.
echo   The use of this script assumes you have a device with valid 
echo   installation or downgrade rights to Windows 7 Professional, 
echo   or a valid Windows 7 product key. The use of this script  may be 
echo   a violation of the Microsoft End User License Agreement or specific 
echo   manufacturer agreements. The author assumes no responsibility for 
echo   any misuse or any liability for any damages that may result from 
echo   the use of this script.
echo.
echo.
echo ///////////////////////////////////////////////////////////////////
echo.
REM Detect current edition
FOR /F "usebackq skip=2 tokens=1-5" %%A IN (`reg query "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v "ProductName" 2^>nul`) DO (
    set ValueName=%%A
    set ValueType=%%B
    set EDITION=%%E
)
echo.
echo.
REM Show current version and select license option
:SELECTOPTION
echo Current edition of Windows 7: %Edition%
echo.
echo.
echo Select license type:
echo.
echo 1) Install OEM MS Windows 7 License
echo 2) Install retail, volume or sticker product key
echo 3) Exit
echo.
set /P LICENSETYPE="Enter selection: "
if /i "%LICENSETYPE:~,1%" EQU "1" goto installoem
if /i "%LICENSETYPE:~,1%" EQU "2" goto installretail
if /i "%LICENSETYPE:~,1%" EQU "3" goto cancel
goto INSTALLOEM
REM Select MANUFACTURERfacturer
:INSTALLOEM
cls
@echo off
echo.
echo Select MANUFACTURERfacturer:
echo 1) Acer
echo 2) Alienware
echo 3) Asus
echo 4) Dell
echo 5) Fujitsu
echo 6) HP
echo 7) IBM/Lenovo
echo 8) Samsung
echo 9) Sony
echo 10) Toshiba
echo 11) Cancel
echo.
set /P MANUFACTURER="Enter selection: "
if /i "%EDITION:~,1%" EQU "Professional" goto MANUPRO
if /i "%EDITION:~,1%" EQU "Home Basic" goto MANUHOMEBASIC
if /i "%EDITION:~,1%" EQU "Home Premium" goto MANUHOMEPREM
if /i "%EDITION:~,1%" EQU "Ultimate" goto MANUULTIMATE
:MANUPRO
if /i "%MANUFACTURER:~,1%" EQU "1" goto Acer
if /i "%MANUFACTURER:~,1%" EQU "2" goto Alienware
if /i "%MANUFACTURER:~,1%" EQU "3" goto Asus
if /i "%MANUFACTURER:~,1%" EQU "4" goto Dell
if /i "%MANUFACTURER:~,1%" EQU "5" goto Fujitsu
if /i "%MANUFACTURER:~,1%" EQU "6" goto HP
if /i "%MANUFACTURER:~,1%" EQU "7" goto Lenovo
if /i "%MANUFACTURER:~,1%" EQU "8" goto Samsung
if /i "%MANUFACTURER:~,1%" EQU "9" goto Sony
if /i "%MANUFACTURER:~,1%" EQU "10" goto Toshiba
if /i "%MANUFACTURER:~,1%" EQU "11" goto InstallOrNot
:MANUHOMEBASIC
echo Support coming soon for Windows 7 %EDITION%
pause
exit
:MANUHOMEPREM
echo Support coming soon for Windows 7 %EDITION%
pause
exit
:MANUULTIMATE
echo Support coming soon for Windows 7 %EDITION%
pause
exit
:Acer
cscript //B "%windir%\system32\slmgr.vbs" -ilc C:\Certs\ACER-NEW.xrm-ms
cscript //B "%windir%\system32\slmgr.vbs" -ipk YKHFT-KW986-GK4PY-FDWYH-7TP9F
cscript //B "%windir%\system32\slmgr.vbs" -ato
del C:\Certs /Q
:Alienware
cscript //B "%windir%\system32\slmgr.vbs" -ilc C:\Certs\ALIENWARE.xrm-ms
cscript //B "%windir%\system32\slmgr.vbs" -ipk 4CFBX-7HQ6R-3JYWF-72GXP-4MV6W
cscript //B "%windir%\system32\slmgr.vbs" -ato
del C:\Certs /Q
goto END
:Asus
cscript //B "%windir%\system32\slmgr.vbs" -ilc C:\Certs\ASUS-NEW.xrm-ms
cscript //B "%windir%\system32\slmgr.vbs" -ipk 2WCJK-R8B4Y-CWRF2-TRJKB-PV9HW
cscript //B "%windir%\system32\slmgr.vbs" -ato
del C:\Certs /Q
goto END
:Dell
cscript //B "%windir%\system32\slmgr.vbs" -ilc C:\Certs\DELL.xrm-ms
cscript //B "%windir%\system32\slmgr.vbs" -ipk 32KD2-K9CTF-M3DJT-4J3WC-733WD
cscript //B "%windir%\system32\slmgr.vbs" -ato
del C:\Certs /Q
goto END
:Fujitsu
cscript //B "%windir%\system32\slmgr.vbs" -ilc C:\Certs\FUJITSU.xrm-ms
cscript //B "%windir%\system32\slmgr.vbs" -ipk PT9YK-BC2J9-WWYF9-R9DCR-QB9CK
cscript //B "%windir%\system32\slmgr.vbs" -ato
del C:\Certs /Q
goto END
:HP
cscript //B "%windir%\system32\slmgr.vbs" -ilc C:\Certs\HP-COMPAQ.xrm-ms
cscript //B "%windir%\system32\slmgr.vbs" -ipk 74T2M-DKDBC-788W3-H689G-6P6GT
cscript //B "%windir%\system32\slmgr.vbs" -ato
del C:\Certs /Q
goto END
:Lenovo
cscript //B "%windir%\system32\slmgr.vbs" -ilc C:\Certs\IBM-LENOVO.xrm-ms
cscript //B "%windir%\system32\slmgr.vbs" -ipk 237XB-GDJ7B-MV8MH-98QJM-24367
cscript //B "%windir%\system32\slmgr.vbs" -ato
del C:\Certs /Q
goto END
:Samsung
cscript //B "%windir%\system32\slmgr.vbs" -ilc C:\Certs\SAMSUNG.xrm-ms
cscript //B "%windir%\system32\slmgr.vbs" -ipk GMJQF-JC7VC-76HMH-M4RKY-V4HX6
cscript //B "%windir%\system32\slmgr.vbs" -ato
del C:\Certs /Q
goto END
:Sony
cscript //B "%windir%\system32\slmgr.vbs" -ilc C:\Certs\SONY-NEW.xrm-ms
cscript //B "%windir%\system32\slmgr.vbs" -ipk H9M26-6BXJP-XXFCY-7BR4V-24X8J
cscript //B "%windir%\system32\slmgr.vbs" -ato
del C:\Certs /Q
goto END
:Toshiba
cscript //B "%windir%\system32\slmgr.vbs" -ilc C:\Certs\TOSHIBA.xrm-ms
cscript //B "%windir%\system32\slmgr.vbs" -ipk 2V8P2-QKJWM-4THM3-74PDB-4P2KH
cscript //B "%windir%\system32\slmgr.vbs" -ato
del C:\Certs /Q
goto END
REM Install retail product key
:INSTALLRETAIL
cls
set /P RETAILKEY="Enter retail/VLK or sticker key (WITH DASHES): "
cscript //B "%windir%\system32\slmgr.vbs" -ipk %retailkey%
cscript //B "%windir%\system32\slmgr.vbs" -ato
goto END
:END
cls
@echo off
echo.
echo.
echo License installed!
echo.
REM Detect success?
echo Check Windows System Properties page to verify license is activated.
echo.
echo.
echo Press any key to exit...
pause > nul
cls
:CANCEL
exit /b
