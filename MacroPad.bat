@echo OFF
cd /d %~dp0

TASKKILL /F /T /IM "LuaMacros.exe"

Start LuaMacros -r "MacroPad.lua"