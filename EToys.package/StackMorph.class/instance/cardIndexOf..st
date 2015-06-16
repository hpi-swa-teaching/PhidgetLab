card access
cardIndexOf: aCard
	"Answer the ordinal position of aCard in the receiver's list"

	^ self privateCards indexOf: aCard ifAbsent: [nil]