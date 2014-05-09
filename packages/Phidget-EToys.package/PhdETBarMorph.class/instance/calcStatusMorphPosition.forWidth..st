private
calcStatusMorphPosition: direction forWidth: newWidth
	"Calculates the new position of the statusMorph. Used by #updateStatus."
	
	| middle |
	middle := self center x.
	
	^ direction < 0
		ifTrue: [ (middle - newWidth @ self position y) + (1@1) ]
		ifFalse: [ (middle @ self position y) + (-1@1) ].