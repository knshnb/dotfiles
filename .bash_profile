# .bashrcの反映を自動化
if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi


# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
eval "$(rbenv init -)"
eval "$(nodenv init -)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init-)"
