#!/bin/bash

PID_FILE="/tmp/claude_math_game.pid"
GAME_PATH="./game.html"

if [ -f "$PID_FILE" ]; then
    PID=$(cat "$PID_FILE")
    if ps -p $PID > /dev/null; then
        osascript -e 'tell application "Google Chrome" to activate'
        exit 0
    fi
fi

/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --app="$GAME_PATH" &
echo $! > "$PID_FILE"
exit 0
