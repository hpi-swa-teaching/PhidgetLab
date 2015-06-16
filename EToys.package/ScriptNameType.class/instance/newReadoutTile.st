tile
newReadoutTile
	"Answer a tile that can serve as a readout for data of this type"

	^ ScriptNameTile new dataType: self vocabularyName
