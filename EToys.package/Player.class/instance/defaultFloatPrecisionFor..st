misc
defaultFloatPrecisionFor: aGetSelector
	"Answer the float position to use in conjunction with a readout for aGetSelector, which will be of the form 'getXXX'"

	| aSlotName slotInfo |
	aSlotName := aGetSelector inherentSelector.
	(slotInfo := self slotInfoAt: aSlotName ifAbsent: [nil]) ifNotNil:
		[^ slotInfo floatPrecision].

	self costume ifNotNil:
		[^ self costume renderedMorph defaultFloatPrecisionFor: aGetSelector].
	^ 1