#!/bin/bash

osascript -e '
tell application "System Events"
    set activeApp to name of first application process whose frontmost is true
    if activeApp is "Google Chrome" then
        tell application "Terminal" to activate
    end if
end tell
'
exit 0
