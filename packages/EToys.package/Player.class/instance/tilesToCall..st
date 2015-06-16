scripts-kernel
tilesToCall: aMethodInterface
	"Answer a phrase for the non-typed command represented by aMethodInterface."

	| resultType cmd argType argTile selfTile aPhrase balloonTextSelector aDocString universal |
	self class namedTileScriptSelectors.

	resultType := aMethodInterface resultType.
	cmd := aMethodInterface selector.
	(universal := self isUniversalTiles)
		ifTrue:
			[aPhrase := self universalTilesForInterface: aMethodInterface]
		ifFalse: [cmd numArgs = 0
			ifTrue:
				[aPhrase := PhraseTileMorph new setOperator: cmd
					type: resultType
					rcvrType: #Player]
			ifFalse:
				["only one arg supported in classic tiles, so if this is fed
				with a selector with > 1 arg, results will be very strange"
				argType := aMethodInterface typeForArgumentNumber: 1.
				aPhrase := PhraseTileMorph new setOperator: cmd
					type: resultType
					rcvrType: #Player
					argType: argType.
				argTile := ScriptingSystem tileForArgType: argType.
				argTile position: aPhrase lastSubmorph position.
				aPhrase lastSubmorph addMorph: argTile]].

	(self slotInfo includesKey: cmd)
		ifTrue: [balloonTextSelector := #userSlot].

	(self belongsToUniClass and: [self class includesSelector: cmd])
		ifTrue:
			[aDocString := (self class userScriptForPlayer: self selector: cmd) documentation.
			aDocString
				ifNotNil: [aPhrase submorphs second setBalloonText: aDocString]
				ifNil: [balloonTextSelector := #userScript]].

	(universal ifTrue: [aPhrase submorphs second] ifFalse: [aPhrase operatorTile]) balloonTextSelector: 
			(balloonTextSelector ifNil: [cmd]).
	universal ifFalse:
		[selfTile := self tileToRefer.
		selfTile position: aPhrase firstSubmorph position.
		aPhrase firstSubmorph addMorph: selfTile.
		aPhrase makeAllTilesGreen.
		aPhrase justGrabbedFromViewer: false].
	^ aPhrase