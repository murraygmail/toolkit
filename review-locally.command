#!/bin/bash
# Double-click to serve this folder and open Project Desk in your browser.
# The same thing as running  python3 -m http.server  here yourself.
cd "$(dirname "$0")" || exit 1
open "http://localhost:8000/" &
python3 -m http.server 8000
