accessing
infoStringArray

	^ self isAttached
		ifTrue: [ {
			self deviceName.
			self serialNumber asString.
			self label.
			'Yes'.
			self deviceClassId asString.
			self deviceTypeId asString
		} ]
		ifFalse: [ {
			self class asString.
			serialNumber asString.
			''.
			'No'.
			'-1'.
			'-1'
		} ]