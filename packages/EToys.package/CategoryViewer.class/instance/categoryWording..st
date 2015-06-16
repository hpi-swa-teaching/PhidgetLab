categories
categoryWording: aCategoryWording
	"Make the category with the given wording be my current one."

	| actualPane |
	(actualPane := namePane renderedMorph) firstSubmorph contents: aCategoryWording; color: Color black.
	actualPane extent: actualPane firstSubmorph extent.

	self removeAllButFirstSubmorph. "that being the header"
	self addAllMorphs:
		((scriptedPlayer tilePhrasesForCategory: chosenCategorySymbol inViewer: self)).
	self enforceTileColorPolicy.
	self secreteCategorySymbol.
	self world ifNotNil: [self world startSteppingSubmorphsOf: self].
	self adjustColorsAndBordersWithin.

	owner ifNotNil: [owner isStandardViewer ifTrue: [owner fitFlap]]