commands and slots
diffusionRate: newRate
	"Set the diffusion rate to an integer between 0 and 10. The diffusion rate gives the number of patches on one size of the area averaged to compute the next value of the variable for a given patch. Larger numbers cause faster diffusion. Zero means no diffusion."

	diffusionRate := (newRate rounded max: 0) min: 10.
