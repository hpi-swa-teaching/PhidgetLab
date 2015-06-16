dropping/grabbing
wantsDroppedMorph: aMorph event: evt
	"Answer whether the receiver would be interested in accepting the morph"

	^ (aMorph isTileLike and: [self isTextuallyCoded not]) and:
		[(#(Command Unknown) includes: aMorph resultType capitalized)]