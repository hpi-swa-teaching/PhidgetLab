accessing
positionMin
	"Returns the min. allowed motor position for this motor.
	If it cannot be retrieved it is 0.0 (although this may also be a valid value)."
	
	| result |
	phidget isAttached ifFalse: [ ^ 0.0 ].
	result := self class
		primGetMinPosition: phidget id
		at: index - 1.
	^ result
		ifNotNil: [ result ]
		ifNil: [ 0.0 ]