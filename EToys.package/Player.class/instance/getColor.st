slot getters/setters
getColor
	"Answer the color of my costume.  If it uses a gradient fill, answer the first color."

	| aFillStyle aMorph |
	^ (aFillStyle := (aMorph := self costume renderedMorph) fillStyle) isGradientFill
		ifTrue:
			[aFillStyle colorRamp first value]
		ifFalse:
			[aMorph color]