as yet unclassified
resetIndicator: aSymbol

	| indicator firstColor |
	indicator := fields at: aSymbol ifAbsent: [^self].
	firstColor := indicator 
		valueOfProperty: #firstColor
		ifAbsent: [^self].
	indicator color: firstColor.
	self world displayWorldSafely.
