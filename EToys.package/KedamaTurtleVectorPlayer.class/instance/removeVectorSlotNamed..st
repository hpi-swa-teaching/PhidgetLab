player protocol
removeVectorSlotNamed: aSlotName

	| index newArrays |
	index := info at: aSlotName asSymbol ifAbsent: [^ self].
	newArrays := (arrays copyFrom: 1 to: index - 1), (arrays copyFrom: index + 1 to: arrays size).
	types replaceFrom: index to: types size - 1 with: types startingAt: index + 1.

	info removeKey: aSlotName asSymbol.
	arrays := newArrays.
	self compileAllAccessors.

