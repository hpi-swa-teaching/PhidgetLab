initialize-open-close
initializeComponents
	"This method is called when a Phidget is attached.
	Initialise my component: textLCD.
	It will be 'uninitialised' in deleteComponents on detaching."
	
	textLCD initializeRows.
	
	super initializeComponents.