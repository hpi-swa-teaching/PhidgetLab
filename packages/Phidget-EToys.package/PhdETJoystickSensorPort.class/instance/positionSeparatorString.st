initialization
positionSeparatorString

	| stringCenter topMiddle |
	topMiddle := ((self width // 2) - 1) @ 13.
	stringCenter :=
		(self separatorString width / 2) @
		(self separatorString height / 2).
	self separatorString position: self position + topMiddle - stringCenter.