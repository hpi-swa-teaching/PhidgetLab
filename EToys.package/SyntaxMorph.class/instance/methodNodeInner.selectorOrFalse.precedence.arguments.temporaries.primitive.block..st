node to morph
methodNodeInner: aNode selectorOrFalse: selectorOrFalse precedence: precedence arguments: arguments temporaries: temporaries primitive: primitive block: block
	| header selNode |

	selNode := selectorOrFalse class == SelectorNode 
		ifTrue: [selectorOrFalse] 
		ifFalse: [SelectorNode new key: selectorOrFalse code: nil].
	header := self addRow: Color white on: selNode.
	precedence = 1
		ifTrue: [header addToken: aNode selector type: #methodHeader1 on: selNode]
		ifFalse: [aNode selector keywords with: arguments do:
					[:kwd :arg | 
					header addToken: kwd type: #methodHeader2 on: selNode.
					(arg asMorphicSyntaxIn: header) color: #blockarg2]].
	aNode addCommentToMorph: self.
	self addTemporaries: temporaries.
	(primitive > 0 and: [(primitive between: 255 and: 519) not]) ifTrue:
		["Dont decompile <prim> for, eg, ^ self "
		self addTextRow: (String streamContents: [ :strm | aNode printPrimitiveOn: strm])].
	block asMorphicSyntaxIn: self.
	^ self
