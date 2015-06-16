scripting
randomNumberTile
	"Answer a newly conjured-up random-number tile, suitable for handing to the user."

	| functionPhrase argTile aPad |
	functionPhrase := FunctionTile new.
	argTile := (Vocabulary vocabularyNamed: 'Number') defaultArgumentTile.
	aPad := TilePadMorph new setType: #Number.
	aPad addMorphBack: argTile.
	functionPhrase operator: #random pad: aPad.
	^ functionPhrase


"
FunctionTile randomNumberTile openInHand
"