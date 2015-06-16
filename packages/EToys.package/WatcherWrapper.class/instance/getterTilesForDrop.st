accessing
getterTilesForDrop
	"Answer getter tiles to use if there is an attempt to drop me onto a tile pad"

	| aCategoryViewer |
	aCategoryViewer := CategoryViewer new initializeFor: player categoryChoice: #basic.
	^ aCategoryViewer getterTilesFor: variableName asGetterSelector type: self resultType