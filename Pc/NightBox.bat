::==========================::
::                          ::
::  Criado Por <\DarkMode>  ::
::  Criação: 16/06/2023     ::
::                          ::
::==========================::


@echo off && mode 24,6 && color 07
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a" & set "ESC=%%b")


::────────────────────────────────────────────── DEPENDÊNCIAS ──────────────────────────────────────────────::
::────────────────────────────────────────────── DEPENDÊNCIAS ──────────────────────────────────────────────::


SET [Underline]=%ESC%[4m
SET [Reset]=%ESC%[0m
SET [Bold]=%ESC%[1m

SET [Vermelho]=%ESC%[31m
SET [Amarelo]=%ESC%[33m
SET [Branco]=%ESC%[37m
SET [Preto]=%ESC%[30m
SET [Verde]=%ESC%[32m
SET [Ciano]=%ESC%[36m
SET [Cinza]=%ESC%[90m
SET [Azul]=%ESC%[34m
SET [Roxo]=%ESC%[35m

SET [VermelhoCL]=%ESC%[91m
SET [AmareloCL]=%ESC%[93m
SET [BrancoCL]=%ESC%[97m
SET [VerdeCL]=%ESC%[92m
SET [CianoCL]=%ESC%[96m
SET [AzulCL]=%ESC%[94m
SET [RoxoCL]=%ESC%[95m

SET "[Powershell]=powershell.exe -noni -nop -exec bypass -c"
SET "[Plugins]=batbox.exe GetInput.exe Button.bat UnRAR.exe"
SET "[Aria2]=aria2c -x 16 -s 16 -k 1M --file-allocation=none --optimize-concurrent-downloads=true --min-split-size=1M --max-connection-per-server=16 --lowest-speed-limit=0 --max-overall-download-limit=0"


::─────────────────────────────────────────────── CARREGAMENTO ───────────────────────────────────────────────::
::─────────────────────────────────────────────── CARREGAMENTO ───────────────────────────────────────────────::


%[Powershell]% "$host.ui.rawui.windowtitle=' '"
echo.
echo.
echo   %[Cinza]%[ %[BrancoCL]%Baixando Plugins %[Cinza]%]
echo        %[Verde]%Aguarde...     
echo.


::────────────────────────────────────────────────── PLUGINS ──────────────────────────────────────────────────::
::────────────────────────────────────────────────── PLUGINS ──────────────────────────────────────────────────::


DEL /F /Q "%SYSTEMROOT%\System32\aria2c.exe" >nul 2>&1 && DEL /F /Q "%SYSTEMROOT%\System32\UnRAR.exe" >nul 2>&1
RMDIR /S /Q "%SYSTEMDRIVE%\NightBox" >nul 2>&1 && MKDIR "%SYSTEMDRIVE%\NightBox" >nul 2>&1

curl -L -o "%SYSTEMROOT%\System32\aria2c.exe" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Utilitarios/aria2c.exe" >nul 2>&1
for %%f in (%[Plugins]%) do (if not exist "%SYSTEMROOT%\System32\%%f" (aria2c -x 16 -s 16 -k 1M --file-allocation=none --optimize-concurrent-downloads=true --min-split-size=1M --max-connection-per-server=16 --lowest-speed-limit=0 --max-overall-download-limit=0 -d "%SYSTEMROOT%\System32" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Utilitarios/%%f" >nul 2>&1))


::─────────────────────────────────────────────────── MENUS ───────────────────────────────────────────────────::
::─────────────────────────────────────────────────── MENUS ───────────────────────────────────────────────────::


:HomePage
%[Powershell]% "$host.ui.rawui.windowtitle='NightBox'"
Batbox /h 0 && mode 59,18 && cls
chcp 65001 >nul 2>&1
echo.
echo           %[AzulCL]%███%[Branco]%╗   %[AzulCL]%██%[Branco]%╗%[AzulCL]%██%[Branco]%╗ %[AzulCL]%██████%[Branco]%╗ %[AzulCL]%██%[Branco]%╗  %[AzulCL]%██%[Branco]%╗%[AzulCL]%████████%[Branco]%╗
echo           %[AzulCL]%████%[Branco]%╗  %[AzulCL]%██%[Branco]%║%[AzulCL]%██%[Branco]%║%[AzulCL]%██%[Branco]%╔════╝ %[AzulCL]%██%[Branco]%║  %[AzulCL]%██%[Branco]%║╚══%[AzulCL]%██%[Branco]%╔══╝
echo           %[AzulCL]%██%[Branco]%╔%[AzulCL]%██%[Branco]%╗ %[AzulCL]%██%[Branco]%║%[AzulCL]%██%[Branco]%║%[AzulCL]%██%[Branco]%║  %[AzulCL]%███%[Branco]%╗%[AzulCL]%███████%[Branco]%║   %[AzulCL]%██%[Branco]%║   
echo           %[AzulCL]%██%[Branco]%║╚%[AzulCL]%██%[Branco]%╗%[AzulCL]%██%[Branco]%║%[AzulCL]%██%[Branco]%║%[AzulCL]%██%[Branco]%║   %[AzulCL]%██%[Branco]%║%[AzulCL]%██%[Branco]%╔══%[AzulCL]%██%[Branco]%║   %[AzulCL]%██%[Branco]%║   
echo           %[AzulCL]%██%[Branco]%║ ╚%[AzulCL]%████%[Branco]%║%[AzulCL]%██%[Branco]%║╚%[AzulCL]%██████%[Branco]%╔╝%[AzulCL]%██%[Branco]%║  %[AzulCL]%██%[Branco]%║   %[AzulCL]%██%[Branco]%║   
echo           %[Branco]%╚═╝  ╚═══╝╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   
echo %[Reset]%
echo.
echo.
echo.
echo         %[Branco]%Quack!
echo       %[Amarelo]%_ %[Branco]%/
echo     %[Amarelo]%^>(%[Branco]%·%[Amarelo]%)___
echo      %[Amarelo]%(____/
echo.
echo %[BrancoCL]%
chcp 850 >nul 2>&1
Call Button  21 9 "   ToolBox   " 21 13 "    Sobre    " # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 (goto ToolBoxP1)
if %errorlevel%==2 (goto Sobre)
goto HomePage


::──────────────────────────────────────────────────────────────────────────────────────────────────────────────::


:Sobre
Batbox /h 0 && mode 32,16 && cls
chcp 65001 >nul 2>&1
echo %[Cinza]%┌──────────────────────────────┐
echo %[Cinza]%│%[Ciano]%       SOBRE %[BrancoCL]%- %[Ciano]%NightBox       %[Cinza]%│
echo %[Cinza]%├──────────────────────────────┤
echo %[Cinza]%│%[BrancoCL]%                              %[Cinza]%│
echo %[Cinza]%│%[BrancoCL]% Programador: %[Branco]%DarkMode        %[Cinza]%│
echo %[Cinza]%│%[BrancoCL]% Beta-Tester: %[Branco]%Queiroz         %[Cinza]%│
echo %[Cinza]%│%[BrancoCL]%                              %[Cinza]%│
echo %[Cinza]%└──────────────────────────────┘
echo.
echo %[BrancoCL]%
chcp 850 >nul 2>&1
Call Button  2 9 " GitHub " 17 9 " Website " 2 12 "      Menu Inicial      " # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 (start https://github.com/DarkMod3/NightBox && goto Sobre)
if %errorlevel%==2 (start https://sites.google.com/view/nibox && goto Sobre)
if %errorlevel%==3 (goto HomePage)
goto Sobre


::──────────────────────────────────────────────────────────────────────────────────────────────────────────────::


:ToolBoxP1
%[Powershell]% "$host.ui.rawui.windowtitle='NightBox (1/2)'"
Batbox /h 1 && mode 109,17 && cls
chcp 65001 >nul 2>&1
echo %[Cinza]%┌──────────› %[AzulCL]%Aplicativos%[Cinza]% ‹──────────┬──────────› %[AzulCL]%Otimizações%[Cinza]% ‹──────────┬──────────› %[AzulCL]%Utilitários%[Cinza]% ‹──────────┐
echo %[Cinza]%│                                   │                                   │                                   │
echo %[Cinza]%│                                   │                                   │                                   │
echo %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%01 %[Cinza]%] %[BrancoCL]%Malwarebytes AdwCleaner    %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%06 %[Cinza]%] %[BrancoCL]%Windows Utility ( CTT )    %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%11 %[Cinza]%] %[BrancoCL]%Windows Activation ( MAS ) %[Cinza]%│
echo %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%02 %[Cinza]%] %[BrancoCL]%Kaspersky Removal Tool     %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%07 %[Cinza]%] %[BrancoCL]%Windows Memory Cleaner     %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%12 %[Cinza]%] %[BrancoCL]%Windows Update ( 2088 )    %[Cinza]%│
echo %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%03 %[Cinza]%] %[BrancoCL]%Auslogics Disk Defrag      %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%08 %[Cinza]%] %[BrancoCL]%Windows Optimizer          %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%13 %[Cinza]%] %[BrancoCL]%Visual C++ AIO Repack      %[Cinza]%│
echo %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%04 %[Cinza]%] %[BrancoCL]%IObit Driver Booster       %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%09 %[Cinza]%] %[BrancoCL]%Windows Toys               %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%14 %[Cinza]%] %[BrancoCL]%Windows Debloater          %[Cinza]%│
echo %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%05 %[Cinza]%] %[BrancoCL]%Revo Uninstaller           %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%10 %[Cinza]%] %[BrancoCL]%ShutUp10++                 %[Cinza]%│                                   %[Cinza]%│
echo %[Cinza]%│                                   │                                   │                                   │
echo %[Cinza]%│                                   │                                   │                                   │
echo %[Cinza]%└───────────────────────────────────┴───────────────────────────────────┴───────────────────────────────────┘
echo.
echo %[Cinza]%[ %[BrancoCL]%00 %[Cinza]%] %[BrancoCL]%Menu Inicial
echo %[Cinza]%[ %[BrancoCL]%PP %[Cinza]%] %[BrancoCL]%Próxima Página
echo.
set /p escolha=">>> "
chcp 850 >nul 2>&1

:: Menus
if "%escolha%"=="pp" set escolha= && goto ToolBoxP2
if "%escolha%"=="PP" set escolha= && goto ToolBoxP2
if "%escolha%"=="00" set escolha= && goto HomePage
:: Aplicativos
if "%escolha%"=="01" set escolha= && goto AdwCleaner
if "%escolha%"=="02" set escolha= && goto Kaspersky
if "%escolha%"=="03" set escolha= && goto Defraggler
if "%escolha%"=="04" set escolha= && goto DriverBooster
if "%escolha%"=="05" set escolha= && goto Uninstaller
:: Otimizações
if "%escolha%"=="06" set escolha= && goto WinUtility
if "%escolha%"=="07" set escolha= && goto WinMemory
if "%escolha%"=="08" set escolha= && goto WinOptimizer
if "%escolha%"=="09" set escolha= && goto WinToys
if "%escolha%"=="10" set escolha= && goto ShutUp10
:: Utilitários
if "%escolha%"=="11" set escolha= && goto WinActivation
if "%escolha%"=="12" set escolha= && goto WinUpdate
if "%escolha%"=="13" set escolha= && goto AIORepack
if "%escolha%"=="14" set escolha= && goto WinDebloater


Batbox /h 0 && mode 41,6 && cls
chcp 65001 >nul 2>&1
echo %[Cinza]%┌──────────────› %[Vermelho]%AVISOS%[Cinza]% ‹───────────────┐
echo %[Cinza]%│                                       │
echo %[Cinza]%│  %[BrancoCL]%Essa opção não existe. Tente outra.  %[Cinza]%│
echo %[Cinza]%│                                       │
echo %[Cinza]%└───────────────────────────────────────┘
chcp 850 >nul 2>&1
timeout /T 3 /NOBREAK >nul 2>&1
goto ToolBoxP1


::──────────────────────────────────────────────────────────────────────────────────────────────────────────────::


:ToolBoxP2
%[Powershell]% "$host.ui.rawui.windowtitle='NightBox (2/2)'"
Batbox /h 1 && mode 102,17 && cls
chcp 65001 >nul 2>&1
echo %[Cinza]%┌────────────› %[AzulCL]%Limpeza%[Cinza]% ‹────────────┬────────› %[AzulCL]%Personalização%[Cinza]% ‹────────┬────────› %[AzulCL]%Reparação%[Cinza]% ‹────────┐
echo %[Cinza]%│                                   │                                  │                             │
echo %[Cinza]%│                                   │                                  │                             │
echo %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%01 %[Cinza]%] %[BrancoCL]%Windows Ultra Cleaner      %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%03 %[Cinza]%] %[BrancoCL]%Custom Wallpaper          %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%08 %[Cinza]%] %[BrancoCL]%SFC                  %[Cinza]%│
echo %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%02 %[Cinza]%] %[BrancoCL]%Network Cleaner            %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%04 %[Cinza]%] %[BrancoCL]%DarkMode Theme            %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%09 %[Cinza]%] %[BrancoCL]%DISM                 %[Cinza]%│
echo %[Cinza]%│                                   %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%05 %[Cinza]%] %[BrancoCL]%Files Explorer            %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%10 %[Cinza]%] %[BrancoCL]%CHKDSK               %[Cinza]%│
echo %[Cinza]%│                                   %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%06 %[Cinza]%] %[BrancoCL]%Custom Cursor             %[Cinza]%│                             │
echo %[Cinza]%│                                   %[Cinza]%│ %[Cinza]%[ %[BrancoCL]%07 %[Cinza]%] %[BrancoCL]%NiceTaskbar               %[Cinza]%│                             │
echo %[Cinza]%│                                   │                                  │                             │
echo %[Cinza]%│                                   │                                  │                             │
echo %[Cinza]%└───────────────────────────────────┴──────────────────────────────────┴─────────────────────────────┘
echo.
echo %[Cinza]%[ %[BrancoCL]%00 %[Cinza]%] %[BrancoCL]%Menu Inicial
echo %[Cinza]%[ %[BrancoCL]%PP %[Cinza]%] %[BrancoCL]%Próxima Página
echo.
set /p escolha=">>> "
chcp 850 >nul 2>&1

