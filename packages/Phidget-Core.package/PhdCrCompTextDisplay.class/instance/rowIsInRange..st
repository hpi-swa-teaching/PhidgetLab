private
rowIsInRange: anInteger

	phidget isAttached ifFalse: [ ^ false ].
	^ anInteger > 0 & (anInteger <= self rows)