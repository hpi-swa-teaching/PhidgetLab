all
setAttribute: aSymbol of: anObject to: value

	| attributes |
	attributes := dictionaries at: anObject ifAbsentPut: [IdentityDictionary new].
	attributes at: aSymbol put: value.

