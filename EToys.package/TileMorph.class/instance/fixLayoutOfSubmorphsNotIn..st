as yet unclassified
fixLayoutOfSubmorphsNotIn: aCollection 
	self
		allMorphsDo: [:m | (aCollection includes: m)
				ifFalse: [(m respondsTo: #fixLayoutOfSubmorphsNotIn:)
						ifTrue: [m ~~ self
								ifTrue: [m fixLayoutOfSubmorphsNotIn: aCollection]]
						ifFalse: [m layoutChanged].
					aCollection add: m]].
	self layoutChanged; fullBounds