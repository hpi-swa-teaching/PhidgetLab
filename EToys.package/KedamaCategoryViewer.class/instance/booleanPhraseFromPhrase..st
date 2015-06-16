support
booleanPhraseFromPhrase: phrase

	| outerPhrase |
	outerPhrase := super booleanPhraseFromPhrase: phrase.
	outerPhrase replacePlayerInReadoutWith: scriptedPlayer.
	^ outerPhrase.
