*Etoys-tiles
updatingTileForTarget: aTarget partName: partName getter: getter setter: setter
	"Answer, for classic tiles, an updating readout tile for a part with the receiver's type, with the given getter and setter"

	^ ThumbnailMorph new objectToView: aTarget viewSelector: getter; extent: 21@21; yourself