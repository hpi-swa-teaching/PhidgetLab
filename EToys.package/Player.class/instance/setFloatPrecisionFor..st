slots-user
setFloatPrecisionFor: aReadout
	"If appropriate, set the floatPrecision for the given watcher readout (an UpdatingStringMorph), whose getter is assumed already to be established."
	
	| precision  |
	(precision := self defaultFloatPrecisionFor: aReadout getSelector) ~= 1 ifTrue: [aReadout floatPrecision: precision]