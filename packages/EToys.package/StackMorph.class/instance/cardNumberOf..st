accessing
cardNumberOf: aPlayer
	"Answer the card-number of the given player, in the which-card-of-the-stack sense."

	^ self cards identityIndexOf: aPlayer ifAbsent: [0]