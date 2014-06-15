running
setUp

	kit ifNil:
		[kit := PhdETAdvancedInterfaceKit newStandAlone].	
	self joystick: (PhdETJoystickSensorPort newStandAlone: kit).