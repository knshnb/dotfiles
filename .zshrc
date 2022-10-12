export HISTFILE=~/.zsh_history
export SAVEHIST=100000
setopt SHARE_HISTORY
# PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/opt/sphinx-doc/bin:$PATH"
alias kaggle=$HOME/Library/Python/3.8/bin/kaggle
alias oj=$HOME/Library/Python/3.8/bin/oj

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"  # ls, mv, etc of GNU/Linus
export LC_ALL=en_US.UTF-8

# custom alias
alias vim="vim -p"
alias ls='ls --color=auto'
alias l='ls -CF'
alias ll='ls -t -l -F -G -al'

# competitive programming
function template() {
  if [[ $1 == *.test ]] then;
    cp ~/.competitive_template.test.cpp "$1.cpp"
  else
    cp ~/.competitive_template.cpp "$1.cpp"
  fi
  sed -i "" "s/CREATED_TIMESTAMP/$(date)/g" "$1.cpp"
}
function dl_problem() {
  if [ $# -ne 1 ]; then
    echo "number of argments should be 1"
    return 1
  fi
  dir_name=${1##*/}
  echo $dir_name
  mkdir $dir_name
  cd $dir_name
  oj d $1
  template main
  code main.cpp
}

# Zinit
### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

## Load a few important annexes, without Turbo
## (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

## https://zdharma-continuum.github.io/zinit/wiki/Example-Oh-My-Zsh-setup/#without_using_turbo_and_for-syntax
setopt promptsubst
zinit snippet OMZL::git.zsh
zinit ice atload"unalias grv"
zinit snippet OMZP::git
zinit for OMZL::prompt_info_functions.zsh OMZT::gnzh
zinit snippet OMZP::colored-man-pages
zinit ice as"completion"
zinit snippet OMZP::docker/_docker
zinit ice atinit"zicompinit; zicdreplay"
zinit light zdharma-continuum/fast-syntax-highlighting
