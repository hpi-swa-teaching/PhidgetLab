prototyp
positionNumber: aNumber

	| max min |
	( 0 <= aNumber and: [ aNumber <= 1000 ] ) ifFalse: [ ^ self ].
	max := self positionMax.
	min := self positionMin.
	min == -1000 ifFalse: [
		self position: max - min * (aNumber asFloat) / 1000.0 + min ].