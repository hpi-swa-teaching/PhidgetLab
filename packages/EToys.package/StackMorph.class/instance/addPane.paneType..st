initialization
addPane: aPane paneType: aType
	| anIndex |
	anIndex := self insertionIndexForPaneOfType: aType.
	self privateAddMorph: aPane atIndex: anIndex