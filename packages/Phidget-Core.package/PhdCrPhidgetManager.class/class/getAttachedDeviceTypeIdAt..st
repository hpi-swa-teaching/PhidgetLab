attached Phidgets list
getAttachedDeviceTypeIdAt: index
	"Gets the device type id of the attached device in the list at given index. If there was an error, -1 is returned."
	
	^ self primGetAttachedDeviceType: index - 1.