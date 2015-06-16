code generation
kedamaStoreCodeOn: aStream indent: tabCount actualObject: obj
	aStream
			nextPut: $(;
			nextPutAll: obj uniqueNameForReference;
			nextPutAll: ' random: ';
			nextPutAll: literal printString;
			nextPut: $).
