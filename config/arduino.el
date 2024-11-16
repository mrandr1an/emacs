(use-package platformio-mode
  :ensure t
  :init
 (add-to-list 'auto-mode-alist '("\\.ino$" . arduino-mode)) 
  (add-hook 'c++-mode-hook (lambda ()
                             (platformio-conditionally-enable)))
  )

(use-package ccls
  :ensure t
  :hook ((c-mode c++-mode objc-mode cuda-mode) .
         (lambda () (require 'ccls) (lsp)))
  :init
  (setq ccls-executable "/usr/bin/ccls")
  (setq lsp-prefer-flymake nil)
  )

