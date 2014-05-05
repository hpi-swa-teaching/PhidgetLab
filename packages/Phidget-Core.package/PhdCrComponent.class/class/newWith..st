instance creation
newWith: phidget
	"create a new Component with given phidget. This Phidget, once set, will never change again."

	^ self new
		setParent: phidget