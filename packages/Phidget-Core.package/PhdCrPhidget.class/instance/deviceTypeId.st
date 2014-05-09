accessing
deviceTypeId
	"Return the Phidget's device type id. If there was an error, -1 is returned."

	self checkValid ifFalse: [ ^ -1 ].
	^ self class primGetDeviceType: id