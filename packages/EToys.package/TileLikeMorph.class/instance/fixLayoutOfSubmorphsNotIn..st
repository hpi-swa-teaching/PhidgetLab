user interface
fixLayoutOfSubmorphsNotIn: aCollection 
	self minCellSize: 0 @ (Preferences standardEToysFont height rounded + 10).
	self
		allMorphsDo: [:m | (aCollection includes: m)
				ifFalse: [(m respondsTo: #fixLayoutOfSubmorphsNotIn:)
						ifTrue: [m ~~ self
								ifTrue: [m fixLayoutOfSubmorphsNotIn: aCollection]]
						ifFalse: [m layoutChanged].
					aCollection add: m]].
	self layoutChanged; fullBounds