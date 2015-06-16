get/set slots
newSetterTilesFor: aPlayer methodInterface: aMethodInterface
	"Return universal tiles for a setter on this property.  Record who self is."

	| ms argValue makeSelfGlobal phrase |
	argValue := aPlayer perform: aMethodInterface selector.
	ms := MessageSend receiver: aPlayer 
		selector: aMethodInterface companionSetterSelector 
		arguments: (Array with: argValue).
	makeSelfGlobal := aPlayer class officialClass ~~ CardPlayer.
	phrase := ms asTilesIn: aPlayer class globalNames: makeSelfGlobal.
			"For CardPlayers, use 'self'.  For others, name it, and use its name."
	makeSelfGlobal ifFalse: [phrase setProperty: #scriptedPlayer toValue: aPlayer].
	^ phrase