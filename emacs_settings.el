;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;///////////setings for emacs\\\\\\\\\\\;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Supprime les fichier ~
(setq make-backup-files nil)

(set-language-environment 'UTF-8)

;; parentheses en couleur
(custom-set-variables
 '(show-paren-mode t))
(custom-set-faces)

;; yes > y | no > n
(fset 'yes-or-no-p 'y-or-n-p)
 
;; Affiche le numero de ligne et de colonne
(column-number-mode t)
(line-number-mode t)

;; Enlever le message au demarrage
(setq inhibit-startup-message t)

;;Delelt the menu bar
(menu-bar-mode -1)

;; Affiche l'heure au format 24h
(setq display-time-24hr-format t)
(setq displat-time-day-and-date t)

;; Laisser le curseur en place lors d'un defilement par pages.
;; Par defaut, Emacs place le curseur en debut ou fin d'ecran
;; selon le sens du defilement.
(setq scroll-preserve-screen-position t)
 

; Remplacement des tabulations par des espaces
(defun indent-setup (num)
  (setq c-default-style "linux")
  (if c-buffer-is-cc-mode (c-set-style "linux"))
  (setq c-basic-offset num)
  (setq indent-tabs-mode nil)
  (setq tab-width num)
)

(defun indent2 ()
  (interactive)
  (indent-setup 2)
)

(defun indent4 ()
  (interactive)
  (indent-setup 4)
)

(add-hook           'c++-mode-hook 'indent4)
(add-hook             'c-mode-hook 'indent4)

; Suppression des espaces en fin de ligne a l'enregistrement
(add-hook 'c++-mode-hook '(lambda ()
  (add-hook 'write-contents-hooks 'delete-trailing-whitespace nil t)))
(add-hook   'c-mode-hook '(lambda ()
  (add-hook 'write-contents-hooks 'delete-trailing-whitespace nil t)))
