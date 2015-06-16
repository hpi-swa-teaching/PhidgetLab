private
vectorizeAt: index inMethodNode: aMethodNode

	| v encoder origReceiverName origReceiver aMessageNode |
	aMessageNode := aMethodNode block statements at: index.
	(attributes getAttribute: #requireVector of: aMessageNode) ifFalse: [^ self].

	encoder := aMethodNode encoder.
	encoder autoBind: 'xxxObj'.
	v := encoder encodeVariable: 'xxxObj' sourceRange: nil ifUnknown: [].
	origReceiver := attributes getAttribute: #firstNode of: aMessageNode.
	(origReceiver isMemberOf: VariableNode) ifTrue: [
		origReceiverName := origReceiver name.
	] ifFalse: [
		origReceiverName := 'self'.
	].

	self replaceRoot: origReceiverName with: v inMessageNode: aMessageNode.
	"self changeSelectorAt: index inMethodNode: aMethodNode."
	self insertTurtleCommandAt: index in: aMethodNode block statements variableNode: v from: encoder firstReceiverName: origReceiverName.