:: Menus
if "%escolha%"=="pp" set escolha= && goto ToolBoxP1
if "%escolha%"=="PP" set escolha= && goto ToolBoxP1
if "%escolha%"=="00" set escolha= && goto HomePage
:: Limpeza
if "%escolha%"=="01" set escolha= && goto WinCleaner
if "%escolha%"=="02" set escolha= && goto NetCleaner
:: Personalização
if "%escolha%"=="03" set escolha= && goto CustomWallpaper
if "%escolha%"=="04" set escolha= && goto DarkModeTheme
if "%escolha%"=="05" set escolha= && goto FilesDL
if "%escolha%"=="06" set escolha= && goto CustomCursor
if "%escolha%"=="07" set escolha= && goto NiceTaskbar
:: Reparação
if "%escolha%"=="08" set escolha= && goto ToolBoxP2
if "%escolha%"=="09" set escolha= && goto ToolBoxP2
if "%escolha%"=="10" set escolha= && goto ToolBoxP2


Batbox /h 0 && mode 41,6 && cls
chcp 65001 >nul 2>&1
echo %[Cinza]%┌──────────────› %[Vermelho]%AVISOS%[Cinza]% ‹───────────────┐
echo %[Cinza]%│                                       │
echo %[Cinza]%│  %[BrancoCL]%Essa opção não existe. Tente outra.  %[Cinza]%│
echo %[Cinza]%│                                       │
echo %[Cinza]%└───────────────────────────────────────┘
chcp 850 >nul 2>&1
timeout /T 3 /NOBREAK >nul 2>&1
goto ToolBoxP2


::────────────────────────────────────────────────── APLICATIVOS ──────────────────────────────────────────────────::
::────────────────────────────────────────────────── APLICATIVOS ──────────────────────────────────────────────────::


:AdwCleaner
DEL /F /Q %SYSTEMDRIVE%\NightBox\adwcleaner.exe >nul 2>&1 && RMDIR /S /Q %SYSTEMDRIVE%\AdwCleaner >nul 2>&1
mode 26,6
%[Powershell]% "$host.ui.rawui.windowtitle=' '"
echo.
echo.
echo   %[Cinza]%[ %[BrancoCL]%Fazendo o Download%[Cinza]% ]
echo         %[Verde]%Aguarde...     
echo.
%[Aria2]% -d "%SYSTEMDRIVE%\NightBox" "https://adwcleaner.malwarebytes.com/adwcleaner?channel=release" >nul 2>&1
START %SYSTEMDRIVE%\NightBox\adwcleaner.exe >nul 2>&1
goto ToolBoxP1

::──────────────────────────────────────────────────────────────────────────────────────────────────────────────::

:Kaspersky
DEL /F /Q %SYSTEMDRIVE%\NightBox\KVRT.exe >nul 2>&1
mode 26,6
%[Powershell]% "$host.ui.rawui.windowtitle=' '"
echo.
echo.
echo   %[Cinza]%[ %[BrancoCL]%Fazendo o Download%[Cinza]% ]
echo         %[Verde]%Aguarde...     
echo.
%[Aria2]% -d "%SYSTEMDRIVE%\NightBox" "https://devbuilds.s.kaspersky-labs.com/devbuilds/KVRT/latest/full/KVRT.exe" >nul 2>&1
START %SYSTEMDRIVE%\NightBox\KVRT.exe >nul 2>&1
goto ToolBoxP1

