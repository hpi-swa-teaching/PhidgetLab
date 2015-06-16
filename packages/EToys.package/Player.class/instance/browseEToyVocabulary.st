misc
browseEToyVocabulary
	"Open a protocol browser on the receiver, showing its etoy vocabulary"

	| littleMe | 
	littleMe := self assureUniClass.

	(InstanceBrowser new useVocabulary: Vocabulary eToyVocabulary) openOnObject: littleMe  showingSelector: nil