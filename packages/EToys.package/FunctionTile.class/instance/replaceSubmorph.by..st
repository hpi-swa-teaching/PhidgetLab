initialization
replaceSubmorph: existingMorph by: newMorph
	"Replace a submorph by a different morph.  If it's my pad, fix up my argumentPad inst var."

	super replaceSubmorph: existingMorph by: newMorph.
	(newMorph isKindOf: TilePadMorph) ifTrue: [argumentPad := newMorph].
