playerList
reinvigoratePlayersTool: aPlayersTool 
	"Rebuild the contents of the Players tool"

	| firstTwo oldList newList rowsForPlayers |
	firstTwo := {aPlayersTool submorphs first.  aPlayersTool submorphs second}.
	oldList := (aPlayersTool submorphs copyFrom: 3 to: aPlayersTool submorphs size) collect:
		[:aRow |
			aRow playerRepresented].
	self flushPlayerListCache.
	newList := self allExtantPlayers.
	oldList asSet = newList asSet
		ifFalse:
			[aPlayersTool removeAllMorphs; addAllMorphs: firstTwo.
			rowsForPlayers := newList collect:
				[:aPlayer |  aPlayer entryForPlayersTool: aPlayersTool].
			aPlayersTool addAllMorphs: rowsForPlayers ]