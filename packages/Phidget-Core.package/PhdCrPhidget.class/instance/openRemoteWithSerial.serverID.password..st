initialize-open-close
openRemoteWithSerial: serialNumber serverID: serverID password: password
	"Opens the Phidget remotely with the given serial number, serverID and password.
	Opens any Phidgets of matching class if serialNumber is -1."
	"DOES NOT WORK YET"

	"| result |
	(self checkValid and: [self isOpen not]) ifFalse: [ ^ self ].
	
	serialNumber isInteger & serverID isString
		ifFalse: [ ^ self ].
	
	self registerSemaphores.
	result := (self class
		primOpen: id
		serial: serialNumber
		serverID: serverID
		password: password) == 1.
	
	result
		ifTrue: [
			self opened: true.
			self forkCallbacks ]
		ifFalse: [ self unregisterSemaphores ]."