printing
printOn: aStream
	"Print out a human-readable representation of the receiver onto aStream"

	super printOn: aStream.
	self class instVarNames do:
		[:aName | aStream nextPutAll: ', ', aName, ' = ', (self instVarNamed: aName) printString]