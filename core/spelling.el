(use-package flycheck
  :ensure t
  :init (global-flycheck-mode)
)

(use-package jinx
  :hook (text-mode-hook . jinx-mode)
  :general
  (general-define-key
   "M-c" 'jinx-correct
  )
)


