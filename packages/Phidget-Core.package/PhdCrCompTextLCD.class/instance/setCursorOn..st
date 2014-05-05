accessing
setCursorOn: aBoolean 
	"Sets the cursor state to true (enabled) or false (disabled).
	returns true if setting was successful, and false otherwise."
	
	| anInt |
	phidget isAttached ifFalse: [ ^ false ].
	aBoolean 
		ifTrue: [ anInt := 1 ]
		ifFalse: [ anInt := 0 ].
	^ (self class
		primSetCursorOn: phidget id
		to: anInt) == 1