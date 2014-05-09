primitives
primGetLastTag: phidgetIdArray
	"Answer a array of 5 bytes representing the id of the tag last read by this phidget, or nil if there was an error."

	<primitive: 'primGetLastRFIDTag' module: 'PhidgetPlugin'>
	^ nil