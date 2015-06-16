private
isScalarizable: aPlayer andSelector: selector

	(aPlayer isKindOf: Player) ifFalse: [^ false].
	aPlayer isPrototypeTurtlePlayer ifFalse: [^ false].

	(#(getX getY getHeading getAngleTo: getDistanceTo: getUphillIn: getReplicated color) includes: selector) ifTrue: [^ true].

	^ ((aPlayer class organization listAtCategoryNamed: 'access') select: [:sel | sel beginsWith: 'get']) includes: selector.
