function parse_git_branch
		if test -d .git
			# uses simple grep and colrm instead of complicated sed regex
			set -l branch (git branch 2> /dev/null | grep --color=never -e '*.\(.*\)' | colrm 1 2)
			
			# use git status to improve performance (instead of using diff)
			set -l git_status (git status -s | head -n 1)
			
			if test -n "$git_status"
				printf ' (%s%s' (set_color $fish_git_dirty_color) $branch
			else
				printf ' (%s%s' (set_color $fish_git_not_dirty_color) $branch
					
				set -l git_status_origin (git status -s -b | head -n 1)
				set -l ahead (echo $git_status_origin | grep --color=never -e '\[.*ahead.*\]')
				set -l behind (echo $git_status_origin | grep --color=never -e '\[.*behind.*\]')
					
				# only checks git origin status if repo is not dirty (all files commited)
				# if local repo is ahead, show up arrow
				if test -n "$ahead"
					printf '%s↑' (set_color cyan)
				end
				
				# if local repo is behind, show down arrow
				if test -n "$behind"
					printf '%s↓' (set_color red)
				end
			end
	 
			printf '%s) ' (set_color normal)
		end
	end