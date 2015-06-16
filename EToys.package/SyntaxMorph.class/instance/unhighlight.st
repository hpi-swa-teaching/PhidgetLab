highlighting
unhighlight

	self setDeselectedColor.


false ifTrue: [
	self currentSelectionDo: [:innerMorph :mouseDownLoc :outerMorph |
		self color: ( false
			"(self == outerMorph or: [owner notNil and: [owner isSyntaxMorph not]])"
				ifTrue: [self valueOfProperty: #deselectedBorderColor ifAbsent: [#raised]]
				ifFalse: [self color: Color transparent]
		)
	]].
