accessing
valueFor: object
	^selector isSymbol
		ifTrue: [object perform: selector]
		ifFalse: [selector value: object]