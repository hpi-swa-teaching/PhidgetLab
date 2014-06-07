running
setUpForThumbnailCreation
	thumbnail := Thumbnail new.
	label :=  'Joystick'.
	phidget := PhdETAdvancedInterfaceKit newStandAlone.
	receiver := PhdETSensorPort.