private
columnIsInRange: anInteger

	phidget isAttached ifFalse: [ ^ false ].
	^ anInteger > 0 & (anInteger <= self columns)