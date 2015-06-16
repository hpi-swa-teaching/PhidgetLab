categories
adjustColorsAndBordersWithin
	"Adjust the colors and borders of submorphs to suit current fashion"

	self allMorphsDo: [:aMorph | 
		(aMorph isKindOf: ViewerLine) ifTrue:
			[aMorph layoutInset: 1].
		(aMorph isKindOf: TilePadMorph) ifTrue:
			[aMorph beTransparent].
		(aMorph isKindOf: PhraseTileMorph) ifTrue:
			[aMorph beTransparent.
			aMorph borderWidth: 0].

		(aMorph isKindOf: TileMorph)
			ifTrue:
				[aMorph borderWidth: 1]].

	self borderWidth: 1