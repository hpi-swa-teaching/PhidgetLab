changing
makeGray

	image setNewImageFrom: (PhidgetImageLoader Instance load: name, '_off' asSymbol).
	self labelGraphic: ((labeledItem imageForm: 32 backgroundColor: nonTranslucent forRectangle: labeledItem fullBounds) replaceColor: nonTranslucent withColor: Color transparent).