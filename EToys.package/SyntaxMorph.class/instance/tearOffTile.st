scripting
tearOffTile
	"For a SyntaxMorph, this means give a copy of me"

	| dup |
	dup := self duplicate.
	ActiveHand attachMorph: dup.
	Preferences tileTranslucentDrag
		ifTrue: [^ dup lookTranslucent]
		ifFalse: [^ dup align: dup topLeft with: ActiveHand position + self cursorBaseOffset]
