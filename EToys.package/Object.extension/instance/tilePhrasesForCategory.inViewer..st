*Etoys-viewer
tilePhrasesForCategory: aCategorySymbol inViewer: aViewer
	"Return a collection of phrases for the category."

	| interfaces |
	interfaces := self methodInterfacesForCategory: aCategorySymbol inVocabulary: aViewer currentVocabulary limitClass: aViewer limitClass.
	interfaces := self methodInterfacesInPresentationOrderFrom: interfaces forCategory: aCategorySymbol.
	^ self tilePhrasesForMethodInterfaces: interfaces inViewer: aViewer