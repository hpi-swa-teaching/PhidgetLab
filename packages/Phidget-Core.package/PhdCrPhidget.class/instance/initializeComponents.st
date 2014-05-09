private
initializeComponents
	"This method is called when a Phidget is attached. It should initialize its components (sensors, outputs, ...).
	The components will be deleted in 'deleteComponents' on detaching.
	The abstract phidget does not have components, so it does nothing here."
	
	self resetState.