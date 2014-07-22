initialization
addImage: aLabel

	image := ImageMorph new.
	self makeGray.
	labeledItem addMorph: image.
