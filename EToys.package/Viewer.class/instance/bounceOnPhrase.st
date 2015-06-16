special phrases
bounceOnPhrase

	| outerPhrase upHill |
	outerPhrase := PhraseTileMorph new 
				setOperator: #+
				type: #Boolean
				rcvrType: #Player
				argType: #Color.	"temp dummy"
	(outerPhrase submorphs second) delete.	"operator"
	(outerPhrase submorphs second) delete.	"color"
	upHill := KedamaBounceOnTile new.
	"upHill setPatchDefaultTo: (scriptedPlayer defaultPatchPlayer)."
	outerPhrase addMorphBack: upHill.
	^outerPhrase.
