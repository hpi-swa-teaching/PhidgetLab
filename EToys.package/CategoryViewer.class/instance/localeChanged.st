e-toy support
localeChanged
	"Update myself to reflect the change in locale"

	chosenCategorySymbol ifNil: [^ self delete].
	self updateCategoryNameTo: ((self currentVocabulary ifNil: [Vocabulary eToyVocabulary]) categoryWordingAt: chosenCategorySymbol)