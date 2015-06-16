commands and slots
greenComponentFrom: another

	| pix anotherPix |
	0 to: self height - 1 do: [:y |
		0 to: self width -1 do: [:x |
			pix := self pixelAtX: x y: y.
			anotherPix := (another pixelAtX: x y: y) bitAnd: 16rFF.
			pix := (pix bitAnd: 16rFF00FF) bitOr: (anotherPix bitShift: 8).
			self pixelAtX: x y: y put: pix.
		].
	].
