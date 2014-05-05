attached Phidgets list
getAttachedDeviceSerialNumberAt: index
	"Gets the serial number of the attached device in the list at given index. If there was an error, -1 is returned."
	
	^ self primGetAttachedDeviceSerialNumber: index - 1.