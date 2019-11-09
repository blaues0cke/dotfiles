# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(composer git symfony2 encode64)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


source ~/.antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle symfony2
antigen bundle composer
#antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions




# Load the theme.




antigen theme romkatv/powerlevel10k
#antigen theme bhilburn/powerlevel9k powerlevel9k

# https://github.com/bhilburn/powerlevel9k/wiki/Show-Off-Your-Config

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# Set username to consider a default context, which by default will not be shown.
# https://github.com/bhilburn/powerlevel9k/blob/next/segments/context/README.md
DEFAULT_USER='thomaskekeisen'

# Set P9KGT background color, either 'light' or 'dark' (this should match the GNOME Terminal's theme).
P9KGT_BACKGROUND='dark'
if [[ $P9KGT_BACKGROUND != 'light' ]] && [[ $P9KGT_BACKGROUND != 'dark' ]]
then
    P9KGT_ERROR=true
    echo "P9KGT error: variable 'P9KGT_BACKGROUND' should be either 'light' or 'dark'"
fi

# Set P9KGT color scheme, either 'light', 'dark' or 'bright' (choose by preference).
P9KGT_COLORS='bright'
if [[ $P9KGT_COLORS != 'light' ]] && [[ $P9KGT_COLORS != 'dark' ]] && [[ $P9KGT_COLORS != 'bright' ]]
then
    P9KGT_ERROR=true
    echo "P9KGT error: variable 'P9KGT_COLORS' should be either 'light', 'dark' or 'bright'"
fi

# Set P9KGT fonts mode, either 'default', 'awesome-fontconfig', 'awesome-mapped-fontconfig', 'awesome-patched', 'nerdfont-complete' or 'nerdfont-fontconfig'.
# https://github.com/bhilburn/powerlevel9k/wiki/About-Fonts
P9KGT_FONTS='awesome-fontconfig'
if [[ $P9KGT_FONTS != 'default' ]] && [[ $P9KGT_FONTS != 'awesome-fontconfig' ]] && [[ $P9KGT_FONTS != 'awesome-mapped-fontconfig' ]] &&
    [[ $P9KGT_FONTS != 'awesome-patched' ]] && [[ $P9KGT_FONTS != 'nerdfont-complete' ]] && [[ $P9KGT_FONTS != 'nerdfont-fontconfig' ]]
then
    P9KGT_ERROR=true
    echo "P9KGT error: variable 'P9KGT_FONTS' should be either 'default', 'awesome-fontconfig', 'awesome-mapped-fontconfig', 'awesome-patched', 'nerdfont-complete' or 'nerdfont-fontconfig'"
else
    P9K_MODE=$P9KGT_FONTS
fi

