literal
setLiteralTo: anObject width: w
	"Set the literal and width of the tile as indicated"

	| soundChoices index |
	soundChoices := self soundChoices.
	index := soundChoices indexOf: anObject.
	self setLiteral: (soundChoices atWrap: index)