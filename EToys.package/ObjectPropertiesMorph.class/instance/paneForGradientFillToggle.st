panes
paneForGradientFillToggle

	^self inARow: {
		self
			directToggleButtonFor: self 
			getter: #targetHasGradientFill
			setter: #toggleTargetGradientFill
			help: 'Turn gradient fill on or off' translated.
		self lockedString: ' Gradient fill' translated.
	}
