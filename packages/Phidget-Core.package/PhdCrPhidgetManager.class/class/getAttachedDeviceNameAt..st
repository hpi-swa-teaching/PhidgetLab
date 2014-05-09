attached Phidgets list
getAttachedDeviceNameAt: index
	"Gets the name of the attached device in the list at given index. If there was an error, an empty string is returned."
	
	| result |
	result := self primGetAttachedDeviceName: index - 1.
	^ result
		ifNil: [ '' ]
		ifNotNil: [ result asString ]