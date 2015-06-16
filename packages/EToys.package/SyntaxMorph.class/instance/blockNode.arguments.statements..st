node to morph
blockNode: aNode arguments: arguments statements: statements 
	| row column |
	column := self addColumn: #block on: aNode.
	self alansTest1 ifFalse: [column layoutInset: 5 @ -1].
	self alansTest1 
		ifTrue: 
			[column setProperty: #deselectedBorderColor toValue: self lighterColor].
	aNode addCommentToMorph: column.
	arguments notEmpty 
		ifTrue: 
			[row := column addRow: #blockarg1 on: BlockArgsNode new.
			row addNoiseString: self noiseBeforeBlockArg.
			arguments do: 
					[:arg | 
					row 
						addToken: arg name
						type: #blockarg2
						on: arg]].
	statements do: 
			[:each | 
			(row := each asMorphicSyntaxIn: column) borderWidth: 1.
			self alansTest1 ifTrue: [row setSpecialOuterTestFormat].
			each addCommentToMorph: column].
	^column