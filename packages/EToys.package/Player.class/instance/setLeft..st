slot getters/setters
setLeft: w
	"Set the object's left coordinate as indicated"

	| topLeftNow cost |
	cost := self costume.
	cost isWorldMorph ifTrue: [^ self].
	topLeftNow := cost cartesianBoundsTopLeft.
	^ cost left: cost left - topLeftNow x + w
