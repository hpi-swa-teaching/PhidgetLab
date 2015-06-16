node to morph
methodNodeOuter: aNode

	| block |
	
	self borderWidth: 0.
	aNode asMorphicSyntaxIn: self.
	self alansTest1 ifTrue: [self addTemporaryControls].
	self finalAppearanceTweaks.
		"self setProperty: #deselectedColor toValue: Color transparent."
	block := self findA: BlockNode.
		"block setProperty: #deselectedColor toValue: Color transparent."
	block submorphs size = 1 ifTrue: [^ self].	"keep '^ self' if that is the only thing in method"
	block submorphs last decompile string = '^  self ' ifTrue: [
		block submorphs last delete].
	^ self