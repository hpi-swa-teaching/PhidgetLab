changing
makeColored

	image setNewImageFrom: (PhidgetImageLoader Instance load: name asSymbol).
	self labelGraphic: ((labeledItem imageForm: 32 backgroundColor: nonTranslucent forRectangle: labeledItem fullBounds) replaceColor: nonTranslucent withColor: Color transparent).