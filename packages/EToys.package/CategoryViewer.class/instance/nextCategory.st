categories
nextCategory
	"Change the receiver to point at the category following the one currently seen"

	| aList anIndex newIndex already aChoice |
	aList := (scriptedPlayer categoriesForViewer: self) collect:
		[:aCatSymbol | self currentVocabulary categoryWordingAt: aCatSymbol].

	already := self outerViewer ifNil: [#()] ifNotNil: [self outerViewer categoriesCurrentlyShowing].
	anIndex := aList indexOf: self currentCategory ifAbsent: [0].
	newIndex := anIndex = aList size
		ifTrue:		[1]
		ifFalse:		[anIndex + 1].
	[already includes: (aChoice := aList at: newIndex)] whileTrue:
		[newIndex := (newIndex \\ aList size) + 1].
	self chooseCategoryWhoseTranslatedWordingIs: aChoice