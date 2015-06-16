queries
isCommand
	"Answer whether the receiver is a true line of phrase-command. If not,  
	it is a fragment that will not be able to serve as a line of script on its  
	own"
	| rcvrTile pad |
	submorphs isEmpty
		ifTrue: [^ false].
	pad := submorphs first.
	(pad isKindOf: TilePadMorph)
		ifTrue: [(submorphs second isKindOf: AssignmentTileMorph)
				ifTrue: [^ true].
			(((rcvrTile := pad submorphs first) isKindOf: TileMorph)
					and: [rcvrTile isPossessive])
				ifTrue: [^ false]].
	^ true