::──────────────────────────────────────────────────────────────────────────────────────────────────────────────::

:Defraggler
RMDIR /S /Q %SYSTEMDRIVE%\NightBox\Defrag >nul 2>&1
mode 26,6
%[Powershell]% "$host.ui.rawui.windowtitle=' '"
echo.
echo.
echo   %[Cinza]%[ %[BrancoCL]%Fazendo o Download%[Cinza]% ]
echo         %[Verde]%Aguarde...     
echo.
%[Aria2]% -d "%SYSTEMDRIVE%\NightBox" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Aplicativos/Defrag.rar" >nul 2>&1
UnRAR x %SYSTEMDRIVE%\NightBox\Defrag.rar %SYSTEMDRIVE%\NightBox >nul 2>&1
DEL /F /Q %SYSTEMDRIVE%\NightBox\Defrag.rar >nul 2>&1
START %SYSTEMDRIVE%\NightBox\Defrag\DiskDefrag.exe >nul 2>&1
goto ToolBoxP1

::──────────────────────────────────────────────────────────────────────────────────────────────────────────────::

:DriverBooster
RMDIR /S /Q %SYSTEMDRIVE%\NightBox\DriverBooster >nul 2>&1
mode 26,6
%[Powershell]% "$host.ui.rawui.windowtitle=' '"
echo.
echo.
echo   %[Cinza]%[ %[BrancoCL]%Fazendo o Download%[Cinza]% ]
echo         %[Verde]%Aguarde...     
echo.
%[Aria2]% -d "%SYSTEMDRIVE%\NightBox\DriverBooster" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Aplicativos/DriverBooster01.rar" >nul 2>&1
%[Aria2]% -d "%SYSTEMDRIVE%\NightBox\DriverBooster" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Aplicativos/DriverBooster02.rar" >nul 2>&1
%[Aria2]% -d "%SYSTEMDRIVE%\NightBox\DriverBooster" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Aplicativos/version.dll" >nul 2>&1
UnRAR x %SYSTEMDRIVE%\NightBox\DriverBooster\DriverBooster01.rar %SYSTEMDRIVE%\NightBox\DriverBooster >nul 2>&1 && DEL /F /Q %SYSTEMDRIVE%\NightBox\DriverBooster\DriverBooster01.rar >nul 2>&1
UnRAR x %SYSTEMDRIVE%\NightBox\DriverBooster\DriverBooster02.rar %SYSTEMDRIVE%\NightBox\DriverBooster >nul 2>&1 && DEL /F /Q %SYSTEMDRIVE%\NightBox\DriverBooster\DriverBooster02.rar >nul 2>&1
START %SYSTEMDRIVE%\NightBox\DriverBooster\DriverBooster.exe >nul 2>&1
goto ToolBoxP1

::──────────────────────────────────────────────────────────────────────────────────────────────────────────────::

:Uninstaller
RMDIR /S /Q %SYSTEMDRIVE%\NightBox\Uninstaller >nul 2>&1
RMDIR /S /Q "%SYSTEMDRIVE%\ProgramData\VS Revo Group\Revo Uninstaller Pro" >nul 2>&1
MKDIR "%SYSTEMDRIVE%\ProgramData\VS Revo Group\Revo Uninstaller Pro" >nul 2>&1
mode 26,6
%[Powershell]% "$host.ui.rawui.windowtitle=' '"
echo.
echo.
echo   %[Cinza]%[ %[BrancoCL]%Fazendo o Download%[Cinza]% ]
echo         %[Verde]%Aguarde...     
echo.
%[Aria2]% -d "%SYSTEMDRIVE%\NightBox" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Aplicativos/Uninstaller.rar" >nul 2>&1
UnRAR x %SYSTEMDRIVE%\NightBox\Uninstaller.rar %SYSTEMDRIVE%\NightBox >nul 2>&1
DEL /F /Q %SYSTEMDRIVE%\NightBox\Uninstaller.rar >nul 2>&1
MOVE %SYSTEMDRIVE%\NightBox\revouninstallerpro5.lic "%SYSTEMDRIVE%\ProgramData\VS Revo Group\Revo Uninstaller Pro" >nul 2>&1
START %SYSTEMDRIVE%\NightBox\Uninstaller\RevoUninPro.exe >nul 2>&1
goto ToolBoxP1


::────────────────────────────────────────────────── OTIMIZAÇÕES ──────────────────────────────────────────────────::
::────────────────────────────────────────────────── OTIMIZAÇÕES ──────────────────────────────────────────────────::


:WinUtility
MKDIR %SYSTEMDRIVE%\NightBox >nul 2>&1
DEL /F /Q %SYSTEMDRIVE%\NightBox\WinUT.bat >nul 2>&1
echo @echo off>>%SYSTEMDRIVE%\NightBox\WinUT.bat
echo powershell "irm https://christitus.com/win | iex">>%SYSTEMDRIVE%\NightBox\WinUT.bat
echo exit>>%SYSTEMDRIVE%\NightBox\WinUT.bat
START %SYSTEMDRIVE%\NightBox\WinUT.bat >nul 2>&1
goto ToolBoxP1

::──────────────────────────────────────────────────────────────────────────────────────────────────────────────::

:WinMemory
DEL /F /Q %PROGRAMDATA%\WinMemoryCleaner.exe >nul 2>&1
mode 26,6
%[Powershell]% "$host.ui.rawui.windowtitle=' '"
echo.
echo.
echo   %[Cinza]%[ %[BrancoCL]%Fazendo o Download%[Cinza]% ]
echo         %[Verde]%Aguarde...     
echo.
%[Aria2]% -d "%PROGRAMDATA%" "https://github.com/IgorMundstein/WinMemoryCleaner/releases/latest/download/WinMemoryCleaner.exe" >nul 2>&1
START %PROGRAMDATA%\WinMemoryCleaner.exe >nul 2>&1
goto ToolBoxP1

::──────────────────────────────────────────────────────────────────────────────────────────────────────────────::

:WinOptimizer
DEL /F /Q %SYSTEMDRIVE%\NightBox\Optimizer-16.7.exe >nul 2>&1
mode 26,6
%[Powershell]% "$host.ui.rawui.windowtitle=' '"
echo.
echo.
echo   %[Cinza]%[ %[BrancoCL]%Fazendo o Download%[Cinza]% ]
echo         %[Verde]%Aguarde...     
echo.
%[Aria2]% -d "%SYSTEMDRIVE%\NightBox" "https://github.com/hellzerg/optimizer/releases/latest/download/Optimizer-16.7.exe" >nul 2>&1
START %SYSTEMDRIVE%\NightBox\Optimizer-16.7.exe >nul 2>&1
goto ToolBoxP1

::──────────────────────────────────────────────────────────────────────────────────────────────────────────────::

:WinToys
DEL /F /Q %SYSTEMDRIVE%\NightBox\Wintoys Installer.exe >nul 2>&1
mode 26,6
%[Powershell]% "$host.ui.rawui.windowtitle=' '"
echo.
echo.
echo   %[Cinza]%[ %[BrancoCL]%Fazendo o Download%[Cinza]% ]
echo         %[Verde]%Aguarde...     
echo.
%[Aria2]% -d "%SYSTEMDRIVE%\NightBox" "https://get.microsoft.com/installer/download/9P8LTPGCBZXD" >nul 2>&1
START %SYSTEMDRIVE%\NightBox\Wintoys Installer.exe >nul 2>&1
goto ToolBoxP1

::──────────────────────────────────────────────────────────────────────────────────────────────────────────────::

:ShutUp10
DEL /F /Q %SYSTEMDRIVE%\NightBox\OOSU10.exe >nul 2>&1
mode 26,6
%[Powershell]% "$host.ui.rawui.windowtitle=' '"
echo.
echo.
echo   %[Cinza]%[ %[BrancoCL]%Fazendo o Download%[Cinza]% ]
echo         %[Verde]%Aguarde...     
echo.
%[Aria2]% -d "%SYSTEMDRIVE%\NightBox" "https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe" >nul 2>&1
START %SYSTEMDRIVE%\NightBox\OOSU10.exe >nul 2>&1
goto ToolBoxP1


::───────────────────────────────────────────────── UTILITÁRIOS ────────────────────────────────────────────────::
::───────────────────────────────────────────────── UTILITÁRIOS ────────────────────────────────────────────────::


:WinActivation
MKDIR %SYSTEMDRIVE%\NightBox >nul 2>&1
DEL /F /Q %SYSTEMDRIVE%\NightBox\WinAC.bat >nul 2>&1
echo powershell "irm https://massgrave.dev/get | iex">>%SYSTEMDRIVE%\NightBox\WinAC.bat
echo exit>>%SYSTEMDRIVE%\NightBox\WinAC.bat
START /MIN %SYSTEMDRIVE%\NightBox\WinAC.bat >nul 2>&1
goto ToolBoxP1

