attached Phidgets list
getNumberOfAttachedDevices
	"answer the size of the internal list of attached phidgets, or 0 if an error occurred."

	| result |
	result := self primGetNumberOfAttachedDevices.
	^ result == -1
		ifTrue: [ 0 ]
		ifFalse: [ result ]