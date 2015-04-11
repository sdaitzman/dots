#!/usr/local/bin/fish

set fish_git_dirty_color red
set fish_git_not_dirty_color green

# add thingies to le path
set -g -x PATH /usr/local/bin ~/bin $PATH

# set default editor to Sublime :)
setenv EDITOR "subl -w"

# source /Users/samuel/.iterm2_shell_integration.fish

function on_exit --on-process %self
	rm /tmp/fish.$USER/fishd.socket
	echo (pwd) > ~/.config/fish/currentdirectory.txt
end

vagrant_completions

# tmux -2
