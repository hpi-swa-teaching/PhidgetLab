node to morph
alanKwdCollect: aNode isAConditional: template key: key args: args

	| nodeWithNilReceiver row kwdHolder |

	nodeWithNilReceiver := aNode copy receiver: nil.
	(row := self addRow: #keyword2 on: nodeWithNilReceiver)
		borderWidth: 1;
		parseNode: (nodeWithNilReceiver as: MessageNode);
		borderColor: row stdBorderColor.
	kwdHolder := row
		addToken: key
		type: #keyword2
		on: (SelectorNode new key: key code: nil "fill this in?").
	kwdHolder firstSubmorph 
		setProperty: #syntacticallyCorrectContents toValue: key asString;
		contents: ''.

	args first asMorphicCollectSyntaxIn: row.
