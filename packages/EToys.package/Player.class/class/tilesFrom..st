scripts
tilesFrom: aString
	| code tree syn block phrase |
	"Construct SyntaxMorph tiles for the String."

	"This is really cheating!  Make a true parse tree later. -tk"
	code := String streamContents: [:strm | 
		strm nextPutAll: 'doIt'; cr; tab.
		strm nextPutAll: aString].
	"decompile to tiles"
	tree := Compiler new 
		parse: code 
		in: self
		notifying: nil.
	syn := tree asMorphicSyntaxUsing: SyntaxMorph.
	block := syn submorphs detect: [:mm | 
		(mm respondsTo: #parseNode) ifTrue: [
			mm parseNode class == BlockNode] ifFalse: [false]].
	phrase := block submorphs detect: [:mm | 
		(mm respondsTo: #parseNode) ifTrue: [
			mm parseNode class == MessageNode] ifFalse: [false]].
	^ phrase

