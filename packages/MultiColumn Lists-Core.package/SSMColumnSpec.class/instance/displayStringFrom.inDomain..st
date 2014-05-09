accessing
displayStringFrom: object inDomain: boolean
	boolean
		ifTrue: [^([valueDomain add: ((self valueFor: object ) perform: conversionMethod)] on: Error do: ['<Unable to access>'])]
		ifFalse: [^([(self valueFor: object ) perform: conversionMethod] on: Error do: ['<Unable to access>'])]