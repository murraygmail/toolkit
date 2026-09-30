@echo off
REM Double-click to serve this folder and open Project Desk in your browser.
cd /d "%~dp0"
start "" "http://localhost:8000/"
python -m http.server 8000
