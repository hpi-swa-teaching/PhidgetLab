printing
printOn: strm indent: level

	| nodeClass |

	(self hasProperty: #ignoreNodeWhenPrinting) ifFalse: [
		nodeClass := parseNode class.
		nodeClass == VariableNode ifTrue: [^self printVariableNodeOn: strm indent: level].
		nodeClass == LiteralVariableNode ifTrue: [^self printVariableNodeOn: strm indent: level].
		nodeClass == MessageNode ifTrue: [^self printMessageNodeOn: strm indent: level].
		nodeClass == BlockNode ifTrue: [^self printBlockNodeOn: strm indent: level].
		nodeClass == BlockArgsNode ifTrue: [^self printBlockArgsNodeOn: strm indent: level].
		nodeClass == MethodNode ifTrue: [^self printMethodNodeOn: strm indent: level].
		nodeClass == MethodTempsNode ifTrue: [^self printMethodTempsNodeOn: strm indent: level].
		nodeClass == CascadeNode ifTrue: [^self printCascadeNodeOn: strm indent: level].
		nodeClass == AssignmentNode ifTrue: [^self printAssignmentNodeOn: strm indent: level].
	].
	self
		submorphsDoIfSyntax: [ :sub |
			sub printOn: strm indent: level.
			strm ensureASpace.
		]
		ifString: [ :sub |
			self printSimpleStringMorph: sub on: strm
		].
