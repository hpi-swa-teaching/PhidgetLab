all
getAttribute: aSymbol of: anObject

	| attributes |
	attributes := dictionaries at: anObject ifAbsent: [^ nil].
	^ attributes at: aSymbol ifAbsent: [nil].
