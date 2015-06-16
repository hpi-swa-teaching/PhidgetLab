special phrases
patchUphillPhrase

	| outerPhrase upHill |
	outerPhrase := PhraseTileMorph new 
				setOperator: #+
				type: #Number
				rcvrType: #Player
				argType: #Color.	"temp dummy"
	(outerPhrase submorphs second) delete.	"operator"
	(outerPhrase submorphs second) delete.	"color"
	upHill := KedamaUpHillTile new.
	upHill setPatchDefaultTo: (scriptedPlayer defaultPatchPlayer).
	outerPhrase addMorphBack: upHill.
	^outerPhrase.
