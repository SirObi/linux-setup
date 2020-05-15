# Python  
This will hopefully minimize the usual faff that you might otherwise have when installing Python.  

It's a practical implementation of the article `Why you should use pyenv + Pipenv for your Python projects`, by Daniel van Flymen (https://github.com/dvf)  
https://hackernoon.com/reaching-python-development-nirvana-bb5692adf30c

## Note  
MacOS installation will look very similar.  
Just replace `sudo apt` with `brew`.  

## Install pyenv  
First and foremost, you want to leave the system Python in peace.  
And you also want the ability to switch between different Python versions on the fly as you switch between projects.  
`pyenv` gives you exactly that.  

Do some nerd magic:  
`git clone https://github.com/pyenv/pyenv.git ~/.pyenv`  
`echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc`  
`echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc`  
`echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc`  

Reload your shell:  
`source ~/.zshrc`  

See if pyenv works (should print a list of Python versions available online):  
`pyenv install --list`  

Install build dependencies:  
`sudo apt install --no-install-recommends make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev`  

Install a fresh distribution of Python:  
`pyenv install 3.8.3`  
`pyenv global 3.8.3`  

Reload your shell again:  
`source ~/.zshrc`  

Python 3.8.3 is now the default for your shell.  
You can use `python global` to set it to something else. Or `python local` to assign a Python version to a project you're currently in.  
For more info, check out this:  
https://github.com/pyenv/pyenv#installation  





