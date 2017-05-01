alias g="g++ -Wall -Wextra -O2 -g -Wl,--stack=268435456 -D LOCAL -std=c++11"
alias ll='ls -t -l -F -G -al'
alias ..="cd .."
alias ...="cd ../.."

# cdが成功したら自動でll
cd ()
{
    builtin cd "$@" && ll
}

if [ $UID -eq 0 ]; then
    PS1="\[\033[31m\]\w\\$ "
else
    PS1="\[\033[36m\]\w\\$ "
fi

