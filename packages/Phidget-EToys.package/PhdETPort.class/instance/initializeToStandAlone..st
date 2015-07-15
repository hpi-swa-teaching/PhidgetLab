initialization
initializeToStandAlone: aPhidget

	phidget := aPhidget.
	phidget registerPort: self.
	self initialize.
	