# linux-setup
Set of Terminal commands for quick, productive dev setup


## THIS IS THE NEW WAY, USING ANSIBLE (WORK IN PROGRESS):  
```shell
sudo apt install python3-pip  
pip3 install ansible
```

On Linux, pip might install ansible into `~/.local/bin`, which might not be on the `$PATH`.  
Solution:  
`export PATH=$PATH:/.local/bin`  
(it will be set permanently in a shell file later)  


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

I've found plain emacs gets pretty slow with time.  
For lightning speed and flow states, you want to start an emacs daemon and then use the  
`emacsclient` command.  

### Start emacs daemon
Use the following guide to make the Emacs server start up on login: 

**Linux**  
https://www.emacswiki.org/emacs/EmacsAsDaemon  

**Mac**  
http://www.rockhoppertech.com/blog/emacs-daemon-on-macos/  
Alternatively:  
https://www.hhyu.org/posts/emacs_clientserver/

Or if you're keen to just try it out and get Emacs running right now: 
`emacs --daemon`  
(This might take a while the first time around (but much quicker after that))


### Use emacsclient command  
You can now open the current directory with emacs by executing the `emacsclient .` command.

It's a bit of a mouthful (fingerful?) to type - I prefer to alias `emacsclient` to `e`:  
`echo -e 'alias e="emacsclient -a -c"' >> ~/.zshrc`  (or whatever your shell config file is, e.g. `.bashrc`)  

Now you can open your files with Emacs like so:  
`e somefile`  

And the current directory like so:  
`e .`  

Nice.  
