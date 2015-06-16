as yet unclassified
commResult: anArrayOfAssociations

	| aDictionary |
	aDictionary := Dictionary new.
	anArrayOfAssociations do: [ :each | aDictionary add: each].
	resultQueue nextPut: aDictionary