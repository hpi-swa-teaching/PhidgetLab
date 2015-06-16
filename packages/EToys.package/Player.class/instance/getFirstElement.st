slot getters/setters
getFirstElement
	"Answer a player representing the receiver's costume's first submorph"

	| itsMorphs |
	^(itsMorphs := costume submorphs) notEmpty 
		ifFalse: [costume presenter standardPlayer]
		ifTrue: [itsMorphs first assuredPlayer]