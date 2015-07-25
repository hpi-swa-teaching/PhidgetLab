initialize-open-close
openRemoteWithSerial: serialNumber serverAddress: serverAddress port: port password: password
	"Opens the Phidget remotely with the given serial number, serverAddres, port and password.
	Opens any Phidgets of matching class if serialNumber is -1."

	| result passwordString |
	(self checkValid and: [self isOpen not]) ifFalse: [ ^ self ].
	
	serialNumber isInteger & serverAddress isString & port isInteger
		ifFalse: [ ^ self ].
	passwordString := [password notNil and: [ password isString ]]
		ifTrue: [ password ]
		ifFalse: [ '' ].
	
	self registerSemaphores.
	result := (self class
		primOpen: id
		serial: serialNumber
		serverAddress: serverAddress
		port: port
		password: passwordString) == 1.
	
	result
		ifTrue: [
			self opened: true.
			self forkCallbacks ]
		ifFalse: [ self unregisterSemaphores ].