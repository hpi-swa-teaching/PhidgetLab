node to morph
alanBinaryPostRcvr: aNode key: key args: args

	| nodeWithNilReceiver row |

"==
Repeat for collection [ collect ( from foo. blah blah foo blah) ]
Repeat for 1 to 50 [ do ( from i. blah blab i blah ) ]
=="

	nodeWithNilReceiver := aNode copy receiver: nil.
	(row := self addRow: #keyword2 on: nodeWithNilReceiver)
		borderWidth: 1;
		parseNode: (nodeWithNilReceiver as: MessageNode);
		borderColor: row stdBorderColor.
	row addToken: key asString
		type: #binary
		on: (SelectorNode new key: key asString code: nil "fill this in?").
	args first asMorphicSyntaxIn: row.
