as yet unclassified
objectRepresented: anObject labelString: aLabel
	"Set the receiver's representee as indicated, and use the given label to tag it"

	objectRepresented := anObject.
	self removeAllMorphs.
	self hResizing: #shrinkWrap.  
	self vResizing: #shrinkWrap.
	self addMorphBack: (StringMorph new contents: aLabel asString).
	self setNameTo: aLabel asString
	