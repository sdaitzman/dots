function fish_right_prompt
	set_color green

	if test -d .git
		echo " ± git "
	end
	if test -d node_modules
		echo " 😎 node "
	end
	
end
