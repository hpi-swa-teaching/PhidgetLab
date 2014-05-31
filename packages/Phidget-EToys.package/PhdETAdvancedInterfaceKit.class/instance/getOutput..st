accessing
getOutput: index

	(phidHandle isAttached and: [phidHandle outputs indexIsInRange: index]) ifTrue: [
		^ phidHandle outputs at: index ].

	^ nil