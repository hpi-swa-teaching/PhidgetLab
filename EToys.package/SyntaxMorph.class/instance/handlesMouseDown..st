event handling
handlesMouseDown: evt 
	evt yellowButtonPressed ifTrue: [^true].
	parseNode isNil ifTrue: [^false].
	owner isSyntaxMorph 
		ifTrue: [(owner isMethodNode and: [self isBlockNode not]) ifTrue: [^false]].	"Can only take block out of a MethodNode"
	^true