::──────────────────────────────────────────────────────────────────────────────────────────────────────────────::

:WinUpdate
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\Settings" /v "PausedFeatureStatus" /t REG_DWORD /d "1" /f >nul 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\Settings" /v "PausedQualityStatus" /t REG_DWORD /d "1" /f >nul 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX" /v "IsConvergedUpdateStackEnabled" /t REG_DWORD /d "1" /f >nul 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "ActiveHoursEnd" /t REG_DWORD /d "17" /f >nul 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "ActiveHoursStart" /t REG_DWORD /d "8" /f >nul 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "AllowAutoWindowsUpdateDownloadOverMeteredNetwork" /t REG_DWORD /d "0" /f >nul 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "DeferFeatureUpdatesPeriodInDays" /t REG_DWORD /d "0" /f >nul 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "DeferQualityUpdatesPeriodInDays" /t REG_DWORD /d "0" /f >nul 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "0" /f >nul 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "FlightCommitted" /t REG_DWORD /d "0" /f >nul 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "LastToastAction" /t REG_DWORD /d "0" /f >nul 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "UxOption" /t REG_DWORD /d "0" /f >nul 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "InsiderProgramEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "PendingRebootStartTime" /t REG_SZ /d "2019-07-28T03:07:38Z" /f >nul 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "PauseFeatureUpdatesStartTime" /t REG_SZ /d "2019-07-28T10:38:56Z" /f >nul 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "PauseQualityUpdatesStartTime" /t REG_SZ /d "2019-07-28T10:38:56Z" /f >nul 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "PauseUpdatesExpiryTime" /t REG_SZ /d "2088-01-01T10:38:56Z" /f >nul 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "PauseFeatureUpdatesEndTime" /t REG_SZ /d "2088-01-01T10:38:56Z" /f >nul 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "PauseQualityUpdatesEndTime" /t REG_SZ /d "2088-01-01T10:38:56Z" /f >nul 2>&1
goto ToolBoxP1

::──────────────────────────────────────────────────────────────────────────────────────────────────────────────::

:AIORepack
DEL /F /Q %SYSTEMDRIVE%\NightBox\VisualCppRedist_AIO_x86_x64.exe >nul 2>&1
%[Aria2]% -d "%SYSTEMDRIVE%\NightBox" "https://github.com/abbodi1406/vcredist/releases/latest/download/VisualCppRedist_AIO_x86_x64.exe" >nul 2>&1
START %SYSTEMDRIVE%\NightBox\VisualCppRedist_AIO_x86_x64.exe >nul 2>&1
goto ToolBoxP1

::──────────────────────────────────────────────────────────────────────────────────────────────────────────────::

:WinDebloater
MKDIR %SYSTEMDRIVE%\NightBox >nul 2>&1
DEL /F /Q %SYSTEMDRIVE%\NightBox\Debloater.bat >nul 2>&1
echo @echo off>>%SYSTEMDRIVE%\NightBox\Debloater.bat
echo powershell "& ([scriptblock]::Create((irm "https://win11debloat.raphi.re/")))">>%SYSTEMDRIVE%\NightBox\Debloater.bat
echo exit>>%SYSTEMDRIVE%\NightBox\Debloater.bat
START %SYSTEMDRIVE%\NightBox\Debloater.bat >nul 2>&1
goto ToolBoxP1


::───────────────────────────────────────────────── LIMPEZA ────────────────────────────────────────────────::
::───────────────────────────────────────────────── LIMPEZA ────────────────────────────────────────────────::


:WinCleaner
Batbox /h 0 && mode 42,7
%[Powershell]% "$host.ui.rawui.windowtitle='Arquivos Temp'"
cls && chcp 65001 >nul 2>&1
echo.
echo              %[Ciano]%Limpando Disco
echo.
echo %[BrancoCL]%  ┌────────────────────────────────────┐
echo %[BrancoCL]%  │%[Verde]%██████                              %[BrancoCL]%│
echo %[BrancoCL]%  └────────────────────────────────────┘
chcp 850 >nul 2>&1

DEL %SYSTEMDRIVE%\$recycle.bin\* /s /q >nul 2>&1
%[Powershell]% Clear-RecycleBin -Confirm:$false >nul 2>&1
%[Powershell]% -NoProfile -Command% Clear-RecycleBin -Force >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do (Powershell.exe Remove-Item -Path "%%F\AppData\Local\Temp\*" -Recurse -Force) >nul 2>&1
MKDIR %LocalAppdata%\Temp >nul 2>&1
TYPE nul > %LocalAppdata%\Temp\vazio.txt >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do ROBOCOPY %%F\AppData\Local\Temp\ %%F\AppData\Local\Temp\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Temp\vazio.txt >nul 2>&1
DEL %SYSTEMDRIVE%\Windows\Temp\* /s /q >nul 2>&1
MKDIR %SYSTEMDRIVE%\Windows\Temp >nul 2>&1
TYPE nul > %SYSTEMDRIVE%\Windows\Temp\vazio.txt >nul 2>&1
ROBOCOPY %SYSTEMDRIVE%\Windows\Temp %SYSTEMDRIVE%\Windows\Temp /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
DEL %SYSTEMDRIVE%\Windows\Temp\vazio.txt >nul 2>&1
DEL %SYSTEMDRIVE%\Windows\Logs\cbs\*.log >nul 2>&1
DEL %SYSTEMDRIVE%\Windows\setupact.log >nul 2>&1
ATTRIB -s %SYSTEMDRIVE%\windows\logs\measuredboot\*.* >nul 2>&1
DEL %SYSTEMDRIVE%\windows\logs\measuredboot\*.log >nul 2>&1
ATTRIB -h -s %SYSTEMDRIVE%\Windows\ServiceProfiles\NetworkService\ >nul 2>&1
ATTRIB -h -s %SYSTEMDRIVE%\Windows\ServiceProfiles\LocalService\ >nul 2>&1
DEL %SYSTEMDRIVE%\Windows\ServiceProfiles\LocalService\AppData\Local\Temp\MpCmdRun.log >nul 2>&1
DEL %SYSTEMDRIVE%\Windows\ServiceProfiles\NetworkService\AppData\Local\Temp\MpCmdRun.log >nul 2>&1
ATTRIB +h +s %SYSTEMDRIVE%\Windows\ServiceProfiles\NetworkService\ >nul 2>&1
ATTRIB +h +s %SYSTEMDRIVE%\Windows\ServiceProfiles\LocalService\ >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\*.log /s /q >nul 2>&1
DEL %SYSTEMDRIVE%\Windows\Logs\MeasuredBoot\*.log >nul 2>&1
DEL %SYSTEMDRIVE%\Windows\Logs\MoSetup\*.log >nul 2>&1
DEL %SYSTEMDRIVE%\Windows\Panther\*.log /s /q >nul 2>&1
DEL %SYSTEMDRIVE%\Windows\Performance\WinSAT\winsat.log /s /q >nul 2>&1
DEL %SYSTEMDRIVE%\Windows\inf\*.log /s /q >nul 2>&1
DEL %SYSTEMDRIVE%\Windows\logs\*.log /s /q >nul 2>&1
DEL %SYSTEMDRIVE%\Windows\SoftwareDistribution\*.log /s /q >nul 2>&1
DEL %SYSTEMDRIVE%\Windows\Microsoft.NET\*.log /s /q >nul 2>&1
TASKKILL /F /IM "OneDrive.exe" >nul 2>&1
TASKKILL /F /IM "OneDrive.exe" >nul 2>&1
TASKKILL /F /IM "OneDrive.exe" >nul 2>&1
TIMEOUT /T 1 /NOBREAK >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\OneDrive\setup\logs\*.log /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\OneDrive\*.odl /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\OneDrive\*.aodl /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\OneDrive\*.otc /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\OneDrive\*.qmlc /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\CrashDumps\*.dmp /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Windows\Explorer\*.db /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Windows\WebCache\*.log /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Windows\SettingSync\*.log /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Windows\Explorer\ThumbCacheToDELete\*.tmp /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\"Terminal Server Client"\Cache\*.bin /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Windows\INetCache\IE\* /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Windows\INetCache\Low\*.dat /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Windows\INetCache\Low\*.js /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Windows\INetCache\Low\*.htm /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Windows\INetCache\Low\*.txt /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Windows\INetCache\Low\*.jpg /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do ROBOCOPY %%F\AppData\Local\Microsoft\Windows\INetCache\IE\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1


