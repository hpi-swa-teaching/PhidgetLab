scrolling
isRowScrolling: anInteger
	"This is wether row <anInteger> is scrolling or not."

	(self rowIsInRange: anInteger) ifFalse: [ ^ false ].
	
	^ running at: anInteger.