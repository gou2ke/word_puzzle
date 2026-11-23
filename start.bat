@echo off
cd /d "%~dp0"

where python >nul 2>nul
if errorlevel 1 (
  echo Python not found. Please install Python 3 and try again.
  pause
  exit /b 1
)

echo.
echo   Zi Jie - local server
echo   http://localhost:7777
echo   haha
echo   Press Ctrl+C to stop.
echo.
python -m http.server 7777 --bind 127.0.0.1
pause
