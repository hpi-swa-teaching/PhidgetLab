events
closeConnection
	"Closes the connection to the (hardware) phidget."
	
	| aLabel |
	aLabel := 'adv. Interface Kit'.
	phidHandle close.
	self goIntoDetachModeDisplaying: aLabel.