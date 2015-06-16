player and selector look up
getSelectorFor: receiver fromBlockNode: aBlockNode for: obj ifFoundDo: aBlock ignoreSelectors: ignoreSelectors

	root ifNotNil: [^ self].
	aBlockNode statements do: [:stmt |
		(stmt isMemberOf: MessageNode) ifTrue: [
			self getSelectorFor: receiver fromMessageNode: stmt for: obj ifFoundDo: aBlock ignoreSelectors: ignoreSelectors
		].
		(stmt isMemberOf: BlockNode) ifTrue: [
			self getSelectorFor: receiver fromBlockNode: stmt for: obj ifFoundDo: aBlock ignoreSelectors: ignoreSelectors
		].
	].
