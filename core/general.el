(use-package general
  :ensure t
  :config
  (general-auto-unbind-keys)
  (general-define-key
   :prefix "C-c o"
   "a"  'org-agenda
   )
)
