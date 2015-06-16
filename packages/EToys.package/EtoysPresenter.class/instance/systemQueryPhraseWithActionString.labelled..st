palette & parts bin
systemQueryPhraseWithActionString: anActionString labelled: aLabel
	"Answer a SystemQueryPhrase with the given action string and label"

	| aTile aPhrase |
	
	aPhrase := SystemQueryPhrase new.
	aTile := BooleanTile new.
	aTile setExpression: anActionString label: aLabel.
	aPhrase addMorph: aTile.
	aPhrase enforceTileColorPolicy.
	^ aPhrase