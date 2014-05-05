opened Phidgets list
myNonSpecialisedOpenedPhidgets
	"answer a collection with all currently opened Phidgets of (exactly) my type."

	^ self allOpenedPhidgets select: [ :phidget |
		phidget class == self ]