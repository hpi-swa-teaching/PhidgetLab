user interface
acceptNewLiteral: aLiteral
	"Accept the new literal"

	self labelMorph useSymbolFormat.
	self literal: aLiteral.
	self adjustHelpMessage.
	self acceptNewLiteral.  "so tile scriptor can recompile if necessary"
	self labelMorph informTarget
