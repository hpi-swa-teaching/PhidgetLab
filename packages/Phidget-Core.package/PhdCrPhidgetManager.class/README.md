A PhdCrPhidgetManager is xxxxxxxxx.

Instance Variables

Class Variables
	OpenedPhidgets 		<Collection> (PhdCrPhidget)


OpenedPhidgets
	This is a list of all currently opened Phidgets.
	When a Phidget is opened it is added to this list. When it is closed it is removed from the list. This may also happen if the Phidget has become invalid (see checkValid).
	The getters are (on class side):
		allOpenedPhidgets - returns the list of all currently opened Phidgets.
		myOpenedPhidgets - returns a list of currently opend Phidgets of the receiver's type and its subclasses.
		myNonSpecialisedOpenedPhidgets - returns a list of currently opend Phidgets of the receiver's type (only).