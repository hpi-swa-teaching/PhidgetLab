replace receiver
replace: varName with: newNode inBlockNode: aBlockNode

	aBlockNode statements do: [:e |
		(e isMemberOf: MessageNode) ifTrue: [
			self replace: varName with: newNode inMessageNode: e.
		].
		(e isMemberOf: BlockNode) ifTrue: [
			self replace: varName with: newNode inBlockNode: e.
		].
	].
