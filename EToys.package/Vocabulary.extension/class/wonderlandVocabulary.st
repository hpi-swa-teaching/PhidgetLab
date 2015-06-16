*eToys-type vocabularies
wonderlandVocabulary
	"Answer the Quad vocabulary lurking in my AllStandardVocabularies list, creating it if necessary"
	"Vocabulary newWonderlandVocabulary"

	^ self allStandardVocabularies at: #Wonderland ifAbsentPut: [self newWonderlandVocabulary]