initialization
addImage: aLabel

	image := ImageMorph new
		image: (PhidgetImageLoader Instance load: name, '_off' asSymbol).
	labeledItem addMorph: image.