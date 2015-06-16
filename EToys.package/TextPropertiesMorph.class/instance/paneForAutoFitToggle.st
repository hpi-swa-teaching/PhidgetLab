as yet unclassified
paneForAutoFitToggle

	^self inARow: {
		self
			directToggleButtonFor: self 
			getter: #targetHasAutoFit
			setter: #toggleTargetAutoFit
			help: 'Turn auto-fit on or off' translated.
		self lockedString: ' Auto-Fit' translated.
	}
