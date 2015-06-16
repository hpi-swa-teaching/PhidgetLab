code generation
kedamaParseNodeWith: encoder actualObject: obj

	| ret arg |
	arg := submorphs third parseNodeWith: encoder.
	ret := MessageNode new
				receiver: (encoder encodePlayer: obj)
				selector: #random:
				arguments: (Array with: arg)
				precedence: (#random: precedence)
				from: encoder
				sourceRange: nil.
	^  self convertPrecedenceOfArgsInParseNode: ret with: encoder.
