object represented
objectRepresented: anObject
	"Set the object represented by the receiver to be as requested"

	objectRepresented := anObject.
	self hResizing: #shrinkWrap.
	self vResizing: #shrinkWrap.
	self setNameTo: anObject name.
	self removeAllMorphs.
