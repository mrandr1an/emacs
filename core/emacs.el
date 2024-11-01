(use-package emacs
  :custom
  (enable-recursive-minibuffers t)
  ;;Hide commands in M-x that do not work in current mode
  (read-extended-command-predicate #'command-completion-default-include-p)
  :init
)
