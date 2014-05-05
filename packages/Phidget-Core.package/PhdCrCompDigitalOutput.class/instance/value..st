accessing
value: aBoolean
	"Sets the current value of the output (true = on, false = off).
	Returns true if the value was sucessfully set, false otherwise."
	
	| number |
	phidget isAttached ifFalse: [ ^ false ].
	aBoolean
		ifTrue: [ number := 1 ]
		ifFalse: [ number := 0 ].
	^ (self class
		primSetValue: phidget id
		at: index - 1
		to: number) == 1