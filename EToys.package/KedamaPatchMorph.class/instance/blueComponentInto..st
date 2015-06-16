commands and slots
blueComponentInto: another

	0 to: self height - 1 do: [:y |
		0 to: self width -1 do: [:x |
			another pixelAtX: x y: y put: ((self pixelAtX: x y: y) bitAnd: 16rFF).
		].
	].
