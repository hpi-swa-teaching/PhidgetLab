node types
isDeclaration
	"Return true if I am a TempVarNode inside a declaration of some kind, including a method arg"

	| opc |
	owner isSyntaxMorph ifFalse: [^ false].
	opc := owner parseNode class.
	opc == BlockArgsNode ifTrue: [^ true].
	opc == MethodTempsNode ifTrue: [^ true].
	opc == SelectorNode ifTrue: [^ true].
	^ false