#!/bin/bash

PID_FILE="/tmp/claude_math_game.pid"

if [ -f "$PID_FILE" ]; then
    PID=$(cat "$PID_FILE")
    kill $PID 2>/dev/null
    rm "$PID_FILE"
fi

osascript -e 'tell application "Terminal" to activate'
exit 0
