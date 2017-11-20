alias g="g++ -Wall -Wextra -O2 -g -Wl,--stack=268435456 -D LOCAL -std=c++11"
alias ll='ls -t -l -F -G -al'
alias ..="cd .."
alias ...="cd ../.."
alias ocaml="rlwrap ocaml"
alias vim="vim -p"

source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash

# cdが成功したら自動でll
cd ()
{
    builtin cd "$@" && ll
}

if [ $UID -eq 0 ]; then
    PS1="\[\033[31m\]\w\$\[\e[0m\] "
else
    PS1="\[\033[36m\]\w\$\[\e[0m\] "
fi

# lazygit
function lazygit() {
    git add .
    git commit -a -m "$*"
    git push
}
