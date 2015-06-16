as yet unclassified
paneForMargins

	^(self inARow: {
		self
			buildFakeSlider: 'Margins' translated 
			selector: #adjustTargetMargin:
			help: 'Drag in here to change the margins of the text' translated
	}) hResizing: #shrinkWrap

