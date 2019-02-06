@echo OFF

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "LuaMacros" /t REG_SZ /d "\"%~dp0LuaMacros.exe\" -r \"%~dp0samples\MacroPad.lua"" /f