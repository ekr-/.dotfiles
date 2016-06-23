(menu-bar-mode -1)
(tool-bar-mode -1)
(setq inhibit-startup-message t)
(setq column-number-mode t)
(set-face-attribute 'default nil :height 80)

;; fix path
(setenv "PATH" (concat (getenv "PATH") ":/home/ekr/local/bin/"))
(setq exec-path (append exec-path '("/home/ekr/local/bin/")))

;;(require 'ggtags)

;;
;; magit configuration
;; 
;; (require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)


(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
              (ggtags-mode 1))))


;;(ggtags-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 4)
 '(c-default-style
   (quote
    ((c-mode . "bsd")
     (c++-mode . "linux")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu")))))
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
