accessing
listFont
	^font ifNil: [font _ TextStyle defaultFont]