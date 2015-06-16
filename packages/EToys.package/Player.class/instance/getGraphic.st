slot getters/setters
getGraphic
	"Answer a form representing the receiver's primary graphic"

	| aMorph |
	^ ((aMorph := costume renderedMorph) isSketchMorph)
		ifTrue:
			[aMorph form]
		ifFalse:
			[aMorph isPlayfieldLike
				ifTrue:
					[aMorph backgroundForm]
				ifFalse:
					[aMorph imageForm]]