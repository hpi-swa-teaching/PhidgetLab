accessing
bottomEdgeMode: aSymbol

	bottomEdgeMode := aSymbol asSymbol.
	bottomEdgeMode == #wrap ifTrue: [
		bottomEdgeModeMnemonic := 1.
		^ self
	].
	bottomEdgeMode == #stick ifTrue: [
		bottomEdgeModeMnemonic := 2.
		^ self
	].
	(bottomEdgeMode == #bounce or: [bottomEdgeMode == #bouncing]) ifTrue: [
		bottomEdgeModeMnemonic := 3.
		^ self
	].
