initialization
initialize
	"Initialize the receiver.  In this case we primarily seek to undo the damage done by inherited implementors of #initialize"

	super initialize.
	self removeAllMorphs.
	resultType := #Boolean.
	self vResizing: #shrinkWrap