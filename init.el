(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))

(keymap-global-set "M-x" 'smex)

(setq ring-bell-function 'ignore
      inhibit-startup-message t)

(set-frame-font "JetBrains Mono NL-18")
(add-hook 'after-init-hook 'global-company-mode)
(setq split-width-threshold nil)

(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook (
	 (python-mode . lsp)
	 (rust-ts-mode . lsp)))

(use-package org-superstar
  :ensure tq)

(defun config ()
  "Open the config file in edit mode."
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(cd "f:/Learning")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("e13beeb34b932f309fb2c360a04a460821ca99fe58f69e65557d6c1b10ba18c7"
     default))
 '(package-selected-packages '(company gruber-darker-theme lsp-mode smex use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
