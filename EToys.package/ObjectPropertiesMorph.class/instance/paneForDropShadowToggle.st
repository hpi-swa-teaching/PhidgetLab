panes
paneForDropShadowToggle

	^self inARow: {
		self
			directToggleButtonFor: myTarget 
			getter: #hasDropShadow setter: #toggleDropShadow
			help: 'Turn drop shadows on or off' translated.
		self lockedString: ' Drop shadow color' translated.
	}
