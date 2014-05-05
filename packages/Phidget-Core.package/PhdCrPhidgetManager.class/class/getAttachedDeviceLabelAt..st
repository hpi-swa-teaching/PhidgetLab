attached Phidgets list
getAttachedDeviceLabelAt: index
	"Gets the label of the attached device in the list at given index. If there was an error, an empty string is returned."
	
	| result |
	result := self primGetAttachedDeviceLabel: index - 1.
	^ result
		ifNil: [ '' ]
		ifNotNil: [ result asString ]