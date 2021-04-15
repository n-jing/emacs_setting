;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;custom setting;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/3rd")
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(load "window-numbering.el")
(window-numbering-mode 1)
(load "my.el")
(require 'guess-offset)

(put 'narrow-to-page 'disabled nil)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;indent setting;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;only change tab display width, 
(setq-default tab-width 2)  
(setq tab-width 2)


;;;;;;;;;;;;;;;;;;;;; tab 4 width
;; (setq-default indent-tabs-mode t)
;; (setq-default tab-width 4)

;;;;;;;;;;;;;;;;;;;;; tab to space with 2 width
;; (setq-default indent-tabs-mode nil) ; tab 改为插入空格
;; (setq c-basic-offset 2) ; c c++ 缩进4个空格
;; (setq c-default-style "k&r"); 没有这个 { } 就会瞎搞
;; (setq default-tab-width 2)


(setq python-insert-encoding-magic-comment nil)
(setq enh-python-add-encoding-comment-on-save nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;hoop setting;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'auto-mode-alist '("m[M]akefile.*" . makefile-gmake-mode))

(autoload 'glsl-mode "glsl-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.vert\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.frag\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.vs\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.fs\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.glsl\\'" . glsl-mode))

(autoload 'yaml-mode "yaml-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))


(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist
             '("\\.\\(?:md\\|markdown\\|mkd\\|mdown\\|mkdn\\|mdwn\\)\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(autoload 'cuda-mode "cuda-mode.el")
(add-to-list 'auto-mode-alist '("\\.cu\\'" . cuda-mode))


(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
(defconst *is-a-mac* (eq system-type 'darwin))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;package;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'init-utils)
(require 'neotree)
(require 'yasnippet)
(yas/global-mode 1)


(require 'buffer-move)
(global-set-key (kbd "<C-S-up>")     'buf-move-up)
(global-set-key (kbd "<C-S-down>")   'buf-move-down)
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
(global-set-key (kbd "<C-S-right>")  'buf-move-right)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;download packages automatic;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (require 'init-elpa) ;; elpa connecting required

;; Machinery for installing required packages.
;; explicitly call 'package-initialize to set up all packages installed via ELPA.
;; should come before all package-related config files


(require 'init-python-mode)
(require 'init-haskell)
(require 'init-themes)
(require 'init-matlab)
(require 'init-git)
(require 'init-csv)
(require 'init-javascript)

;; (require 'init-yasnippet)
;; (require 'init-hippie-expand)
;; (require 'init-auto-complete)
;; (require 'init-windows)
;; (require 'init-sessions)
;; (require 'init-mmm)
;; (require 'init-editing-utils)
;; (require 'init-evil)

;; (require 'init-vc)
;; (require 'init-darcs)

;; (require 'init-crontab)
;; (require 'init-textile)
;; (require 'init-markdown)
;; (require 'init-auctex)
;; (require 'init-erlang)
;; (require 'init-nxml)
;; (require 'init-html)
;; (require 'init-css)
;; (require 'init-haml)

(provide 'init)






