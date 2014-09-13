# enables leap motion
function leapd
	echo "Starting Leap Motion.app...."
	open /Applications/Leap\ Motion.app
	set_color red;echo "LEAPD STARTING. PRESS CTRL+C TO QUIT";set_color normal
	echo "Opened Leap Motion.app. Now launching leapd..."
	set_color blue
	/Applications/Leap\ Motion.app/Contents/MacOS/leapd;set_color normal
	echo "Leapd has exited."
	echo "Will now quit Leap Motion.app"
	killall "Leap Motion"
	set_color green; echo "Leap Motion.app has been quit... Will now halt."
	echo
end
