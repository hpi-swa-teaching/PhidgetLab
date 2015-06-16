all
transform

	| leftPrec rightPrec n |
	[(self inputQueueEmpty and: [stack size = 1]) not] whileTrue: [
		leftPrec := self precl.
		rightPrec := self precr: (n := self inputQueuePeek).
		leftPrec >= rightPrec ifTrue: [
			self reduceOnStack.
		] ifFalse: [
			self inputQueueNext.
			stack addLast: n.
		].
	].
	^ stack last.
