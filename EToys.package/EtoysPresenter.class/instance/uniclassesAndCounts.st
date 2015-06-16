playerList
uniclassesAndCounts
	"Answer a list of all players known to the receiver that have uniclasses"

	^ (self allPlayersWithUniclasses collect: [:aPlayer | aPlayer class]) asSet asArray collect:
		[:aClass | Array
			with:	aClass
			with:	aClass instanceCount]


	"self currentWorld presenter uniclassesAndCounts"