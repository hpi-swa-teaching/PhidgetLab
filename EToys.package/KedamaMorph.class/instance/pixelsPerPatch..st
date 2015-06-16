accessing
pixelsPerPatch: anInteger
	"Set the width of one patch in pixels. Larger numbers scale up this StarSqueak world, but numbers larger than 2 or 3 result in a blocky look. The useful range is 1 to 10."

	pixelsPerPatch := (anInteger rounded max: 1) min: 10.
	super extent: dimensions * pixelsPerPatch.
	self recreateMagnifiedDisplayForm
