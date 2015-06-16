get/set slots
getterButtonFor: getterSelector type: partType
	"Answer a classic-tiles getter button for a part of the given name"

	| m inherent wording |
	m := TileMorph new adoptVocabulary: self currentVocabulary.

	inherent := getterSelector inherentSelector.
	wording := (scriptedPlayer slotInfo includesKey: inherent)
		ifTrue: [inherent]
		ifFalse: [self currentVocabulary tileWordingForSelector: 
getterSelector].
	m setOperator: getterSelector andUseWording: wording.
	m typeColor: (ScriptingSystem colorForType: partType).
	m on: #mouseDown send: #makeGetter:event:from:
		to: self
		withValue: (Array with: getterSelector with: partType).
	^ m