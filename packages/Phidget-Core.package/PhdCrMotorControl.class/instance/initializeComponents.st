initialize-open-close
initializeComponents
	"This method is called when a MotorControl is attached. It initializes its components: motors and inputs.
	The components will be deleted in 'deleteComponents' on detaching."
	
	motors := PhdCrCompMotor getListFor: self.
	inputs := PhdCrCompDigitalInput getListFor: self.
	
	super initializeComponents.