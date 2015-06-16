as yet unclassified
flashIndicator: aSymbol

	| now |

	now := Time millisecondClockValue.
	(LastFlashTime notNil and: [(Time millisecondClockValue - now) abs < 500]) ifTrue: [^self].
	LastFlashTime := now.
	self trulyFlashIndicator: aSymbol
