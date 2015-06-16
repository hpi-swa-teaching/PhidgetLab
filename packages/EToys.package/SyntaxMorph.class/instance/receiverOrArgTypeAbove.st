type checking
receiverOrArgTypeAbove
	"Return the type for me according to the message that encloses me."

	| enclosing sub list |
	(self nodeClassIs: BlockNode) ifTrue: [^#command].
	enclosing := owner.
	sub := self.
	
	[enclosing isSyntaxMorph ifFalse: [^#unknown].
	(enclosing nodeClassIs: MessageNode) 
		ifTrue: 
			[list := enclosing submorphs 
						select: [:ss | ss isSyntaxMorph and: [ss parseNode notNil]].
			list size = 1 
				ifFalse: 
					[^(list indexOf: sub) = 1 
						ifTrue: [enclosing receiverTypeFor: enclosing selector]
						ifFalse: [enclosing argTypeFor: enclosing selector]]].
	(enclosing nodeClassIs: BlockNode) ifTrue: [^#command].
	sub := enclosing.
	enclosing := enclosing owner] repeat