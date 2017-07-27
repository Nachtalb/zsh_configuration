# # # # # # # # # # # # #
#    General Config     #
# # # # # # # # # # # # #

# Load all needed paths before the plugins are loaded to ensure the work correctly
PATH="$HOME/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/git/bin:$PATH"

# Get current python version
zsh_python_version(){
    local python_version=$(python --version 2>&1 | sed 's/[a-zA-Z ]//g')
    echo $python_version
}
# Add a `custom_python_version` prompt element for powerlevel9k theme
POWERLEVEL9K_CUSTOM_PYTHON_VERSION="zsh_python_version"

# With this the username at the start of the line in the console is removed
DEFAULT_USER=nickespig

# use theme
ZSH_THEME="powerlevel9k/powerlevel9k"

# load own custom config
source ~/.zsh/config

# Load all plugins before we load `oh my zsh` to ensnsure that everything works correctly
plugins=(git zsh-autosuggestions zsh-syntax-highlighting last-working-dir pip python sublime web-search)

# load `oh my zsh`
export ZSH=/Users/nickespig/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Ruby, rbenv und ruby-build
if [ -d ~/.rbenv/bin ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# direnv enviroment switcher
eval "$(direnv hook zsh)"

# # # # # # # # #
#    cd hook    #
# # # # # # # # #
function on_cd_hook() {
    emulate -L zsh
    if [ "$HOME" != "${PWD}" ]
    then
        ls -lha
    fi
    echo -e "\n\\033[0;31m### CURRENT PATH ###\\033[0m"
    pwd
}

chpwd_functions=(${chpwd_functions[@]} "on_cd_hook")

# # # # # # # # # # #
#    Other stuff    #
# # # # # # # # # # #

# OpenSSL of Macports
export LDFLAGS="-L/opt/local/lib"
export CFLAGS="-I/opt/local/include"
export C_INCLUDE_PATH=/opt/local/include/
export CPLUS_INCLUDE_PATH=/opt/local/include/
export SWIG_FEATURES="-cpperraswarn -includeall -I/opt/local/include"

