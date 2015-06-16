printing
printCascadeNodeOn: strm indent: level

	| parens cnt me above |

	parens := parseNode receiver notNil.
	parens ifTrue: [me := self selector precedence.
		above := self ownerPrecedence.	"high if not in an expression"
		parens := me > above].
	parens ifTrue: [strm nextPut: $( ].
	cnt := 0.
	self
		submorphsDoIfSyntax: [ :sub |
			cnt := cnt + 1.
			"maybe we want to test sub isCascadePart for the following???"
			cnt > 2 ifTrue: [strm nextPutAll: '; '].
			sub printOn: strm indent: level.
			strm ensureASpace.
		]
		ifString: [ :sub |
			self printSimpleStringMorph: sub on: strm
		].
	parens ifTrue: [strm ensureNoSpace; nextPut: $) ].
