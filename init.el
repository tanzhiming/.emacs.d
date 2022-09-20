(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "lisp")))
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-settings)
(require 'init-elpa)
(require 'basic-packages)
(require 'ui)


(when (file-exists-p custom-file)
  (load-file custom-file))
