
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(load-theme 'tango-dark t)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
;;;(split-window-right)
(setq inhibit-startup-screen t)
(setq pop-up-windows nil)
(menu-bar-mode -1)
(tool-bar-mode -1) 
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                     ("marmalade" . "https://marmalade-repo.org/packages/")
                     ("melpa" . "https://stable.melpa.org/packages/")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (go-mode)))
 '(speedbar-show-unknown-files t))

(load "~/.emacs.d/sr-speedbar")
(require 'sr-speedbar)
;;;(setq speedbar-use-images nil)
(setq sr-speedbar-width 20)
(sr-speedbar-toggle)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;;(add-hook 'go-mode-hook 'linum-mode)
(add-hook 'find-file-hook 'linum-mode)
