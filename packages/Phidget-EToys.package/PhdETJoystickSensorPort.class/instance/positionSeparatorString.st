initialization
positionSeparatorString

	| stringCenter topMiddle |
	topMiddle := ((self width // 2) - 1) @ 13.
	stringCenter :=
		(separatorString width / 2) @
		(separatorString height / 2).
	separatorString position: self position + topMiddle - stringCenter.