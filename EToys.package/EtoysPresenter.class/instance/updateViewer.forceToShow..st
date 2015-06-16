viewer
updateViewer: aViewer forceToShow: aCategorySymbol
	"Update the given viewer to make sure it is in step with various possible changes in the outside world, and when reshowing it be sure it shows the given category"

	| aPlayer aPosition newViewer oldOwner wasSticky barHeight itsVocabulary aCategory categoryInfo restrictedIndex |
	aCategory := aCategorySymbol ifNotNil: [aViewer currentVocabulary translatedWordingFor: aCategorySymbol].
	categoryInfo := aViewer categoryMorphs  asOrderedCollection collect:
		[:aMorph | aMorph categoryRestorationInfo].

	itsVocabulary := aViewer currentVocabulary.
	aCategory ifNotNil: [(categoryInfo includes: aCategorySymbol) ifFalse: [categoryInfo addFirst: aCategorySymbol]].
	aPlayer := aViewer scriptedPlayer.
	aPosition := aViewer position.
	wasSticky := aViewer isSticky.
	newViewer := aViewer species new visible: false.
	(aViewer isMemberOf: KedamaStandardViewer)
		ifTrue: [restrictedIndex := aViewer restrictedIndex].
	barHeight := aViewer submorphs first listDirection == #topToBottom
		ifTrue:
			[aViewer submorphs first submorphs first height]
		ifFalse:
			[0].
	Preferences viewersInFlaps ifTrue:
		[newViewer setProperty: #noInteriorThumbnail toValue: true].

	newViewer rawVocabulary: itsVocabulary.
	newViewer limitClass: aViewer limitClass.
	newViewer initializeFor: aPlayer barHeight: barHeight includeDismissButton: aViewer hasDismissButton showCategories: categoryInfo.
	(newViewer isMemberOf: KedamaStandardViewer)
		ifTrue: [
			newViewer providePossibleRestrictedView: 0.
			newViewer providePossibleRestrictedView: restrictedIndex].
	wasSticky ifTrue: [newViewer beSticky].
	oldOwner := aViewer owner.
	oldOwner ifNotNil:
		[oldOwner replaceSubmorph: aViewer by: newViewer].
	
	"It has happened that old readouts are still on steplist.  We may see again!"

	newViewer position: aPosition.
	newViewer enforceTileColorPolicy.
	newViewer visible: true.
	newViewer world ifNotNil: [:aWorld | aWorld startSteppingSubmorphsOf: newViewer].
	newViewer layoutChanged