panes
paneForShadowOffset

	^(self inARow: {
		self
			buildFakeSlider: 'Offset' translated
			selector: #adjustTargetShadowOffset:
			help: 'Drag in here to change the offset of the shadow' translated
	}) hResizing: #shrinkWrap

