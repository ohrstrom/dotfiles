#!/bin/sh

echo
echo "safari screenshot"
echo "save to $1"

osascript -e 'tell application "System Events" to tell process "Safari"
    tell window 1
        set size to {1800, 1000}
        set position to {50, 50}
    end tell
end tell'

screencapture -o -l$(osascript -e 'tell app "Safari" to id of window 1') $1
