export LC_ALL=en_US.UTF-8
export ZSH=$HOME/.oh-my-zsh
export GOPATH=$HOME/Documents/code/golang
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$HOME/Dropbox/script
#放这里为了防止emacs报path警告
export PATH=$PATH:/usr/local/opt/fzf/bin
ZSH_THEME="gnzh"
DISABLE_AUTO_UPDATE="true"
TERM=xterm-256color
export PASSWORD_STORE_DIR=$HOME/Documents/code/password-store

# create an alias to run yadm for system files
#alias sy="sudo yadm -Y /etc/yadm"
alias pyadm="yadm -Y ~/.pyadm"

# export PATH="/usr/local/opt/sbt@0.13/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

export SBT_OPTS="-Xss1000m -Xmx1024m -Xms1023m -XX:ReservedCodeCacheSize=128m -XX:MaxMetaspaceSize=256m"


# pyenv 只是一个python版本共存管理工具
# venv(pyvenv) 只支持python3.3以上版本  virtualenv 支持python2 和python3  两者都是python 虚拟机环境管理工具 根据pyenv设置的版本创建的
# export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
