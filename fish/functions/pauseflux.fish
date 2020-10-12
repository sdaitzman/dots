#!/usr/bin/env fish
function pauseflux
	osascript -e 'tell application "Flux" to quit'
    printf 'Waiting %s hours...' $argv
    sleep $argv * 60 * 60
    osascript -e 'tell application "Flux" to open'
end
