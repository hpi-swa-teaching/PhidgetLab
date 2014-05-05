initialize-open-close
initializeComponents
	"This method is called when an InterfaceKit is attached. It initializes its components: sensors, inputs, outputs.
	The components will be deleted in 'deleteComponents' on detaching."
	
	sensors := PhdCrCompAnalogSensor getListFor: self.
	inputs := PhdCrCompDigitalInput getListFor: self.
	outputs := PhdCrCompDigitalOutput getListFor: self.
	
	super initializeComponents.