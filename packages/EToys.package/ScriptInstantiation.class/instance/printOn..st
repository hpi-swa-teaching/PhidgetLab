printing
printOn: aStream
	"Print the receiver on aStream"

	super printOn: aStream.
	aStream nextPut: Character space;
		nextPutAll: self identityHashPrintString;
		nextPutAll: ' for #', selector asString