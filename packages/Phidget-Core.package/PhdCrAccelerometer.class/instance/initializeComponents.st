initialize-open-close
initializeComponents
	"This method is called when an Accelerometer is attached. It initializes its component axes.
	The component will be deleted in 'deleteComponents' on detaching."

	axes := PhdCrCompAxis getListFor: self.
	
	super initializeComponents.