all
inputQueuePeek

	| v |
	inputQueue size > 0 ifFalse: [^ nil].
	v := inputQueue first.
	(v isMemberOf: SelectorNode) ifTrue: [^ v key asSymbol].
	^ v.
