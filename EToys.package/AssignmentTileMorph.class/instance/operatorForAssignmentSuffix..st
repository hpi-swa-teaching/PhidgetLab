code generation
operatorForAssignmentSuffix: aString
	"Answer the operator associated with the receiver, assumed to be one of the compound assignments"

	| toTest |
	toTest := aString asString.
	#(	('Incr:'				'+')
		('Decr:'				'-')
		('Mult:'				'*'))
	do:
		[:pair | toTest = pair first ifTrue: [^ pair second]].
	^ toTest

	"AssignmentTileMorph new operatorForAssignmentSuffix: 'Incr:'"