%[Powershell]% "$host.ui.rawui.windowtitle='Navegador Edge'"
cls && chcp 65001 >nul 2>&1
echo.
echo              %[Ciano]%Limpando Disco
echo.
echo %[BrancoCL]%  ┌────────────────────────────────────┐
echo %[BrancoCL]%  │%[Verde]%████████████                        %[BrancoCL]%│
echo %[BrancoCL]%  └────────────────────────────────────┘
chcp 850 >nul 2>&1
TASKKILL /F /IM "msedge.exe" >nul 2>&1
TASKKILL /F /IM "msedge.exe" >nul 2>&1
TASKKILL /F /IM "msedge.exe" >nul 2>&1
TIMEOUT /T 1 /NOBREAK >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do ATTRIB -h -s %%F\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*.* >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do ATTRIB -h -s %%F\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*.* >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*.* /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*.* /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do ATTRIB +h +s %%F\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do ATTRIB +h +s %%F\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\Cache_Data\data*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\Cache\Cache_Data\data*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\Cache\Cache_Data\data*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\Cache_Data\f*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\Cache\Cache_Data\f*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\Cache\Cache_Data\f*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\Cache_Data\index. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\Cache\Cache_Data\index. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\Cache\Cache_Data\index. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\GPUCache\d*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\GPUCache\d*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\GPUCache\d*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\GPUCache\i*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\GPUCache\i*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\GPUCache\i*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\IndexedDB\https_ntp.msn.com_0.indexeddb.leveldb\*.* /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\IndexedDB\https_ntp.msn.com_0.indexeddb.leveldb\*.* /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\IndexedDB\https_ntp.msn.com_0.indexeddb.leveldb\*.* /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\*.pma /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\"Code Cache"\js\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\"Code Cache"\js\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\"Code Cache"\js\*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\"Code Cache"\wasm\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\"Code Cache"\wasm\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\"Code Cache"\wasm\*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\"Platform Notifications"\*.* /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\"Platform Notifications"\*.* /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\"Platform Notifications"\*.* /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\EdgePushStorageWithWinRt\*.log /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\EdgePushStorageWithWinRt\*.log /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\EdgePushStorageWithWinRt\*.log /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\"File System"\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\"File System"\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\"File System"\*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\CacheStorage\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\"Service Worker"\CacheStorage\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\"Service Worker"\CacheStorage\*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do ROBOCOPY %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\CacheStorage\ %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\CacheStorage\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do ROBOCOPY %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\"Service Worker"\CacheStorage\ %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\"Service Worker"\CacheStorage\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do ROBOCOPY %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\"Service Worker"\CacheStorage\ %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\"Service Worker"\CacheStorage\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\Database\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\"Service Worker"\Database\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\"Service Worker"\Database\*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\ScriptCache\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\"Service Worker"\ScriptCache\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\"Service Worker"\ScriptCache\*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\EdgeCoupons\coupons_data.db\*.ldb /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\EdgeCoupons\coupons_data.db\*.ldb /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\EdgeCoupons\coupons_data.db\*.ldb /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\EdgeCoupons\coupons_data.db\index. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\EdgeCoupons\coupons_data.db\index. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\EdgeCoupons\coupons_data.db\index. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\Default\EdgeCoupons\coupons_data.db\*.log /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Guest Profile"\EdgeCoupons\coupons_data.db\*.log /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\"Profile %%i"\EdgeCoupons\coupons_data.db\*.log /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Microsoft\Edge\"User Data"\BrowserMetrics\*.pma /s /q >nul 2>&1


%[Powershell]% "$host.ui.rawui.windowtitle='Navegador FireFox'"
cls && chcp 65001 >nul 2>&1
echo.
echo              %[Ciano]%Limpando Disco
echo.
echo %[BrancoCL]%  ┌────────────────────────────────────┐
echo %[BrancoCL]%  │%[Verde]%██████████████████                  %[BrancoCL]%│
echo %[BrancoCL]%  └────────────────────────────────────┘
chcp 850 >nul 2>&1
TASKKILL /F /IM "firefox.exe" >nul 2>&1
TASKKILL /F /IM "firefox.exe" >nul 2>&1
TASKKILL /F /IM "firefox.exe" >nul 2>&1
TIMEOUT /T 1 /NOBREAK >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\local\Mozilla\Firefox\Profiles\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\local\Mozilla\Firefox\Profiles\script*.bin /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\local\Mozilla\Firefox\Profiles\startup*.* /s /q >nul 2>&1


%[Powershell]% "$host.ui.rawui.windowtitle='Navegador Chrome'"
cls && chcp 65001 >nul 2>&1
echo.
echo              %[Ciano]%Limpando Disco
echo.
echo %[BrancoCL]%  ┌────────────────────────────────────┐
echo %[BrancoCL]%  │%[Verde]%████████████████████████            %[BrancoCL]%│
echo %[BrancoCL]%  └────────────────────────────────────┘
chcp 850 >nul 2>&1
TASKKILL /F /IM "chrome.exe" >nul 2>&1
TASKKILL /F /IM "chrome.exe" >nul 2>&1
TASKKILL /F /IM "chrome.exe" >nul 2>&1
TIMEOUT /T 1 /NOBREAK >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\Default\Cache\Cache_Data\data*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\Cache\Cache_Data\data*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\Cache\Cache_Data\data*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\Default\Cache\Cache_Data\f*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\Cache\Cache_Data\f*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\Cache\Cache_Data\f*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\Default\Cache\Cache_Data\index. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\Cache\Cache_Data\index. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\Cache\Cache_Data\index. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\Default\GPUCache\d*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\GPUCache\d*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\GPUCache\d*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\Default\GPUCache\i*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\GPUCache\i*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\GPUCache\i*. /s /q) >nul 2>&1
DEL %SYSTEMDRIVE%\Program Files\Google\Chrome\Application\SetupMetrics\*.pma /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\Default\"Code Cache"\js\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\"Code Cache"\js\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\"Code Cache"\js\*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\Default\"Code Cache"\wasm\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\"Code Cache"\wasm\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\"Code Cache"\wasm\*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\Default\Storage\data_*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\Storage\data_*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\Storage\data_*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\Default\JumpListIconsRecentClosed\*.tmp /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\JumpListIconsRecentClosed\*.tmp /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\JumpListIconsRecentClosed\*.tmp /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\Default\Storage\index*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\Storage\index*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\Storage\index*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\Default\History-journal*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\History-journal*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\History-journal*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\Default\"Code Cache"\webui_js\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\"Code Cache"\webui_js\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\"Code Cache"\webui_js\*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\CacheStorage\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\"Service Worker"\CacheStorage\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\"Service Worker"\CacheStorage\*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\Database\*.log /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\"Service Worker"\Database\*.log /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\"Service Worker"\Database\*.log /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do ROBOCOPY %%F\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\CacheStorage\ %%F\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\CacheStorage\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do ROBOCOPY %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\"Service Worker"\CacheStorage\ %%F\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do ROBOCOPY %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\"Service Worker"\CacheStorage\ %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\"Service Worker"\CacheStorage\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\Database\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\"Service Worker"\Database\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\"Service Worker"\Database\*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\ScriptCache\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Guest Profile"\"Service Worker"\ScriptCache\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\"Profile %%i"\"Service Worker"\ScriptCache\*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\BrowserMetrics*.pma /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Google\Chrome\"User Data"\crash*.pma /s /q >nul 2>&1


%[Powershell]% "$host.ui.rawui.windowtitle='Navegador Brave'"
cls && chcp 65001 >nul 2>&1
echo.
echo              %[Ciano]%Limpando Disco
echo.
echo %[BrancoCL]%  ┌────────────────────────────────────┐
echo %[BrancoCL]%  │%[Verde]%██████████████████████████████      %[BrancoCL]%│
echo %[BrancoCL]%  └────────────────────────────────────┘
chcp 850 >nul 2>&1
TASKKILL /F /IM "brave.exe" >nul 2>&1
TASKKILL /F /IM "brave.exe" >nul 2>&1
TASKKILL /F /IM "brave.exe" >nul 2>&1
TIMEOUT /T 1 /NOBREAK >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\Cache_Data\data*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\Cache\Cache_Data\data*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\Cache_Data\f*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\Cache\Cache_Data\f*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\Cache_Data\index. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\Cache\Cache_Data\index. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\GPUCache\d*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\GPUCache\d*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\GPUCache\i*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\GPUCache\i*. /s /q >nul 2>&1
DEL %SYSTEMDRIVE%\Program Files\BraveSoftware\Brave-Browser\Application\SetupMetrics\*.pma /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Code Cache"\js\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\"Code Cache"\js\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Code Cache"\wasm\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\"Code Cache"\wasm\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Storage\data_*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\Storage\data_*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\JumpListIconsRecentClosed\*.tmp /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\JumpListIconsRecentClosed\*.tmp /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Storage\index*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\Storage\index*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\History-journal*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\History-journal*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Code Cache"\webui_js\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\"Code Cache"\webui_js\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\CacheStorage\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\"Service Worker"\CacheStorage\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\Database\*.log /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\"Service Worker"\Database\*.log /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do ROBOCOPY %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\CacheStorage\ %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\CacheStorage\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do ROBOCOPY %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\"Service Worker"\CacheStorage\ %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\Database\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\"Service Worker"\Database\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\ScriptCache\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Guest Profile"\"Service Worker"\ScriptCache\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\BrowserMetrics*.pma /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\crash*.pma /s /q >nul 2>&1


