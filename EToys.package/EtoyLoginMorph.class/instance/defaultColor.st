initialization
defaultColor
	"answer the default color/fill style for the receiver"
	| result |
	result := GradientFillStyle ramp: {0.0
					-> (Color
							r: 0.5
							g: 0.5
							b: 1.0). 1.0
					-> (Color
							r: 0.8
							g: 0.8
							b: 1.0)}.
	result origin: self bounds origin.
	result direction: 0 @ self bounds height.
	^ result