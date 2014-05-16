etoys
velocityIsInRange: aFloat 

	aFloat < -100 ifTrue: [ ^ false ].
	aFloat > 100 ifTrue: [ ^ false ].
	^ true