as yet unclassified
changeTargetColorTo: aColor

	self applyToWholeText ifTrue: [
		lastGlobalColor := aColor
	].
	self changeSelectionAttributeTo: (TextColor color: aColor)