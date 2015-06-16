slot getters/setters
setSecondColor: aColor
	"Setter for costume's second color, if it's using gradient fill; if not, does nothing"

	| aFillStyle aMorph |
	^ (aFillStyle := (aMorph := costume renderedMorph) fillStyle) isGradientFill
		ifTrue:
			[aFillStyle lastColor: aColor forMorph: aMorph hand: ActiveHand]