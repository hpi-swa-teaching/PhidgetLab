testing
stepTime

	(self valueOfProperty: #flashingState ifAbsent: [0]) > 0 ifTrue: [
		^200
	] ifFalse: [
		^1000
	].