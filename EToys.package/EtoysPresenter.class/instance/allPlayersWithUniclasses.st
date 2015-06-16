playerList
allPlayersWithUniclasses
	"Answer a list of all players known to the receiver that have uniclasses"

	^ self allExtantPlayers select: [:p | p belongsToUniClass]