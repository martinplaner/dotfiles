# .zshenv is always sourced, define here exported variables that should
# be available to other programs.

export EDITOR=vim
export PAGER=less

export PATH=$PATH:~/bin:/usr/local/bin:/usr/local/sbin

# load zsh config files

env_config_files=(~/.zsh/**/*.zshenv(N))
if test ! -z "$env_config_files" ;
    then
    for file in ${env_config_files}
    do
      source $file
    done
fi

export TERM="xterm-256color"
