node to morph
alanKeywordMessage: aNode isAConditional: template key: key args: args

	| nodeWithNilReceiver column keywords row onlyOne |

	(key == #collect: and: [args first isKindOf: BlockNode]) ifTrue: [
		^self
			alanKwdCollect: aNode 
			isAConditional: template 
			key: key 
			args: args
	].
	key == #repeatFor:doing: ifTrue: [
		^self
			alanKwdRepeatForDoing: aNode 
			isAConditional: template 
			key: key 
			args: args
	].
	key == #if:do: ifTrue: [
		^self
			alanKwdIfDo: aNode 
			isAConditional: template 
			key: key 
			args: args
	].
	(args size = 1 and: [key endsWith: 'Getz:']) ifTrue: [
		^self
			alanKwdSetter: aNode 
			isAConditional: 0 
			key: key 
			args: args
	].
	(args size = 1 and: [self isStandardSetterKeyword: key]) ifTrue: [
		^self
			alanKwdSetter2: aNode 
			isAConditional: 0 
			key: key 
			args: args
	].
	nodeWithNilReceiver := aNode copy receiver: nil.
	template = 1 ifTrue: [
		self listDirection: #topToBottom.
	].
	column := self addColumn: #keyword1 on: nodeWithNilReceiver.
	keywords := key keywords.
	onlyOne := args size = 1.
	onlyOne ifFalse: ["necessary for three keyword messages!"
		column setProperty: #deselectedBorderColor toValue: column compoundBorderColor].
	keywords
		with: (args first: keywords size)
		do: [:kwd :arg |
			template = 1 ifTrue: [
				column addMorphBack: (column transparentSpacerOfSize: 3@3).
			].
			(row := column addRow: #keyword2 on: nodeWithNilReceiver)
				parseNode: (nodeWithNilReceiver as: 
						(onlyOne ifTrue: [MessageNode] ifFalse: [MessagePartNode]));
				borderColor: row stdBorderColor.
			template = 1 ifTrue: [row addMorphBack: (row transparentSpacerOfSize: 20@6)].
			row addToken: kwd
				type: #keyword2
				on: (onlyOne ifTrue: [SelectorNode new key: kwd code: nil "fill this in?"]
								ifFalse: [KeyWordNode new]).
			(arg asMorphicSyntaxIn: row) setConditionalPartStyle.
		].
	onlyOne ifTrue: [
		self replaceSubmorph: column by: row.
		column := row.
	].
			
