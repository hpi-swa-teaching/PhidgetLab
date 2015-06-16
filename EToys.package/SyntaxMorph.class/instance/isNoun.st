node types
isNoun
	"Consider these to be nouns:  MessageNode with receiver, CascadeNode with receiver, AssignmentNode, TempVariableNode, LiteralNode, VariableNode, LiteralVariableNode."

	(#(TempVariableNode LiteralNode VariableNode LiteralVariableNode) includes:
		(parseNode class name)) ifTrue: [^ true].

	(self nodeClassIs: MessageNode) ifTrue: [^ parseNode receiver notNil].
	(self nodeClassIs: CascadeNode) ifTrue: [^ parseNode receiver notNil].
	(self nodeClassIs: AssignmentNode) ifTrue: [^ submorphs size >= 3].

	^ false