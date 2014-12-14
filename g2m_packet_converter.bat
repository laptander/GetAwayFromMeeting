:: Get Away From Meeting v2.01
:: It is packet converter from GoToMeeting  video files to other codec
echo off
::set G2MTRANSCODER_DIR=C:\Program Files\Citrix\GoToMeeting\2031
set G2MTRANSCODER_DIR=C:\Documents and Settings\videos\1468
set VIDEO_DIR=C:\Documents and Settings\videos
attrib "%VIDEO_DIR%\*.wmv" -r -a -s -h /S /D

for /R "%VIDEO_DIR%" %%i IN (*.wmv) do ( 
echo Begin converting %%i
echo Begin converting %%i >> log.txt
time /t >> log.txt
"%G2MTRANSCODER_DIR%"\g2mtranscoder source=%%i
echo   End converting %%i
echo   End converting %%i >> log.txt
time /t >> log.txt
) 

echo All files were converted. Press any key to continue...
pause > nul
