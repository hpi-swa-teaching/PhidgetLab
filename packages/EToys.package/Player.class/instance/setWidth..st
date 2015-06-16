slot getters/setters
setWidth: aWidth 
	"Set the width"
	
	| cost widthToUse |

	self hasCostumeThatIsAWorld
		ifTrue: [^ self].

	(cost := self costume) isLineMorph
		ifTrue: [^ cost unrotatedWidth: aWidth].

	widthToUse := cost isRenderer
				ifTrue: [aWidth / cost scaleFactor]
				ifFalse: [aWidth].

	cost renderedMorph width: widthToUse.
