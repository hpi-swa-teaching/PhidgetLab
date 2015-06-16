code generation
storeCodeOn: aStream indent: tabCount
	"Write code that will reconstitute the receiver"

	aStream nextPutAll: literal uniqueNameForReference