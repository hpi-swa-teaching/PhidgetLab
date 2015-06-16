arrows
couldRetract
	"See if it makes sense to retract this tile and the op before it.  Return the phrase that gets retracted, or nil if not allowed."
	| phrase pad |
	(phrase := self ownerThatIsA: PhraseTileMorph) ifNil: [^ nil].
	(pad := phrase ownerThatIsA: TilePadMorph) ifNil: [^ nil].
	(phrase firstSubmorph "goodPad") type == pad type ifFalse: [
		phrase submorphs size < 3 ifFalse: [^ nil].	"types should have matched"
		"Go up a level"
		(phrase := pad ownerThatIsA: PhraseTileMorph) ifNil: [^ nil].
		(pad := phrase ownerThatIsA: TilePadMorph) ifNil: [^ nil].
		(phrase firstSubmorph "goodPad") type == pad type ifFalse: [^ nil].
		].
	^ phrase
