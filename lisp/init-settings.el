(setq inhibit-startup-message t)
(setq make-backup-files nil)

(when (eq system-type 'darwin)
  (setq insert-directory-program "gls" dired-use-ls-dired t))

(global-linum-mode 1)

;; (menu-bar-mode -1)

(tool-bar-mode -1)

(scroll-bar-mode -1)


;; settings for  coding system
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8) 
(set-terminal-coding-system 'utf-8) 
(set-keyboard-coding-system 'utf-8) 
(setq default-buffer-file-coding-system 'utf-8)

(setq gc-cons-threshold most-positive-fixnum)
(defalias 'yes-or-no-p 'y-or-n-p)


(provide 'init-settings)
