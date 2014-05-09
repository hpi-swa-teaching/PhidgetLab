accessing
changeTrigger

	phidget isAttached ifFalse: [ ^ 0 ].
	^ self class
		primGetChangeTrigger: phidget id
		at: index - 1