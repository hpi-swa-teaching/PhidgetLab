events
displayCostume: aSymbol

	self currentLook == aSymbol ifTrue: [^true].
	self stateCostumes at: aSymbol ifPresent: [ :aForm |
		currentLook := aSymbol.
		visibleMorph wearCostume: aForm.
		^true
	].
	^false
