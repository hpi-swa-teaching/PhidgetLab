slot getters/setters
setDropShadow: aValue
	"Setter for costume's dropShadow"

	| aMorph |
	(aMorph := costume renderedMorph) hasDropShadow ~~ aValue ifTrue: [aMorph toggleDropShadow]