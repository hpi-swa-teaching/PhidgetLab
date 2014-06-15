evaluating
nextValue

	
	(value <= 900)
		ifTrue:
			[self value: value+100.]
		ifFalse:
			[self reset;
				done: true.]