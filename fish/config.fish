#!/usr/local/bin/fish

set fish_git_dirty_color red
set fish_git_not_dirty_color green

# add to path
set -g -x PATH /usr/local/bin ~/bin ~/anaconda3/bin $PATH

# set default editor to Atom :)
set -x EDITOR "code -w"

source /Users/sam/.iterm2_shell_integration.fish
gulp --completion=fish | source

# source thefuck
function fuck -d 'Correct your previous console command'
    set -l exit_code $status
    set -l eval_script (mktemp 2>/dev/null ; or mktemp -t 'thefuck')
    set -l fucked_up_command $history[1]
    thefuck $fucked_up_command > $eval_script
    . $eval_script
    rm $eval_script
    if test $exit_code -ne 0
        history --delete $fucked_up_command
    end
end

vagrant_completions

# source autojump
if test -f /Users/sam/.autojump/share/autojump/autojump.fish; . /Users/sam/.autojump/share/autojump/autojump.fish; end

# source nvm
# bass source ~/.nvm/nvm.sh

# tmux -2

# enable command-not-found functionality
# disabled for performance reasons
# brew command command-not-found-init > /dev/null 2>&1; and . (brew command-not-found-init)

# enable rustup
set PATH $HOME/.cargo/bin $PATH

# OMF
# Path to Oh My Fish install.
# set -gx OMF_PATH /Users/sam/.local/share/omf

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG /Users/sam/.config/omf

# Load oh-my-fish configuration.
# source $OMF_PATH/init.fish

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sam/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/sam/Downloads/google-cloud-sdk/path.fish.inc'; end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval ~/opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<


# kill the right prompt __conda_add_prompt 😠
# function __conda_add_prompt; end
