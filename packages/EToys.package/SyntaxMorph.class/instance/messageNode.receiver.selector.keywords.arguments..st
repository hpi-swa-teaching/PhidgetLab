node to morph
messageNode: aNode receiver: receiver selector: selector keywords: key arguments: args 
	| keywords column row receiverMorph receiverWidth messageWidth onlyOne nodeWithNilReceiver isAConditional |
	self alansTest1 
		ifTrue: 
			[^self 
				alansMessageNode: aNode
				receiver: receiver
				selector: selector
				keywords: key
				arguments: args].
	isAConditional := #(#ifTrue: #ifFalse: #ifTrue:ifFalse: #ifFalse:ifTrue:) 
				includes: key.
	receiver ifNotNil: 
			["i.e. not a cascade"

			receiverMorph := receiver asMorphicSyntaxIn: self].
	keywords := key keywords.
	args isEmpty 
		ifTrue: 
			[row := (self addSingleKeywordRow: key) layoutInset: 1.
			^row parseNode: selector].
	receiverWidth := receiver ifNil: [0]
				ifNotNil: [receiverMorph fullBounds width].
	onlyOne := args size = 1.
	(receiverWidth <= 80 and: [onlyOne]) 
		ifTrue: 
			[self 
				messageOneArg: key
				receiver: receiver
				selector: selector
				args: args.
			^self].
	nodeWithNilReceiver := aNode copy receiver: nil.
	column := self addColumn: #keyword1 on: nodeWithNilReceiver.
	"onlyOne ifTrue: [column parseNode: nil].	is a spacer"
	messageWidth := 0.
	keywords with: (args copyFrom: 1 to: keywords size)
		do: 
			[:kwd :arg | 
			isAConditional 
				ifTrue: [column addMorphBack: (column transparentSpacerOfSize: 3 @ 3)].
			(row := column addRow: #keyword2 on: nodeWithNilReceiver)
				borderWidth: 1;
				parseNode: (nodeWithNilReceiver 
							as: (onlyOne ifTrue: [MessageNode] ifFalse: [MessagePartNode]));
				borderColor: row stdBorderColor.
			isAConditional 
				ifTrue: [row addMorphBack: (row transparentSpacerOfSize: 20 @ 6)].
			row 
				addToken: kwd
				type: #keyword2
				on: (onlyOne 
						ifTrue: [SelectorNode new key: kwd code: nil	"fill this in?"]
						ifFalse: [KeyWordNode new]).
			arg asMorphicSyntaxIn: row.
			messageWidth := messageWidth + row fullBounds width].
	onlyOne 
		ifTrue: 
			[self replaceSubmorph: column by: row.
			column := row].
	receiverMorph ifNil: [^self].
	receiverWidth + messageWidth < 350 
		ifTrue: 
			[isAConditional ifFalse: [self unfoldMessage].
			^self].
	((receiverWidth > 200 
		or: [receiverWidth > 80 and: [column fullBounds height > 20]]) or: 
				[receiverMorph fullBounds width > 30 
					and: [column fullBounds height > 100 or: [column fullBounds width > 250]]]) 
		ifTrue: [^self foldMessage]