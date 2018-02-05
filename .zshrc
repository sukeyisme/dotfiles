plugins=(git sudo cp z extract zsh-autosuggestions last-working-dir zsh-syntax-highlighting zsh-history-substring-search)

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/plugins/history-substring-search/history-substring-search.zsh
source /usr/local/opt/fzf/shell/key-bindings.zsh

proxy () {
export http_proxy="http://127.0.0.1:4411"
export https_proxy="http://127.0.0.1:4411"
export all_proxy="http://127.0.0.1:4411"
export GIT_SSH="socks5proxyssh" #sock5转ssh代理 用于git的ssh协议 注意:git@不是git协议 而是ssh协议 而git://才是git协议
echo "HTTP Proxy on"
}
noproxy () {
unset http_proxy
unset https_proxy
unset all_proxy
unset GIT_SSH
echo "HTTP Proxy off"
}

#一定要放到PATH后面
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi
