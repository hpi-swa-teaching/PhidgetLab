special phrases
colorSeesPhrase
	"In classic tiles, answer a complete phrase that represents the colorSees test"

	| outerPhrase |
	outerPhrase := PhraseTileMorph new 
				setOperator: #+
				type: #Boolean
				rcvrType: #Player
				argType: #Color.	"temp dummy"
	"Install (ColorSeerTile new) in middle position"
	(outerPhrase submorphs second) delete.	"operator"
	outerPhrase addMorphBack: ColorSeerTile new.
	(outerPhrase submorphs second) goBehind.	"Make it third"
	outerPhrase submorphs last addMorph: (ColorTileMorph new 
				typeColor: (ScriptingSystem colorForType: #Color)).
	^outerPhrase