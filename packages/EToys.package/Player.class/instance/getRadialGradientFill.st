slot getters/setters
getRadialGradientFill
	"Geter for costume's useGradientFill"

	| aStyle |
	^ (aStyle := costume renderedMorph fillStyle) isGradientFill and:
		[aStyle isRadialFill]