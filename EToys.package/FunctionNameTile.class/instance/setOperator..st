choice of function
setOperator: anOperatorSymbol
	"The user chose an entry with the given inherent operator symbol (this may differ from what the user sees in the pop-up or on the tile."

	| aTable |
	operatorOrExpression := anOperatorSymbol.
	operatorOrExpression = #grouped
		ifTrue:
			[self line1: ' '.
			self setBalloonText: 'parenthesized' translated]
		ifFalse:
			[aTable := ScriptingSystem tableOfNumericFunctions.
			(aTable detect: [:m | m second = anOperatorSymbol] ifNone: [nil]) ifNotNilDo:
				[:aTriplet |
					self line1: aTriplet first translated.
					self setBalloonText: aTriplet third translated]].
	self addArrows.
	self scriptEdited.
	self layoutChanged