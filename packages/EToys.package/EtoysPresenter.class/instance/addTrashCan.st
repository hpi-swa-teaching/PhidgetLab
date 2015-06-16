button creation
addTrashCan
	| aPosition aCan |
	(aCan := associatedMorph findA: TrashCanMorph) ifNotNil: [^ aCan].
	aCan := TrashCanMorph newSticky.
	aPosition := associatedMorph positionNear: (associatedMorph bottomRight - aCan extent) forExtent: aCan extent adjustmentSuggestion:  (-10 @ 0).
	aCan position: aPosition.
	associatedMorph addMorph: aCan.
	aCan startStepping.
	aCan setToAdhereToEdge: #bottomRight.
	^ aCan
