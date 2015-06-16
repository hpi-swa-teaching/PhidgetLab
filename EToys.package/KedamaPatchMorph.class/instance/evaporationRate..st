commands and slots
evaporationRate: newRate
	"Set the evaporation rate. The useful range is 0 to 25 or so. Larger numbers cause faster evaporation. Zero means no evaporization."

	scaledEvaporationRate := ((1024 - newRate truncated) max: 1) min: 1024.
