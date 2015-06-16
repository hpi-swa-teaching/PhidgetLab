pop ups
assignmentArrow
	"Offer to embed this variable in a new assignment statement.  (Don't confuse this with upDownAssignment:, which runs the up and down arrows that rotate among assignment types.)"
	| rr |

	self isAVariable ifFalse: [^ nil].
	self isDeclaration ifTrue: [^ nil].
	^ (rr := RectangleMorph new)
		extent: 11@13; borderWidth: 1; color: Color lightGreen;
		borderColor: Color gray;
		addMorph: ((self noiseStringMorph: '_') topLeft: rr topLeft + (3@0));
		on: #mouseUp send: #newAssignment to: self
