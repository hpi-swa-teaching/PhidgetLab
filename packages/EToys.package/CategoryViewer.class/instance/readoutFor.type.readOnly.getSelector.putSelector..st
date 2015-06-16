entries
readoutFor: partName type: partType readOnly: readOnly getSelector: getSelector putSelector: putSelector
	"Answer a readout morph for the given part"

	| readout delta |
	readout := (Vocabulary vocabularyForType: partType) updatingTileForTarget: scriptedPlayer partName: partName getter: getSelector setter: putSelector.

	(partType == #Number) ifTrue:
		[(delta := scriptedPlayer arrowDeltaFor: getSelector) = 1
			ifFalse:
				[readout setProperty: #arrowDelta toValue: delta].
		scriptedPlayer setFloatPrecisionFor: readout updatingStringMorph].

	readout step.
	^ readout