accessing
setCursorBlinking: aBoolean 
	"Sets the cursor state to blinking (aBoolean=true) or not blinking (aBoolean=false).
	returns true if setting was successful, and false otherwise."
	
	| anInt |
	phidget isAttached ifFalse: [ ^ false ].
	aBoolean 
		ifTrue: [ anInt := 1 ]
		ifFalse: [ anInt := 0 ].
	^ (self class
		primSetCursorBlinking: phidget id
		to: anInt) == 1