if [[ $P9KGT_ERROR != true ]]
then

    # Set P9KGT background color
    if [[ $P9KGT_BACKGROUND == 'light' ]]
    then
        # https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt#light-color-theme
        P9K_COLOR_SCHEME='light'
        P9KGT_TERMINAL_BACKGROUND=231
    elif [[ $P9KGT_BACKGROUND == 'dark' ]]
    then
        P9K_COLOR_SCHEME='dark'
        P9KGT_TERMINAL_BACKGROUND=236
    fi

    # Set P9KGT foreground colors
    if [[ $P9KGT_COLORS == 'light' ]]
    then
        P9KGT_RED=009
        P9KGT_GREEN=010
        P9KGT_YELLOW=011
        P9KGT_BLUE=012
    elif [[ $P9KGT_COLORS == 'dark' ]]
    then
        P9KGT_RED=001
        P9KGT_GREEN=002
        P9KGT_YELLOW=003
        P9KGT_BLUE=004
    elif [[ $P9KGT_COLORS == 'bright' ]]
    then
        P9KGT_RED=196
        #P9KGT_GREEN=148
        P9KGT_GREEN=154
        P9KGT_YELLOW=220
        P9KGT_BLUE=075
    fi

    # Customize prompt
    # https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt#adding-newline-before-each-prompt
    P9K_PROMPT_ADD_NEWLINE=true
    # https://github.com/bhilburn/powerlevel9k/tree/next#customizing-prompt-segments
    P9K_LEFT_PROMPT_ELEMENTS=(context dir_writable dir vcs)
    P9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs)

    # Set 'context' segment colors
    # https://github.com/bhilburn/powerlevel9k/blob/next/segments/context/README.md
    P9K_CONTEXT_DEFAULT_FOREGROUND=$P9KGT_YELLOW
    P9K_CONTEXT_ROOT_FOREGROUND=$P9KGT_YELLOW
    P9K_CONTEXT_SUDO_FOREGROUND=$P9KGT_YELLOW
    P9K_CONTEXT_REMOTE_FOREGROUND=$P9KGT_YELLOW
    P9K_CONTEXT_REMOTE_SUDO_FOREGROUND=$P9KGT_YELLOW
    P9K_CONTEXT_DEFAULT_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_CONTEXT_ROOT_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_CONTEXT_SUDO_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_CONTEXT_REMOTE_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_CONTEXT_REMOTE_SUDO_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND

    # Set 'dir_writable' segment colors
    # https://github.com/bhilburn/powerlevel9k/blob/next/segments/dir_writable/README.md
    P9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND=$P9KGT_YELLOW
    P9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND=$P9KGT_RED

    # Set 'dir' segment colors
    # https://github.com/bhilburn/powerlevel9k/blob/next/segments/dir/README.md
    P9K_DIR_DEFAULT_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_DIR_HOME_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_DIR_HOME_SUBFOLDER_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_DIR_ETC_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_DIR_DEFAULT_BACKGROUND=$P9KGT_BLUE
    P9K_DIR_HOME_BACKGROUND=$P9KGT_BLUE
    P9K_DIR_HOME_SUBFOLDER_BACKGROUND=$P9KGT_BLUE
    P9K_DIR_ETC_BACKGROUND=$P9KGT_BLUE

    # Set 'vcs' segment colors
    # https://github.com/bhilburn/powerlevel9k/blob/next/segments/vcs/README.md
    P9K_VCS_CLEAN_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_VCS_MODIFIED_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_VCS_CLOBBERED_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_VCS_UNTRACKED_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_VCS_CLEAN_BACKGROUND=$P9KGT_GREEN
    P9K_VCS_MODIFIED_BACKGROUND=$P9KGT_YELLOW
    P9K_VCS_CLOBBERED_BACKGROUND=$P9KGT_RED
    P9K_VCS_UNTRACKED_BACKGROUND=$P9KGT_GREEN

    # Set 'status' segment colors
    # https://github.com/bhilburn/powerlevel9k/blob/next/segments/status/README.md
    P9K_STATUS_CROSS=true
    P9K_STATUS_OK_FOREGROUND=$P9KGT_GREEN
    P9K_STATUS_ERROR_FOREGROUND=$P9KGT_RED
    P9K_STATUS_OK_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_STATUS_ERROR_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND

    # Set 'root_indicator' segment colors
    # https://github.com/bhilburn/powerlevel9k/blob/next/segments/root_indicator/README.md
    P9K_ROOT_INDICATOR_FOREGROUND=$P9KGT_YELLOW
    P9K_ROOT_INDICATOR_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND

    # Set 'background_jobs' segment colors
    # https://github.com/bhilburn/powerlevel9k/blob/next/segments/background_jobs/README.md
    P9K_BACKGROUND_JOBS_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_BACKGROUND_JOBS_BACKGROUND=$P9KGT_YELLOW

fi




#antigen theme denysdovhan/spaceship-prompt

SPACESHIP_PROMPT_ORDER=(
  #time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  #host          # Hostname section
  git_branch
  #git           # Git section (git_branch + git_status)
  #hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  julia         # Julia section
  docker        # Docker section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  dotnet        # .NET section
  ember         # Ember.js section
  kubecontext   # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  #battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)


SPACESHIP_RPROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section

)


#antigen theme eendroroy/alien alien

export ALIEN_THEME="green"


export ALIEN_PROMPT_SYM=


export ALIEN_SECTIONS_LEFT=(
  //exit
  #battery
  #user
  path
  vcs_branch
  #vcs_status:async
  #vcs_dirty:async
  #newline
  ssh
  venv
  prompt
)


export ALIEN_SECTION_TIME_FORMAT=%H:%M:%S

export ALIEN_SECTIONS_RIGHT=(
  time
  user
)



# Tell Antigen that you're done.
antigen apply

source ~/.aliasesbrew untap caskroom/versions


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

[ -n "$PS1" ] && source ~/.bash_profile;

unsetopt AUTO_CD