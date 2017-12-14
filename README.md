# ZSH Configuration - Mac
Hello me. If you are not me, hello to you. This is my personal
zsh_configuration macs.

For the linux version click [here](https://github.com/Nachtalb/zsh_configuration.linux).

![Mac iTerm2 Terminal](http://i.imgur.com/QA0xdqz.png)

Mac iTerm2 Terminal

## Installation

1. Install [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
    ```
    sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
    ```
2. Installation of the [Powerlevel9k](https://github.com/bhilburn/powerlevel9k) theme.
    1. Download the theme:
        ```
        git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
        ```
    2. Edit your `~/.zshrc` and set `ZSH_THEME="powerlevel9k/powerlevel9k"`
    3. Install a powerline font like: [Meslo](https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf)
    4. (Optional) You can find more Powerlevel9k configurations [here](https://github.com/bhilburn/powerlevel9k/wiki/Show-Off-Your-Config)
2. Install [Auto Suggestions](https://github.com/zsh-users/zsh-syntax-highlighting)
    1. Download the plugin:
        ```
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
        ```
    2. Edit your `~/.zshrc` and set `plugins=( [plugins...] zsh-syntax-highlighting)`
2. Clone this repo to `~/.zsh`
    ```
    git clone git@github.com:Nachtalb/zsh_configuration.mac.git ~/.zsh
    ```
3. Add the following code to you `~/.zshrc`
    ```
    source ~/.zsh/config.sh
    DEFAULT_USER=[username]
    ```
    Replace `[username]` with you current users name. Like this the you
    remove the `username@computername` on the left side of your input.
4. Install the iTerm2 profile located in `~/.zsh/iTerm2-Profile/`

5. Install git-open: 
    ```
    git clone https://github.com/paulirish/git-open.git ~/.oh-my-zsh/custom/plugins/git-open
    ```

