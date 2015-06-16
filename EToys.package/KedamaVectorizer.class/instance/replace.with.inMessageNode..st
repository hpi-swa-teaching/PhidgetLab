replace receiver
replace: varName with: newNode inMessageNode: aMessageNode

	| receiver att |
	aMessageNode arguments withIndexDo: [:e :index |
		(e isMemberOf: MessageNode) ifTrue: [
			self replace: varName with: newNode inMessageNode: e.
		].
		(e isMemberOf: BlockNode) ifTrue: [
			self replace: varName with: newNode inBlockNode: e.
		].
		(e isMemberOf: VariableNode) ifTrue: [
			att := attributes getAttribute: #isTurtle of: e.
			((att notNil & att) and: [e name = varName]) ifTrue: [aMessageNode arguments at: index put: newNode].
		].

	].

	receiver := aMessageNode receiver.
	(receiver isMemberOf: MessageNode) ifTrue: [
		self replace: varName with: newNode inMessageNode: receiver.
	].

	(receiver isMemberOf: VariableNode) ifTrue: [
		att := attributes getAttribute: #isTurtle of: receiver.
		((att notNil & att) and: [receiver name = varName]) ifTrue: [aMessageNode receiver: newNode].
	].
