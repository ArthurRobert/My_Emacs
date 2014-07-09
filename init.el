
;(let ((default-directory "/home/arthur/.emacs.d/"))
;  (normal-top-level-add-subdirs-to-load-path))

(load "/home/arthur/.emacs.d/emacs_modules")
(load "/home/arthur/.emacs.d/emacs_key_binding")
(load "/home/arthur/.emacs.d/emacs_settings")

(require 'package)

(add-to-list 'package-archives '("melpa"     . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("gnu"       . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))


(package-initialize)

(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)


;;-------------aspell---------------;;
(setq ispell-program-name "aspell")
(setq ispell-dictionary "francais")
(setq flyspell-default-dictionary "francais")


;;-------------AcuTEX----------------;;
(load "auctex.el" nil t t)

(require 'ac-math)
(add-to-list 'ac-modes 'latex-mode)

(defun ac-LaTeX-mode-setup () 
  (setq ac-sources
	(append '(ac-source-math-unicode ac-source-math-latex)
		ac-sources))
)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'ac-LaTeX-mode-setup)


(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(setq latex-run-command "pdflatex")
(setq ac-math-unicode-in-math-p t)


;;------------------------------------;;
(require 'gccsense)

;;------------------------------------;;
(require 'yasnippet)
(yas-global-mode 1)


;;------------------------------------;;
(defun my:ac-c-header-init() 
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '"/usr/include")
)
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)
(define-key global-map (kbd "C-c ;") 'iedit-mode)


;;------------------------------------;;
(defun my:flymake-google-init()
  (require 'flymake-google-cpplint)
  (custom-set-variables 
   '(flymake-google-cpplint-command "/usr/bin/cpplint"))
  (flymake-google-cpplint-load)
)
(add-hook 'c-mode-hook 'my:flymake-google-init)
(add-hook 'c++-mode-hook 'my:flymake-google-init)


;;------------------------------------;;
(require 'google-c-style)
(add-hook 'c-mode-hook 'google-set-c-style)
(add-hook 'c-mode-hook 'google-make-newline-indent)
(add-hook 'c++-mode-hook 'google-set-c-style)
(add-hook 'c++-mode-hook 'google-make-newline-indent)


;;------------------------------------;;
(semantic-mode 1)
(defun my:add-sementic-to-autocomplete()
  (add-to-list 'ac-sources 'ac-source-semantic)
)

(add-hook 'c-mode-common-hook 'my:add-sementic-to-autocomplete)
(global-ede-mode 1)
