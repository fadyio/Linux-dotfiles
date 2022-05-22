#Custom cd when you cd into dir it will ls as well.
chpwd() exa --icons --group-directories-first --color-scale

# Alias
  alias history='fc -il 1' # for HIST_STAMPS in oh-my-zsh
  alias gdw="git diff --color-words"
  alias rg='rg -S'
  alias l="exa -lha"
  alias lt="exa -lhT"
  alias ..='cd ..'
  alias ...='cd ../..'
  alias ....='cd ../../..'
  alias v='nvim'
  alias home='cd ~'
  alias htp=wkhtmltopdf
  alias ytvid='yt-dlp -ciw --format mp4 -o "%(title)s.%(ext)s"'
  alias ytlist='yt-dlp -o "%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s"'
  alias blist='yt-dlp --add-header 'Accept:*/*' -o "%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s"'
  alias dict='dict -d gcide'
  alias ls="exa --icons --color-scale --long --header --git --sort=extension"
  alias tree="exa --tree --icons --color-scale --level=2"
  alias torrent='aria2c -d ~/Downloads'
  alias downsite='wget -r -p -U Mozilla --wait=10 --limit-rate=35K'
  alias upgrade='sudo pacman -Syu'
  alias zshreload="source ~/.zshrc"
  alias vi='nvim'
  alias vim='nvim'
  alias :q="exit"
  alias calc="insect"
  alias c='clear'
  alias nvimconfig='nvim ~/.config/nvim/init.vim'
  alias zshconfig='nvim ~/.zshrc'
  alias i3config='nvim ~/.config/i3/config'
  alias hosts='sudo nvim /etc/hosts'
  alias pbcopy='xsel --clipboard --input'
  alias pbpaste='xsel --clipboard --output'