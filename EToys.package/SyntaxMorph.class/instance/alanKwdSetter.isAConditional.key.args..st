node to morph
alanKwdSetter: aNode isAConditional: template key: key args: args

	| nodeWithNilReceiver row kwdHolder |

	nodeWithNilReceiver := aNode copy receiver: nil.
	(row := self addRow: #keyword2 on: nodeWithNilReceiver)
		borderWidth: 1;
		parseNode: (nodeWithNilReceiver as: MessageNode);
		borderColor: row stdBorderColor.
	row addNoiseString: '''s' emphasis: TextEmphasis bold emphasisCode.
	kwdHolder := row
		addToken: key
		type: #keywordGetz
		on: (SelectorNode new key: key code: nil "fill this in?").
	kwdHolder firstSubmorph 
		setProperty: #syntacticReformatting toValue: #keywordGetz;
		setProperty: #syntacticallyCorrectContents toValue: key asString;
		contents: (self splitAtCapsAndDownshifted: (key asString allButLast: 5));
		emphasis: TextEmphasis bold emphasisCode.
	row addNoiseString: '_' emphasis: TextEmphasis bold emphasisCode.

	(args first asMorphicSyntaxIn: row) setConditionalPartStyle
			
