accessing
changeTrigger: anInteger
	"Sets the sensor change trigger of the sensor to 'anInteger'.
	a sensor change block will only be evaluated if the change is more than this trigger."
	
	phidget isAttached ifFalse: [ ^ false ].
	(anInteger isInRange: (0 to: 100)) ifFalse: [ ^ false ].

	^ (self class
		primSetChangeTrigger: phidget id
		at: index - 1
		to: anInteger) == 1