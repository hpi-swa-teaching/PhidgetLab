accessing
setParent: parent
	"Set my 'phidget' instance variable to the given one.
	If I already have a parent, do nothing."
	
	phidget ifNil: [ phidget := parent ].