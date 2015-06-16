updating
updateLiteralLabel
	 "Update the wording emblazoned on the tile, if needed"
	| myLabel functionTriplet |
	(myLabel := self labelMorph)
	     ifNil: [^ self].
	operatorOrExpression == #grouped
		ifTrue: [myLabel acceptValue: ' ']
		ifFalse: [functionTriplet := ScriptingSystem tableOfNumericFunctions
						detect: [:triplet | triplet second = operatorOrExpression].
			myLabel acceptValue: functionTriplet first].
	self addArrows.
	self changed