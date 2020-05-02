# linux-setup
Set of Terminal commands for quick, productive dev setup

## Note
MacOS installation will look very similar.  
Just replace `sudo apt` with `brew`.  

First, for convenience, clone this repo:  
`git clone git@github.com:SirObi/linux-setup.git`  
`cd linux-setup`  

## Zsh setup
`sudo apt install zsh`  
`curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh; zsh`  

You might need to go to your Terminal preferences and change default command on  
startup to `zsh`.

Install plugins for `Zsh`:  

`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`  

`git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`  

`sudo apt install autojump`  

`cp .zshrc ~/.zshrc`  

## Emacs setup
`sudo apt install emacs`  
`git clone https://github.com/purcell/emacs.d.git ~/.emacs.d`  
This might take a while:  
`emacs --daemon`  
