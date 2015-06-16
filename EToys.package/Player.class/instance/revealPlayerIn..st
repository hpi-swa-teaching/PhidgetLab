misc
revealPlayerIn: aWorld
	"Reveal the receiver if at all possible in the world; once it's visible, flash its image for a bit, and leave it with its halo showing"

	| aMorph |
	(aMorph := self costume) isInWorld ifTrue:
		[aMorph goHome.
		self indicateLocationOnScreen.
		aMorph addHalo.
		^ self].

	"It's hidden somewhere; search for it"
	aWorld submorphs do:
		[:m | (m succeededInRevealing: self) ifTrue:  "will have obtained halo already"
			[aWorld doOneCycle.
			self indicateLocationOnScreen.
			^ self]].

	"The morph is truly unreachable in this world at present.  So extract it from hyperspace, and place it at center of screen, wearing a halo."
	aMorph isWorldMorph ifFalse:
		[aWorld addMorphFront: aMorph.
		aMorph position: aWorld bounds center.
		aMorph addHalo]
	
	