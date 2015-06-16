insert block node
insertTurtleCommandAt: index in: statements variableNode: varNode from: encoder firstReceiverName: origName

	| messageNode blockNode newMessageNode selector |
	messageNode := statements at: index.
	(attributes getAttribute: #requireVector of: messageNode) ifFalse: [^ self].
	blockNode := BlockNode new arguments: (Array with: varNode) statements: (Array with: messageNode) returns: false from: encoder.
	selector := (attributes getAttribute: #dieMessage of: messageNode) ifNotNil: [#doDieCommand:].
	selector ifNil: [
		selector := (attributes getAttribute: #constant of: messageNode) ifTrue: [#doCommand:] ifFalse: [#doSequentialCommand:].
	].
		
	newMessageNode := MessageNode new
				receiver: (encoder encodeVariable: origName)
				selector: selector
				arguments: (Array with: blockNode)
				precedence: 3
				from: encoder
				sourceRange: nil.

	statements at: index put: newMessageNode.
