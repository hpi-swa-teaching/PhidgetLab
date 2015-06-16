panes
paneForStickinessToggle

	^self inARow: {
		self
			directToggleButtonFor: myTarget 
			getter: #isSticky setter: #toggleStickiness
			help: 'Turn stickiness on or off' translated.
		self lockedString: ' Sticky' translated.
	}

