drawing
display
	"Display this world on the Display. Used for debugging."

	| c |
	c := FormCanvas extent: (dimensions * pixelsPerPatch) depth: 32.
	c := c copyOffset: bounds origin negated.
	self drawOn: c.
	c form display.
