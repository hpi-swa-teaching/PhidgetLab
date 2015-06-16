as yet unclassified
paneForWrappingToggle

	^self inARow: {
		self
			directToggleButtonFor: self 
			getter: #targetHasWrapping
			setter: #toggleTargetWrapping
			help: 'Turn line wrapping on or off' translated.
		self lockedString: ' Wrapping' translated.
	}
