*Etoys-tiles
asTilesIn: playerClass globalNames: makeSelfGlobal
	| code tree syn block phrase |
	"Construct SyntaxMorph tiles for me.  If makeSelfGlobal is true, name the receiver and use that name, else use 'self'.  (Note that this smashes 'self' into the receiver, regardless of what it was.)"

	"This is really cheating!  Make a true parse tree later. -tk"
	code := String streamContents: [:strm | | keywords num | 
		strm nextPutAll: 'doIt'; cr; tab.
		strm nextPutAll: 
			(makeSelfGlobal ifTrue: [self stringFor: receiver] ifFalse: ['self']).
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

