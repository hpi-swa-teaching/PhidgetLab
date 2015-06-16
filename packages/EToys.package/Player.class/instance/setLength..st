slot getters/setters
setLength: aLength
	"Set the length of the receiver."

	| cost lengthToUse |

	self hasCostumeThatIsAWorld ifTrue:[^ self].

	((cost := self costume) isLineMorph)
		ifTrue:
			[^ cost unrotatedLength: aLength].
	lengthToUse := cost isRenderer
		ifTrue:
			[aLength / cost scaleFactor]
		ifFalse:
			[aLength].
	cost renderedMorph height: lengthToUse