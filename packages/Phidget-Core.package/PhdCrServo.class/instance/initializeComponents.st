initialize-open-close
initializeComponents
	"This method is called when the Phidget is attached. It initializes its components:  motots.
	The components will be reset in 'deleteComponents' on detaching."

	motors := PhdCrCompServoMotor getListFor: self.
	
	super initializeComponents.