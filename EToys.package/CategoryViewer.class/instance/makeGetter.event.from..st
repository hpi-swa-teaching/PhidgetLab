get/set slots
makeGetter: args event: evt from: aMorph
	"Hand the user tiles representing a classic getter on the slot represented by aMorph"

	| tiles |
	tiles := self getterTilesFor: args first type: args second.
	owner
		ifNotNil:	[self primaryHand attachMorph: tiles]
		ifNil: 		[^ tiles]
