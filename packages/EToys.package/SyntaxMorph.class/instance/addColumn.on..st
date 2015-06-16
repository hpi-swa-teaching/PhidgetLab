layout
addColumn: aColorOrSymbol on: aNode
	| col |
	self addMorphBack: (col := self class column: aColorOrSymbol on: aNode).

"col setProperty: #howCreated toValue: thisContext longStack."

	self alansTest1 ifTrue: [
		(aColorOrSymbol == #block and: [self isMethodNode not]) ifTrue: [
			col setConditionalPartStyle.
		].
	].
	^ col
