accessing
setOutput: index to: aBoolean

	(phidHandle isAttached and: [phidHandle outputs indexIsInRange: index])
		ifTrue: [^ (phidHandle outputs at: index) value: aBoolean].
	^ false