method management
compileScalarInstVarAccessorsFor: varName

	| nameString type setPhrase arrayIndex getPhrase |
	nameString := varName asString capitalized.
	arrayIndex := turtles info at: varName asSymbol.

	type := turtles types at: arrayIndex.
	type = #Number ifTrue: [
		setPhrase := 'setNumberVarAt:'.
		getPhrase := 'getNumberVarOf:'.
	].
	type = #Boolean ifTrue: [
		setPhrase := 'setBooleanVarAt:'.
		getPhrase := 'getBooleanVarOf:'
	].
	type = #Color ifTrue: [
		setPhrase := 'setColorVarAt:'.
		getPhrase := 'getColorVarOf:'
	].
	setPhrase ifNil: [setPhrase := 'setObjectVarAt:'].
	getPhrase ifNil: [getPhrase := 'getObjectVarOf:'].

	self class compileSilently: ('get', nameString, '
	^ self ', getPhrase, '((turtles arrays at: ', arrayIndex printString, ') at: self index)')
		classified: 'access'.

	self class compileSilently: ('set', nameString, ': xxxArg
		self ', setPhrase, arrayIndex printString, ' at: self index put: xxxArg' )
		classified: 'access'