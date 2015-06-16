new tiles
string: anExpression toTilesIn: playerClass
	| code tree methodNode |
	"Construct SyntaxMorph tiles for some code.  Returns the main BlockNode of a doIt."

	"This is really cheating!  Make a true parse tree later. -tk"
	code := String streamContents: [:strm | 
		strm nextPutAll: 'doIt'; cr; tab; nextPutAll: anExpression].
	"decompile to tiles"
	tree := Compiler new 
		parse: code 
		in: playerClass
		notifying: nil.
	methodNode := tree asMorphicSyntaxUsing: SyntaxMorph.
	anExpression first == $" ifTrue: ["a comment" 
		"(methodNode findA: CommentNode) firstSubmorph color: Color blue."
		^ methodNode].
	^ methodNode submorphs detect: [:mm | 
		(mm respondsTo: #parseNode) 
			ifTrue: [mm parseNode class == BlockNode] 
			ifFalse: [false]].
