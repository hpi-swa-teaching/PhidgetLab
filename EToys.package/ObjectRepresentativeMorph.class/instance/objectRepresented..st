as yet unclassified
objectRepresented: anObject
	"Set the receiver's representee.  This clears out any preexisting state in the receiver"

	objectRepresented := anObject.
	self removeAllMorphs.
	self hResizing: #shrinkWrap.  
	self vResizing: #shrinkWrap.
	self addMorphBack: (StringMorph new contents: anObject name asString).
	self setNameTo: anObject name
	