node to morph
alansMessageNode: aNode receiver: receiver selector: selector keywords: key arguments: args 
	| receiverMorph testAndReceiver anotherSelf wordyMorph template |
	template := self alansTemplateStyleFor: key.
	receiver ifNotNil: 
			["i.e. not a cascade"

			anotherSelf := self constructSelfVariant: receiver and: key.
			anotherSelf ifNotNil: 
					[wordyMorph := self addString: anotherSelf special: false.
					wordyMorph setProperty: #wordyVariantOfSelf toValue: true.
					self addMorph: wordyMorph.
					self layoutInset: 1.
					^self].
			testAndReceiver := self.
			template = 1 
				ifTrue: 
					[testAndReceiver := self addRow: #keyword1 on: nil.
					self setSpecialOuterTestFormat.
					testAndReceiver addNoiseString: 'Test'].
			false 
				ifTrue: 
					["template = 2"

					testAndReceiver := self addRow: #keyword1 on: nil.
					"self setSpecialOuterTestFormat."
					testAndReceiver addNoiseString: 'Repeat for'].
			receiverMorph := receiver asMorphicSyntaxIn: testAndReceiver.
			template = 1 ifTrue: [receiverMorph setConditionalPartStyle]].

	"unary messages"
	args isEmpty 
		ifTrue: 
			[^self 
				alanUnaryPostRcvr: aNode
				key: key
				selector: selector].

	"binary messages"
	key last = $: 
		ifFalse: 
			[^self 
				alanBinaryPostRcvr: aNode
				key: key
				args: args].

	"keyword messages"
	receiverMorph ifNotNil: [receiverMorph setConditionalPartStyle].
	self setSpecialOuterTestFormat.
	self 
		alanKeywordMessage: aNode
		isAConditional: template
		key: key
		args: args