initialization
addImage: aLabel

	image := ImageMorph new
    image: (Form fromFileNamed: name, '_off', '.png').
	labeledItem addMorph: image.