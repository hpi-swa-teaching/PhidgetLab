node to morph
alanKwdRepeatForDoing: aNode isAConditional: template key: key args: args

	| nodeWithNilReceiver column keywords |

	nodeWithNilReceiver := aNode copy receiver: nil.
	column := self addColumn: #keyword1 on: nodeWithNilReceiver.
	keywords := key keywords.
	keywords
		with: (args first: keywords size)
		do: [:kwd :arg | | row |
			(row := column addRow: #keyword2 on: nodeWithNilReceiver)
				parseNode: (nodeWithNilReceiver as: MessagePartNode).
			row addToken: kwd
				type: #keyword2
				on: KeyWordNode new.
			(arg asMorphicSyntaxIn: row) setConditionalPartStyle.
		].
