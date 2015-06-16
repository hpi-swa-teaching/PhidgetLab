scripts-kernel
universalTilesForInterface: aMethodInterface
	"Return universal tiles for the given method interface.  Record who self is."

	| ms itsSelector argList makeSelfGlobal phrase aType |
	itsSelector := aMethodInterface selector.
	argList := OrderedCollection new.
	aMethodInterface argumentVariables doWithIndex:
		[:anArgumentVariable :anIndex | | argTile | 
			argTile := ScriptingSystem tileForArgType: (aType := aMethodInterface typeForArgumentNumber: anIndex).
			argList add: (aType == #Player 
				ifTrue: [argTile actualObject]
				ifFalse: [argTile literal]).	"default value for each type"].

	ms := MessageSend receiver: self selector: itsSelector arguments: argList asArray.
	"For CardPlayers, use 'self'.  For others, name me, and use my global name."
	makeSelfGlobal := self class officialClass ~~ CardPlayer.
	phrase := ms asTilesIn: self class globalNames: makeSelfGlobal.
	makeSelfGlobal ifFalse: [phrase setProperty: #scriptedPlayer toValue: self].
	^ phrase
