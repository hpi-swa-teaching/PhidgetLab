accessing
actualObject
	| sub |
	"Who is self in these tiles?  Usually a Player."


	(self nodeClassIs: LiteralVariableNode) ifTrue: [
		(sub := self findA: StringMorph) ifNil: [^ nil].
		"Need to decompile here for odd synonyms of 'self' ?"
		^ Compiler evaluate: sub contents for: Player].

	(self nodeClassIs: VariableNode) ifTrue: [
		(sub := self findA: StringMorph) ifNil: [^ nil].
		^ References at: (self cleanUpString: sub) asSymbol ifAbsent: [nil]].

	(self nodeClassIs: LiteralNode) ifTrue: [
		(sub := self findA: StringMorph) ifNil: [^ nil].
		^ Compiler evaluate: sub contents for: nil].

	(sub := self findA: SyntaxMorph) ifNil: [^ nil].
	^ sub actualObject	"receiver"