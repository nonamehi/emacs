
(setq xml-config-dir (concat root-config-dir "/elisp/xml"))

;;-----------------------------
;;nxml mode
;;-----------------------------
(add-to-list 'load-path (concat xml-config-dir "/nxml-mode-20041004-master/rng-auto.el"))
(setq auto-mode-alist
      (cons '("\\.\\(xml\\|xsl\\|rng\\|xhtml\\)\\'" . nxml-mode)
	    auto-mode-alist))


