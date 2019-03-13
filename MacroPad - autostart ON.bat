@echo OFF

REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "LuaMacros" /t REG_SZ /d "\"%~dp0LuaMacros.exe\" -r \"%~dp0MacroPad.lua\"" /f 
