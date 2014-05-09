events
mouseDown: evt 
	| pos newBounds item idx |
	evt yellowButtonPressed 
		ifTrue: 
			["First check for option (menu) click"

			^self yellowButtonActivity: evt shiftPressed].
	pos := (evt transformedBy: (scroller transformFrom: self)) position.
	newBounds := (0 @ 0 corner: bounds extent) 
				translateBy: 0 @ scroller offset y.
	pos y < newBounds top ifTrue: [^super mouseDown: evt].
	self allowsUserSelection ifFalse: [^self].
	item := list detect: [:l | l includesPoint: pos] ifNone: [^self].
	idx := list indexOf: item.
"	specifications notNil
		ifTrue: [^specifications selectionBasedOnIndex: idx]
		ifFalse: ["
			(sort notNil or: [filter notEmpty]) ifTrue: [idx := sortXRef at: idx].
			^self selectionIndex: idx
			"]"