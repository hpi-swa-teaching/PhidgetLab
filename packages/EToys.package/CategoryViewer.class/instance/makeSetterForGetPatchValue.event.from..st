get/set slots
makeSetterForGetPatchValue: selectorAndTypePair event: evt from: aMorph 

	| argType m argTile selfTile argValue actualGetter |
	argType := selectorAndTypePair second.
	actualGetter := #patchValueIn:.
	m := PhraseTileMorph new 
				setPixelValueRoot: actualGetter
				type: #command
				rcvrType: #Player
				argType: argType
				vocabulary: self currentVocabulary.
	argValue := self scriptedPlayer 
				perform: selectorAndTypePair first asSymbol with: nil.
	(argValue isPlayerLike) 
		ifTrue: [argTile := argValue tileReferringToSelf]
		ifFalse: 
			[argTile := ScriptingSystem tileForArgType: argType.
			(argType == #Number and: [argValue isNumber]) 
				ifTrue: 
					[(scriptedPlayer decimalPlacesForGetter: actualGetter) 
						ifNotNil: [:places | (argTile findA: UpdatingStringMorph) decimalPlaces: places]].
			argTile
				setLiteral: argValue;
				updateLiteralLabel].
	argTile position: m lastSubmorph position.
	m lastSubmorph addMorph: argTile.
	selfTile := self tileForSelf bePossessive.
	selfTile position: m firstSubmorph position.
	m firstSubmorph addMorph: selfTile.
	m enforceTileColorPolicy.
	m submorphs second setPatchDefaultTo: scriptedPlayer defaultPatchPlayer.

	m openInHand