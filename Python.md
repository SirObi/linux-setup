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

Install build dependencies (not needed on MacOS, if you've got Homebrew and xcode dev tools installed already):  
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
https://github.com/mahmoud/boltons
Pipenv allows you to create virtual environments, avoid the usual pip problems, and it keeps you in a flow state (well, usually).  
`sudo apt install pipenv`  

## Install cookiecutter  
This will allow you to bootstrap small projects with reasonable defaults, and get cracking with the development.  
`sudo apt install cookiecutter`  

A fun template to use is:  
`cookiecutter gh:sourcery-ai/python-best-practices-cookiecutter`  

It's got fun features like autoformatting (`black`), type-checking (`mypy`), and pre-commit and pre-push hooks. All in all, it saves you a lot of boring headache.  

Run commands from the template's README:  
`pipenv install --dev`  
`pipenv run pre-commit install -t pre-commit`  
`pipenv run pre-commit install -t pre-push`  

## Notes
https://github.com/mahmoud/boltons
