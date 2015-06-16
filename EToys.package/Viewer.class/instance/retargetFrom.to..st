transition
retargetFrom: oldPlayer to: newPlayer
	"Retarget the receiver so that instead of viewing oldPlayer, it now views newPlayer, which are expected to be different instances of the same uniclass"

	scriptedPlayer == oldPlayer
		ifTrue:
			[self allMorphs do:  "nightmarishly special-cased, sorry"
				[:aMorph | 
					(aMorph isKindOf: Viewer) ifTrue:  "includes self"
						[aMorph scriptedPlayer: newPlayer].
					((aMorph isKindOf: UpdatingStringMorph) and: [aMorph target == oldPlayer]) ifTrue:
						[aMorph target: newPlayer].
					(aMorph isKindOf: TileMorph) ifTrue:
						[aMorph retargetFrom: oldPlayer to: newPlayer]]]