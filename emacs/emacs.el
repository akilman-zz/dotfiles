(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(unless (package-installed-p 'scala-mode2)
  (package-refresh-contents) (package-install 'scala-mode2))

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

;; load path configuration
(add-to-list 'load-path "~/dotfiles/emacs/markdown-mode")

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

;; load the ensime lisp code...
(add-to-list 'load-path "/opt/ensime_2.10.0-RC3-0.9.8.2/elisp/")
(require 'ensime)

;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this
;; step
;; if you're not using the standard scala mode.
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; set color of the current line
(global-hl-line-mode 1)
(set-face-background 'hl-line "#3e4446")

