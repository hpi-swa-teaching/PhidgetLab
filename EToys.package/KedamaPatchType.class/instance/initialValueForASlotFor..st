tile protocol
initialValueForASlotFor: aPlayer
	"Answer the value to give initially to a newly created slot of the given type in the given player"

	^ aPlayer costume renderedMorph player getPatch.
