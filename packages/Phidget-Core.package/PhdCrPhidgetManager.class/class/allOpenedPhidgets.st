opened Phidgets list
allOpenedPhidgets

	OpenedPhidgets ifNil: [ OpenedPhidgets := #() ].
	"list must be copied before checking elements valid, because if an element is invalid, it will be removed from the list"
	^ OpenedPhidgets copy select: [ :phidget | phidget checkValid ]