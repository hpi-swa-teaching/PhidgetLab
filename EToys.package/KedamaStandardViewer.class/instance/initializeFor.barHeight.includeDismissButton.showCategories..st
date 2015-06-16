initialization
initializeFor: aPlayer barHeight: anInteger includeDismissButton: aBoolean showCategories: categoryInfo

	stub := aPlayer clonedSequentialStub.
	stub who: 0.
	restrictedWho := 0.
	restrictedIndex := 0.
	super initializeFor: aPlayer barHeight: anInteger includeDismissButton: aBoolean showCategories: categoryInfo.
