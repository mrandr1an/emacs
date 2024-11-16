;; From https://www.reddit.com/r/emacs/comments/9rrhy8/emacsers_with_beautiful_initel_files_what_about/
(setq custom-file (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;;Vim-like scrolling
(setq scroll-step 1)
(setq scroll-margin 1)
(setq scroll-conservatively 9999)

;;Frames
(modify-all-frames-parameters
 '((right-divider-width . 5)
   (internal-border-width . 50)))

(dolist (face '(window-divider
                  window-divider-first-pixel
                  window-divider-last-pixel))
  (face-spec-reset-face face)
  (set-face-foreground face (face-attribute 'default :background)))
(set-face-background 'fringe (face-attribute 'default :background))

;;Bigger modeline
(set-face-attribute 'mode-line nil :height 130)
(set-face-attribute 'mode-line-inactive nil :height 130)

;;Set fonts and/or variable pitch or fixed pitch
(set-face-attribute 'default nil :family "Iosevka Curly Slab" :height 150)
(set-face-attribute 'variable-pitch nil :family "Iosevka Aile" :height 150)

;;Autofill mode from https://stackoverflow.com/questions/4879785/can-i-break-the-long-line-in-emacs-non-windows-to-the-next-line
(auto-fill-mode 1)

(use-package all-the-icons
  :ensure t
)

(use-package cdlatex
  :ensure t 
)

(use-package auctex
  :ensure t
 )
