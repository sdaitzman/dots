function fish_prompt

	# set emojis 🌵 🎄 🌲 🌳 🌴 🌱 🌿 ☘️ 🍀 🎍 🎋 🍃 🍂 🍁 🍄 🌾 💐 🌷 🌹 🥀 🌺 🌸 🌼 🌻 🌞 🌝 🌛 🌜 🌚 🌕 🌖 🌗 🌘 🌑 🌒 🌓 🌔 🌙 🌎 🌍 🌏 💫 ⭐️ 🌟 ✨ ⚡️ ☄️ 💥 🔥 🌪 🌈 ☀️ 🌤 ⛅️ 🌥 ☁️ 🌦 🌧 ⛈ 🌩 🌨 ❄️ ☃️ ⛄️ 🌬 💨 💧 💦 ☔️ ☂️ 🌊
	# echo -n $emojis[(random 1 (count $emojis))]" "


	echo -n (set_color ff00ff)"("(set_color $fish_color_normal)
	echo -n (set_color 5A91F5)(whoami)(set_color $fish_color_normal) # print username
	echo -n "@"(set_color 5A91F5)(uname -n|cut -d . -f 1)(set_color $fish_color_normal) # print hostname
	echo -n (set_color ff00ff)")"(set_color $fish_color_normal)
	echo -n " -> "

	printf '%s(' (set_color ff00ff)
	printf '%s%s' (set_color $fish_color_command)(prompt_pwd)
	printf '%s)' (set_color ff00ff)

	set_color $fish_color_normal

	parse_git_branch
	set_color $fish_color_normal

# NEWLINE



	echo -n \n
	iterm2_prompt_mark


	if test (id -u) = "0"
		echo -n (set_color $fish_color_cwd_root)" # "
	else
		echo -n (set_color green)' ▷ '
	end

	set_color normal

end
