choice of function
showOptions
	"Put up a pop-up menu of options for the operator tile within me."

	| aMenu aTable |
	aMenu := MenuMorph new defaultTarget: self.
	aTable := ScriptingSystem tableOfNumericFunctions.
	aTable do:
		[:triplet |
			aMenu add: triplet first translated target: self  selector:  #setOperator: argument: triplet second.
			triplet second = operatorOrExpression ifTrue:
				[aMenu lastItem color: Color red].
			aMenu balloonTextForLastItem: triplet third translated].

	aMenu addTranslatedList:
		#(-
		('parentheses'  grouped 'enclose within parentheses')) translatedNoop.
	operatorOrExpression = #grouped ifTrue:
		[aMenu lastItem color: Color red].

	(owner owner isKindOf: TilePadMorph) ifTrue:
		[aMenu addLine.
		operatorOrExpression = #grouped
			ifFalse:			
				[aMenu addTranslatedList:
					#(('remove function' removeFunction  'strip away the function call, leaving just its former argument in its place')) translatedNoop.]
			ifTrue:
				[aMenu addTranslatedList:
					#(('remove parentheses' removeFunction  'strip away the parenthesises')) translatedNoop]].

	aMenu position: self position.
	aMenu invokeModal
