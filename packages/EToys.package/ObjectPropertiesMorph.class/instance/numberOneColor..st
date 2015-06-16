as yet unclassified
numberOneColor: aColor 
	myTarget fillStyle isGradientFill 
		ifFalse: 
			[^(myTarget isSystemWindow) 
				ifTrue: [myTarget setWindowColor: aColor]
				ifFalse: [myTarget fillStyle: aColor]].
	myTarget fillStyle 
		firstColor: aColor
		forMorph: myTarget
		hand: nil