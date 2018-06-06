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

1. Add these to ~/.emacs.d/chicken/
2. Add the following to your .emacs

```lisp
;;----------------------------------------------------------------------
;; Chicken
(add-to-list 'load-path
	     "~/.emacs.d/chicken")
(require 'chicken)
(require 'flymake-chicken)
(add-hook 'scheme-mode-hook 'flymake-chicken)
(add-hook 'scheme-mode-hook 'chicken)
(setq scheme-program-name "csi -:c")
```

3. The two useful commands are C-c C-l to load the file into the interpreter, and
   C-c C-z to see the interpreter window.  If you load file you might need to comment
   it out since chicken doesn't like to reload a file.
  
```lisp
(define-key scheme-mode-map "\C-c\C-l" 'scheme-load-current-file)
(define-key scheme-mode-map "\C-c\C-k" 'scheme-compile-current-file)
```
