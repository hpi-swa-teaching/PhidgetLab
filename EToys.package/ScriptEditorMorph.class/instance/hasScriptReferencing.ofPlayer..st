other
hasScriptReferencing: aSlotName ofPlayer: aPlayer
	"Answer whether the receiver has any tiles in it which reference the given slot of the given player.  By doing a text search on the decompiled method, this is able to work both with text and with tiles.  The approach is still not perfect, because we can't really know until run-time whom the getters and setters are sent to.  But practically speaking, this is all presumably a positive."

	| stringToSearch |
	"(aPlayer isKindOf: playerScripted class) ifFalse: [^ false]."

	stringToSearch := (playerScripted class compiledMethodAt: scriptName) decompileString.
	{aSlotName asGetterSelector. aSlotName asSetterSelector} do:
		[:searchee |
			(stringToSearch findString: searchee startingAt: 1) = 0
				ifFalse:
					[^ true]]. 

	^ false