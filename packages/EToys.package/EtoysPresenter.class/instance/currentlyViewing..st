misc
currentlyViewing: aPlayer 
	"Only detects viewers in tabs"

	aPlayer ifNil: [^false].
	^aPlayer viewerFlapTab notNil