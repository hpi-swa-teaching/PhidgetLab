special phrases
patchValuePhrase

	| outerPhrase getTile |
	outerPhrase := PhraseTileMorph new 
				setOperator: #+
				type: #Number
				rcvrType: #Player
				argType: #Color.	"temp dummy"
	(outerPhrase submorphs second) delete.	"operator"
	(outerPhrase submorphs second) delete.	"color"
	getTile := KedamaGetPixelValueTile new.
	getTile setPatchDefaultTo: (scriptedPlayer defaultPatchPlayer).
	outerPhrase addMorphBack: getTile.
	^outerPhrase