#    Zsh config by Fady Nagh 
#    Email: fadinagh0@gmail.com

######### source zinit plugin manager
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
source "${ZINIT_HOME}/zinit.zsh"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
# Save history so we get auto suggestions
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt appendhistory
setopt extendedglob local_options
setopt noglob

################################### Options #########################################################

setopt auto_cd 						# cd by typing directory name if it's not a command
setopt auto_list 					# automatically list choices on ambiguous completion
setopt auto_menu 					# automatically use menu completion
setopt always_to_end 					# move cursor to end if word had one match
setopt hist_ignore_all_dups 				# remove older duplicate entries from history
setopt hist_reduce_blanks 				# remove superfluous blanks from history items
setopt inc_append_history 				# save history entries as soon as they are entered
setopt share_history 					# share historyetween different instances
unsetopt correct_all 					# stop autocorrect commands
setopt interactive_comments 		    	        # allow comments in interactive shells
bindkey "\e[3~" delete-char 				# make the delete key act nourmal 
export EDITOR="nvim"
export VISUAL='nvim'
export LANG=en_US.UTF-8
export LC_CTYPE="en_US.UTF-8"
autoload edit-command-line; zle -N edit-command-line    # Edit line in vim with ctrl-e:
bindkey '^e' edit-command-line



########################## source alias and Plugins ####################

source ~/.zshplugins/zsh_plugin.zsh
source ~/.zshplugins/alias.zsh

#################### start tmux automatically ##########################
tmux attach &> /dev/null
if [[ ! $TERM =~ screen ]]; then
    exec tmux
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh





