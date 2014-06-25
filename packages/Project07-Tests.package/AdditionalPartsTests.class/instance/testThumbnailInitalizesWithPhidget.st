testing
testThumbnailInitalizesWithPhidget

	self setUpForThumbnailCreation.
	self shouldnt: 
			[self iconicButton initializeWithThumbnail: self thumbnail withLabel: self label
			andColor: self phidget color andSend: #newStandAlone to: self receiver 
			with: self phidget]
		raise: MessageNotUnderstood.
	 