tiles from method
fromExistingMethod: aSelector forPlayer: aPlayer 
	"Create tiles for this method.  "

	self initialize.
	playerScripted := aPlayer.
	self setMorph: aPlayer costume scriptName: aSelector.
	self insertUniversalTiles