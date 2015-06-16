accessing
allSpecs
	"Return all specs that the Viewer knows about. Cache them."
	"SyntaxMorph allSpecs"

	^AllSpecs ifNil: [
		AllSpecs := Dictionary new.
		(EToyVocabulary morphClassesDeclaringViewerAdditions)
			do: [:cls | cls allAdditionsToViewerCategories keysAndValuesDo: [ :k :v | 
				(AllSpecs at: k ifAbsentPut: [ OrderedCollection new ]) addAll: v ] ].
		AllSpecs
	]