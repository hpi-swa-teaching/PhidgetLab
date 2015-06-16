slot getters/setters
setRadialGradientFill: aBoolean
	"Setter for costume's radialGradientFill"

	| aStyle |
	(aStyle := costume renderedMorph fillStyle) isGradientFill
		ifTrue:
			[aStyle isRadialFill ~~ aBoolean ifTrue:
				[aStyle radial: aBoolean.
				costume renderedMorph changed]]