pop ups
dupTile: evt

	| dup |
	self deletePopup.
	"self deselect."
	dup := self duplicateMorph: evt.
	Preferences tileTranslucentDrag
		ifTrue: [dup align: dup center with: evt hand position.
				dup lookTranslucent]
		ifFalse: [dup align: dup topLeft
					with: evt hand position + self cursorBaseOffset].
