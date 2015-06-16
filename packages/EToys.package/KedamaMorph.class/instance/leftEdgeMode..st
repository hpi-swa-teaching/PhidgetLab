accessing
leftEdgeMode: aSymbol

	leftEdgeMode := aSymbol asSymbol.
	leftEdgeMode == #wrap ifTrue: [
		leftEdgeModeMnemonic := 1.
		^ self
	].
	leftEdgeMode == #stick ifTrue: [
		leftEdgeModeMnemonic := 2.
		^ self
	].
	(leftEdgeMode == #bounce or: [leftEdgeMode == #bouncing]) ifTrue: [
		leftEdgeModeMnemonic := 3.
		^ self
	].
