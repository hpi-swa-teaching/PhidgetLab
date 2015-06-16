slots
compileAccessorsFor: varName
	"Compile instance-variable accessor methods for the given variable name"

	| nameString |
	nameString := varName asString capitalized.
	self compileSilently: ('get', nameString, '
	^ ', varName)
		classified: 'access'.
	self compileSilently: ('set', nameString, ': val
	', varName, ' := val')
		classified: 'access'