%[Powershell]% "$host.ui.rawui.windowtitle='Navegador Vivaldi'"
cls && chcp 65001 >nul 2>&1
echo.
echo              %[Ciano]%Limpando Disco
echo.
echo %[BrancoCL]%  ┌────────────────────────────────────┐
echo %[BrancoCL]%  │%[Verde]%████████████████████████████████████%[BrancoCL]%│
echo %[BrancoCL]%  └────────────────────────────────────┘
chcp 850 >nul 2>&1
TASKKILL /F /IM "vivaldi.exe" >nul 2>&1
TASKKILL /F /IM "vivaldi.exe" >nul 2>&1
TASKKILL /F /IM "vivaldi.exe" >nul 2>&1
TIMEOUT /T 1 /NOBREAK >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\Default\Cache\Cache_Data\data*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\Cache\Cache_Data\data*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\Cache\Cache_Data\data*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\Default\Cache\Cache_Data\f*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\Cache\Cache_Data\f*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\Cache\Cache_Data\f*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\Default\Cache\Cache_Data\index. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\Cache\Cache_Data\index. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\Cache\Cache_Data\index. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\Default\GPUCache\d*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\GPUCache\d*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\GPUCache\d*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\Default\GPUCache\i*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\GPUCache\i*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\GPUCache\i*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\Default\"Code Cache"\js\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\"Code Cache"\js\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\"Code Cache"\js\*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\Default\"Code Cache"\wasm\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\"Code Cache"\wasm\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\"Code Cache"\wasm\*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\Default\Storage\data_*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\Storage\data_*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\Storage\data_*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\Default\JumpListIconsRecentClosed\*.tmp /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\JumpListIconsRecentClosed\*.tmp /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\JumpListIconsRecentClosed\*.tmp /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\Default\Storage\index*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\Storage\index*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\Storage\index*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\Default\History-journal*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\History-journal*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\History-journal*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\Default\"Code Cache"\webui_js\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\"Code Cache"\webui_js\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\"Code Cache"\webui_js\*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\CacheStorage\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\"Service Worker"\CacheStorage\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\"Service Worker"\CacheStorage\*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\Database\*.log /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\"Service Worker"\Database\*.log /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\"Service Worker"\Database\*.log /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do ROBOCOPY %%F\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\CacheStorage\ %%F\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\CacheStorage\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do ROBOCOPY %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\"Service Worker"\CacheStorage\ %%F\AppData\Local\Vivaldi\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do ROBOCOPY %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\"Service Worker"\CacheStorage\ %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\"Service Worker"\CacheStorage\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\Database\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\"Service Worker"\Database\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\"Service Worker"\Database\*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\ScriptCache\*. /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Guest Profile"\"Service Worker"\ScriptCache\*. /s /q >nul 2>&1
for /l %%i in (1,1,12) do (for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\"Profile %%i"\"Service Worker"\ScriptCache\*. /s /q) >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\BrowserMetrics*.pma /s /q >nul 2>&1
for /d %%F in (%SYSTEMDRIVE%\Users\*) do DEL %%F\AppData\Local\Vivaldi\"User Data"\crash*.pma /s /q >nul 2>&1

%[Powershell]% "$host.ui.rawui.windowtitle='Logs do Sistema'"
for /f "tokens=*" %%G in ('wevtutil.exe el') DO (wevtutil.exe cl "%%G") >nul 2>&1
goto ToolBoxP2

::──────────────────────────────────────────────────────────────────────────────────────────────────────────────::

:NetCleaner
Batbox /h 0 && mode 44,7
%[Powershell]% "$host.ui.rawui.windowtitle='Alterando IP'"
cls && chcp 65001 >nul 2>&1
echo.
echo                 %[Ciano]%Alterando IP
echo.
echo %[BrancoCL]%  ┌──────────────────────────────────────┐
echo %[BrancoCL]%  │%[Verde]%                                      %[BrancoCL]%│
echo %[BrancoCL]%  └──────────────────────────────────────┘
chcp 850 >nul 2>&1
ipconfig /release >nul 2>&1
ipconfig /renew >nul 2>&1


%[Powershell]% "$host.ui.rawui.windowtitle='Limpando DNS'"
cls && chcp 65001 >nul 2>&1
echo.
echo                 %[Ciano]%Alterando IP
echo.
echo %[BrancoCL]%  ┌──────────────────────────────────────┐
echo %[BrancoCL]%  │%[Verde]%█████████████████████                 %[BrancoCL]%│
echo %[BrancoCL]%  └──────────────────────────────────────┘
chcp 850 >nul 2>&1
ipconfig /flushdns >nul 2>&1
ipconfig /registerdns >nul 2>&1


%[Powershell]% "$host.ui.rawui.windowtitle='Resetando IP'"
cls && chcp 65001 >nul 2>&1
echo.
echo                 %[Ciano]%Alterando IP
echo.
echo %[BrancoCL]%  ┌──────────────────────────────────────┐
echo %[BrancoCL]%  │%[Verde]%██████████████████████████████████████%[BrancoCL]%│
echo %[BrancoCL]%  └──────────────────────────────────────┘
chcp 850 >nul 2>&1
arp -d * >nul 2>&1
nbtstat -R >nul 2>&1
nbtstat -RR >nul 2>&1
netsh int ip reset >nul 2>&1
goto ToolBoxP2


::────────────────────────────────────────────────── PERSONALIZAÇÃO ──────────────────────────────────────────────────::
::────────────────────────────────────────────────── PERSONALIZAÇÃO ──────────────────────────────────────────────────::


:CustomWallpaper
DEL /F /Q %SYSTEMDRIVE%\NightBox\WallpaperChanger.exe >nul 2>&1
%[Aria2]% -d "%SYSTEMDRIVE%\NightBox" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Utilitarios/WallpaperChanger.exe" >nul 2>&1
cls && Batbox /h 1 && mode 40,9 && chcp 65001 >nul 2>&1
echo %[Cinza]%┌──────────────› %[Vermelho]%AVISOS%[Cinza]% ‹──────────────┐
echo %[Cinza]%│                                      │
echo %[Cinza]%│ %[BrancoCL]% Digite %[Ciano]%website %[BrancoCL]%para ver os IDs dos  %[Cinza]%│
echo %[Cinza]%│ %[BrancoCL]%             wallpapers              %[Cinza]%│
echo %[Cinza]%│                                      │
echo %[Cinza]%└──────────────────────────────────────┘
echo              %[AzulCL]%[ %[BrancoCL]%00 %[AzulCL]%] %[BrancoCL]%Voltar %[BrancoCL]%
set /p escolha=">>> "
chcp 850 >nul 2>&1

