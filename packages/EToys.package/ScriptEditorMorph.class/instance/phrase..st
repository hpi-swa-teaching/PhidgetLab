initialization
phrase: aPhraseTileMorph
	"Make the receiver be a Scriptor for a new script whose initial contents is the given phrase."

	| aHolder |
	firstTileRow := 2.
	aHolder := AlignmentMorph newRow.
	aHolder beTransparent; layoutInset: 0.
	aHolder addMorphBack: aPhraseTileMorph.
	self addMorphBack: aHolder.
	self install