panes
paneForRadialGradientToggle

	^self inARow: {
		self
			directToggleButtonFor: self 
			getter: #targetRadial setter: #toggleTargetRadial
			help: 'Turn radial gradient on or off' translated.
		self lockedString: ' Radial gradient' translated.
	}

