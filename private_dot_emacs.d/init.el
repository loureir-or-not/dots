;;; init.el --- My Emacs Config -*- lexical-binding: t -*-

;;; Commentary:

;; Yeah

;;; Code:
(defun my/load-theme ()
  "Load my theme."
  (load-theme 'dracula :no-confirm))

(defun my/after-load-prog-mode ()
  "Set some things up after loading `prog-mode`."
  (display-line-numbers-mode t))

(use-package emacs
  :custom
  (indent-tabs-mode nil)
  (menu-bar-mode nil)
  (tool-bar-mode nil)
  (scroll-bar-mode nil)
  (inhibit-startup-screen t)
  (initial-major-mode 'fundamental-mode)
  (initial-scratch-message nil)
  (column-number-mode t)
  (create-lockfiles nil)
  :hook (prog-mode . my/after-load-prog-mode))

(use-package icomplete
  :custom
  (icomplete-vertical-mode t)
  (fido-mode t))

(use-package savehist
  :custom
  (savehist-mode t))

(use-package which-key
  :custom
  (which-key-mode t))

(use-package dracula-theme
  :ensure t
  :hook (window-setup-hook . my/load-theme))

(use-package cc-mode
  :custom
  (c-basic-offset 4))

(use-package recentf
  :custom
  (recentf-mode t))

(use-package flymake
  :hook (prog-mode . flymake-mode))

(use-package ibuffer
  :bind ([remap list-buffers] . ibuffer))

(use-package markdown-mode
  :ensure t
  :mode "\\.md\\'")

(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))

(use-package yasnippet
  :ensure t
  :custom
  (yas-global-mode t))

(use-package yasnippet-snippets
  :ensure t)

(use-package notmuch
  :ensure nil
  :custom
  (fill-column 79))

(use-package yaml-mode
  :ensure t
  :mode ("\\.yml\\'" "\\.yaml\\'"))

(use-package org
  :custom
  (fill-column 99))

(use-package dirvish
  :ensure t
  :custom
  (dirvish-override-dired-mode t))

(use-package envrc
  :vc (:url "https://github.com/purcell/envrc" :rev :newest)
  :custom
  (envrc-global-mode t))

(use-package web-mode
  :vc (:url "https://github.com/fxbois/web-mode" :rev :newest)
  :mode "\\.svelte\\'")

(use-package go-mode
  :vc (:url "https://github.com/dominikh/go-mode.el" :rev :newest)
  :ensure t
  :mode "\\.go\\'")

(use-package pfetch
  :load-path "~/.emacs.d/pfetch-el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mail-envelope-from 'header)
 '(mail-specify-envelope-from t)
 '(message-sendmail-envelope-from 'header)
 '(package-selected-packages
   '(catppuccin-theme citar dirvish envrc go-mode magit markdown-mode web-mode yaml-mode
                      yasnippet-snippets))
 '(package-vc-selected-packages
   '((citeproc :url "https://github.com/andras-simonyi/citeproc-el.git")
     (citar :url "https://github.com/emacs-citar/citar.git")
     (catppuccin-theme :url "https://github.com/catppuccin/emacs.git")))
 '(send-mail-function 'sendmail-send-it)
 '(sendmail-program "/usr/bin/msmtp"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Adwaita Mono" :foundry "UKWN" :slant normal :weight regular :height 113 :width normal)))))
;;; init.el ends here
