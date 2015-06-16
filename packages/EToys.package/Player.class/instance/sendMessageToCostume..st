costume
sendMessageToCostume: aSelector
	| aCostume |
	(aCostume := self costumeRespondingTo: aSelector) ifNotNil:
		[^ aCostume perform: aSelector].
	^ nil