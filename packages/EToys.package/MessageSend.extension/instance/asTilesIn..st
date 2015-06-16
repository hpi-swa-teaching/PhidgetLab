*Etoys-tiles
asTilesIn: playerClass
	| code tree syn block phrase |
	"Construct SyntaxMorph tiles for me."

	"This is really cheating!  Make a true parse tree later. -tk"
	code := String streamContents: [:strm | | num keywords | 
		strm nextPutAll: 'doIt'; cr; tab.
		strm nextPutAll: (self stringFor: receiver).
		keywords := selector keywords.
		strm space; nextPutAll: keywords first.
		(num := selector numArgs) > 0 ifTrue: [strm space. 
					strm nextPutAll: (self stringFor: arguments first)].
		2 to: num do: [:kk |
			strm space; nextPutAll: (keywords at: kk).
			strm space; nextPutAll: (self stringFor: (arguments at: kk))]].
	"decompile to tiles"
	tree := Compiler new 
		parse: code 
		in: playerClass
		notifying: nil.
	syn := tree asMorphicSyntaxUsing: SyntaxMorph.
	block := syn submorphs detect: [:mm | 
		(mm respondsTo: #parseNode) ifTrue: [
			mm parseNode class == BlockNode] ifFalse: [false]].
	phrase := block submorphs detect: [:mm | 
		(mm respondsTo: #parseNode) ifTrue: [
			mm parseNode class == MessageNode] ifFalse: [false]].
	^ phrase

