misc
setLiteralInitially: anObject
	"Establish the initial literal.  Get the label correct, but do *not* send the value back to the target via the setter (unlike #literal:)"

	literal := anObject ifNotNil: [anObject asSymbol].
	self updateLiteralLabel