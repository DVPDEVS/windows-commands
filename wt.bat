@echo off 
chcp 65001 >nul 
mode 60,50 >nul 

rem colour map: https://i.sstatic.net/DMHbn.png or ..\DMHbn.png 

color 0A 

:text 
echo           passing an argument to the default shell is done as: [wt ping ::1 /n 2] 
echo        -c confirm running a command 
echo        -d Directory specified as: ["relative\path\to\dir"] 
echo         ; additional tab with either of: [new-tab, split-pane] as (wt.exe -p "" ; split-pane -p "") 
echo        -p specified interpreter as ["Command prompt" or "Windows Powershell" or "cmd" etc.] 
echo   --title specifies a window title 
echo       --%% for calling wt through powershell 
echo        -H call an executable 
echo: 
echo --suppressApplicationTitle and --useApplicationTitle affect tabs' ability to set the windows title 
echo: 
echo Structure as: 
echo wt.exe --%% new-tab "cmd ping ::1 /n -1" --title "Hi :3c" --suppressApplicationTitle ; split-pane -p "Windows PowerShell" -d "Windows\System32" ; split-pane -H wsl.exe 

:shell 
echo: 
cmd /S /K "c: && powershell.exe" 
exit /B

call :text 
goto shell 
