(require 'package)
(setq package-archives '(("org" . "https://orgmode.org/elpa")
      ("melpa" . "https://melpa.org/packages/")
      ("melpa-stable" . "https://stable.melpa.org/packages/")))

(setq package-enable-at-startup nil)
(package-initialize)

(desktop-save-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(blink-cursor-mode nil)
 '(custom-enable-themes (quote (gruvbox-dark-medium)))
 '(custom-enabled-themes (quote (gruvbox-dark-medium)))
 '(custom-safe-themes
   (quote
    ("8f97d5ec8a774485296e366fdde6ff5589cf9e319a584b845b6f7fa788c9fa9a" default)))
 '(jdee-server-dir "~/jars/jdee/")
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (whitespace-cleanup-mode evil-org bog auto-complete-c-headers auto-auto-indent ac-html ac-math ac-clang ac-emoji java-snippets yasnippet tabbar 2048-game telephone-line emojify magit evil-collection auto-complete-clang-async auto-complete neotree all-the-icons jdee gruvbox-theme evil)))
 '(scroll-bar-mode (quote right))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "CTDB" :family "Fira Mono")))))
(package-install-selected-packages)

;; e(vi)l mode
(setq evil-want-integration t)
(setq evil-want-keybinding nil)
(require 'evil)
(evil-mode 1)
(evil-collection-init)

;; powerline (telephone)
(require 'telephone-line)
;; (setq telephone-line-subseparator-faces '())
;; (setq telephone-line-primary-left-separator 'telephone-line-cubed-right
      ;; telephone-line-secondary-left-separator 'telephone-line-cubed-hollow-right
      ;; telephone-line-primary-right-separator 'telephone-line-cubed-left
      ;; telephone-line-secondary-right-separator 'telephone-line-cubed-hollow-left)
;; (setq telephone-line-height 20)
(telephone-line-mode 1)

;; icons
(require 'all-the-icons)
;; emoji :smile:
(add-hook 'after-init-hook #'global-emojify-mode)

;; tabs

;; neotree
;; (add-to-list 'load-path "/some/path/neotree")
(require 'neotree)
(setq neo-theme 'icons)
(global-set-key [f8] 'neotree-toggle)

;; auto-completion (intellisense)
(ac-config-default)


