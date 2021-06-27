# Emacs Python wishlist (WIP)  


#### PYTHON

##### Autocompletion of imports
`jedi:complete`  

Bear in mind  
`elpy-config`  

`install jedi` -> `jedi:install-server`  

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

##### Import suggestions  

---

##### Look up function definition (goto declaration in new pane)  
`M-.`

Go back:  
`M-,`

---


##### Method suggestions  
This assumes you installed Purcell's emacs.d (which contains the `anaconda-mode`).  

---

##### Syntax error highlighting
`elpy`

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

##### Multiple cursors


---

##### "Switch to buffer" displays a list of suggestions/history  


---

##### Select word on double click  
Should be available by default.   

This assumes you installed Purcell's emacs.d (not sure which package does this exactly

--- 

## Inspirations  

Using Elpy  

Leighton Pritchard (widdowquinn)'s `Turning Emacs into a Python IDE `  
https://gist.github.com/widdowquinn/987164746810f4e8b88402628b387d39

`.emacs.d` layout  

Steve Purcell (purcell)'s `.emacs.d`  
https://github.com/purcell/emacs.d

## Further reading
https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwivsvPZprnwAhVKThUIHY02D7wQFjAAegQIBRAD&url=http%3A%2F%2Femacsrocks.com%2F&usg=AOvVaw0SVUjrGnYM_DASOe9dJ74N
