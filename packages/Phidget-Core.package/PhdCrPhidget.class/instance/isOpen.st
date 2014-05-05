accessing
isOpen
	"return true if I am open (having a hardware connection to a Phidget or waitng for one).
	Also make sure I am sill valid."

	^ self checkValid and: [ opened ]