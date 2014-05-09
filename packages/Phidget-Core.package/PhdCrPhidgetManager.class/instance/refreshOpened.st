updating view
refreshOpened

	| openedArray |
	self reloadOpenedPhidgets.
	openedArray := Array new: openedPhidgets size.

	1 to: openedPhidgets size do: [ :i | | phidget |
		phidget := openedPhidgets at: i.
		openedArray at: i put: phidget infoStringArray.
	].

	openedList list: openedArray.