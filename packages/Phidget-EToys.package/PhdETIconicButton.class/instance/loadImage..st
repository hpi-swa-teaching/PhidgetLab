changing
loadImage: aColor

	| imageName anImage | 
	imageName := self name.
	(aColor = #gray)
		ifTrue: [imageName := imageName, #'_off'].
	anImage := PhdETImageLoader default load: imageName.
	self image image: (anImage scaledToSize: anImage extent / 2).
	self labelGraphic: ((self labeledItem imageForm: 32
									backgroundColor: self nonTranslucent
									forRectangle: self labeledItem fullBounds)
						replaceColor: self nonTranslucent withColor: Color transparent).