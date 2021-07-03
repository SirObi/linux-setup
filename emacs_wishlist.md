# Emacs Python wishlist (WIP)  

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

---

##### Definitions in tooltips (optional)  


---

##### Find all instances of variable / class  
`M-r`  

---


##### Highlight unused vars  


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

##### Syntax error highlighting
Use Purcell's `init-flycheck.el`.  

Flycheck supports over 40 different languages.  

---

##### Tab-completion of imports  


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

#### EMACS

##### Create new directory
`+` in directory view  


---

##### Don't ask about "modified buffers still exist"  


---

##### Don't create `#something#` or `.#something` files 


---

##### Hide the icons bar from default layout


---

##### Multiple cursors


---

##### Open clicked file in the same pane  


---

##### "Switch to buffer" displays a list of suggestions/history  


---

##### Select word on double click  
Should be available by default.   

This assumes you installed Purcell's emacs.d (not sure which package does this exactly

--- 

## Inspirations  

`.emacs.d` layout  

Steve Purcell (purcell)'s `.emacs.d`  
https://github.com/purcell/emacs.d

## Further reading
https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwivsvPZprnwAhVKThUIHY02D7wQFjAAegQIBRAD&url=http%3A%2F%2Femacsrocks.com%2F&usg=AOvVaw0SVUjrGnYM_DASOe9dJ74N
