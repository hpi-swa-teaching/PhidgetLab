panes
paneForGradientDirection

	^(self inARow: {
		self
			buildFakeSlider: 'Direction' translated
			selector: #adjustTargetGradientDirection:
			help: 'Drag in here to change the direction of the gradient' translated
	}) hResizing: #shrinkWrap

