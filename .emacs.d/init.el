;; Disables toolbar
(tool-bar-mode -1)

;; Display line numbers
(global-display-line-numbers-mode)

;; Spaces instead of tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;; Display whitespaces
(require 'whitespace)
(global-whitespace-mode)

;; Melpa
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Srcery Theme
(use-package srcery-theme
	     :ensure t
	     :config
	     (load-theme 'srcery t))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("144f05e2dfa7a7b50cad0c3519498ac064cc9da1f194b8ea27d0fb20129d8d7a" default)))
 '(package-selected-packages (quote (srcery-theme use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
