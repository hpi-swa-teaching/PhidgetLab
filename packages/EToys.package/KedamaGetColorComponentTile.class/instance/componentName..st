initalization support
componentName: aSymbol

	aSymbol = #blue ifTrue: [
		operatorOrExpression := #getBlueComponentIn:.
	].
	aSymbol = #green ifTrue: [
		operatorOrExpression := #getGreenComponentIn:.
	].
	aSymbol = #red ifTrue: [
		operatorOrExpression := #getRedComponentIn:.
	].
	self addPatchTile.

