node to morph
messageOneArg: key receiver: receiver selector: selector args: args

	| row firstArgMorph |

	row := (self addSingleKeywordRow: key) layoutInset: 1.
	row parseNode: selector.
	firstArgMorph := args first asMorphicSyntaxIn: self.
	receiver ifNil: [^ self].
	(firstArgMorph fullBounds height > 100
			or: [firstArgMorph fullBounds width > 250])
		ifTrue: [self foldMessageOneArg].
