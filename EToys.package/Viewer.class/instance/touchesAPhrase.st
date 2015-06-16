special phrases
touchesAPhrase
	"Answer a conjured-up touchesA phrase in classic tile"

	| outerPhrase |
	outerPhrase := PhraseTileMorph new 
				setOperator: #+
				type: #Boolean
				rcvrType: #Player
				argType: #Player.	"temp dummy"
	(outerPhrase submorphs second) delete.	"operator"
	outerPhrase addMorphBack: (TileMorph new setOperator: #touchesA:).
	(outerPhrase submorphs second) goBehind.	"Make it third"
	outerPhrase submorphs last addMorph: scriptedPlayer tileToRefer.
	^outerPhrase