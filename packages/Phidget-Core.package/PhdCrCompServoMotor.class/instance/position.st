accessing
position
	"Returns the current position of the motor as a floating point number.
	This value is between self positinMin and self positionMax.
	If it cannot be retrieved it is 0.0 (although this may also be a valid value)."
	
	| result |
	phidget isAttached ifFalse: [ ^ 0.0 ].
	result := self class
		primGetPosition: phidget id
		at: index - 1.
	^ result
		ifNotNil: [ result ]
		ifNil: [ 0.0 ]