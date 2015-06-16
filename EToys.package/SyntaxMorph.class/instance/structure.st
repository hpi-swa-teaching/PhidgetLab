printing
structure
	"Print my structure from inner to outer."
	^ String streamContents: [:s |
		self withAllOwnersDo:
			[:m | m isSyntaxMorph ifTrue:
				[s cr; print: m parseNode class.
				((m nodeClassIs: MessageNode) or: [m nodeClassIs: TileMessageNode]) ifTrue:
					[s space; nextPutAll: m parseNode selector key]]]]