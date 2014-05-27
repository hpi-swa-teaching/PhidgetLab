accessing
getInput: index

	(phidHandle isAttached and: [phidHandle inputs indexIsInRange: index]) ifTrue: [
		^ phidHandle inputs at: index ].

	^ nil