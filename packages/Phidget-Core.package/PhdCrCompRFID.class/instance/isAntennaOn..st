accessing
isAntennaOn: aBoolean 
	"Sets the state of the antenna to true or false.
	The antenna must be enabled in order to find tags near the Phidget.
	Returns true if setting the antenna state was successful, false otherwise."
	
	| anInt |
	phidget isAttached ifFalse: [ ^ false ].
	aBoolean 
		ifTrue: [ anInt := 1 ]
		ifFalse: [ anInt := 0 ].
	^ (self class 
		primSetAntennaState: phidget id
		to: anInt) == 1