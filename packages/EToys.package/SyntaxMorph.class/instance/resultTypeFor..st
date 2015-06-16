type checking
resultTypeFor: aSelector
	"Answer the result type of selector.  Return #unknown if not found."

	| itsInterface |
	aSelector ifNil: [self inform: 'Please tell Ted how you caused this'.
		^ #abs "a bogus type"].
	itsInterface := self currentVocabulary methodInterfaceAt: aSelector ifAbsent:
		[^ #unknown].
	^ itsInterface resultType