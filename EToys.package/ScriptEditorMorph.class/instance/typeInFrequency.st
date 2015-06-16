frequency
typeInFrequency
	| reply aNumber |
	reply := UIManager default request: 'Number of firings per tick: ' translated initialAnswer: self scriptInstantiation frequency printString.

	reply ifNotNil:
		[aNumber := reply asNumber.
		aNumber > 0 ifTrue:
			[self setFrequencyTo: aNumber]]