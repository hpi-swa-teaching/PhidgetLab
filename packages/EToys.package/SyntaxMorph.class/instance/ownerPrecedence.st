printing
ownerPrecedence
	"Return the selector precedence of my owner.  1 for unary (asInteger), 2 for binary arithmetic (+), and 3 for keyword selectors (from:to:).  Subtract 0.5 if self is an arg, not the receiver (the case of a + (b + c))"

	| oo below sel pp |
	oo := owner.
	below := self.
	
	[oo isSyntaxMorph ifFalse: [^10].	"I do not need parens"
	oo parseNode isNil] 
			whileTrue: 
				[below := oo.
				oo := oo owner].
	(sel := oo selector) ifNil: [^10].
	(pp := sel precedence) = 3 ifTrue: [^2.5].	"keyword messages need parens"
	^oo receiverNode == below ifTrue: [pp] ifFalse: [pp - 0.5]