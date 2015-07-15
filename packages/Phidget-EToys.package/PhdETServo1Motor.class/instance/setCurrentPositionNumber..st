accessing
setCurrentPositionNumber: aNumber
	"Sets the motor position to a value relative to aNumber.
	aNumber=0 means that the position is set to minPosition.
	aNumber=1000 means that the position ist set to maxPosition."

	| max min |
	( 0 <= aNumber and: [ aNumber <= 1000 ] ) ifFalse: [ ^ self ].
	max := self getMaxPosition.
	min := self getMinPosition.
	min == -1000 ifFalse: [
		self setCurrentPosition: max - min * (aNumber asFloat) / 1000.0 + min ].