code generation
basicParseNodeWith: encoder
	"Answer a message node for the receiver."

	| sel rec ret |
	sel := submorphs first operatorOrExpression.
	rec := submorphs third parseNodeWith: encoder.
	ret := MessageNode new
				receiver: rec
				selector: sel
				arguments: #()
				precedence: (sel precedence)
				from: encoder
				sourceRange: nil.
	^ self convertPrecedenceInParseNode: ret with: encoder.
