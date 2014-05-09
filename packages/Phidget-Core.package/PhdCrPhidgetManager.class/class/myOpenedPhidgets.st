opened Phidgets list
myOpenedPhidgets
	"answer a collection with all currently opened Phidgets of my type and subclasses of me."

	^ self allOpenedPhidgets select: [ :phidget |
		phidget class == self or: [ phidget class inheritsFrom: self ] ]