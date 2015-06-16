slot getters/setters
getBaseGraphic
	"Answer a form representing the receiver's base graphic"

	| aMorph |
	^ ((aMorph := costume renderedMorph) isSketchMorph)
		ifTrue:
			[aMorph baseGraphic]
		ifFalse:
			[aMorph imageForm]