printing
printOn: aStream 
	"Append to the argument, aStream, a sequence of characters that 
	identifies the receiver." 

	super printOn: aStream.
	
	layoutPolicy ifNotNil:
		[aStream nextPutAll: ' [layoutPolicy - ', layoutPolicy class name, '] '].
	layoutProperties ifNotNil:
		[aStream nextPutAll: ' [layoutProperties] ']
	