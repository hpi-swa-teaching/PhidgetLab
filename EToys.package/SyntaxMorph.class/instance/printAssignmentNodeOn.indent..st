printing
printAssignmentNodeOn: strm indent: level
	"sometimes an assignment is in parens"
	| parens above |

	parens := submorphs size >= 3.
	parens ifTrue: [
		above := self ownerPrecedence.	"high if not in an expression"
		parens := above <= 3].	"assignment is a noun inside a message"
	parens ifTrue: [strm nextPut: $( ].
	self
		submorphsDoIfSyntax: [ :sub |
			sub printOn: strm indent: level.
			strm ensureASpace.
		]
		ifString: [ :sub |
			strm ensureNoSpace. 	":= will have a leading space"
			self printSimpleStringMorph: sub on: strm
		].
	parens ifTrue: [strm ensureNoSpace; nextPut: $) ].
