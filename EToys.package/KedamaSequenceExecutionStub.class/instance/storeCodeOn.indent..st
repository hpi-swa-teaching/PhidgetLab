printing
storeCodeOn: aStream indent: indent

	aStream nextPutAll: '(('.
	aStream nextPutAll: exampler uniqueNameForReference.
	aStream nextPutAll: ') clonedSequentialStub who: '.
	aStream nextPutAll: who printString.
	aStream nextPutAll: ')'.
