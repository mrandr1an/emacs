;;Buffer autocomplete
(use-package corfu
:ensure t
:custom
    (corfu-cycle t)                 ; Allows cycling through candidates
    (corfu-auto t)                  ; Enable auto completion
    (corfu-auto-prefix 2)
    (corfu-auto-delay 0.1)
    (corfu-popupinfo-delay '(0.5 . 0.2))
    (corfu-preview-current 'insert) ; insert previewed candidate
    (corfu-preselect 'prompt)
    (corfu-on-exact-match nil)      ; Don't auto expand tempel snippets
    :bind
    (:map corfu-map
          ("C-j" . corfu-next)
          ("C-k" . corfu-previous)
          ("TAB" . corfu-insert)
    )
:init
    (global-corfu-mode)
    (corfu-history-mode)
    (corfu-popupinfo-mode) ; Popup completion info
)

(use-package nerd-icons-corfu
  :ensure t
  :init
  (add-to-list 'corfu-margin-formatters #'nerd-icons-corfu-formatter)
)

(use-package cape
  :ensure t
  :init
  (add-hook 'completion-at-point-functions #'cape-dabbrev)
  (add-hook 'completion-at-point-functions #'cape-file)
  (add-hook 'completion-at-point-functions #'cape-elisp-block)
  (add-hook 'completion-at-point-functions #'cape-dict)
  (add-hook 'completion-at-point-functions #'cape-emoji)
  (add-hook 'completion-at-point-functions #'cape-rfc1345)
)

;;Minibuffer autocomplete
(use-package vertico
  :ensure t
  :init
  (vertico-mode)
  :bind
  (:map vertico-map
          ("C-j" . vertico-next)
          ("C-k" . vertico-previous)
          ("TAB" . vertico-insert)
  )
)

(use-package marginalia
  :ensure t
  :init
  (marginalia-mode)
)

(use-package savehist
  :init
  (savehist-mode)
)

(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))



