player viewer
updateLiteralLabel
	"Update the wording emblazoned on the tile, if needed.  Copied down, for jimmying, unfortunately"

	| myLabel |
	(myLabel := self labelMorph) ifNil: [^ self].
	myLabel useSymbolFormat.
	myLabel acceptValue: literal asString.
	self changed.