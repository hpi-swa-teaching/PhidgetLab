importImage
getString: aName

	| aForm stream |
	aForm := ImageReadWriter formFromFileNamed: (self getFullPathFrom: aName).
	stream := WriteStream on: (String new).
	aForm storeOn: stream.
	^ stream contents