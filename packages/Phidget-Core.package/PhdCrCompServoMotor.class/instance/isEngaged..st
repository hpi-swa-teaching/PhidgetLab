accessing
isEngaged: aBoolean
	"Sets the engaged state of a motor. This is whether the motor is powered or not.
	Returns true if the setting was successful, false otherwise."
	
	| anInt |
	phidget isAttached ifFalse: [ ^ false ].
	aBoolean 
		ifTrue: [ anInt := 1 ]
		ifFalse: [ anInt := 0 ].
	^ (self class
		primSetEngaged: phidget id
		at: index - 1
		to: anInt) == 1