events
specialKeyPressed: asciiValue
	"A special key with the given ascii-value was pressed; dispatch it"
	| oldSelection nextSelection max howManyItemsShowing |
	
	self allowsUserSelection ifFalse: [^self].
	asciiValue = 27 ifTrue: 
		[" escape key"
		^ ActiveEvent shiftPressed
			ifTrue:
				[ActiveWorld putUpWorldMenuFromEscapeKey]
			ifFalse:
				[self yellowButtonActivity: false]].

	max := self maximumSelection.
	max > 0 ifFalse: [^ self].
	nextSelection := oldSelection := selection value.
	asciiValue = 31 ifTrue: 
		[" down arrow"
		oldSelection isNil
			ifTrue: [scrollBar scrollDown: 1]
			ifFalse: [
				nextSelection := oldSelection + 1.
				nextSelection > max ifTrue: [^self].
			]
		].
	asciiValue = 30 ifTrue: 
		[" up arrow"
		oldSelection isNil
			ifTrue: [scrollBar scrollUp: 1]
			ifFalse: [
				nextSelection := oldSelection - 1.
				nextSelection < 1 ifTrue: [^self].
			]
		].
	asciiValue = 1 ifTrue:
		[" home"
		oldSelection isNil
			ifTrue: [scrollBar scrollUp: max]
			ifFalse: [nextSelection := 1]].
	asciiValue = 4 ifTrue:
		[" end"
		oldSelection isNil
			ifTrue: [scrollBar scrollDown: max]
			ifFalse: [nextSelection := max]].
	howManyItemsShowing := self numSelectionsInView.
	asciiValue = 11 ifTrue:
		[" page up"
		oldSelection ifNotNil: [nextSelection := 1 max: oldSelection - howManyItemsShowing]].
	asciiValue = 12 ifTrue:
		[" page down"
		oldSelection ifNotNil: [	nextSelection := oldSelection + howManyItemsShowing min: max]].
"	model okToChange ifFalse: [^ self]."
	"No change if model is locked"
"	oldSelection = nextSelection ifTrue: [^ self flash]."
"	^ self changeModelSelection: nextSelection"
	oldSelection = nextSelection ifFalse: [self selectionIndex: nextSelection].
