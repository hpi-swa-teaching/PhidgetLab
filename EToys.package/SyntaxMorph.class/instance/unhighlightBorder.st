highlighting
unhighlightBorder

	self currentSelectionDo: [:innerMorph :mouseDownLoc :outerMorph |
		self borderColor: (
			(self == outerMorph or: [owner notNil and: [owner isSyntaxMorph not]])
				ifTrue: [self valueOfProperty: #deselectedBorderColor ifAbsent: [#raised]]
				ifFalse: [self stdBorderColor]
		)
	]