if "%escolha%"=="00" set escolha= && goto ToolBoxP2
if "%escolha%"=="01" set escolha= && DEL /F /Q %PROGRAMDATA%\001.png >nul 2>&1 && %[Aria2]% -d "%PROGRAMDATA%" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Wallpapers/001.png" >nul 2>&1 && %SYSTEMDRIVE%\NightBox\WallpaperChanger.exe %PROGRAMDATA%\001.png 4 >nul 2>&1 && goto wallpapers
if "%escolha%"=="02" set escolha= && DEL /F /Q %PROGRAMDATA%\002.png >nul 2>&1 && %[Aria2]% -d "%PROGRAMDATA%" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Wallpapers/002.png" >nul 2>&1 && %SYSTEMDRIVE%\NightBox\WallpaperChanger.exe %PROGRAMDATA%\002.png 4 >nul 2>&1 && goto Wallpapers
if "%escolha%"=="03" set escolha= && DEL /F /Q %PROGRAMDATA%\003.png >nul 2>&1 && %[Aria2]% -d "%PROGRAMDATA%" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Wallpapers/003.png" >nul 2>&1 && %SYSTEMDRIVE%\NightBox\WallpaperChanger.exe %PROGRAMDATA%\003.png 4 >nul 2>&1 && goto Wallpapers
if "%escolha%"=="04" set escolha= && DEL /F /Q %PROGRAMDATA%\004.png >nul 2>&1 && %[Aria2]% -d "%PROGRAMDATA%" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Wallpapers/004.png" >nul 2>&1 && %SYSTEMDRIVE%\NightBox\WallpaperChanger.exe %PROGRAMDATA%\004.png 4 >nul 2>&1 && goto Wallpapers
if "%escolha%"=="05" set escolha= && DEL /F /Q %PROGRAMDATA%\005.png >nul 2>&1 && %[Aria2]% -d "%PROGRAMDATA%" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Wallpapers/005.png" >nul 2>&1 && %SYSTEMDRIVE%\NightBox\WallpaperChanger.exe %PROGRAMDATA%\005.png 4 >nul 2>&1 && goto Wallpapers
if "%escolha%"=="06" set escolha= && DEL /F /Q %PROGRAMDATA%\006.png >nul 2>&1 && %[Aria2]% -d "%PROGRAMDATA%" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Wallpapers/006.png" >nul 2>&1 && %SYSTEMDRIVE%\NightBox\WallpaperChanger.exe %PROGRAMDATA%\006.png 4 >nul 2>&1 && goto Wallpapers
if "%escolha%"=="07" set escolha= && DEL /F /Q %PROGRAMDATA%\007.png >nul 2>&1 && %[Aria2]% -d "%PROGRAMDATA%" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Wallpapers/007.png" >nul 2>&1 && %SYSTEMDRIVE%\NightBox\WallpaperChanger.exe %PROGRAMDATA%\007.png 4 >nul 2>&1 && goto Wallpapers
if "%escolha%"=="08" set escolha= && DEL /F /Q %PROGRAMDATA%\008.png >nul 2>&1 && %[Aria2]% -d "%PROGRAMDATA%" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Wallpapers/008.png" >nul 2>&1 && %SYSTEMDRIVE%\NightBox\WallpaperChanger.exe %PROGRAMDATA%\008.png 4 >nul 2>&1 && goto Wallpapers
if "%escolha%"=="09" set escolha= && DEL /F /Q %PROGRAMDATA%\009.png >nul 2>&1 && %[Aria2]% -d "%PROGRAMDATA%" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Wallpapers/009.png" >nul 2>&1 && %SYSTEMDRIVE%\NightBox\WallpaperChanger.exe %PROGRAMDATA%\009.png 4 >nul 2>&1 && goto Wallpapers
if "%escolha%"=="10" set escolha= && DEL /F /Q %PROGRAMDATA%\010.png >nul 2>&1 && %[Aria2]% -d "%PROGRAMDATA%" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Wallpapers/010.png" >nul 2>&1 && %SYSTEMDRIVE%\NightBox\WallpaperChanger.exe %PROGRAMDATA%\010.png 4 >nul 2>&1 && goto Wallpapers
if "%escolha%"=="11" set escolha= && DEL /F /Q %PROGRAMDATA%\011.png >nul 2>&1 && %[Aria2]% -d "%PROGRAMDATA%" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Wallpapers/011.png" >nul 2>&1 && %SYSTEMDRIVE%\NightBox\WallpaperChanger.exe %PROGRAMDATA%\011.png 4 >nul 2>&1 && goto Wallpapers
if "%escolha%"=="12" set escolha= && DEL /F /Q %PROGRAMDATA%\012.png >nul 2>&1 && %[Aria2]% -d "%PROGRAMDATA%" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Wallpapers/012.png" >nul 2>&1 && %SYSTEMDRIVE%\NightBox\WallpaperChanger.exe %PROGRAMDATA%\012.png 4 >nul 2>&1 && goto Wallpapers
if "%escolha%"=="13" set escolha= && DEL /F /Q %PROGRAMDATA%\013.png >nul 2>&1 && %[Aria2]% -d "%PROGRAMDATA%" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Wallpapers/013.png" >nul 2>&1 && %SYSTEMDRIVE%\NightBox\WallpaperChanger.exe %PROGRAMDATA%\013.png 4 >nul 2>&1 && goto Wallpapers
if "%escolha%"=="14" set escolha= && DEL /F /Q %PROGRAMDATA%\014.png >nul 2>&1 && %[Aria2]% -d "%PROGRAMDATA%" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Wallpapers/014.png" >nul 2>&1 && %SYSTEMDRIVE%\NightBox\WallpaperChanger.exe %PROGRAMDATA%\014.png 4 >nul 2>&1 && goto Wallpapers
if "%escolha%"=="15" set escolha= && DEL /F /Q %PROGRAMDATA%\015.png >nul 2>&1 && %[Aria2]% -d "%PROGRAMDATA%" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Wallpapers/015.png" >nul 2>&1 && %SYSTEMDRIVE%\NightBox\WallpaperChanger.exe %PROGRAMDATA%\015.png 4 >nul 2>&1 && goto Wallpapers
if "%escolha%"=="16" set escolha= && DEL /F /Q %PROGRAMDATA%\016.png >nul 2>&1 && %[Aria2]% -d "%PROGRAMDATA%" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Wallpapers/016.png" >nul 2>&1 && %SYSTEMDRIVE%\NightBox\WallpaperChanger.exe %PROGRAMDATA%\016.png 4 >nul 2>&1 && goto wallpapers
if "%escolha%"=="17" set escolha= && DEL /F /Q %PROGRAMDATA%\017.png >nul 2>&1 && %[Aria2]% -d "%PROGRAMDATA%" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Wallpapers/017.png" >nul 2>&1 && %SYSTEMDRIVE%\NightBox\WallpaperChanger.exe %PROGRAMDATA%\017.png 4 >nul 2>&1 && goto Wallpapers
if "%escolha%"=="18" set escolha= && DEL /F /Q %PROGRAMDATA%\018.png >nul 2>&1 && %[Aria2]% -d "%PROGRAMDATA%" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Wallpapers/018.png" >nul 2>&1 && %SYSTEMDRIVE%\NightBox\WallpaperChanger.exe %PROGRAMDATA%\018.png 4 >nul 2>&1 && goto Wallpapers
if "%escolha%"=="19" set escolha= && DEL /F /Q %PROGRAMDATA%\019.png >nul 2>&1 && %[Aria2]% -d "%PROGRAMDATA%" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Wallpapers/019.png" >nul 2>&1 && %SYSTEMDRIVE%\NightBox\WallpaperChanger.exe %PROGRAMDATA%\019.png 4 >nul 2>&1 && goto Wallpapers
if "%escolha%"=="20" set escolha= && DEL /F /Q %PROGRAMDATA%\020.png >nul 2>&1 && %[Aria2]% -d "%PROGRAMDATA%" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Wallpapers/020.png" >nul 2>&1 && %SYSTEMDRIVE%\NightBox\WallpaperChanger.exe %PROGRAMDATA%\020.png 4 >nul 2>&1 && goto Wallpapers
if "%escolha%"=="website" set escolha= && start https://sites.google.com/view/nibox/wallpapers && goto Wallpapers

Batbox /h 0 && mode 41,6 && cls
chcp 65001 >nul 2>&1
echo %[Cinza]%┌──────────────› %[Vermelho]%AVISOS%[Cinza]% ‹───────────────┐
echo %[Cinza]%│                                       │
echo %[Cinza]%│  %[BrancoCL]%Essa opção não existe. Tente outra.  %[Cinza]%│
echo %[Cinza]%│                                       │
echo %[Cinza]%└───────────────────────────────────────┘
chcp 850 >nul 2>&1
timeout /T 3 /NOBREAK >nul 2>&1
goto CustomWallpaper

::──────────────────────────────────────────────────────────────────────────────────────────────────────────────::

:DarkModeTheme
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v SystemUsesLightTheme /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f >nul 2>&1
goto ToolBoxP2

::──────────────────────────────────────────────────────────────────────────────────────────────────────────────::

:FilesDL
DEL /F /Q %SYSTEMDRIVE%\NightBox\Files.stable.appinstaller >nul 2>&1
mode 26,6
%[Powershell]% "$host.ui.rawui.windowtitle=' '"
echo.
echo.
echo   %[Cinza]%[ %[BrancoCL]%Fazendo o Download%[Cinza]% ]
echo         %[Verde]%Aguarde...     
echo.
%[Aria2]% -d "%SYSTEMDRIVE%\NightBox" "https://files.community/appinstallers/Files.stable.appinstaller" >nul 2>&1
START %SYSTEMDRIVE%\NightBox\Files.stable.appinstaller >nul 2>&1
goto ToolBoxP2

::──────────────────────────────────────────────────────────────────────────────────────────────────────────────::

