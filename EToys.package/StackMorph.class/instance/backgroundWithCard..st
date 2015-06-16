background
backgroundWithCard: aCard
	"Answer the background which contains aCard."

	^ self backgrounds detect:
		[:aBackground | aBackground containsCard: aCard] ifNone: [nil]