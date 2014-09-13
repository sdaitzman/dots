function lstty
	while true
		clear
		set_color green
		echo "TTY Devices Found:"
		set_color normal
		ls /dev/tty.*
		set_color red
		echo "Press CTRL+C to quit"
		set_color normal
		sleep 2
	end
end
