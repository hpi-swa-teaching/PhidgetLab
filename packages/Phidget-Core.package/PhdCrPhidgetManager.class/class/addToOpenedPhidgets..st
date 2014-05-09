opened Phidgets list
addToOpenedPhidgets: aPhidget

	OpenedPhidgets := self allOpenedPhidgets copyWith: aPhidget.
	self openedPhidgetsListChanged.