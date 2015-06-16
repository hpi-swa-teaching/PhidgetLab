replace receiver
replaceRoot: varName with: newNode inMessageNode: aMessageNode

	(attributes getAttribute: #requireVector of: aMessageNode) ifFalse: [^ self].

	(aMessageNode isMemberOf: MessageNode) ifTrue: [
		self replace: varName with: newNode inMessageNode: aMessageNode.
	].
	(aMessageNode isMemberOf: BlockNode) ifTrue: [
		self replace: varName with: newNode inBlockNode: aMessageNode.
	].
