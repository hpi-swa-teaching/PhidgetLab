initialize-open-close
openRemoteWithServerAddress: serverAddress port: port
	"Opens any Phidget remotely with matching type, serverAddres, port and without a password."

	^ self
		openRemoteWithSerial: -1
		serverAddress: serverAddress
		port: port