instance creation
newWith: phidget index: index
	"Create and return a new MultComponent with given Phidget 'parent' and index.
	Once those values are set, they are never changed again."

	^ (self newWith: phidget)
		setIndex: index