(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/3rd")
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

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



(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
(defconst *is-a-mac* (eq system-type 'darwin))

;;----------------------------------------------------------------------------
;; Bootstrap config
;;----------------------------------------------------------------------------
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
;; (require 'init-compat)
(require 'init-utils)

(require 'yasnippet)
(yas/global-mode 1)

;;(require 'init-elpa)

(add-to-list 'load-path "~/.emacs.d/elpa/neotree-0.5.2/")
(require 'neotree)

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(autoload 'cuda-mode "cuda-mode.el")
(add-to-list 'auto-mode-alist '("\\.cu\\'" . cuda-mode))
(load "window-numbering.el")
(window-numbering-mode 1)
(load "my.el")

(require 'buffer-move)
(global-set-key (kbd "<C-S-up>")     'buf-move-up)
(global-set-key (kbd "<C-S-down>")   'buf-move-down)
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
(global-set-key (kbd "<C-S-right>")  'buf-move-right)

;; Needed for Emacs version < 24. must come before elpa, as it may provide package.el
;; (require 'init-site-lisp)

;; Security configuration.
;; This is commented out by default, but for security considerations
;; I strongly recommend you to uncomment it.
;; You may need `gnutls' library and the `certifi' python package to enable this.
;; see the comment in `init-security.el'
;; (require 'init-security)

;; Machinery for installing required packages.
;; explicitly call 'package-initialize to set up all packages installed via ELPA.
;; should come before all package-related config files
(require 'init-exec-path) ;; Set up $PATH

(require 'init-recentf)
(require 'init-ido)
(require 'init-yasnippet)
(require 'init-hippie-expand)
(require 'init-auto-complete)
;; (require 'init-windows)
;; (require 'init-sessions)
(require 'init-fonts)
;; (require 'init-mmm)
(require 'init-tabbar)
(require 'init-editing-utils)
(require 'init-evil)
(require 'init-matlab)

;; (require 'init-vc)
;; (require 'init-darcs)
(require 'init-git)

;; (require 'init-crontab)
;; (require 'init-textile)
(require 'init-markdown)
(require 'init-auctex)
;; (require 'init-csv)
;; (require 'init-erlang)
;; (require 'init-javascript)
;; (require 'init-php)
(require 'init-org)
;; (require 'init-nxml)
;; (require 'init-html)
;; (require 'init-css)
;; (require 'init-haml)
;; (require 'init-python-mode)
(require 'init-haskell)

(require 'init-themes)
;; ;;----------------------------------------------------------------------------
;; ;; Allow access from emacsclient
;; ;;----------------------------------------------------------------------------
;; (require 'server)
;; (unless (server-running-p)
;;   (server-start))


;;----------------------------------------------------------------------------
;; Variables configured via the interactive 'customize' interface
;;----------------------------------------------------------------------------
(when (file-exists-p custom-file)
  (load custom-file))


;;----------------------------------------------------------------------------
;; Allow users to provide an optional "init-local" containing personal settings
;;----------------------------------------------------------------------------
(when (file-exists-p (expand-file-name "init-local.el" user-emacs-directory))
  (error "Please move init-local.el to ~/.emacs.d/lisp"))
(require 'init-local nil t)


;; ;;----------------------------------------------------------------------------
;; ;; Locales (setting them earlier in this file doesn't work in X)
;; ;;----------------------------------------------------------------------------
;; (require 'init-locales)

;; (add-hook 'after-init-hook
;;            (lambda ()
;;              (message "init completed in %.2fms"
;;                       (sanityinc/time-subtract-millis after-init-time before-init-time))))


(provide 'init)






