player protocol
compileVectorInstVarAccessorsFor: varName

	| nameString index type setPhrase |
	nameString := varName asString capitalized.
	index := info at: varName asSymbol.
	self class compileSilently: ('get', nameString, '
	^ ', '(arrays at: ', index printString, ')')
		classified: 'access'.

	type := types at: index.
	type = #Number ifTrue: [
		setPhrase := 'setNumberVarAt:'.
	].
	type = #Boolean ifTrue: [
		setPhrase := 'setBooleanVarAt:'.
	].
	type = #Color ifTrue: [
		setPhrase := 'setColorVarAt:'.
	].
	setPhrase ifNil: [setPhrase := 'setObjectVarAt:'].

	self class compileSilently: ('set', nameString, ': xxxArg
	self ', setPhrase, index printString, ' put: xxxArg')
		classified: 'access'