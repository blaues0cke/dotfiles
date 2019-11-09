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