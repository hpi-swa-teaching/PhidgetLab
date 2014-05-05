private
calcStatusMorphDirection

	| interval |
	interval := max - min asFloat.
	
	^ interval == 0
		ifTrue: [ 0 ]
		ifFalse: [ value asFloat - min / interval - 0.5 ].