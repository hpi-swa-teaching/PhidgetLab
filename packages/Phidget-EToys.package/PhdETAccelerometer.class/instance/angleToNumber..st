converting
angleToNumber: anAngle
	"Converts an angle (-90.0 - 90.0) to an Integer (0 - 1000)."
	
	^ anAngle asFloat + 90.0 / 180.0 * 1000.0