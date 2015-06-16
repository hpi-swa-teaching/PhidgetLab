mouse
canAccept: aMorph
	"Answer whether this pad can accept the given morph"

	| itsType myType |
	((aMorph isKindOf: PhraseTileMorph) or: [aMorph isKindOf: TileMorph orOf: WatcherWrapper]) 		ifTrue:
			[^ ((itsType := aMorph resultType capitalized) = (myType := self type capitalized)) or:
				[(myType = #Graphic) and: [itsType = #Player]]].
	^ false