all
rowOfRightTypeFor: aLayoutMorph forActor: aPlayer
	"Answer a phrase of the right type for the putative container"

	| aTemporaryViewer aPhrase |
	aLayoutMorph demandsBoolean ifTrue:
		[self isBoolean ifTrue: [^ self].
		aTemporaryViewer := CategoryViewer new invisiblySetPlayer: aPlayer.
		aPhrase := aTemporaryViewer booleanPhraseFromPhrase: self.
		aPhrase justGrabbedFromViewer: false.
		^ aPhrase].
	^ self