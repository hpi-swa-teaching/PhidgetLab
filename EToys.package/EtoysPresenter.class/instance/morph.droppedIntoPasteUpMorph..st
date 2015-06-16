misc
morph: aMorph droppedIntoPasteUpMorph: aPasteUpMorph
	aPasteUpMorph automaticViewing ifTrue:
		[aMorph isCandidateForAutomaticViewing ifTrue:
			[self viewMorph: aMorph]]