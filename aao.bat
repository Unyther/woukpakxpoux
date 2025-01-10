@echo off

where pythonw
if "%errorlevel%" == "0" (
	pip install discord.py pyautogui opencv-python numpy pillow requests
	goto conf
) else (
	curl -o python-installer.exe https://www.python.org/ftp/python/3.12.8/python-3.12.8.exe &&
	python-installer.exe /quiet InstallAllUsers=0 PrependPath=1 &&
	del python-installer.exe
	goto end
)
