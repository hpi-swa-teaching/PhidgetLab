opened Phidgets list
removeFromOpenedPhidgets: aPhidget

	OpenedPhidgets := self allOpenedPhidgets copyWithout: aPhidget.
	self openedPhidgetsListChanged.