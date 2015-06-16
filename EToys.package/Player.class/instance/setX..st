slot getters/setters
setX: val
	"Set the x coordinate as indicated"

	| aCostume |
	(aCostume := self costume) isInWorld ifFalse: [^ self].
	aCostume isWorldOrHandMorph ifTrue: [^ self].
	aCostume owner isHandMorph ifTrue: [^ self].
	^ aCostume x: val