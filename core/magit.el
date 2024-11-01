(use-package magit
  :ensure t
  :general
(general-define-key
    :prefix "C-c m"
    "g" 'magit-status
    "d" 'magit-dispatch
    "f" 'magit-file-dispatch
    "i" 'magit-init
    "c" 'magit-clone
    )
)
