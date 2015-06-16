slot getters/setters
setTop: w
	"Set the top coordinate as indicated, using cartesian sense"

	| topLeftNow cost |
	cost := self costume.
	cost isWorldMorph ifTrue: [^ self].
	topLeftNow := cost cartesianBoundsTopLeft.
	^ cost top: cost top + topLeftNow y - w