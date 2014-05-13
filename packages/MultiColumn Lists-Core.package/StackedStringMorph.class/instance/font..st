accessing
font: aStrikeFont
	font = aStrikeFont ifTrue: [^self].
	font _ aStrikeFont.
	locations _ Array new: strings size.
	self calculateSizes.