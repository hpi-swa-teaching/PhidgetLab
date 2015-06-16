alans styles
constructSelfVariant: receiver and: key

	| wordy |
	(receiver isKindOf: VariableNode) ifFalse: [^nil].
	receiver name = 'self'  ifFalse: [^nil].
	(wordy := self translateFromWordySelfVariant: key) ifNil: [^nil].
	^wordy

