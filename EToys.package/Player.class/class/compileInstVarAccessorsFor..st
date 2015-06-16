slots
compileInstVarAccessorsFor: varName
	"Compile getters and setteres for the given instance variable name"

	| nameString |
	nameString := varName asString capitalized.
	self compileSilently: ('get', nameString, '
	^ ', varName)
		classified: 'access'.
	self compileSilently: ('set', nameString, ': val
	', varName, ' := val')
		classified: 'access'