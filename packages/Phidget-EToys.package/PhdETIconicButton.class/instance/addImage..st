initialization
addImage: aLabel

	self image: ImageMorph new.
	self loadGrayImage.
	self labeledItem addMorph: self image.
