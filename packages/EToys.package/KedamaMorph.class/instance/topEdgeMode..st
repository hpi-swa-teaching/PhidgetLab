accessing
topEdgeMode: aSymbol

	topEdgeMode := aSymbol asSymbol.
	topEdgeMode == #wrap ifTrue: [
		topEdgeModeMnemonic := 1.
		^ self
	].
	topEdgeMode == #stick ifTrue: [
		topEdgeModeMnemonic := 2.
		^ self
	].
	(topEdgeMode == #bounce or: [topEdgeMode == #bouncing])  ifTrue: [
		topEdgeModeMnemonic := 3.
		^ self
	].
