special phrases
bounceOnColorPhrase

	| outerPhrase bounceOn |
	outerPhrase := PhraseTileMorph new 
				setOperator: #+
				type: #Boolean
				rcvrType: #Player
				argType: #Color.	"temp dummy"
	(outerPhrase submorphs second) delete.	"operator"
	(outerPhrase submorphs second) delete.	"color"
	bounceOn := KedamaBounceOnColorTile new.
	"upHill setPatchDefaultTo: (scriptedPlayer defaultPatchPlayer)."
	outerPhrase addMorphBack: bounceOn.
	^outerPhrase.
