code generation
convertPrecedenceOfArgsInParseNode: message with: encoder

	| e r w list |
	message arguments size > 0 ifTrue: [
		w := WriteStream on: (Array new: 3).
		message arguments first  eToysExpFlattenOn: w.
		list := w contents.
		e := EToyExpressionTransformer2 new newNodeFromList: list encoder: encoder.
		r := e transform.
		message arguments at: 1 put: r.
		^ message.
	] ifFalse: [
		^ message.
	].
