*Etoys-viewer
categoriesForVocabulary: aVocabulary limitClass: aLimitClass
	"Answer a list of categories of methods for the receiver when using the given vocabulary, given that one considers only methods that are implemented not further away than aLimitClass"

	^ aVocabulary categoryListForInstance: self ofClass: self class limitClass: aLimitClass