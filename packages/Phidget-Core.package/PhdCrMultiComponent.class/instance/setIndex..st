accessing
setIndex: aNumber
	"Set my 'index' instance variable to the given one.
	If I already have an index, do nothing."
	
	index ifNil: [ index := aNumber ].