e-toy support
adoptVocabulary: aVocabulary
	"Set the receiver's vocabulary"

	vocabularySymbol := aVocabulary vocabularyName.
	self updateWordingToMatchVocabulary.
	super adoptVocabulary: aVocabulary