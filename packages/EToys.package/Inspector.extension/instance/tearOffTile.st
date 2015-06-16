*Etoys-menu commands
tearOffTile
	"Tear off a tile that refers to the receiver's selection, and place it in the mophic hand"

	| objectToRepresent |
	objectToRepresent := self selectionIndex = 0 ifTrue: [object] ifFalse: [self selection].
	self currentHand attachMorph: (TileMorph new referTo: objectToRepresent)
	