changing
setColor: aColor

	| imageName anImage | 
	imageName := name.
	(aColor = #gray)
		ifTrue: [ imageName := imageName, #'_off' ].
	anImage := PhdImageLoader default load: imageName.
	image image: (anImage scaledToSize: anImage extent / 2).
	self labelGraphic: ((labeledItem imageForm: 32 backgroundColor: nonTranslucent forRectangle: labeledItem fullBounds) replaceColor: nonTranslucent withColor: Color transparent).