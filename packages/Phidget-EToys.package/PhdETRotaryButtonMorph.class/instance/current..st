as yet unclassified
current: aFloat

	| tmp |
	
	"min <= current <= max"
	(aFloat < min) ifTrue: [tmp := min] ifFalse: [(aFloat > max) ifTrue: [tmp := max] ifFalse: [tmp := aFloat]].	
	current := tmp.
	self updateCurrentMorph.