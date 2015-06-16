costume
rememberCostume: aCostume
	"Put aCostume in my remembered-costumes list, as the final element"
	| costumeToRemember existing |
	costumeToRemember := aCostume renderedMorph.
		"Remember real morphs, not their transformations"
	costumes ifNil: [costumes := OrderedCollection new].
	existing := (costumeToRemember isSketchMorph)
		ifTrue:
			[self knownSketchCostumeWithSameFormAs: costumeToRemember]
		ifFalse:
			[costumes detect: [:c | c == costumeToRemember] ifNone: [nil]].
	costumes := costumes copyWithout: existing.
	costumes addLast: costumeToRemember