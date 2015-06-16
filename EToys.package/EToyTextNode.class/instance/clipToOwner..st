as yet unclassified
clipToOwner: aBoolean

	aBoolean ifFalse: [^self setContainer: nil].
	self setContainer: (SimplerTextContainer new for: self minWidth: textStyle lineGrid*2)