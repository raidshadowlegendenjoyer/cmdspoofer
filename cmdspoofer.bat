@echo off
:spoofmenu
cls
echo made by emon enjoy feel free to edit tha code few commands are listed in the code that are usable but are lowkey fucked up lol
echo Enter the user to spoof:
set /p user="> "
goto spoofer

:spoofer
cls
title Command Prompt
echo Microsoft Windows [Version 10.0.19045.5011]
echo (c) Microsoft Corporation. All rights reserved.
echo.
set /p sigmafakeuser="C:\Users\%user%>"

:cmdloop
set /p command="C:\Users\%user%>"

:: Check if the command is "dir"
if /i "%command%"=="dir" (
    echo Volume in drive C has no label.
    echo Volume Serial Number is 1234-5678
    echo Directory of C:\Users\%user%
    echo.
    echo 09/28/2024  02:30 PM    <DIR>          .
    echo 09/28/2024  02:30 PM    <DIR>          ..
    echo 09/28/2024  02:30 PM    <DIR>          Documents
    echo 09/28/2024  02:30 PM    <DIR>          Downloads
    echo 09/28/2024  02:30 PM    <DIR>          Pictures
    echo 09/28/2024  02:30 PM               0   example.txt
    echo.
    goto cmdloop
)

:: Check if the command starts with "color"
if /i "%command:~0,5%"=="color" (
    set "colorCode=%command:~6%"
    if not defined colorCode (
        echo The color command requires two hex digits, e.g., color 0A.
    ) else (
        color %colorCode%
        echo Color changed to %colorCode%.
    )
    goto cmdloop
)

:: Check if the command is "cls"
if /i "%command%"=="cls" (
    cls
    goto cmdloop
)

:: Check if the command is "exit"
if /i "%command%"=="exit" (
    exit
)

:: Unrecognized command
echo '%command%' is not recognized as an internal or external command,
echo operable program or batch file.
goto cmdloop
