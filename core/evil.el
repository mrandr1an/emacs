(use-package evil
:ensure t 
:after evil-leader
:init
  (setq evil-want-keybinding nil)
  (setq evil-want-integration t)
:config
(evil-set-undo-system 'undo-fu)
(evil-mode)
:bind ((:map evil-visual-state-map
             ("gcc" . evilnc-comment-or-uncomment-lines)
       )
       (:map evil-normal-state-map
             ("gcc" . evilnc-comment-or-uncomment-lines)
       )
      )
)

(use-package evil-leader
:ensure t
:init
(setq evil-want-keybinding nil)
(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key 
"nl" 'org-insert-todo-heading
"ee" 'dirvish
"ff" 'find-file
"em" 'emoji-search
"t"  'eat
)
)

(use-package evil-multiedit
  :ensure t
  :after evil
  :config
  (evil-multiedit-default-keybinds)
)

(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1)
)

(use-package evil-collection
:after evil
:ensure t
:config
(evil-collection-init)
)

(use-package evil-org
:ensure t
:after (org evil)
:hook (org-mode . (lambda () evil-org-mode))
:config
(require 'evil-org-agenda)
(evil-org-agenda-set-keys)
)

(use-package evil-nerd-commenter
  :ensure t
  :after evil
  :config
    (evilnc-default-hotkeys)
)

(use-package undo-fu
  :ensure t 
  :after evil
  :config
  (global-unset-key (kbd "C-z"))
)
