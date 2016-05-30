#!/bin/sh

echo
echo "safari screencapture"
echo "save to $1"

osascript -e 'tell application "System Events" to tell process "Chrome"
    activate
    tell window 1
        set size to {1600, 1000}
        set position to {50, 50}
    end tell

end tell


tell application "QuickTime Player"
    activate
    new screen recording
    delay 1
    tell application "System Events" to key code 49
    delay 1
    do shell script "~/bin/clickdrag -x 50 -y 50 -dx 1600 -dy 1000"
end tell'

#screencapture -l$(osascript -e 'tell app "Safari" to id of window 1') $1
