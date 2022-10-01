export HISTFILE=~/.zsh_history
export SAVEHIST=100000
setopt SHARE_HISTORY
# PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH="$HOME/.cargo/bin:$PATH"
# export PATH="$HOME/Library/Python/3.7/bin:$PATH"
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

## Example: https://zdharma-continuum.github.io/zinit/wiki/Example-Oh-My-Zsh-setup/
zinit wait lucid light-mode for \
  atinit"zicompinit; zicdreplay" \
      zdharma-continuum/fast-syntax-highlighting \
  atload"_zsh_autosuggest_start" \
      zsh-users/zsh-autosuggestions \
  blockf atpull'zinit creinstall -q .' \
      zsh-users/zsh-completions

setopt promptsubst
zinit wait lucid for \
        OMZL::git.zsh \
  atload"unalias grv" \
        OMZP::git
PS1="READY >" # provide a simple prompt till the theme loads
zinit wait'!' lucid for \
    OMZL::prompt_info_functions.zsh \
    OMZT::gnzh
zinit wait lucid for \
  atinit"zicompinit; zicdreplay"  \
        zdharma-continuum/fast-syntax-highlighting \
      OMZP::colored-man-pages \
  as"completion" \
        OMZP::docker/_docker

