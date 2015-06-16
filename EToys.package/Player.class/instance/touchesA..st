misc
touchesA: aPrototypicalPlayer
	"Answer whether the receiver overlaps any player who wears a Sketch costume and who is of the same class as the prototypicalPlayer and who is wearing the same bitmap, but who is *not that player itself*!  This is an extreme case of a function highly customized (by Bob Arning) to suit a single, idiosycratic, and narrow demo need of Alan's.  Consult:
http://groups.yahoo.com/group/squeak/message/40560"

	| envelope trueGoal trueSelf |
	aPrototypicalPlayer ifNil: [^ false].
	envelope := costume owner ifNil: [^ false].
	trueSelf := costume renderedMorph.
	trueGoal := aPrototypicalPlayer costume renderedMorph.
	envelope submorphs do: [:each | | trueNeighbor itsPlayer |
		trueNeighbor := each renderedMorph.
		(trueNeighbor == trueGoal or: [trueNeighbor == trueSelf]) ifFalse:
			[(itsPlayer := each player) ifNotNil:
				[(itsPlayer overlaps: self) ifTrue:
					[(trueGoal appearsToBeSameCostumeAs: trueNeighbor) ifTrue: [^ true]]]]].
	^ false
