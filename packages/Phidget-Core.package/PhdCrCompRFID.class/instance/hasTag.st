accessing
hasTag
	"Returns true is a tag is currently read and false if not."
	
	phidget isAttached ifFalse: [ ^ false ].
	^ (self class primHasTag: phidget id) == 1