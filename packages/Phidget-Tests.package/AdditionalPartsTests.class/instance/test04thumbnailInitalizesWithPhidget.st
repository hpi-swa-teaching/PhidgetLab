testing
test04thumbnailInitalizesWithPhidget

	self setUpForThumbnailCreation.
	self shouldnt: 
			[self iconicButton initializeWithThumbnail: self thumbnail withLabel: self label
			andColor: self phidget color andType: #testPort andSend: #newStandAlone to: self receiver 
			with: self phidget]
		raise: MessageNotUnderstood.
	 