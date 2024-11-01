;; Requires
;; fd (faster find)
;; imagemagick (image preview)
;; poppler (pdf preview)
;; ffmpegthumbnailer (video pewview)
;; mediainfo (audio-video metadata generation)
;; tar and unzip (archive files preview)
(use-package dirvish
  :ensure t
  :after general
  :config
  (dirvish-override-dired-mode)
  :custom
  (dirvish-attributes '(all-the-icons file-size collapse subtree-state vc-state git-msg))
)
