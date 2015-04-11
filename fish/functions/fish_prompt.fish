function fish_prompt

	echo -n (set_color ff00ff)"\\\\\\ "(set_color $fish_color_normal)
	echo -n (whoami) # print username
	# echo -n "@"(set_color $fish_color_normal)(uname -n|cut -d . -f 1) # print hostname
	echo -n " in "

	printf (prompt_pwd)

	if test (pwd) != "/"
		echo -n "/"
	end

	parse_git_branch





# NEWLINE



	echo -n \n

	if test (id -u) = "0"
		echo -n (set_color $fish_color_cwd_root)" # "
	else
		echo -n (set_color green)' $ '
	end

	set_color normal

end
