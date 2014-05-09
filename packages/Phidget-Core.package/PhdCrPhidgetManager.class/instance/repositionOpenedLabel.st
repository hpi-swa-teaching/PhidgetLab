private
repositionOpenedLabel

	(openedLabel notNil and: [attachedList notNil]) ifTrue: [
		openedLabel position:
			attachedList bottomLeft +
			(0 @ (self paddingTopBottom * 1.5) rounded).
	].