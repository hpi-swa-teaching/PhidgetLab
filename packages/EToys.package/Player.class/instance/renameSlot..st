slots-user
renameSlot: oldSlotName 
	| reply newSlotName |
	reply := UIManager default request: 'New name for "' translated , oldSlotName , '":'
				initialAnswer: oldSlotName.
	reply isEmpty ifTrue: [^self].
	newSlotName := ScriptingSystem 
				acceptableSlotNameFrom: reply
				forSlotCurrentlyNamed: oldSlotName
				asSlotNameIn: self
				world: self costume currentWorld.
	self renameSlot: oldSlotName newSlotName: newSlotName