get/set slots
newGetterTilesFor: aPlayer methodInterface: aMethodInterface
	"Return universal tiles for a getter on this property.  Record who self is."

	| ms argTile argArray |
	ms := MessageSend receiver: aPlayer selector: aMethodInterface selector arguments: #().

	"Handle three idiosyncratic cases..."
	aMethodInterface selector == #color:sees: ifTrue:
		[argTile := ScriptingSystem tileForArgType: #Color.
		argArray := Array with: argTile colorSwatch color with: argTile colorSwatch color copy. 
		ms arguments: argArray].
	aMethodInterface selector == #seesColor: ifTrue:
		[argTile := ScriptingSystem tileForArgType: #Color.
		ms arguments: (Array with: argTile colorSwatch color)].

	(#(touchesA: overlaps: overlapsAny:) includes: aMethodInterface selector) ifTrue:
		[argTile := ScriptingSystem tileForArgType: #Player.
		ms arguments: (Array with: argTile actualObject)].

	^ ms asTilesIn: aPlayer class globalNames: (aPlayer class officialClass ~~ CardPlayer)
			"For CardPlayers, use 'self'.  For others, name it, and use its name."