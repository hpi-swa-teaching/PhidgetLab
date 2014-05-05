initialize-open-close
initializeComponents
	"This method is called when the Phidget is attached. It initializes its components:  motors.
	The components will be reset in 'deleteComponents' on detaching."

	motors := PhdCrCompAdvancedServoMotor getListFor: self.
	
	self resetState.