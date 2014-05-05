initialize-open-close
openRemoteWithServerAddress: serverAddress port: port password: password
	"Opens any Phidget remotely with matching type, serverAddres, port and password."

	^ self
		openRemoteWithSerial: -1
		serverAddress: serverAddress
		port: port
		password: password