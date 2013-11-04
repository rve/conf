;; minimal .emacs file
;; Popular replce for M-x
(global-set-key (kbd "C-x C-m") 'execute-extended-command)
;; Unset disturbing shortcut for sending mail
(global-unset-key (kbd "C-x m"))
;; disable backup file
(setq make-backup-files nil)
;; newline set
(global-set-key (kbd "RET") 'newline-and-indent)
;;Set paren match
(setq show-paren-mode t)
;;Set Mark
(global-set-key (kbd "C-.") 'set-mark-command)
;;line num
(global-linum-mode 1) ; always show line numbers
(setq linum-format "%d ")  ;set format



