node types
immediatelyBelowTheMethodNode

	^(owner respondsTo: #isMethodNode) and: [owner isMethodNode]