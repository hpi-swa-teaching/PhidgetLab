layout
addTextRow: aStringLikeItem

	| row tt |
	(row := self class row: #text on: nil) borderWidth: 1.
	(tt := TextMorph new) contents: aStringLikeItem.
	row addMorph: tt.
	"row addMorph: (self addString: (aStringLikeItem copyWithout: Character cr) special: false)."
	self addMorphBack: row.
	^row