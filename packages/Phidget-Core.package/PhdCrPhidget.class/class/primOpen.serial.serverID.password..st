primitives
primOpen: phidgetidArray serial: serial serverID: serverID password: password
	"Opens the Phidget remotely with the given serial number, server ID and password.
	Return 1 if the operation succeeded, or other values otherwise."

	<primitive: 'primOpenRemoteID' module: 'PhidgetPlugin'>
	^ nil