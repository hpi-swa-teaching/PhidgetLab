special phrases
distanceToPhrase

	| outerPhrase getTile |
	outerPhrase := PhraseTileMorph new 
				setOperator: #+
				type: #Number
				rcvrType: #Player
				argType: #Color.	"temp dummy"
	(outerPhrase submorphs second) delete.	"operator"
	(outerPhrase submorphs second) delete.	"color"
	getTile := KedamaDistanceToTile new.
	outerPhrase addMorphBack: getTile.
	^outerPhrase