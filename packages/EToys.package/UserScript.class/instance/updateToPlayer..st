updating
updateToPlayer: aPlayer
	"Set aPlayer as the current player referenced by the receiver and its script editor"

	(currentScriptEditor notNil and: [currentScriptEditor ~~ #textuallyCoded]) ifTrue:
		[currentScriptEditor updateToPlayer: aPlayer].
	player := aPlayer