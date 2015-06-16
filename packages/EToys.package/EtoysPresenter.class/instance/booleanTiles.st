tile support
booleanTiles
	"Answer some boolean-valued tiles.  This dates back to very early etoy work in 1997, and presently has no sent senders"

	| list |
	list := #(#(0 #< 1) #(0 #<= 1) #(0 #= 1) #(0 #~= 1) #(0 #> 1) #(0 #>= 1)).
	list := list asOrderedCollection collect: 
					[:entry | 
					| rcvr op arg |
					rcvr := entry first.
					op := (entry second) asSymbol.
					arg := entry last.
					self 
						phraseForReceiver: rcvr
						op: op
						arg: arg
						resultType: #Boolean].
	list add: (self 
				phraseForReceiver: Color red
				op: #=
				arg: Color red
				resultType: #Boolean).
	^list	"copyWith: CompoundTileMorph new"