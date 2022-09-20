(require 'package)
(setq package-enable-at-startup nil)


(setq package-check-signature nil
      load-prefer-newer t)

(setq package-archives '(("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
			 ("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			 ("org"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))


;; initialize the packages
(unless (bound-and-true-p package--initialized)
  (package-initialize))

;; settings for use-package package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(eval-and-compile
  (setq use-package-always-ensure t
        use-package-always-defer t
        use-package-expand-minimally t)
  (require 'use-package))


(provide 'init-elpa)
