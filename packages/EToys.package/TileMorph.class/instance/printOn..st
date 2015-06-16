printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' - ', type printString.
	operatorOrExpression ifNotNil: [aStream nextPutAll: ' op= ', operatorOrExpression printString].
	slotName ifNotNil: [aStream nextPutAll: ' op= ', slotName printString].