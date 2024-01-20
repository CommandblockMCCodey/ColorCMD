@echo off
mode con: cols=160 lines=50
cls

pause

echo styles
echo.
call :style@text "RESET" "#####"
echo.
call :style@text "BOLD" "#####"
echo.
call :style@text "UNDERLINE" "#####"
echo.
call :style@text "INVERSE" "#####"
echo.
echo.
echo.
echo normal background colors
echo.
call :style@text "BLACK_BACKGROUND_NORMAL" "#####"
echo.
call :style@text "RED_BACKGROUND_NORMAL" "#####"
echo.
call :style@text "GREEN_BACKGROUND_NORMAL" "#####"
echo.
call :style@text "YELLOW_BACKGROUND_NORMAL" "#####"
echo.
call :style@text "BLUE_BACKGROUND_NORMAL" "#####"
echo.
call :style@text "MAGENTA_BACKGROUND_NORMAL" "#####"
echo.
call :style@text "CYAN_BACKGROUND_NORMAL" "#####"
echo.
echo.
echo.
echo normal foreground colors
echo.
call :style@text "BLACK_FOREGROUND_NORMAL" "#####"
echo.
call :style@text "RED_FOREGROUND_NORMAL" "#####"
echo.
call :style@text "GREEN_FOREGROUND_NORMAL" "#####"
echo.
call :style@text "YELLOW_FOREGROUND_NORMAL" "#####"
echo.
call :style@text "BLUE_FOREGROUND_NORMAL" "#####"
echo.
call :style@text "MAGENTA_FOREGROUND_NORMAL" "#####"
echo.
call :style@text "CYAN_FOREGROUND_NORMAL" "#####"
echo.
echo.
echo.
echo strong background colors
echo.
call :style@text "BLACK_BACKGROUND_STRONG" "#####"
echo.
call :style@text "RED_BACKGROUND_STRONG" "#####"
echo.
call :style@text "GREEN_BACKGROUND_STRONG" "#####"
echo.
call :style@text "YELLOW_BACKGROUND_STRONG" "#####"
echo.
call :style@text "BLUE_BACKGROUND_STRONG" "#####"
echo.
call :style@text "MAGENTA_BACKGROUND_STRONG" "#####"
echo.
call :style@text "CYAN_BACKGROUND_STRONG" "#####"
echo.
echo.
echo.
echo strong foreground colors
echo.
call :style@text "BLACK_FOREGROUND_STRONG" "#####"
echo.
call :style@text "RED_BACKGROUND_STRONG" "#####"
echo.
call :style@text "GREEN_FOREGROUND_STRONG" "#####"
echo.
call :style@text "YELLOW_FOREGROUND_STRONG" "#####"
echo.
call :style@text "BLUE_FOREGROUND_STRONG" "#####"
echo.
call :style@text "MAGENTA_FOREGROUND_STRONG" "#####"
echo.
call :style@text "CYAN_FOREGROUND_STRONG" "#####"
echo.
pause >nul
goto :end

:style@text
set "style=%~1"
set "text=%~2"

rem STYLE
if /i "%style%"=="RESET" echo [0m%text%[0m
if /i "%style%"=="BOLD" echo [1m%text%[0m
if /i "%style%"=="UNDERLINE" echo [4m%text%[0m
if /i "%style%"=="INVERSE" echo [7m%text%[0m

rem NORMAL FOREGROUND COLORS
if /i "%style%"=="BLACK_FOREGROUND_NORMAL" echo [30m%text%[0m
if /i "%style%"=="RED_FOREGROUND_NORMAL" echo [31m%text%[0m
if /i "%style%"=="GREEN_FOREGROUND_NORMAL" echo [32m%text%[0m
if /i "%style%"=="YELLOW_FOREGROUND_NORMAL" echo [33m%text%[0m
if /i "%style%"=="BLUE_FOREGROUND_NORMAL" echo [34m%text%[0m
if /i "%style%"=="MAGENTA_FOREGROUND_NORMAL" echo [35m%text%[0m
if /i "%style%"=="CYAN_FOREGROUND_NORMAL" echo [36m%text%[0m
if /i "%style%"=="WHITE_FOREGROUND_NORMAL" echo [37m%text%[0m

rem NORMAL BACKGROUND COLORS
if /i "%style%"=="BLACK_BACKGROUND_NORMAL" echo [40m%text%[0m
if /i "%style%"=="RED_BACKGROUND_NORMAL" echo [41m%text%[0m
if /i "%style%"=="GREEN_BACKGROUND_NORMAL" echo [42m%text%[0m
if /i "%style%"=="YELLOW_BACKGROUND_NORMAL" echo [43m%text%[0m
if /i "%style%"=="BLUE_BACKGROUND_NORMAL" echo [44m%text%[0m
if /i "%style%"=="MAGENTA_BACKGROUND_NORMAL" echo [45m%text%[0m
if /i "%style%"=="CYAN_BACKGROUND_NORMAL" echo [46m%text%[0m
if /i "%style%"=="WHITE_BACKGROUND_NORMAL" echo [47m%text%[0m

rem STRONG FOREGROUND COLORS
if /i "%style%"=="WHITE_FOREGROUND_STRONG" echo [90m%text%[0m
if /i "%style%"=="RED_FOREGROUND_STRONG" echo [91m%text%[0m
if /i "%style%"=="GREEN_FOREGROUND_STRONG" echo [92m%text%[0m
if /i "%style%"=="YELLOW_FOREGROUND_STRONG" echo [93m%text%[0m
if /i "%style%"=="BLUE_FOREGROUND_STRONG" echo [94m%text%[0m
if /i "%style%"=="MAGENTA_FOREGROUND_STRONG" echo [95m%text%[0m
if /i "%style%"=="CYAN_FOREGROUND_STRONG" echo [96m%text%[0m
if /i "%style%"=="WHITE_FOREGROUND_STRONG" echo [97m%text%[0m

rem STRONG BACKGROUND COLORS
if /i "%style%"=="BLACK_BACKGROUND_STRONG" echo [100m%text%[0m
if /i "%style%"=="RED_BACKGROUND_STRONG" echo [101m%text%[0m
if /i "%style%"=="GREEN_BACKGROUND_STRONG" echo [102m%text%[0m
if /i "%style%"=="YELLOW_BACKGROUND_STRONG" echo [103m%text%[0m
if /i "%style%"=="BLUE_BACKGROUND_STRONG" echo [104m%text%[0m
if /i "%style%"=="MAGENTA_BACKGROUND_STRONG" echo [105m%text%[0m
if /i "%style%"=="CYAN_BACKGROUND_STRONG" echo [106m%text%[0m
if /i "%style%"=="WHITE_BACKGROUND_STRONG" echo [107m%text%[0m

goto :eof
:end