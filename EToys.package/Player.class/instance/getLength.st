slot getters/setters
getLength
	"Answer the length of the object"

	| aLength cost |
	((cost  := self costume) isLineMorph) "annoying special case"
		ifTrue:
			[^ cost unrotatedLength].
	aLength := cost renderedMorph height.  "facing upward when unrotated"
	cost isRenderer
		ifTrue:
			[aLength := aLength * cost scaleFactor].
	^ aLength