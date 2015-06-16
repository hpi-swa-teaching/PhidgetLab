special phrases
angleToPhrase

	| outerPhrase getTile |
	outerPhrase := PhraseTileMorph new 
				setOperator: #+
				type: #Number
				rcvrType: #Player
				argType: #Color.	"temp dummy"
	(outerPhrase submorphs second) delete.	"operator"
	(outerPhrase submorphs second) delete.	"color"
	getTile := KedamaAngleToTile new.
	outerPhrase addMorphBack: getTile.
	^outerPhrase