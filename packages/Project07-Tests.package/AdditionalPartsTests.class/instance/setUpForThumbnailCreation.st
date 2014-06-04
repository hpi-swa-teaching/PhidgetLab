running
setUpForThumbnailCreation
	thumbnail := Thumbnail new.
	label :=  'IconicButton'.
	phidget := PhdETAdvancedInterfaceKit newStandAlone.
	receiver := PhdETInputPort.