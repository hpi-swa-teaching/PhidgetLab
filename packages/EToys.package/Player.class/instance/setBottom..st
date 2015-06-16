slot getters/setters
setBottom: w
	"Set the bottom coordinate (cartesian sense) of the object as requested"

	| topLeftNow cost |
	cost := self costume.
	cost isWorldMorph ifTrue: [^ self].
	topLeftNow := cost cartesianBoundsTopLeft.
	^ cost bottom: cost top + topLeftNow y - w
