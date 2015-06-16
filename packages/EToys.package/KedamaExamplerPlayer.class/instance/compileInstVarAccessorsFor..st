method management
compileInstVarAccessorsFor: varName

	self basicCompileInstVarAccessorsFor: varName.
	"turtles := kedamaWorld turtlesOf: self."
	turtles compileVectorInstVarAccessorsFor: varName.
	sequentialStub compileScalarInstVarAccessorsFor: varName.
