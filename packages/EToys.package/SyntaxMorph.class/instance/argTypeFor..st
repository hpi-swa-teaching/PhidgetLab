type checking
argTypeFor: aSelector
	"Answer the type of the argument of this selector.  Return #unknown if not found."

	| itsInterface |
	aSelector numArgs = 0 
		ifTrue: [self inform: aSelector, ' does not take an argument'. ^ #error "7"].
	itsInterface := self currentVocabulary methodInterfaceAt: aSelector ifAbsent:
		[^ #unknown].
	^ itsInterface typeForArgumentNumber: 1