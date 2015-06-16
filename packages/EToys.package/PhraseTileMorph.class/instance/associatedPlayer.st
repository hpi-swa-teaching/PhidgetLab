miscellaneous
associatedPlayer
	"Answer the player that's the object of my attention"

	| pp |
	pp := self firstSubmorph.
	[pp isKindOf: PhraseTileMorph] whileTrue: [pp := pp firstSubmorph].
	^ pp firstSubmorph actualObject