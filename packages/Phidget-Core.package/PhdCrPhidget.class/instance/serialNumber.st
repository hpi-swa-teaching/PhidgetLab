accessing
serialNumber
	"Return the Phidget's real serial number, if it is attached. If there was an error, -1 is returned.
	If it is no attached, return its initial serial number."

	self isAttached ifFalse: [ ^ self initialSerialNumber ].
	^ self class primGetSerialNumber: id