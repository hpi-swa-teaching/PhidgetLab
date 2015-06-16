code generation
convertPrecedenceInParseNode: message with: encoder

	| e r w list |
	w := WriteStream on: (Array new: 3).
	message receiver eToysExpFlattenOn: w.
	list := w contents.
	e := EToyExpressionTransformer2 new newNodeFromList: list encoder: encoder.
	r := e transform.
	message receiver: r.
	^ message.
