special phrases
colorComponentPhraseFor: componentName

	| outerPhrase getTile |
	outerPhrase := PhraseTileMorph new 
				setOperator: #+
				type: #Number
				rcvrType: #Player
				argType: #Color.	"temp dummy"
	(outerPhrase submorphs second) delete.	"operator"
	(outerPhrase submorphs second) delete.	"color"
	getTile := KedamaGetColorComponentTile new.
	getTile componentName: componentName.
	getTile setPatchDefaultTo: (scriptedPlayer defaultPatchPlayer).
	outerPhrase addMorphBack: getTile.
	^outerPhrase