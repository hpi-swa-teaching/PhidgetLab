initialization
initializePixel
	"Initialize my pixel-arrays and fill them with pixel-morphs."

	upperPixel := Array new: 20.
	lowerPixel := Array new: 20.

	1 to: 20 do: [ :i | 
		upperPixel at: i put: (PhdCrCustomCharPickerPixel new
			when: #pixelChanged
			send: #pixelChanged
			to: self).
		lowerPixel at: i put: (PhdCrCustomCharPickerPixel new
			when: #pixelChanged
			send: #pixelChanged
			to: self) ].