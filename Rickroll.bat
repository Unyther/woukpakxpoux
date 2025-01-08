@echo off
powershell -Command ^
$Shell = New-Object -ComObject WScript.Shell; ^
for ($i = 0; $i -lt 50; $i++) { $Shell.SendKeys([char]174); Start-Sleep -Milliseconds 50 }; ^
for ($i = 0; $i -lt 50; $i++) { $Shell.SendKeys([char]175); Start-Sleep -Milliseconds 50 }
start https://www.youtube.com/watch?v=dQw4w9WgXcQ