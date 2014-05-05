accessing
isAttached
	"Returns true if the Phidget is attached, and false otherwise."

	^ self checkValid & opened and: [ (self class primIsAttached: id) == 1 ]