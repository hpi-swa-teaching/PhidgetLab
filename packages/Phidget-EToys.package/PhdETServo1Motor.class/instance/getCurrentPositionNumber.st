accessing
getCurrentPositionNumber
	"Calculates the motor position number relative to the intervall [0, 1000].
	aNumber=0 means that the position is set to minPosition.
	aNumber=1000 means that the position ist set to maxPosition."

	| curPosition max min |
	curPosition := self getCurrentPosition.
	max := self getMaxPosition.
	min := self getMinPosition.
	(min - max) rounded == 0 ifTrue: [ ^ 0 ].
	^ curPosition - min * 1000 / ( max - min ) rounded