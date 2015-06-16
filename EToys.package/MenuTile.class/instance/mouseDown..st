event handling
mouseDown: evt
	| aPoint reply choices |
	aPoint := evt cursorPoint.
	nArrowTicks := 0.
	((upArrow bounds containsPoint: aPoint) or: [downArrow bounds containsPoint: aPoint]) ifTrue: [^ self mouseStillDown: evt].
	choices := ((self ownerThatIsA: PhraseTileMorph) associatedPlayer costume allMenuWordings) copyWithout: ''.
	reply := UIManager default chooseFrom: choices values: choices.
	reply ifNotNil: [self literal: reply; layoutChanged]