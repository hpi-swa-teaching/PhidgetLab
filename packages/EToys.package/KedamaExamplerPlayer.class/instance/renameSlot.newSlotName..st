player protocol
renameSlot: oldSlotName newSlotName: newSlotName

	self basicRenameSlot: oldSlotName newSlotName: newSlotName.
	turtles renameVectorSlot: oldSlotName newSlotName: newSlotName.
	self recompileAccessorsOf: oldSlotName to: newSlotName inPlayer: self.
