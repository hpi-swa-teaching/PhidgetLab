playerList
allKnownUnaryScriptSelectors
	"Answer a list of all the unary selectors implemented by any user-scripted objected within the scope of the receiver; include #emptyScript as a bail-out"

	| aSet allUniclasses |
	aSet := Set with: #emptyScript.
	allUniclasses := (self allPlayersWithUniclasses collect:
		[:aPlayer | aPlayer class]) asSet.
	allUniclasses do:
		[:aUniclass | aSet addAll: aUniclass namedUnaryTileScriptSelectors].
	^ aSet asSortedArray

"ActiveWorld presenter allKnownUnaryScriptSelectors"
