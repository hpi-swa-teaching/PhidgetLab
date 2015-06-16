accessing
playerRepresented: anObject
	"Set the value of playerRepresented"

	playerRepresented := anObject.
	self rebuildRow.
	self setNameTo: anObject costume topRendererOrSelf externalName