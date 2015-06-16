alans styles
standardInset

	parseNode class == BlockNode ifTrue: [^ 5 @ 1].
		"allow pointing beside a line so can replace it"
	^ self alansTest1 ifTrue: [1] ifFalse: [-1]