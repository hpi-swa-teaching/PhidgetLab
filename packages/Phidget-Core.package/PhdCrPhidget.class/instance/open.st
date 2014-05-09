initialize-open-close
open
	"opens hardware connection to Phidget with stored serial number,
	i.e. -1 if none was specified of the device never opened before,
	or the last specified / uesd serial number."

	^ self openWithSerial: serialNumber