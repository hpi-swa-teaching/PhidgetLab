entry point
vectorize: aMethodNode object: obj

	aMethodNode block statements withIndexDo: [:stmt :index |
		(stmt isMemberOf: MessageNode) ifTrue: [
			self checkFirstPairFor: stmt in: obj.
			self traverseMessageRoot: stmt in: obj firstPlayer: (attributes getAttribute: #firstTurtle of: stmt).
		].

		(stmt isMemberOf: MessageNode) ifTrue: [
			self vectorizeAt: index inMethodNode: aMethodNode.
		].
	].

	^ aMethodNode.


