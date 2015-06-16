accessing
rightEdgeMode: aSymbol

	rightEdgeMode := aSymbol asSymbol.
	rightEdgeMode == #wrap ifTrue: [
		rightEdgeModeMnemonic := 1.
		^ self
	].
	rightEdgeMode == #stick ifTrue: [
		rightEdgeModeMnemonic := 2.
		^ self
	].
	(rightEdgeMode == #bounce or: [rightEdgeMode == #bouncing]) ifTrue: [
		rightEdgeModeMnemonic := 3.
		^ self
	].
