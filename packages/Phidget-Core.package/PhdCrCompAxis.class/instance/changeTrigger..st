accessing
changeTrigger: aDouble
	"Sets the acceleration change trigger of the axis to 'aDouble'.
	a acceleration change block will only be evaluated if the change is more than this trigger.
	Return true if the operation succeeds, false otherwise."
	
	| value |
	phidget isAttached ifFalse: [ ^ false ].
	value := aDouble asFloat.
	( value >= 0.0 and: [ value <= 1.0 ] ) ifFalse: [ ^ false ].

	^ (self class
		primSetChangeTrigger: phidget id
		at: index - 1
		to: value) == 1