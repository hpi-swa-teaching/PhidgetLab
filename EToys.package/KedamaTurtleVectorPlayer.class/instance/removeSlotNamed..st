player protocol
removeSlotNamed: aSlotName

	| index newArrays |
	self basicRemoveSlotNamed: aSlotName.
	index := info at: aSlotName asSymbol ifAbsent: [^ self].
	newArrays := (arrays copyFrom: 1 to: index - 1), (arrays copyFrom: index + 1 to: arrays size).
	types replaceFrom: index to: types size with: types startingAt: index + 1.

	info removeKey: aSlotName asSymbol.
	arrays := newArrays.
