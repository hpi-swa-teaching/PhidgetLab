other
codeString
	^ String streamContents: [:aStream | self storeCodeOn: aStream indent: 1]
