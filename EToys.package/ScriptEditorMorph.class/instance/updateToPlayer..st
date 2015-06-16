initialization
updateToPlayer: newPlayer 
	"Make certain that the script name and the names of actors within are up to date"

	playerScripted ifNil: 
		["likely a naked test/yes/no fragment!"
		^ self].
	newPlayer == playerScripted ifTrue: [^ self].	"Already points to him"
	self allMorphs do:  [:m | 
		(m isKindOf: TileMorph)  ifTrue: 
			[m retargetFrom: playerScripted to: newPlayer.
			m bringUpToDate]].
	playerScripted := newPlayer.
	self replaceRow1