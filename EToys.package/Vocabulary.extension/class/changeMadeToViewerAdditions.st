*eToys-eToy vocabularies
changeMadeToViewerAdditions
	"A change to some morph-subclass class-side #additionsToViewer... was made, which means that the existing etoy vocabularies need updating."
	"Vocabulary changeMadeToViewerAdditions"

	AllStandardVocabularies
		ifNotNil: [
			self addStandardVocabulary: EToyVocabulary new.
			self addStandardVocabulary: EToyVectorVocabulary new]

	
		 