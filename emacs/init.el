;; load path configuration
(add-to-list 'load-path "~/dotfiles/emacs/markdown-mode")

;; use standard copy-paste keyboard combinations
(cua-mode 1)

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
