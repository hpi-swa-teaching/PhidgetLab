primitives
primOpen: phidgetidArray serial: serial serverAddress: serverAddress port: port password: password
	"Opens the Phidget remotely with the given serial number, server address, port and password.
	Return 1 if the operation succeeded, or other values otherwise."

	<primitive: 'primOpenRemoteAddress' module: 'PhidgetPlugin'>
	^ nil