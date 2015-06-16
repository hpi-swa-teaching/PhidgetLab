*Etoys-viewer
categoriesForViewer: aViewer
	"Answer a list of categories to offer in the given viewer"

	^ aViewer currentVocabulary categoryListForInstance: self ofClass: self class limitClass: aViewer limitClass