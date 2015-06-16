as yet unclassified
targetBorderColor: aColor
	"Need to replace the borderStyle or BorderedMorph will not 'feel' the change"
	myTarget borderStyle: (myTarget borderStyle copy baseColor: aColor).