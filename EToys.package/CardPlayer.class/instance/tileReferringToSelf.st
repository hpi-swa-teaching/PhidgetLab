slots-kernel
tileReferringToSelf
	"Answer a tile that refers to the receiver.  For CardPlayer, want 'self', not the specific name of this card.  Script needs to work for any card of the background."

	Preferences universalTiles ifTrue:
		[^ self universalTileReferringToSelf].

	^ TileMorph new setToReferTo: self