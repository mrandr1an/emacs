  (use-package lsp-mode
      :ensure t
      :custom
	(lsp-completion-provider :none) ;; we use Corfu!
	(lsp-rust-analyzer-cargo-watch-command "clippy")
	(lsp-rust-analyzer-display-closure-return-type-hints t)
	
      :init
      (defun my/lsp-mode-setup-completion ()
      (setf (alist-get 'styles (alist-get 'lsp-capf completion-category-defaults))
	      '(flex))) ;; Configure flex
      :config
      (add-hook 'lsp-mode-hook 'lsp-ui-mode)
      :hook
      (python-mode . lsp)
      (elisp-mode . lsp)
  )

  (use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode
  :custom
  (lsp-ui-peek-always-show t)
  (lsp-ui-sideline-show-hover t)
  (lsp-ui-doc-show-with-cursor t)
  (lsp-ui-doc-enable t) 
  :config
  (custom-set-faces '(markdown-code-face ((t (:inherit default)))))
  )

(use-package rainbow-delimiters
  :ensure t
  :defer t
  :init
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
)
