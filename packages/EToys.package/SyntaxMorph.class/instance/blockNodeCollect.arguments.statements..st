node to morph
blockNodeCollect: aNode arguments: arguments statements: statements 
	| row column c2 r2 r3 |
	column := self addColumn: #blockCollectOnly on: aNode.
	self alansTest1 ifFalse: [column layoutInset: 5 @ -1].
	aNode addCommentToMorph: column.
	arguments notEmpty 
		ifTrue: 
			[row := column addRow: #blockarg1 on: BlockArgsNode new.
			row addNoiseString: 'collect using' emphasis: TextEmphasis bold emphasisCode.
			r3 := row addRow: #blockarg1b on: nil.	"aNode"
			r3 setConditionalPartStyle.
			arguments do: 
					[:arg | 
					r3 
						addToken: arg name
						type: #blockarg2
						on: arg]].
	r2 := column addRow: #block on: aNode.
	r2 setProperty: #ignoreNodeWhenPrinting toValue: true.
	r2 addNoiseString: self noiseBeforeBlockArg emphasis: TextEmphasis bold emphasisCode.
	c2 := r2 addColumn: #block on: aNode.
	c2 setProperty: #ignoreNodeWhenPrinting toValue: true.
	statements do: 
			[:each | 
			(each asMorphicSyntaxIn: c2) borderWidth: 1.
			each addCommentToMorph: c2].
	^column