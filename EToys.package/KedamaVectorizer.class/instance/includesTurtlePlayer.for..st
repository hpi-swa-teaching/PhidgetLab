entry point
includesTurtlePlayer: aMethodNode for: obj

	| players |
	players := self getAllPlayersInMethodNode: aMethodNode for: obj.
	players do: [:e | | p |
		p := Compiler evaluate: e name for: obj.
		(p isKindOf: KedamaExamplerPlayer) ifTrue: [^ true].
	].
	^ false.
