*eToys-eToy vocabularies
eToyVocabulary
	"Answer the etoy vocabulary in the AllStandardVocabularies list, creating it if necessary."

	^ self allStandardVocabularies at: #eToy ifAbsentPut: [EToyVocabulary new]