categories
secreteCategorySymbol
	"Set my chosenCategorySymbol by translating back from its representation in the namePane.  Answer the chosenCategorySymbol"

	| aCategory |
	aCategory := self currentVocabulary categoryWhoseTranslatedWordingIs: self currentCategory.
	^ chosenCategorySymbol := aCategory
		ifNotNil:
			[aCategory categoryName]
		ifNil:
			[self currentCategory]