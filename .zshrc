# Path to your oh-my-zsh installation.
export TERM="xterm-256color"
export ZSH="/Users/dylanwilbur10/.oh-my-zsh"
export EDITOR="nvim"
eval "$(fasd --init auto)"

# POWERLEVEL9K_MODE=default
# ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="spaceship-prompt/spaceship"

plugins=(
  tmux
  bundler
  zsh-completions
  zsh-syntax-highlighting
  rails
  ruby
  git
  vi-mode
)

# ====== wal ==================================

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# (cat ~/.cache/wal/sequences &)

# ============================================

source $ZSH/oh-my-zsh.sh

# Set window title( for tmux )
# PROMPT_COMMAND='echo -ne "\e]1;${PWD##*/}/\a"'
# PROMPT_COMMAND='tmux select-pane -T " ${PWD##*/}/ "'
# precmd() { eval "$PROMPT_COMMAND" }

# # Powerlevel9k config
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vi_mode status time rbenv)
# POWERLEVEL9K_STATUS_VERBOSE=false
# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_beginning"
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_PROMPT_ADD_NEWLINE=false
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="> "

# POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='black'
# POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='green'

# POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='black'
# POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='blue'
# POWERLEVEL9K_VI_COMMAND_MODE_STRING='N'
# POWERLEVEL9K_VI_INSERT_MODE_STRING='I'

# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#
# Aliases
#
alias zshrc="nvim ~/.zshrc"
alias vimrc="nvim ~/.vimrc"
alias vim="nvim"
alias mla="~/github/md2mla/md2mla.sh"
alias pdf="make-pdf"
alias csspdf="make-css-pdf"
alias addplugin="nvim ~/.config/nvim/config/dependencies.vim"
alias lc='colorls -lA --sd'
alias ls='colorls'
alias uberf='osascript -e 'tell application "'$(ps ax | grep sicht | awk '{print $5}' | head -1 | cut -d/ -f3 | cut -d. -f1)'" to refresh''
alias mux="tmuxinator"

# functions
#

function update-pecan() {
  sed -i -e "s/zzzeyez/$USER/g" ~/Library/Application\ Support/Übersicht/widgets/Pecan/scss/style.scss
  bash ~/Library/Application\ Support/Übersicht/widgets/Pecan/wal-set
  osascript -e 'tell application "'$(ps ax | grep sicht | awk '{print $5}' | head -1 | cut -d/ -f3 | cut -d. -f1)'" to refresh'
}

function make-pdf() {
  pandoc $1 -o $1.pdf  --from markdown --template ~/.pandoc/templates/$2 --listings
}

function make-css-pdf() {
  pandoc -t html5 --css ~/.pandoc/templates/$2 $1 -o $1.pdf
}

# change directory with fzf
function fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# fe [FUZZY PATTERN] - Open the selected file with the default editor
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
function fe() {
  local files
  IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
}

# Modified version where you can press
#   - CTRL-O to open with `open` command,
#   - CTRL-E or Enter key to open with the $EDITOR
function fo() {
  local out file key
  IFS=$'\n' out=($(fzf-tmux --query="$1" --exit-0 --expect=ctrl-o,ctrl-e))
  key=$(head -1 <<< "$out")
  file=$(head -2 <<< "$out" | tail -1)
  if [ -n "$file" ]; then
    [ "$key" = ctrl-o ] && open "$file" || ${EDITOR:-vim} "$file"
  fi
}

# tm - create new tmux session, or switch to existing one. Works from within tmux too. (@bag-man)
# `tm` will allow you to select your tmux session via fzf.
# `tm irc` will attach to the irc session (if it exists), else it will create it.

function tm() {
  [[ -n "$TMUX" ]] && change="switch-client" || change="attach-session"
  if [ $1 ]; then
    tmux $change -t "$1" 2>/dev/null || (tmux new-session -d -s $1 && tmux $change -t "$1"); return
  fi
  session=$(tmux list-sessions -F "#{session_name}" 2>/dev/null | fzf --exit-0) &&  tmux $change -t "$session" || echo "No sessions found."
}

source $(dirname $(gem which colorls))/tab_complete.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
