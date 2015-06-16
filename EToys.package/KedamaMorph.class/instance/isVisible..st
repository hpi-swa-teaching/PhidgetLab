private
isVisible: examplerPlayer

	| turtleMorph |
	turtleMorph := examplerPlayer costume.
	turtleMorph visible ifFalse: [^ false].
	turtleMorph owner isRenderer ifFalse: [^ true].
	^ turtleMorph owner visible.
