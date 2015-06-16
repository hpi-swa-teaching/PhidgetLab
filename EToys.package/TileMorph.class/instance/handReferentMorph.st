misc
handReferentMorph
	"Hand the user the actual morph referred to"

	| aMorph surrogate |
	((aMorph := actualObject costume) isMorph and:
		[aMorph isWorldMorph not])
			ifTrue:
				[surrogate := CollapsedMorph collapsedMorphOrNilFor: aMorph.
				surrogate
					ifNotNil:
						[surrogate uncollapseToHand]
					ifNil:
						[ActiveHand attachMorph: aMorph]]