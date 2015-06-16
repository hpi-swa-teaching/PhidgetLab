as yet unclassified
showInOpenedState

	| answer |
	answer := self valueOfProperty: #showInOpenedState ifAbsent: [false].
	self removeProperty: #showInOpenedState.
	^answer