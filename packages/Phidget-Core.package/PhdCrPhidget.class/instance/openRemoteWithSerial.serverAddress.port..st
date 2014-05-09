initialize-open-close
openRemoteWithSerial: serialNumber serverAddress: serverAddress port: port
	"Opens the Phidget remotely with the given serial number, serverAddres, port and without a password.
	Opens any Phidgets of matching class if serialNumber is -1."

	^ self
		openRemoteWithSerial: serialNumber
		serverAddress: serverAddress
		port: port
		password: nil