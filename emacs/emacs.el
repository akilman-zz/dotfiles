
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

(require 'color-theme)

(require 'fill-column-indicator)
(setq fci-rule-column 90)
(setq fci-rule-color darkblue)

;; load path configuration
(add-to-list 'load-path "~/dotfiles/emacs/markdown-mode")

;; use standard copy-paste keyboard combinations
(cua-mode 1)
(column-number-mode 1)

;; auto-insert brackers in pairs
(electric-pair-mode 1)

;; turn on syntax coloring
(global-font-lock-mode 1) 

;; for adding line numbers; use M-x linum-mode
(require 'linum)

;; markdown syntax highlighting
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
