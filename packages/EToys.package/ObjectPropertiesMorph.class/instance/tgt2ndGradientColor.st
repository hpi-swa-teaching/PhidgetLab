as yet unclassified
tgt2ndGradientColor

	myTarget fillStyle isGradientFill ifFalse: [^Color black].
	^myTarget fillStyle colorRamp last value