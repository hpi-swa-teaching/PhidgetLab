arrows
deleteLastTwoTiles
	"Remove the current suffix (last two tiles) in this line of tiles"
	| phrase pad goodPad |
	(phrase := self couldRetract) ifNil: [^ self].
	pad := phrase ownerThatIsA: TilePadMorph.
	goodPad := phrase firstSubmorph.
	pad owner addMorphBack: goodPad.
	pad delete.
	(goodPad lastSubmorph respondsTo: #addSuffixArrow) 
		ifTrue: [goodPad lastSubmorph addSuffixArrow; addRetractArrow]
		ifFalse: [goodPad lastSubmorph lastSubmorph addSuffixArrow; addRetractArrow].
	goodPad topEditor install. "recompile"