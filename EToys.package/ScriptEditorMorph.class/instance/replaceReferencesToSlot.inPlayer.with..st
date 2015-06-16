e-toy support
replaceReferencesToSlot: oldSlotName inPlayer: aPlayer with: newSlotName
	"An instance variable has been renamed in a player; replace all references to the old instance variable of that player such that they become references to the new slot"

	self tileRows do: [:row |
		row do: [:c | c traverseRowTranslateSlotOld: oldSlotName of: aPlayer to: newSlotName]].
	self install.
	self fixLayout