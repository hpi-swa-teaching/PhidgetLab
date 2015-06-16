printing
printOn: aStream
	"Print a description of the receiver onto the given stream"

	super printOn: aStream.
	variableName ifNotNil: [aStream nextPutAll: (' (var name = ', variableName, ')')].
	type ifNotNil: [aStream nextPutAll: (' (type = ', type, ')')]