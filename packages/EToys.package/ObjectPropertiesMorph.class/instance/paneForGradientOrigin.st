panes
paneForGradientOrigin

	^(self inARow: {
		self
			buildFakeSlider: 'Origin' translated
			selector: #adjustTargetGradientOrigin:
			help: 'Drag in here to change the origin of the gradient' translated
	}) hResizing: #shrinkWrap

