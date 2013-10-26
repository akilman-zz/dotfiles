
;; marmalade package repo
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

;; switches for auto-complete
(require 'auto-complete-config)
(ac-config-default)

(require 'multi-term)
(setq multi-term-program "/bin/zsh")

(require 'smart-tab)
(global-smart-tab-mode 1)