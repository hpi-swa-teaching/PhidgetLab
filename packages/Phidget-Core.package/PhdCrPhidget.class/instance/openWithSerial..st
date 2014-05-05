initialize-open-close
openWithSerial: sn 
	"Opens the Phidget with the given serial number.
	Opens any Phidgets of matching class if serialNumber is -1."

	| result |
	(self checkValid and: [self isOpen not]) ifFalse: [ ^ self ].
	
	sn isInteger ifFalse: [ ^ self ].
	serialNumber := sn.
	
	self registerSemaphores.
	result := (self class
		primOpen: id
		withSerial: serialNumber) == 1.
		
	result
		ifTrue: [
			self opened: true.
			self forkCallbacks ]
		ifFalse: [ self unregisterSemaphores ].