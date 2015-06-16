tile support
phraseForReceiver: rcvr op: op arg: arg resultType: resultType 
	"Answer a PhraseTileMorph affiliated with the given receiver, initialized to hold the given operator, argument, and result type"

	| m argTile rcvrTile |
	arg isNil 
		ifTrue: 
			[m := PhraseTileMorph new 
						setOperator: op
						type: resultType
						rcvrType: (self typeForConstant: rcvr)]
		ifFalse: 
			[m := PhraseTileMorph new 
						setOperator: op
						type: resultType
						rcvrType: (self typeForConstant: rcvr)
						argType: (self typeForConstant: arg).
			argTile := self constantTile: arg.
			argTile position: m lastSubmorph position.
			m lastSubmorph addMorph: argTile].
	rcvrTile := self constantTile: rcvr.
	"	TilePadMorph makeReceiverColorOfResultType ifTrue: [rcvrTile color: m color]."
	rcvrTile position: m firstSubmorph position.
	m firstSubmorph addMorph: rcvrTile.
	m vResizing: #shrinkWrap.
	^m