slot getters/setters
setAlpha: alpha
	"Set the alpha of the color of my costume."

	| adjusted |
	adjusted := (alpha max: 0.0) min: 1.0.
	^ self setColor: (self getColor alpha: adjusted)