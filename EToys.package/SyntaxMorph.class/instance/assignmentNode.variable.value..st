node to morph
assignmentNode: aNode variable: variable value: value

	| row v expMorph |

	row := self addRow: #assignment on: aNode.
	v := variable asMorphicSyntaxIn: row.
	self alansTest1 ifTrue: [v setConditionalPartStyle; layoutInset: 2].
	row addToken: ' := ' type: #assignmentArrow on: aNode.
	expMorph := value asMorphicSyntaxIn: row.
	self alansTest1 ifTrue: [
		row setSpecialOuterTestFormat.
		(expMorph hasProperty: #deselectedColor) ifFalse: [expMorph setConditionalPartStyle].
	].
	^row
