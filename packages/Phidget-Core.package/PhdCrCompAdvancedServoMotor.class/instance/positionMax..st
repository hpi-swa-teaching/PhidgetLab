accessing
positionMax: aValue
	"Sets the max. allowed position of the motor (double between min and max).
	Returns true if the setting was successful, false otherwise."
	
	| aFloat |
	phidget isAttached ifFalse: [ ^ false ].
	aFloat := aValue asFloat.
	(self positionIsInRange: aFloat) ifFalse:[ ^ false ].
	^( self class
		primSetPostionMax: phidget id
		at: index - 1 
		to: aFloat) == 1