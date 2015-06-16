panes
paneForLockedToggle

	^self inARow: {
		self
			directToggleButtonFor: myTarget 
			getter: #isLocked setter: #toggleLocked
			help: 'Turn lock on or off' translated.
		self lockedString: ' Lock' translated.
	}

