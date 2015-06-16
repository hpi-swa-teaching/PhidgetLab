printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' precision: ', floatPrecision asString, ' ; type = ', type asString