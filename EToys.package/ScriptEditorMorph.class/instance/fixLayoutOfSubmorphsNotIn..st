menu
fixLayoutOfSubmorphsNotIn: aCollection 
	self
		allMorphsDo: [:m | (aCollection includes: m)
				ifFalse: [m ~~ self
						ifTrue: [(m respondsTo: #fixLayoutOfSubmorphsNotIn:)
								ifTrue: [m fixLayoutOfSubmorphsNotIn: aCollection]].
					m layoutChanged.
					aCollection add: m]]