arrows
deleteSuffixArrow

	suffixArrow delete.
	suffixArrow := nil.
	retractArrow ifNotNil: ["backward compat"
		retractArrow delete.
		retractArrow := nil].
	self updateLiteralLabel