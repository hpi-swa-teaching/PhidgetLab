card & stack
setNewContentsFrom: stringOrNumberOrNil
	"Using stringOrNumberOrNil as a guide, set the receiver's contents afresh.  If the input parameter is nil, the a default value stored in a property of the receiver, if any, will supply the new initial content.  This method is only called when a VariableDock is attempting to put a new value."

	(self readOut ifNil: [^ self]) setNewContentsFrom: stringOrNumberOrNil.