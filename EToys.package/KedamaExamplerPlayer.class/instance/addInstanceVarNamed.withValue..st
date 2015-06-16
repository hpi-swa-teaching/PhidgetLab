player protocol
addInstanceVarNamed: aName withValue: aValue

	self basicAddInstanceVarNamed: aName withValue: aValue.
	"turtles := kedamaWorld turtlesOf: self."
	turtles addInstanceVarVectorNamed: aName withValue: aValue.
