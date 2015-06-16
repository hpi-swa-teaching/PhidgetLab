slot getters/setters
setRight: w
	"Set the right coordinate to the given value"

	| topLeftNow cost |
	cost := self costume.
	cost isWorldMorph ifTrue: [^ self].
	topLeftNow := cost cartesianBoundsTopLeft.
	^ cost right: cost left - topLeftNow x + w
