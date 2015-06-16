scripts-standard
goToRightOf: aPlayer 
	"Place the object so that it lies directly to the right of the given object"

	| hisCostume aCostume |
	(aPlayer isNil or: [aPlayer == self]) ifTrue: [^self].
	(hisCostume := aPlayer costume) isInWorld ifFalse: [^self].
	aCostume := self costume.
	aCostume isWorldMorph ifTrue: [^ self].
	aCostume owner == hisCostume owner 
		ifFalse: [hisCostume owner addMorphFront: aCostume].
	aCostume 
		position: hisCostume bounds rightCenter - (0 @ (aCostume height // 2))