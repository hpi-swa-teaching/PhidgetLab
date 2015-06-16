panes
paneForBorderWidth

	^(self inARow: {
		self
			buildFakeSlider: 'Border width' translated
			selector: #adjustTargetBorderWidth:
			help: 'Drag in here to change the border width' translated
	}) hResizing: #shrinkWrap

