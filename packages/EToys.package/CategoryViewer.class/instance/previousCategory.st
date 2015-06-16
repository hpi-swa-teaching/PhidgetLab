categories
previousCategory
	"Change the receiver to point at the category preceding the one currently seen"

	| aList anIndex newIndex already aChoice |
	aList := (scriptedPlayer categoriesForViewer: self) collect:
		[:aCatSymbol | self currentVocabulary categoryWordingAt: aCatSymbol].
	already := self outerViewer ifNil: [#()] ifNotNil: [self outerViewer categoriesCurrentlyShowing].
	anIndex := aList indexOf: self currentCategory ifAbsent: [aList size + 1].
	newIndex := anIndex = 1
		ifTrue:		[aList size]
		ifFalse:		[anIndex - 1].
	[already includes: (aChoice := aList at: newIndex)] whileTrue:
		[newIndex := newIndex = 1 ifTrue: [aList size] ifFalse: [newIndex - 1]].

	self chooseCategoryWhoseTranslatedWordingIs: aChoice