:CustomCursor
cls && Batbox /h 1 && mode 40,9 && chcp 65001 >nul 2>&1
echo %[Cinza]%┌──────────────› %[Vermelho]%AVISOS%[Cinza]% ‹──────────────┐
echo %[Cinza]%│                                      │
echo %[Cinza]%│ %[BrancoCL]% Digite %[Ciano]%website %[BrancoCL]%para ver os IDs dos  %[Cinza]%│
echo %[Cinza]%│ %[BrancoCL]%              cursores               %[Cinza]%│
echo %[Cinza]%│                                      │
echo %[Cinza]%└──────────────────────────────────────┘
echo              %[AzulCL]%[ %[BrancoCL]%00 %[AzulCL]%] %[BrancoCL]%Voltar %[BrancoCL]%
set /p escolha=">>> "
chcp 850 >nul 2>&1

if "%escolha%"=="00" set escolha= && goto ToolBoxP2
if "%escolha%"=="FluentBlack" set escolha= && goto FluentBlack
if "%escolha%"=="FluentWhite" set escolha= && goto FluentWhite
if "%escolha%"=="ModernBlack" set escolha= && goto ModernBlack
if "%escolha%"=="ModernWhite" set escolha= && goto ModernWhite
if "%escolha%"=="PointerBlack" set escolha= && goto PointerBlack
if "%escolha%"=="PointerWhite" set escolha= && goto PointerWhite
if "%escolha%"=="VisionBlack" set escolha= && goto VisionBlack
if "%escolha%"=="VisionWhite" set escolha= && goto VisionWhite
if "%escolha%"=="website" set escolha= && START https://sites.google.com/view/nibox/cursores && goto SkinCursor

Batbox /h 0 && mode 41,6 && cls
chcp 65001 >nul 2>&1
echo %[Cinza]%┌──────────────› %[Vermelho]%AVISOS%[Cinza]% ‹───────────────┐
echo %[Cinza]%│                                       │
echo %[Cinza]%│  %[BrancoCL]%Essa opção não existe. Tente outra.  %[Cinza]%│
echo %[Cinza]%│                                       │
echo %[Cinza]%└───────────────────────────────────────┘
chcp 850 >nul 2>&1
timeout /T 3 /NOBREAK >nul 2>&1
goto CustomCursor


:FluentBlack
RMDIR /S /Q %SYSTEMDRIVE%\NightBox\FluentCursor >nul 2>&1
%[Aria2]% -d "%SYSTEMDRIVE%\NightBox" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Cursores/FluentCursor.rar" >nul 2>&1
UnRAR x %SYSTEMDRIVE%\NightBox\FluentCursor.rar %SYSTEMDRIVE%\NightBox >nul 2>&1
DEL /F /Q %SYSTEMDRIVE%\NightBox\FluentCursor.rar >nul 2>&1
CD %SYSTEMDRIVE%\NightBox\FluentCursor\Black
rundll32 syssetup,SetupInfObjectInstallAction DefaultInstall 128 .\Install.inf
goto SkinCursor

:FluentWhite
RMDIR /S /Q %SYSTEMDRIVE%\NightBox\FluentCursor >nul 2>&1
%[Aria2]% -d "%SYSTEMDRIVE%\NightBox" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Cursores/FluentCursor.rar" >nul 2>&1
UnRAR x %SYSTEMDRIVE%\NightBox\FluentCursor.rar %SYSTEMDRIVE%\NightBox >nul 2>&1
DEL /F /Q %SYSTEMDRIVE%\NightBox\FluentCursor.rar >nul 2>&1
CD %SYSTEMDRIVE%\NightBox\FluentCursor\White
rundll32 syssetup,SetupInfObjectInstallAction DefaultInstall 128 .\Install.inf
goto SkinCursor

:ModernBlack
RMDIR /S /Q %SYSTEMDRIVE%\NightBox\ModernCursor >nul 2>&1
%[Aria2]% -d "%SYSTEMDRIVE%\NightBox" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Cursores/ModernCursor.rar" >nul 2>&1
UnRAR x %SYSTEMDRIVE%\NightBox\ModernCursor.rar %SYSTEMDRIVE%\NightBox >nul 2>&1
DEL /F /Q %SYSTEMDRIVE%\NightBox\ModernCursor.rar >nul 2>&1
CD %SYSTEMDRIVE%\NightBox\ModernCursor\Black
rundll32 syssetup,SetupInfObjectInstallAction DefaultInstall 128 .\Install.inf
goto SkinCursor

:ModernWhite
RMDIR /S /Q %SYSTEMDRIVE%\NightBox\ModernCursor >nul 2>&1
%[Aria2]% -d "%SYSTEMDRIVE%\NightBox" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Cursores/ModernCursor.rar" >nul 2>&1
UnRAR x %SYSTEMDRIVE%\NightBox\ModernCursor.rar %SYSTEMDRIVE%\NightBox >nul 2>&1
DEL /F /Q %SYSTEMDRIVE%\NightBox\ModernCursor.rar >nul 2>&1
CD %SYSTEMDRIVE%\NightBox\ModernCursor\White
rundll32 syssetup,SetupInfObjectInstallAction DefaultInstall 128 .\Install.inf
goto SkinCursor

:PointerBlack
RMDIR /S /Q %SYSTEMDRIVE%\NightBox\PointerCursor >nul 2>&1
%[Aria2]% -d "%SYSTEMDRIVE%\NightBox" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Cursores/PointerCursor.rar" >nul 2>&1
UnRAR x %SYSTEMDRIVE%\NightBox\PointerCursor.rar %SYSTEMDRIVE%\NightBox >nul 2>&1
DEL /F /Q %SYSTEMDRIVE%\NightBox\PointerCursor.rar >nul 2>&1
CD %SYSTEMDRIVE%\NightBox\PointerCursor\Black
rundll32 syssetup,SetupInfObjectInstallAction DefaultInstall 128 .\Install.inf
goto SkinCursor

:PointerWhite
RMDIR /S /Q %SYSTEMDRIVE%\NightBox\PointerCursor >nul 2>&1
%[Aria2]% -d "%SYSTEMDRIVE%\NightBox" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Cursores/PointerCursor.rar" >nul 2>&1
UnRAR x %SYSTEMDRIVE%\NightBox\PointerCursor.rar %SYSTEMDRIVE%\NightBox >nul 2>&1
DEL /F /Q %SYSTEMDRIVE%\NightBox\PointerCursor.rar >nul 2>&1
CD %SYSTEMDRIVE%\NightBox\PointerCursor\White
rundll32 syssetup,SetupInfObjectInstallAction DefaultInstall 128 .\Install.inf
goto SkinCursor

:VisionBlack
RMDIR /S /Q %SYSTEMDRIVE%\NightBox\VisionCursor >nul 2>&1
%[Aria2]% -d "%SYSTEMDRIVE%\NightBox" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Cursores/VisionCursor.rar" >nul 2>&1
UnRAR x %SYSTEMDRIVE%\NightBox\VisionCursor.rar %SYSTEMDRIVE%\NightBox >nul 2>&1
DEL /F /Q %SYSTEMDRIVE%\NightBox\VisionCursor.rar >nul 2>&1
CD %SYSTEMDRIVE%\NightBox\VisionCursor\Black
rundll32 syssetup,SetupInfObjectInstallAction DefaultInstall 128 .\Install.inf
goto SkinCursor

:VisionWhite
RMDIR /S /Q %SYSTEMDRIVE%\NightBox\VisionCursor >nul 2>&1
%[Aria2]% -d "%SYSTEMDRIVE%\NightBox" "https://github.com/DarkMod3/DarkCloud/raw/Main/NightBox/Cursores/VisionCursor.rar" >nul 2>&1
UnRAR x %SYSTEMDRIVE%\NightBox\VisionCursor.rar %SYSTEMDRIVE%\NightBox >nul 2>&1
DEL /F /Q %SYSTEMDRIVE%\NightBox\VisionCursor.rar >nul 2>&1
CD %SYSTEMDRIVE%\NightBox\VisionCursor\White
rundll32 syssetup,SetupInfObjectInstallAction DefaultInstall 128 .\Install.inf
goto SkinCursor

::──────────────────────────────────────────────────────────────────────────────────────────────────────────────::

:NiceTaskbar
DEL /F /Q %SYSTEMDRIVE%\NightBox\NiceTaskbar Installer.exe >nul 2>&1
mode 26,6
%[Powershell]% "$host.ui.rawui.windowtitle=' '"
echo.
echo.
echo   %[Cinza]%[ %[BrancoCL]%Fazendo o Download%[Cinza]% ]
echo         %[Verde]%Aguarde...     
echo.
%[Aria2]% -d "%SYSTEMDRIVE%\NightBox" "https://get.microsoft.com/installer/download/9PKL2S93XWB5" >nul 2>&1
START %SYSTEMDRIVE%\NightBox\NiceTaskbar Installer.exe >nul 2>&1
goto ToolBoxP2


::───────────────────────────────────────────────── REPARAÇÃO ────────────────────────────────────────────────::
::───────────────────────────────────────────────── REPARAÇÃO ────────────────────────────────────────────────::


