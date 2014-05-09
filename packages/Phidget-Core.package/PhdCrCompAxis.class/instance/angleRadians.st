prototyping
angleRadians

	| normalized |
	normalized := self acceleration.
	normalized < -1.0 ifTrue: [ normalized := -1.0 ].
	normalized > 1.0 ifTrue: [ normalized := 1.0 ].
	
	^ normalized arcSin