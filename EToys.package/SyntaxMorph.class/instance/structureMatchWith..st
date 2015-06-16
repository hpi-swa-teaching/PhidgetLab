dropping/grabbing
structureMatchWith: aMorph
	| meNoun itNoun |
	"Return true if the node types would allow aMorph to replace me.  This tests the gross structure of the method only."

	meNoun := self isNoun.
	itNoun := aMorph isNoun.

	"Consider these nouns to be equal:  TempVariableNode, LiteralNode, VariableNode, (MessageNode with receiver), CascadeNode, AssignmentNode"
	meNoun & itNoun ifTrue: [^ true].
	meNoun & aMorph isBlockNode ifTrue: [^ true].

	"If I am a BlockNode, and it is a TempVariableNode, add it into list"
	"If I am a BlockNode, and it is a noun, add it as a new line"
	self isBlockNode ifTrue:
		[itNoun ifTrue: [^ true].
		(aMorph nodeClassIs: ReturnNode) ifTrue:
			[^ self submorphs
				noneSatisfy: [:mm | (mm isSyntaxMorph) and: [mm nodeClassIs: ReturnNode]]].	"none already in this block"
				"If I am a BlockNode, and it is a ReturnNode, add to end"
		(aMorph nodeClassIs: CommentNode) ifTrue: [^ true]].

	(self isMethodNode) ifTrue: [^ false].	"Later add args and keywords"
		"Later allow comments to be dropped in"
		"Add MethodTemps by dropping into the main block"

	(self nodeClassIs: ReturnNode) & (aMorph parseNode class == MessageNode) 
		ifTrue: [^ true].		"Command replace Return"
	(self nodeClassIs: MessageNode) & (aMorph parseNode class == ReturnNode) ifTrue: [
		(owner submorphs select: [:ss | ss isSyntaxMorph]) last == self
			ifTrue: [^ true]].	"Return replace last command"

	(aMorph nodeClassIs: AssignmentNode) ifTrue: [
		itNoun ifFalse: ["create a new assignment"
			^ self isAVariable & self isDeclaration not]].	"only assign to a variable"

	"If nodes are of equal class, replace me with new one."
	(self nodeClassIs: aMorph parseNode class) ifTrue: [
		(self nodeClassIs: MessageNode) 
				ifFalse: [^ true]	"normal match"
				ifTrue: [^ self receiverNode == aMorph receiverNode]].	"both nil"

	^ false "otherwise reject"