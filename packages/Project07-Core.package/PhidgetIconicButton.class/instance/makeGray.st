changing
makeGray

	image setNewImageFrom: (Form fromFileNamed: name, '_off.png').
	self labelGraphic: ((labeledItem imageForm: 32 backgroundColor: nonTranslucent forRectangle: labeledItem fullBounds) replaceColor: nonTranslucent withColor: Color transparent).