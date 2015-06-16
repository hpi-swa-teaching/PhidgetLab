accessing
vocabularySummary
	"Answer a string describing all the vocabulary defined anywhere in the 
	system."
	"
	(StringHolder new contents: EToyVocabulary vocabularySummary)  
	openLabel: 'EToy Vocabulary' translated 
	"
	| etoyVocab |
	etoyVocab := Vocabulary eToyVocabulary.
	etoyVocab initialize.		"just to make sure that it's unfiltered."
	^ String streamContents: [:s |
		self morphClassesDeclaringViewerAdditions do: [:cl | | allAdditions | 
			s nextPutAll: cl name; cr.
			allAdditions := cl allAdditionsToViewerCategories.
			cl unfilteredCategoriesForViewer do: [ :cat |
				allAdditions at: cat ifPresent: [ :additions | | interfaces |
					interfaces := ((etoyVocab categoryAt: cat) ifNil: [ ElementCategory new ]) elementsInOrder.
					interfaces := interfaces
								select: [:ea | additions
										anySatisfy: [:tuple | (tuple first = #slot
												ifTrue: [tuple at: 7]
												ifFalse: [tuple at: 2])
												= ea selector]].
					s tab; nextPutAll: cat translated; cr.
					interfaces
						do: [:if | | rt | 
							s tab: 2.
							rt := if resultType.
							rt = #unknown
								ifTrue: [s nextPutAll: 'command' translated]
								ifFalse: [s nextPutAll: 'property' translated;
										 nextPut: $(;
										 nextPutAll: (if companionSetterSelector
											ifNil: ['RO']
											ifNotNil: ['RW']) translated;
										 space;
										 nextPutAll: rt translated;
										 nextPutAll: ') '].
							s tab; print: if wording; space.
							if argumentVariables
								do: [:av | s nextPutAll: av variableName;
										 nextPut: $(;
										 nextPutAll: av variableType asString;
										 nextPut: $)]
								separatedBy: [s space].
							s tab; nextPutAll: if helpMessage; cr]]]]]