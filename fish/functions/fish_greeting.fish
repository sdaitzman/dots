function fish_greeting
	set_color ffffff
	echo "Welcome to fish ~"
	set_color normal

	# /usr/bin/cd (/bin/cat ~/.config/fish/currentdirectory.txt)
	# /bin/cat ~/.config/fish/currentdirectory.txt
	set_color green
	# echo "Going to your most recent directory, "(/bin/cat ~/.config/fish/currentdirectory.txt)
	set_color normal
	cd (/bin/cat ~/.config/fish/currentdirectory.txt)

end
