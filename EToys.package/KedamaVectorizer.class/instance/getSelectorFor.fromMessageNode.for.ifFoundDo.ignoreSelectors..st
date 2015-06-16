player and selector look up
getSelectorFor: receiver fromMessageNode: aMessageNode for: obj ifFoundDo: aBlock ignoreSelectors: ignoreSelectors

	
	root ifNotNil: [^ self].
	(Array with: aMessageNode receiver), aMessageNode arguments do: [:stmt | | key thisPlayer |
		(stmt isMemberOf: VariableNode) ifTrue: [
			thisPlayer := Compiler evaluate: stmt name for: obj.
			thisPlayer == receiver ifTrue: [
				key :=  aMessageNode selector key.
				(ignoreSelectors includes: key) ifFalse: [aBlock value: key. ^ self]].
		].
		(stmt isMemberOf: MessageNode) ifTrue: [
			self getSelectorFor: receiver fromMessageNode: stmt for: obj ifFoundDo: aBlock ignoreSelectors: ignoreSelectors
		].
		(stmt isMemberOf: BlockNode) ifTrue: [
			self getSelectorFor: receiver fromBlockNode: stmt for: obj ifFoundDo: aBlock ignoreSelectors: ignoreSelectors
		].
	].
