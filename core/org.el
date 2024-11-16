(use-package org-roam
  :ensure t
  :init
  (setq org-roam-v2-ack t)
  (org-roam-db-sync)
  :custom
  (org-roam-directory "~/Documents/Notes/Roam")
  (org-roam-completion-everywhere t)
  (org-roam-capture-templates
   '(
     ("b" "book" plain "* %^{Book Notes Header}\n %?"
                  :if-new
           (file+head "${slug}.org"
                      "#+TITLE: ${title}\n#+DATE: %u\n#+AUTHOR: Chris Liourtas\n")
     ) 
     ("p" "people" plain "*Contacts\n %?"
                  :if-new
           (file+head "${slug}.org"
                      "#+TITLE: ${title}\n#+date: %u\n#+AUTHOR: Chris Liourtas\n")
     ) 
     ("s" "specific" plain "* %^{Header}\n %?"
                  :if-new
           (file+head "${slug}.org"
                      "#+TITLE: ${title}\n#+DATE: %u\n#+AUTHOR: Chris Liourtas\n")
     )

     ("n" "default" plain "%?"
       :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org"
                          "#+title: ${Title}\n#+filetags: :blog: \n#+hugo_categories: ${Category}\n#+hugo_lastmod: %<%Y-%m-%d>\n")
       :unnarrowed t)
    )
   )
  :general
   (general-define-key
      :prefix "C-c n"
      "i" 'org-roam-node-insert
      "f" 'org-roam-node-find
      "t" 'org-roam-buffer-toggle
   )
)

(use-package org-transclusion
    :ensure t
)

(use-package org-roam-ql
  :ensure t
  ;; If using straight
  :straight (org-roam-ql :type git :host github :repo "ahmed-shariff/org-roam-ql"
                         :files (:defaults (:exclude "org-roam-ql-ql.el")))
  :after (org-roam)
  )

(use-package org-modern
:ensure t
:config
(setq
  ;; Edit settings
  org-auto-align-tags nil
  org-tags-column 0
  org-catch-invisible-edits 'show-and-error
  org-special-ctrl-a/e t
  org-insert-heading-respect-content t
  ;; Org styling, hide markup etc.
  org-hide-emphasis-markers t
  org-pretty-entities t
 ;; Agenda styling
 org-agenda-tags-column 0
 org-agenda-block-separator ?─
 org-agenda-time-grid
 '((daily today require-timed)
   (800 1000 1200 1400 1600 1800 2000)
   " ┄┄┄┄┄ " "┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄")
 org-agenda-current-time-string
 "◀── now ─────────────────────────────────────────────────" 
  )
:hook
(org-mode . global-org-modern-mode)
)

(custom-set-faces
'(org-level-1 ((t (:inherit outline-1 :height 1.7))))
'(org-level-2 ((t (:inherit outline-2 :height 1.6))))
'(org-level-3 ((t (:inherit outline-3 :height 1.5))))
'(org-level-4 ((t (:inherit outline-4 :height 1.4))))
'(org-level-5 ((t (:inherit outline-5 :height 1.3))))
)

(setq org-agenda-files `("~/Documents/Agenda" "~/Projects/thesis/agenda"))

