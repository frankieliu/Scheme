# emacs packages to install for markdown

- markdown
- markdown-+ (this contains useful stuff like cycle)
- markdown-preview
- flymd (this one looks better than markdown-preview code snippets look better

# .emacs for flymd
Since there is a problem with chrome use firefox instead
    
```emacs-lisp
(defun my-flymd-browser-function (url)
  (let ((browse-url-browser-function 'browse-url-firefox))
    (browse-url url)))

(setq flymd-browser-open-function 'my-flymd-browser-function)
```
# .emacs for chicken

Follow directions in 
[call-cc](https://wiki.call-cc.org/emacs#scheme-complete)

## emacs packages
geiser
    
## For geiser

1. Install the necessary support eggs.

```shell
chicken-install -s apropos chicken-doc
```

2. Update the Chicken documentation database.

```shell
cd `csi -p '(chicken-home)'`
curl http://3e8.org/pub/chicken-doc/chicken-doc-repo.tgz | sudo tar zx
```

## Download chicken.el and flymake-chicken.el

0. These conflict with geiser, so choose one or the other
1. Add chicken.el and flymake-chicken.el to ~/.emacs.d/chicken/
2. Add the following to your .emacs

```lisp
;;----------------------------------------------------------------------
;; Chicken
(add-to-list 'load-path
	     "~/.emacs.d/chicken")
(require 'chicken)
(require 'flymake-chicken)
(setq scheme-program-name "csi -:c")
```

3. The two useful commands are C-c C-l to load the file into the interpreter, and
   C-c C-z to see the interpreter window.  If you load file you might need to comment
   it out since chicken doesn't like to reload a file.
  
```lisp
(define-key scheme-mode-map "\C-c\C-l" 'scheme-load-current-file)
(define-key scheme-mode-map "\C-c\C-k" 'scheme-compile-current-file)
```

# Using geiser instead

```lisp
;;----------------------------------------------------------------------
;; Chicken
(add-to-list 'load-path
	     "~/.emacs.d/chicken")
(require 'chicken)
(require 'flymake-chicken)
(setq scheme-program-name "csi -:c")

;; Don't know why these don't work with geiser
;; (add-hook 'scheme-mode-hook 'enable-paredit-mode)
;; (add-hook 'scheme-mode-hook 'rainbow-delimiter-mode)

;; use C-u C-c C-l to load the current buffer and to switch to the
;; repl process
;; use C-x b to return to current buffer
;;
;; Because Geiser clobbers C-c C-l, we turn it off
;; https://github.com/n3mo/.emacs.d/blob/master/setup/setup-scheme-mode.el
;; (setq geiser-mode-auto-p nil)
(setq geiser-active-implementations '(chicken))
(setq geiser-impl-installed-implementations '(chicken))
;; (setq geiser-chicken-binary "/usr/bin/csi -:c")
;;
;; For geiser use C-c C-b to run the current buffer
;; Use C-c C-z to switch to the repl and back to the buffero

```
