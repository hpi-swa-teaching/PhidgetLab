macpal
currentVocabulary
	"Answer the vocabulary currently installed in the viewer.  The outer StandardViewer object holds this information."

	| outerViewer |
	^  (outerViewer := self outerViewer)
		ifNotNil:
			[outerViewer currentVocabulary]
		ifNil:
			[(self world ifNil: [ActiveWorld]) currentVocabularyFor: scriptedPlayer]