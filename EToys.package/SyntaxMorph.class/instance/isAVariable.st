node types
isAVariable
	"There are three kinds of variable nodes"

	((parseNode class == TempVariableNode) or: [
		(parseNode class == LiteralVariableNode) or: [
			parseNode class == VariableNode]]) ifFalse: [^ false].
	^ (ClassBuilder new reservedNames includes: 
			self decompile string withoutTrailingBlanks) not