commands and slots
pixelsAtXArray: xArray yArray: yArray into: aWordArray

	form bits class == ByteArray ifTrue: [form unhibernate].
	self primPixelsAtXArray: xArray yArray: yArray bits: form bits width: form width height: form height into: aWordArray.
