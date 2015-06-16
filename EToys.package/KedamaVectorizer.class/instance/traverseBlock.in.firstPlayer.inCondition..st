vectorization attribute calculation
traverseBlock: aBlockNode in: obj firstPlayer: firstPlayer inCondition: inCondition

	| value statements |
	statements := aBlockNode statements.
	statements do: [:stmt |
		(stmt isMemberOf: MessageNode)	ifTrue: [
			self traverseMessage: stmt in: obj firstPlayer: firstPlayer inCondition: inCondition.
		].
		(stmt isMemberOf: BlockNode) ifTrue: [
			self traverseBlock: stmt in: obj firstPlayer: firstPlayer inCondition: inCondition.
		].
		(stmt isMemberOf: VariableNode) ifTrue: [
			attributes setAttribute: #constant of: stmt to: false
		].
		(stmt isMemberOf: LiteralNode) ifTrue: [
			attributes setAttribute: #constant of: stmt to: true
		].
	].
	value := statements allSatisfy: [:stmt | attributes getAttribute: #constant of: stmt].

	attributes setAttribute: #constant of: aBlockNode to: value.
