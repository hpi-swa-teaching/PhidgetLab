initalization support
componentName: aSymbol

	aSymbol = #blue ifTrue: [
		operatorOrExpression := #setBlueComponentIn:to:.
	].
	aSymbol = #green ifTrue: [
		operatorOrExpression := #setGreenComponentIn:to:.
	].
	aSymbol = #red ifTrue: [
		operatorOrExpression := #setRedComponentIn:to:.
	].
	self addPatchTile.

