special phrases
seesColorPhrase
	"In classic tiles, answer a complete phrase that represents the seesColor test"

	| outerPhrase seesColorTile |
	outerPhrase := PhraseTileMorph new 
				setOperator: #+
				type: #Boolean
				rcvrType: #Player
				argType: #Color.	"temp dummy"
	"Install (ColorSeerTile new) in middle position"
	(outerPhrase submorphs second) delete.	"operator"
	seesColorTile := TileMorph new setOperator: #seesColor:.
	outerPhrase addMorphBack: seesColorTile.
	(outerPhrase submorphs second) goBehind.	"Make it third"
	"	selfTile := self tileForSelf bePossessive.	Done by caller.
	selfTile position: 1.
	outerPhrase firstSubmorph addMorph: selfTile.
"
	outerPhrase submorphs last addMorph: (ColorTileMorph new 
				typeColor: (ScriptingSystem colorForType: #Color)).
	^outerPhrase