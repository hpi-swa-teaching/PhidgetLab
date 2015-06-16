literal
setLiteralTo: anObject width: w
	"like literal:width: but does not inform the target"
	literal := anObject.
	self updateLiteralLabel.
	submorphs last setWidth: w.
	self updateLiteralLabel