
;; marmalade package repo
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

;; useful tidbit from clojure-doc.org, install packages if not present
;; to facilitate portability across machines
(defvar my-packages '(starter-kit
		      starter-kit-lisp
		      starter-kit-bindings
		      starter-kit-eshell
		      clojure-mode
		      clojure-test-mode
		      nrepl
		      multi-term
		      smart-tab
		      color-theme
		      fill-column-indicator
		      linum))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

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
