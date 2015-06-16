*Etoys-viewer
defaultLimitClassForVocabulary: aVocabulary
	"Answer the class to use, by default, as the limit class on a protocol browser or viewer opened up on the receiver, within the purview of the Vocabulary provided"

	^ (aVocabulary isKindOf: FullVocabulary)
		ifTrue:
			 [self class superclass == Object
				ifTrue:
					[self class]
				ifFalse:
					[self class superclass]]
		ifFalse:
			[ProtoObject]