;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;////////////modules for emacs\\\\\\\\\\\\;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;(require 'ac-math)
;(add-to-list 'ac-modes 'latex-mode)

;;(require 'auto-complete-auctex)
;;(add-to-list 'ac-modes 'latex-mode)

;;aspell
;;(setq ispell-program-name "aspell")

;;(setq ispell-dictionary "francais")
;;(setq flyspell-default-dictionary "francais")

;;(add-hook 'c++-mode-common-hook 'flyspell-prog-mode)
;;(add-hook 'c-mode-common-hook 'flyspell-prog-mode)

;;AcuTEX
;;(load "auctex.el" nil t t)

;;(setq TeX-auto-save t)
;;(setq TeX-parse-self t)
;;(setq-default TeX-master nil)
;;(setq latex-run-command "pdflatex")




;; (add-hook 'LaTeX-mode-hook 'visual-line-mode)
;;(add-hook 'LaTeX-mode-hook 'flyspell-mode)
;;(add-hook 'LaTeX-mode-hook 'ac-LaTeX-mode-setup)
;;(global-auto-complete-mode t)


;; (add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
;; (add-hook 'LaTeX-mode-hook 'turn-on-reftex)
;; (setq reftex-plug-into-AUCTeX t)
;; (setq TeX-PDF-mode t)


;;lua
(setq auto-mode-alist (cons '("\.lua$" . lua-mode) auto-mode-alist))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)


(add-to-list 'auto-mode-alist '("\\.cu\\'" . c++-mode))
