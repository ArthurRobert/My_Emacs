;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;////////////////Key_binding\\\\\\\\\\\;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; F3 : lance le man sur le mot ou se trouve le curseur
(global-set-key [f3]    'vectra-man-on-word)
(global-set-key (kbd "C-c c") 'comment-region)
(global-set-key (kbd "C-c u") 'uncomment-region)
(global-set-key (kbd "C-c <right>") 'next-buffer)
(global-set-key (kbd "C-c <left>") 'previous-buffer)

