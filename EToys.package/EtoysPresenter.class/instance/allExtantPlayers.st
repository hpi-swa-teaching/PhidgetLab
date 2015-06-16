intialize
allExtantPlayers
	"The initial intent here was to produce a list of Player objects associated with any Morph in the tree beneath the receiver's associatedMorph.  whether it is the submorph tree or perhaps off on unseen bookPages.  We have for the moment moved away from that initial intent, and in the current version we only deliver up players associated with the submorph tree only.  <-- this note dates from 4/21/99

Call #flushPlayerListCache; to force recomputation."

	| fullList |
	playerList ifNotNil:
		[^ playerList].

	fullList := associatedMorph allMorphs select: 
		[:m | m player ~~ nil] thenCollect: [:m | m player].
	fullList copy do:
		[:aPlayer |
			aPlayer class scripts do:
				[:aScript |  aScript isTextuallyCoded ifFalse:
					[aScript currentScriptEditor ifNotNil: [:ed |
						| objectsReferredToByTiles |
						objectsReferredToByTiles := ed allMorphs
							select:
								[:aMorph | (aMorph isKindOf: TileMorph) and: [aMorph type == #objRef]]
							thenCollect:
								[:aMorph | aMorph actualObject].
						fullList addAll: objectsReferredToByTiles]]]].

	^ playerList := fullList asSet asArray sort:
			[:a :b | a externalName < b externalName]