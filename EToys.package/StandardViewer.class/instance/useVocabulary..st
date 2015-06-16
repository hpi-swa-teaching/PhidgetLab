initialization
useVocabulary: aVocabulary
	"Make the receiver show categories and methods as dictated by aVocabulary"

	| itsName |
	((self valueOfProperty: #currentVocabularySymbol ifAbsent: [nil]) == (itsName := aVocabulary vocabularyName)) ifFalse:
		[self setProperty: #currentVocabularySymbol toValue: itsName.
		self removeProperty: #currentVocabulary.  "grandfathered"
		(self submorphs select: [:m | m isKindOf: CategoryViewer]) do: [:m | m delete]]