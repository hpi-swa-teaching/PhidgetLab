accessing
deviceClassId
	"Return the Phidget's device class id. If there was an error, -1 is returned."

	self checkValid ifFalse: [ ^ -1 ].
	^ self class primGetDeviceClass: id