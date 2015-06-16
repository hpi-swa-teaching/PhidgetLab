highlighting
stdBorderColor 

	"put choices of how to do the border here"
	^ self valueOfProperty: #deselectedBorderColor ifAbsent: [Color transparent]