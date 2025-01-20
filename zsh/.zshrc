# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
#ZSH_THEME="dracula"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git archlinux zsh-autosuggestions autojump vi-mode python tmux)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# tools
alias i2d-cli="cd /home/peter/Documents/work/in2dialog/machine_learning/NLP/tools/cli_i2d_dev && python3 entrypoint.py"
#navigation
alias c#="vim /home/peter/Documents/work/Notes/C#.md"
alias soll="cd /home/peter/Documents/work/Github/machine_learning/NLP/tools/sollicitatie_app_pipeline/"
alias ana="cd /home/peter/Documents/work/InterviewAnalysis/InterviewAnalysis"
alias reso="cd /home/peter/Documents/work/general_NLP_resources/"
alias copen="code . && thunar"
alias todo="vim /home/peter/Documents/work/notes/todo.txt" 
alias don="vim /home/peter/Documents/work/Notes/done.txt"
alias aws="cd /home/peter/Documents/work/general_NLP_resources/aws"
alias audio="cd /home/peter/Documents/work/general_NLP_resources/audio"
alias sgo="cd /home/peter/Documents/work/general_NLP_resources/resources/sollicitatiegesprek_oefenen/"
alias quest="cd /home/peter/Documents/work/general_NLP_resources/NLP_modules/grammatical_analyses/SGO/question_analysis/ && code ."
alias gram="cd /home/peter/Documents/work/general_NLP_resources/grammatical_analyses/"
alias scratch="cd /home/peter/Documents/work/now_working/scratchpad && code ."
alias dckr="vim /home/peter/Documents/work/Notes/docker.txt"
alias pdf="cd /home/peter/Documents/work/general_NLP_resources/PDF && code ."
# SSH
alias retropi="ssh retropi"
alias mindforge="ssh deploy@mindforge.ixly.com"
alias pihole="ssh pihole"
alias pipeline="ssh pipeline"
#system
alias z="zellij"
alias update='sudo pacman -Syyu'
alias i3config="vim ~/.config/i3/config"
alias zsconfig="vim ~/.zshrc"
alias zsource="source ~/.zshrc"
alias dd="xfce4-terminal --drop-down"
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias cpwd="pwd | tr -d '\n' | pbcopy && echo 'pwd copied to clipboard'"
alias poly="sudo vim /home/peter/.config/polybar/config.ini"
alias pingg="ping google.com"
alias setup="vim ~/system_setup.txt"
alias resolv="sudo vim /etc/resolv.conf"
alias hdmi1="xrandr --output HDMI1 --auto --above eDP1"
alias dp1="xrandr --output DP1 --auto --above eDP1"
alias nomon="xrandr -s 0"
alias cat="bat"
alias vim="nvim"
alias fzf="find . -type f | fzf"  	
alias mc="EDITOR=vim mc"
alias open="xdg-open"
alias nvini="vim ~/.config/nvim/init.vim"
alias chekcout="checkout"
alias gc="git checkout"
alias gcb="git checkout -b"
alias ls="exa -al --color=always --group-directories-first"
alias size="du -ah --max-depth 1"
alias ssh="TERM=xterm-256color ssh"
alias nvconf="cd ~/.config/nvim/ && vim ."
alias i2d="cd ~/Documents/work/in2dialog/"
alias tma="tmux new && C-a w"
alias sizes='du -hs * | sort -h'
alias tn='echo "$(date +"%Y-%m-%d %H:%M:%S") $*" >> ~/Documents/non_work/notes/random_notes.md'
alias celar='clear'
alias journal='date >> /home/peter/Documents/non_work/personal/journal/journal.md && vim /home/peter/Documents/non_work/personal/journal/journal.md'
alias weather="curl wttr.in/Deventer"
alias mani="cd /home/peter/Documents/work/in2dialog/KubernetesManifests"
alias poly=". ~/.config/polybar/launch.sh"
alias goals="vim ~/Documents/non_work/notes/goals_2024.md"

export PATH='/home/peter/.local/bin':$PATH

neofetch
#eval "$(starship init zsh)"
#autoload -U promptinit; promptinit
#prompt spaceship

export FZF_DEFAULT_OPTS='--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'

export EDITOR="vim"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/peter/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/peter/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/peter/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/peter/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

fcd() {
  local file
  file=$(fzf --print-query | tail -n 1)
  if [[ -n $file ]]; then
    if [[ -d $file ]]; then
      cd "$file"
    else
      cd "$(dirname "$file")"
    fi
  fi
}


source <(kubectl completion zsh)
source ~/.secrets

function set_and_start_instance() {
  # Number of hours from now
  local n_hours="$1"
  
  # Calculate future time in RFC 3339 format in UTC. Adjust date calculation as needed for your environment.
  local future_time=$(date -u -d "+${n_hours} hour" +"%Y-%m-%dT%H:%M:%SZ")
  
  # Set termination time for the instance
  gcloud beta compute instances set-scheduling a100-beasty \
    --zone=europe-west4-a \
    --termination-time="$future_time" \
    --instance-termination-action=STOP
  
  # Start the instance
  gcloud compute instances start a100-beasty --zone=europe-west4-a
}

# Alias for convenience
alias start_a100='set_and_start_instance'



function set_and_start_t4() {
# Number of hours from now
local n_hours="$1"

# Calculate future time in RFC 3339 format in UTC. Adjust date calculation as needed for your environment.
local future_time=$(date -u -d "+${n_hours} hour" +"%Y-%m-%dT%H:%M:%SZ")

# Set termination time for the instance
gcloud beta compute instances set-scheduling gpu-summary-n1 \
  --zone=europe-west4-c \
  --termination-time="$future_time" \
  --instance-termination-action=STOP

# Start the instance
gcloud compute instances start gpu-summary-n1 --zone=europe-west4-c
}

# Alias for convenience
alias start_t4='set_and_start_t4'

alias ct="cd /home/peter/Documents/work/in2dialog/InterviewAnalysis/c_topics && source .env"
alias c0="cd /home/peter/Documents/work/in2dialog/InterviewAnalysis/c0_validate && source .env"
alias c1="cd /home/peter/Documents/work/in2dialog/InterviewAnalysis/c1_transcribediarise && source .env"
alias c2="cd /home/peter/Documents/work/in2dialog/InterviewAnalysis/c2_embellish && source .env"
alias c3="cd /home/peter/Documents/work/in2dialog/InterviewAnalysis/c3_transform && source .env"
alias c4="cd /home/peter/Documents/work/in2dialog/InterviewAnalysis/c4_format && source .env"
alias gitp="git push origin HEAD"
alias dlq="(cd /home/peter/Documents/work/in2dialog/research_scratch/probe_bucket && source venv/bin/activate && python action_required.py)"

alias grm="go run main.go"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
