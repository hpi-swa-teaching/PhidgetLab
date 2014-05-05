accessing
isSpinningAccelerated: aBoolean
	"Sets the speed ramping state of a motor. This is whether or not velocity and acceleration are used.
	Returns true if the setting was successful, false otherwise."
	
	| anInt |
	phidget isAttached ifFalse: [ ^ false ].
	aBoolean 
		ifTrue: [ anInt := 1 ]
		ifFalse: [ anInt := 0 ].
	^ (self class
		primSetSpeedRampingOn: phidget id
		at: index - 1
		to: anInt) == 1