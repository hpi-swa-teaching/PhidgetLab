initialization
initialize
	"Initialize the menu tile"

	super initialize.
	self addArrows; setLiteral: 'send to back' translated.
	self labelMorph useStringFormat; putSelector: nil