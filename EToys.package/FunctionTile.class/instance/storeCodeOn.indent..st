code generation
storeCodeOn: aStream indent: tabCount 
	"Store the receiver's code on the stream, honoring indentation."

	aStream nextPut: $(.
	aStream space.
	argumentPad storeCodeOn: aStream indent: tabCount.
	aStream nextPut: $).
	aStream space.
	functionNameTile storeCodeOn: aStream indent: tabCount