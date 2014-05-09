accessing
setBacklightOn: aBoolean 
	"Sets the backlight state to true (enabled) or false (disabled).
	returns true if setting was successful, and false otherwise."
	
	| anInt |
	phidget isAttached ifFalse: [ ^ false ].
	aBoolean 
		ifTrue: [ anInt := 1 ]
		ifFalse: [ anInt := 0 ].
	^ (self class
		primSetBacklightOn: phidget id
		to: anInt) == 1