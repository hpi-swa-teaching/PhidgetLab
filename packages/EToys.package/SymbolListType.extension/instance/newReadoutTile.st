*Etoys-tiles
newReadoutTile
	"Answer a tile that can serve as a readout for data of this type"

	^ SymbolListTile new choices: self choices dataType: self vocabularyName
