accessing
getSensor: index

	(phidHandle isAttached and: [phidHandle sensors indexIsInRange: index]) ifTrue: [
		^ phidHandle sensors at: index ].

	^ nil