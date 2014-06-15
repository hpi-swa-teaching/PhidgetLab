accessing
isAntennaOn
	"Answer true if the antenna is on, false otherwise."
	
	phidget isAttached ifFalse: [ ^ false ].
	^ (self class primIsAntennaOn: phidget id) == 1