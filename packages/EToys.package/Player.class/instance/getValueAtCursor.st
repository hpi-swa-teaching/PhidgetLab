slot getters/setters
getValueAtCursor
	| anObject |
	anObject := self getValueFromCostume: #valueAtCursor.
	^ anObject == 0  "weird return from GraphMorph"
		ifTrue:
			[nil]
		ifFalse:
			[anObject assuredPlayer]