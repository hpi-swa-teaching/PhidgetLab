initialization
referTo: anObject
	"Make the receiver be an object-reference tile whose referent is anObject"

	type := #objRef.
	typeColor := ScriptingSystem colorForType: anObject basicType.
	actualObject := anObject.
	self line1: anObject uniqueNameForReference