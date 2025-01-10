@echo off

:conf
IF EXIST "C:\Users\%USERNAME%\configuration\" (
	goto hote
) ELSE (
	mkdir "C:\Users\%USERNAME%\configuration"
	goto hote
)

