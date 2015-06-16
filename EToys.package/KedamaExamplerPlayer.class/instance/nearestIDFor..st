accessing
nearestIDFor: aNumber

	| whoArray last next smaller bigger |
	whoArray := turtles arrays first.
	whoArray isEmpty ifTrue: [^ nil].
	aNumber < whoArray first ifTrue: [^ whoArray first].

	last := whoArray at: 1.
	2 to: whoArray size do: [:i |
		(last <= aNumber and: [aNumber < (next := whoArray at: i)]) ifTrue: [
			smaller := last.
			bigger := next.
			(smaller - aNumber) abs <= (bigger - aNumber) abs ifTrue: [^ smaller] ifFalse: [^ bigger].
		].
		last := next.
	].
	^ last.
