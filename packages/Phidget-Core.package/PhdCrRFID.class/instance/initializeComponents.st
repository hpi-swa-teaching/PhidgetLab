initialize-open-close
initializeComponents
	"This method is called when a RFID Phidget is attached. It initializes its components:  outputs, rfid, led.
	The components will be deleted in 'deleteComponents' on detaching."

	outputs := PhdCrCompDigitalOutput getListFor: self.
	
	super initializeComponents.