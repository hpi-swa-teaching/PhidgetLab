misc
minimumWidth
	| aWidth |
	aWidth := self basicWidth.
	upArrow ifNotNil: [aWidth := aWidth + UpArrowAllowance].
	suffixArrow ifNotNil: [aWidth := aWidth + SuffixArrowAllowance].
	^ aWidth
	