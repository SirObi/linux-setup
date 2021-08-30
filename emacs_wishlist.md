# Emacs Python wishlist (WIP)  

#### INTRODUCTION  
I've created an Emacs config geared toward Python development.  
https://github.com/SirObi/emacs-python

Below are my notes on each of the elements of the setup, each corresponding to a specific need a Python developer may have.  

#### FIRST - SOME USEFUL COMMANDS (built into Emacs already)  
`M-x describe-mode` - shows which modes you've got activated.   

#### PYTHON - PREREQUISITES  

You can put the following in `init.el`. But it's better to keep it in a separate file, like `init-python.el`, just to keep things clean.  
`pythonPackages` is an arbitrary name I came up with.  
```lisp
;; define list of packages to install
(defvar pythonPackages
  '(company-jedi
    poetry
    pyenv-mode))

;; install all packages in list
(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      pythonPackages)

;; Add jedi to company backends
(defun my/python-mode-hook ()
  (add-to-list 'company-backends 'company-jedi))
(add-hook 'python-mode-hook 'my/python-mode-hook)
```





#### PYTHON

##### Autocompletion of imports
`company` with `jedi` backend  

---

##### Autoformat on save

---

##### Autoordering of imports  
`sudo apt install isort`  

In Emacs:  
`M-x package-install RET`  
`py-isort RET`  

Apply on currently open file:  
`M-x py-isort-buffer`  


Can be made to work automatically on save:  
https://github.com/paetzke/py-isort.el

---

##### Copy and paste from clipboard  
Use the GUI version of Emacs.  
It can me made to work with Emacs in the terminal, but the GUI version saves you a lot of pain across the board.  

---

##### Definitions in tooltips (optional)  


---

##### Find all instances of variable / class  
Use Purcell's `init-projectile.el`.  
Install `ag` with `brew` (on MacOS) or your Linux package manager (e.g. `apt`).  

Position cursor on variable / class name.  
`C-c p` to go into Projectile commands.  
`s s RET` to search.  

---


##### Flake8 and mypy from `pyproject.toml`  
 

---

##### Gray out unnecessary imports  


---

##### Gray out unused vars  


---

##### Import suggestions, Method suggestions  
Now you will see import and method suggestions when you press Tab.  
Note that if you have this switched on, you'll have to do indentation with `C-i`.  
```lisp
(defun company-keybindings-hook ()
  (global-set-key (kbd "<tab>") 'company-complete))
(add-hook 'after-init-hook 'company-keybindings-hook)
```

Disregard the above. Just use Purcell's `init-company.el`.  

---

##### Look up function definition (goto declaration in new pane)  
Keybindings:  
```lisp
;; Set up jedi keybindings
(defun jedi-keybindings-hook ()
  (local-set-key (kbd "C-.") 'jedi:goto-definition)
  (local-set-key (kbd "C-,") 'jedi:goto-definition-pop-marker))
(add-hook 'python-mode-hook 'jedi-keybindings-hook)
```

`C-.`

Go back:  
`C-,`

---

##### Poetry support  
```
(defvar myPackages
  '(...
    poetry))
    
(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)
```
https://github.com/galaunay/poetry.el

`M-x poetry-tracking-mode`

---

##### Refactoring support - replace tag (f.x. variable name) across project  


---

##### Syntax error highlighting
Use Purcell's `init-flycheck.el`.  

Flycheck supports over 40 different languages.  

---

##### Tab-completion of imports  


---

##### Use flake8 settings from active Poetry env 


---


#### EMACS

##### Automatically refresh package source list if package not found
```lisp
(when (cl-find-if-not #'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (mapc #'package-install package-selected-packages))
```
(where `package-selected-packages` is just the name of the list of packages you want checked.  

Source: 
https://github.com/emacs-lsp/lsp-dart#quickstart

---


##### Create new directory
`+` in directory view  


---

##### Don't ask about "modified buffers still exist"  


---

##### Don't create `#something#` or `.#something` files 
Consider this: https://amitp.blogspot.com/2007/03/emacs-move-autosave-and-backup-files.html
This solution puts backup and autosave files into a separate directory at the user root.  

In the end, it seems like I simply added this one line:  
```lisp
(setq backup-directory-alist `(("." . "~/.saves")))
```

---

##### Don't open clicked files in a new pane
It can be fairly confusing and annoying.  


---

##### Fuzzy-match M-x and C-x commands

---

##### Fuzzy-match file names
Like here: https://github.com/hlissner/doom-emacs/issues/1552#issue-466366532

---

##### Hide toolbar (the one with icons)  
```lisp
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
```

---

##### Hide menu 
```lisp
(menu-bar-mode -1)
```

---

##### Markdown visualisation 


---

##### Maximize window when opening Emacs


---

##### Multiple cursors
```lisp
(require-package 'multiple-cursors)
;; multiple-cursors
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-+") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
```
(courtesy of Purcell's config)  

---

##### Number of remaining errors in file shown at all times
This is a nice feature Intellij/Android Studio have.  
Rather than run your script and discover errors, you'll see that you still have N number of errors left to fix,  
without having to scan the document visually for error highlights.  

Solution:  
Use Purcell's `init-flycheck.el`.   
It  displays the number of warnings and errors at the bottom of the screen:   
`FlyC:1|3` (1 error, 3 warnings)  


---

##### Open clicked file in the same pane  


---

##### Open projectile search results in the same pane  


---

##### Revert buffer without asking  

```lisp
(add-hook 'after-init-hook 'global-auto-revert-mode)
(setq global-auto-revert-non-file-buffers t
      auto-revert-verbose nil)
```

Courtesy of Purcell's `init-editing-utils.el`.  

---

##### Search in project with Silver Searcher (ag)  
Use Purcell's `projectile.el`.  
Add this snippet to use `ag` for searching:  
```lisp
;; define list of packages to install
(defvar projectilePackages
  '(ag))

;; install all packages in list
(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      projectilePackages)
```

---

##### "Switch to buffer" displays a list of suggestions/history  
Install `vertico` and enable `vertico-mode`  

---

##### Select word on double click  
Should be available by default.   

This assumes you installed Purcell's emacs.d (not sure which package does this exactly

--- 

##### Sonarlint for Emacs

--- 

## Inspirations  

`.emacs.d` layout and many of the features

Steve Purcell (purcell)'s `.emacs.d`  
https://github.com/purcell/emacs.d

## Further reading
https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwivsvPZprnwAhVKThUIHY02D7wQFjAAegQIBRAD&url=http%3A%2F%2Femacsrocks.com%2F&usg=AOvVaw0SVUjrGnYM_DASOe9dJ74N
