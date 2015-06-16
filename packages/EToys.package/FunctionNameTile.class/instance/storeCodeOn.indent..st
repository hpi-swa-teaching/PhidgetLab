code generation
storeCodeOn: aStream indent: tabCount 
	"Store the receiver's code on the stream, honoring indentation."

	operatorOrExpression = #grouped
		ifTrue:
			[aStream nextPutAll: ' yourself']
		ifFalse:
			[super storeCodeOn: aStream indent: tabCount]