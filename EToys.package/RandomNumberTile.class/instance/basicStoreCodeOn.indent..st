code generation
basicStoreCodeOn: aStream indent: tabCount
	aStream
			nextPut: $(;
			nextPutAll: literal printString;
			nextPutAll: ' atRandom)'.