panes
paneForCornerRoundingToggle

	^self inARow: {
		self
			directToggleButtonFor: myTarget 
			getter: #wantsRoundedCorners setter: #toggleCornerRounding
			help: 'Turn rounded corners on or off' translated.
		self lockedString: ' Rounded corners' translated.
	}

