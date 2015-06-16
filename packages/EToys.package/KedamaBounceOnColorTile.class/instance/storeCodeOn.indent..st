tile protocol
storeCodeOn: aStream indent: tabCount 
	"We have a hidden arg. Output two keywords with interspersed arguments."

	aStream nextPutAll: 'bounceOn:'.
	aStream space.
	playerTile storeCodeOn: aStream indent: tabCount.
	aStream space.
	aStream nextPutAll: 'color:'.
	aStream space.
	colorTile kedamaStoreCodeAsPixelValueOn: aStream indent: tabCount.

	"aStream nextPutAll: submorphs third color printString."
