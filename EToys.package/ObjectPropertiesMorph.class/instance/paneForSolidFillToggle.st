panes
paneForSolidFillToggle

	^self inARow: {
		self
			directToggleButtonFor: self 
			getter: #targetHasSolidFill
			setter: #toggleTargetSolidFill
			help: 'Turn solid fill on or off' translated.
		self lockedString: ' Solid fill' translated.
	}
