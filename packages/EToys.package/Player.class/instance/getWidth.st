slot getters/setters
getWidth
	"Answer the width of the object"

	| aWidth cost |
	((cost := self costume) isLineMorph) "annoying special case"
		ifTrue:
			[^ cost unrotatedWidth].
	aWidth := cost renderedMorph width.  "facing upward when unrotated"

	cost isRenderer
		ifTrue:
			[aWidth := aWidth * cost scaleFactor].
	^ aWidth