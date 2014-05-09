animation
positionNumberString

	| stringCenter topMiddle |
	topMiddle := (self width // 2) @ 15.
	stringCenter :=
		(numberString width / 2) @
		( numberString height / 2).
	numberString position: self position + topMiddle - stringCenter - (10 @ 0).