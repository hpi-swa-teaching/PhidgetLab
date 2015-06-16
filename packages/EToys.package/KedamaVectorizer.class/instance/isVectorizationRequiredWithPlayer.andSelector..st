private
isVectorizationRequiredWithPlayer: aPlayer andSelector: selector

	(aPlayer isKindOf: Player) ifFalse: [^ false].
	aPlayer isPrototypeTurtlePlayer ifFalse: [^ false].

	^ (#(setTurtleCount: getTurtleCount setGrouped: getGrouped) includes: selector) not.
