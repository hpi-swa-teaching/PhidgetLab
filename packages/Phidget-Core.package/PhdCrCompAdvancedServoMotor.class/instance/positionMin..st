accessing
positionMin: aValue
	"Sets the min. allowed position of the motor (double between original min and max).
	Returns true if the setting was successful, false otherwise."
	
	| aFloat |
	phidget isAttached ifFalse: [ ^ false ].
	aFloat := aValue asFloat.
	(self positionIsInRange: aFloat) ifFalse:[ ^ false ].
	^( self class
		primSetPostionMin: phidget id
		at: index - 1 
		to: aFloat) == 1