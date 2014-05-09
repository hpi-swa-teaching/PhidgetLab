attached Phidgets list
getAttachedDeviceClassIdAt: index
	"Gets the device class id of the attached device in the list at given index. If there was an error, -1 is returned."
	
	^ self primGetAttachedDeviceClass: index - 1.