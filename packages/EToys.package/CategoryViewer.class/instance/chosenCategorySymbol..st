categories
chosenCategorySymbol: aCategorySymbol
	"Make the given category be my current one."

	| aCategory wording |
	chosenCategorySymbol := aCategorySymbol.
	aCategory := self currentVocabulary categoryAt: chosenCategorySymbol.
	wording := aCategory ifNil: [aCategorySymbol] ifNotNil: [aCategory wording].
	self categoryWording: wording