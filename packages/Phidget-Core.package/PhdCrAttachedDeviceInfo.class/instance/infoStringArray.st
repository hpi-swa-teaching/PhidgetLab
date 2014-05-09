accessing
infoStringArray

	^ {	self deviceName.
		self serialNumber asString.
		self label.
		self deviceClassId asString.
		self deviceTypeId asString	}