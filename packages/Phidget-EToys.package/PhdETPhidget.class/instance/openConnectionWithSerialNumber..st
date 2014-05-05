dis-/connect
openConnectionWithSerialNumber: serialNumber
	"Opens a connection to the (hardware) phidget with the given serial number."
	
	phidHandle openWithSerial: serialNumber