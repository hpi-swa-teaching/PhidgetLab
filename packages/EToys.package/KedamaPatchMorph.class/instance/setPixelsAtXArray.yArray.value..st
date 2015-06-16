commands and slots
setPixelsAtXArray: xArray yArray: yArray value: value

	form bits class == ByteArray ifTrue: [form unhibernate].
	self primSetPixelsAtXArray: xArray yArray: yArray bits: form bits width: form width height: form height value: value.
	self formChanged.
