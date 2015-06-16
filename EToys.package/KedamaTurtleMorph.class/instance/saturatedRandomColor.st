initialization
saturatedRandomColor
	"Return a random color that isn't too dark or under-saturated."

	^ Color basicNew
		setHue: (360 atRandom)
		saturation: 1.0
		brightness: 1.0.
