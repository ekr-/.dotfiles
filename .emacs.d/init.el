(menu-bar-mode -1)
(tool-bar-mode -1)
(setq inhibit-startup-message t)
(setq line-number-mode t)
(setq column-number-mode t)
(setq-default indent-tabs-mode nil)
(setq tab-width 4)

(setq package-enable-at-startup nil)
(package-initialize)

(load-theme 'zenburn t)
(set-face-attribute 'default nil :height 80)
(setq-default indent-tabs-mode nil)

;;
;; solarized theme
;;
;; (load-theme 'solarized-light t)

;; fix path
(setenv "PATH" (concat (getenv "PATH") ":/home/ekr/local/bin/"))
(setq exec-path (append exec-path '("/home/ekr/local/bin/")))

;; gnu mode is ugly
(setq c-default-style "linux"
      c-basic-offset 4)

;;(require 'ggtags)

;;
;; magit configuration
;; 
;; (require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)


;; (add-hook 'c-mode-common-hook
;;          (lambda ()
;;            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
;;              (ggtags-mode 1))))


;;(ggtags-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 4)
 '(c-default-style
   (quote
    ((c-mode . "linux")
     (c++-mode . "bsd")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(custom-safe-themes
   (quote
    ("14f0fbf6f7851bfa60bf1f30347003e2348bf7a1005570fd758133c87dafe08f" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(package-selected-packages
   (quote
    (php-mode php+-mode zenburn-theme forth-mode auto-complete-clang evil sr-speedbar solarized-theme magit haskell-mode haskell-emacs)))
 '(safe-local-variable-values (quote ((c-noise-macro-names "UNINIT")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;(add-to-list 'load-path "/home/ekr/.opam/system/share/emacs/site-lisp/")
;;(load "/home/ekr/.opam/system/share/emacs/site-lisp/tuareg-site-file")
(setq column-number-mode t)
(setq line-number-mode t)
(setq linum-mode t)

(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line
