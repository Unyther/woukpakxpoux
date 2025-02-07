@echo off


:: Supprimer le dossier Teams dans Roaming
rmdir /s /q "C:\Users\%USERNAME%\AppData\Roaming\Microsoft-Teams"

:: Supprimer le dossier Teams dans Local
rmdir /s /q "C:\Users\%USERNAME%\AppData\Local\Microsoft-Teams"

:: Supprimer la clé de registre associée
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "Microsoft-Teams" /f

exit
