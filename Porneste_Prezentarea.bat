@echo off
title Prezentare Astrofotografie - Newton 6" 600mm + 0.95x + Sony IMX533
cd /d "%~dp0"
echo Pornire prezentare interactiva in browser...
where python >nul 2>nul
if %errorlevel%==0 (
    start "" http://127.0.0.1:8765/index.html
    python -m http.server 8765 --bind 127.0.0.1
) else (
    start "" "%~dp0index.html"
)
