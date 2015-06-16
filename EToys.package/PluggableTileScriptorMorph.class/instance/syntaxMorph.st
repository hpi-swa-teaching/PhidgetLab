as yet unclassified
syntaxMorph
	"Return the SyntaxMorph(MethodNode) that is inside me."

	| tm |
	^ (tm := self findA: TransformMorph) ifNotNil: [tm findA: SyntaxMorph]