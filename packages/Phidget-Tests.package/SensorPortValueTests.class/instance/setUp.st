running
setUp

	kit ifNil:
		[kit := PhdETAdvancedInterfaceKit newStandAlone].	
	self joystick: (PhdETJoystickSensorPort newStandAlone: kit).
	self bar: (PhdETBarSensorPort newStandAlone: kit).
	self light: (PhdETLightSensorPort newStandAlone: kit).
	self temperature: (PhdETTemperatureSensorPort newStandAlone: kit).
