;; start server
(server-start)


;; add marmalade
(require 'package)
(add-to-list 'package-archives 
    '("melpa" .
      "http://melpa.org/packages/"))

(package-initialize)

;; Enable flycheck in all buffers
(add-hook 'after-init-hook #'global-flycheck-mode)

(define-key global-map (kbd "RET") 'newline-and-indent)

;; ace-jump-mode
(add-to-list 'load-path "~/.emacs.d/ace-jump-mode")
    (require 'ace-jump-mode)
    (define-key global-map (kbd "C-c C-SPC") 'ace-jump-mode)

;; load theme
(load-theme `wombat t)

;; Get rid of menus
(tool-bar-mode -1)
(menu-bar-mode -1)
(tooltip-mode -1)
(set-scroll-bar-mode 'nil)

;; Ido mode
(ido-mode t)
(savehist-mode t)
(setq
 ido-case-fold t ;case insensitive
 ido-enable-flex-matching t ; be flexible
 )

(show-paren-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("3ad55e40af9a652de541140ff50d043b7a8c8a3e73e2a649eb808ba077e75792" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;----------------
;;;Flymake
;;----------------

;; (eval-after-load "flymake"
;;   '(progn
;;     (defun flymake-after-change-function (start stop len)
;;       "Start syntax check for current buffer if it isn't already running."
;;       ;; Do nothing, don't want to run checks until I save.
;;       )))

;; ;;Flymake custom make
;; (defun flymake-create-simple-makefile ()
;;   "Creates a simple check-syntax Makefile for simple C programs"
;;   (interactive)
;;   (if (file-exists-p "./Makefile")
;;       (message "Makefile exists")
;;     (with-temp-buffer
;;       (message "Generating Makefile")
;;       (insert "check-syntax:\n")
;;       (insert "\tgcc -fsyntax-only -Wall -Wextra $(CHK_SOURCES)\n")
;;       (write-region nil nil "./Makefile" nil 566)))
;;   (flymake-mode 1))

;; Autocomplete
(add-to-list 'load-path "~/.emacs.d")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

(autoload 'auto-complete-mode "auto-complete-mode")


;; linum-mode
(global-linum-mode t)
