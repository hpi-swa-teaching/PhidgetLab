costume
sendMessageToCostume: aSelector with: arg
	| aCostume |
	(aCostume := self costumeRespondingTo: aSelector) ifNotNil:
		[^ aCostume perform: aSelector with: arg].
	^ nil