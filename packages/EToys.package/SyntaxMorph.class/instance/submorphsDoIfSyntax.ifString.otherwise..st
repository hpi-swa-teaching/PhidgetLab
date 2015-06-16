printing
submorphsDoIfSyntax: block1 ifString: block2 otherwise: block3 
	submorphs do: 
			[:sub | 
			sub isSyntaxMorph 
				ifTrue: [block1 value: sub]
				ifFalse: 
					[(sub isKindOf: StringMorph) 
						ifTrue: [block2 value: sub]
						ifFalse: 
							[(sub isTextMorph) 
								ifTrue: [block2 value: sub]
								ifFalse: [block3 value: sub]]]]