viewer
nascentPartsViewerFor: aViewee
	"Create a new, naked Viewer object for viewing aViewee.  Give it a vocabulary if either the viewee insists on one or if the project insists on one."

	| aViewer aVocab |
	(aViewee isKindOf: KedamaExamplerPlayer) ifTrue: [^ KedamaStandardViewer new].
	aViewer := StandardViewer new.
	(aVocab := aViewee vocabularyDemanded)
		ifNotNil:
			[aViewer useVocabulary: aVocab]
		ifNil:
			[(aVocab := associatedMorph currentVocabularyFor: aViewee) ifNotNil:
				[aViewer useVocabulary: aVocab]].
	
	"If the viewee does not *demand* a special kind of Viewer, and if the project has not specified a preferred vocabulary, then the system defaults will kick in later"
	^ aViewer