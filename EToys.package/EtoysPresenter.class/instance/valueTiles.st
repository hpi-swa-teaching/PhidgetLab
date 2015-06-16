tile support
valueTiles
	"Answer some constant-valued tiles.  This dates back to very early etoy work in 1997, and presently has no senders"

	| tiles |
	tiles := OrderedCollection new.
	tiles add: (5 newTileMorphRepresentative typeColor: (ScriptingSystem colorForType: #Number)).
	tiles add: (ColorTileMorph new typeColor: (ScriptingSystem colorForType: #Color)).
	tiles add: (TileMorph new typeColor: (ScriptingSystem colorForType: #Number);
			setExpression: '(180 atRandom)'
			label: 'random').
	tiles add: RandomNumberTile new.
	^ tiles