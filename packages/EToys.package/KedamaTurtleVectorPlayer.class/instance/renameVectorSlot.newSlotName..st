player protocol
renameVectorSlot: oldSlotName newSlotName: newSlotName

	| index |
	index := info at: oldSlotName asSymbol ifAbsent: [^ self].
	info removeKey: oldSlotName asSymbol.
	info at: newSlotName put: index.
