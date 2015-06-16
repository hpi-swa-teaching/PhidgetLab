slot getters/setters
setBaseGraphic: aGraphic
	"Set the base graphic"

	| aMorph |
	^ ((aMorph := costume renderedMorph) isSketchMorph)
		ifTrue:
			[aMorph baseGraphic: aGraphic]