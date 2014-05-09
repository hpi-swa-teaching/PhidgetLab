accessing
isOn: aBoolean 
	"Sets the state to true or false.
	true meens the LED is illuminated, false that it is not.
	returns true if setting was successful, and false otherwise."
	
	| anInt |
	phidget isAttached ifFalse: [ ^ false ].
	aBoolean 
		ifTrue: [ anInt := 1 ]
		ifFalse: [ anInt := 0 ].
	^ (self class
		primSetState: phidget id
		to: anInt) == 1