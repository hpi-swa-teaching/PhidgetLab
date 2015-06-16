*Etoys-tiles
defaultArgumentTile
	"Answer a tile to represent the type"

	| aTile choices |
	aTile := SymbolListTile new choices: (choices := self choices) dataType: self vocabularyName.
	aTile addArrows.
	aTile setLiteral: choices first.
	^ aTile