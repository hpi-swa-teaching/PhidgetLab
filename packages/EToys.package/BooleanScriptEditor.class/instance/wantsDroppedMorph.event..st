dropping/grabbing
wantsDroppedMorph: aMorph event: evt 
	"Answer whether the receiver would be interested in accepting the morph"

	(submorphs anySatisfy: [:m | m isAlignmentMorph]) 
		ifTrue: [^ false].

	((aMorph isKindOf: ParameterTile) and: [aMorph scriptEditor == self topEditor])
		ifTrue: [^ true].
	^ (aMorph isKindOf: PhraseTileMorph orOf: WatcherWrapper) 
		and: [(#(#Command #Unknown) includes: aMorph resultType capitalized) not]