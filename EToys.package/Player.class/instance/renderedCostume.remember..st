costume
renderedCostume: aMorph remember: rememberCostume
	"Make aMorph be the receiver's rendered costume; if flexing is currently in effect, make the new morph be flexed correspondingly"

	| renderedMorph known anEventHandler w baseGraphic |
	renderedMorph := costume renderedMorph.
	renderedMorph == aMorph ifTrue: [^ self].
	baseGraphic := costume renderedMorph valueOfProperty: #baseGraphic.
	rememberCostume
		ifTrue: [self rememberCostume: renderedMorph].
	renderedMorph changed.
	w := renderedMorph world.
	"Copy 'player state' (e.g., state which should be associated with the player but is stored in the morph itself these days) from the old rendered morph the new morph."
	aMorph rotationStyle: renderedMorph rotationStyle.
	aMorph forwardDirection: renderedMorph forwardDirection.
	"Note: referencePosition is *not* state but #moveTo: behavior"
	aMorph referencePosition: renderedMorph referencePosition.
	anEventHandler := renderedMorph eventHandler.
	costume isFlexMorph
		ifTrue:
			[costume adjustAfter:
				[costume replaceSubmorph: renderedMorph by: aMorph]]
		ifFalse:
			[costume owner ifNotNil: [costume owner replaceSubmorph: costume by: aMorph].
			aMorph player: self.
			aMorph actorState: costume actorState.
			(known := costume knownName) ifNotNil:
				[aMorph setNameTo: known].
			costume := aMorph.
			w ifNotNil:
				[w stopStepping: renderedMorph.
				w startStepping: aMorph]].

	baseGraphic ifNotNil: [self setBaseGraphic: baseGraphic].
	aMorph eventHandler: anEventHandler.
	aMorph changed